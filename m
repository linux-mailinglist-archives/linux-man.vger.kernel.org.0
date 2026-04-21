Return-Path: <linux-man+bounces-5357-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id II1jDQWF52m+9gEAu9opvQ
	(envelope-from <linux-man+bounces-5357-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 16:09:09 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D151443BC77
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 16:09:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 20B89301D61C
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 14:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41F993D7D82;
	Tue, 21 Apr 2026 14:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fU+zbJC+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A53EB3D7D9D
	for <linux-man@vger.kernel.org>; Tue, 21 Apr 2026 14:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776780483; cv=none; b=k+eUPObayR83oJoe7AtQEPmnmORUjYeNIZfqAWZGTSVadPgRaSLlaPQsGyPKU4S05dbVp24TPSdEa5GdhV8X73Coz4jlSBJMpAq7Wa5Q5LZgNWYNkmsMD6MtEI8QuD2pLeFg1YxZGhUE0SlbC54QdfSrQDRuiuKlNP8qnyYW8Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776780483; c=relaxed/simple;
	bh=qQdFkJ3jaYzR5mifNahkzPyHByJEpB8TAMWHvmdyfGg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GqYCZTKNAvvI74qXUitnaGb+1Z2o6oHiEAyje0v1J0AmMTiw0uoybqy6bbjE3VbaYxjJoJtKGXszZ9rcz/G1ZF2GbJdrMnI0v8Tmapuxwh9id6+TuAMGlxYcjns7KJjyt8SJZPB3pq79WudlCMFmbMQreytLLryHqVNKn3qg574=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fU+zbJC+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41964C2BCB0;
	Tue, 21 Apr 2026 14:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776780483;
	bh=qQdFkJ3jaYzR5mifNahkzPyHByJEpB8TAMWHvmdyfGg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fU+zbJC+Z9qA7tQuE6/T7gRaw6rkjfrze2IRMyAKRs1BDnLyNsrlX24D/Ylt/bid0
	 zq2BMkBAZxzJsZePA+kPipHSOiY7wxfM4CT4CGifWpSDgHE/qGnytR5CLccdLi6siG
	 YO7q2HKnNOT3IhJGvGhRSyzVNPcfj5Fj68J+VIgl8f3FdvLaugP+gZLGUvfF10rJ1R
	 QQGoHFi4/vA5C7WTLcQ754Ad/UUoc9VoZPHYRO9vbQu3TgJ13kbYRkSSGN6tDvGC9b
	 36BMA9skkLapSYzfHehyvCEuHuxqKKWI9JHH9F+XrwB/IWGiUhNIfVtM8+4rQsgFGL
	 EY0/R9R2OU0fw==
Date: Tue, 21 Apr 2026 16:07:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Theodore Ts'o <tytso@mit.edu>, "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: Mingye Wang <arthur200126@gmail.com>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v4 1/3] random.{4,7}, getrandom.2: Adapt to Linux 5.6
 changes
Message-ID: <aeeEEYqC_v-i5k6W@devuan>
References: <5xemaly36nplgnzgpjymwdq44phbg5d43apdb5r7jnxoffjjpp@xgbyo2cksjch>
 <20251109023632.8515-2-arthur200126@gmail.com>
 <n2ajkqskaugqoqjtuxbuxrelepw2gskxzgyrrqsoybqgwtvqam@roe2jqcvnrab>
 <CAD66C+Z0iOJig457DQDVg+CgcVsE0C=wbuXK21we5XcNyGVizw@mail.gmail.com>
 <CAD66C+bS65y8KJu-P3ZcpKDR1MQAZW6fX-B99VycaY+OJAFiNA@mail.gmail.com>
 <tevwgko5kxlkooyvzqgvs67svntqlhhqpdewgooph7hdgc64hc@wskpnevhgwam>
 <aW1cv66DwJiydmyM@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="76kpjlqhyn65ofwa"
Content-Disposition: inline
In-Reply-To: <aW1cv66DwJiydmyM@devuan>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5357-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D151443BC77
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--76kpjlqhyn65ofwa
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Theodore Ts'o <tytso@mit.edu>, "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: Mingye Wang <arthur200126@gmail.com>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v4 1/3] random.{4,7}, getrandom.2: Adapt to Linux 5.6
 changes
Message-ID: <aeeEEYqC_v-i5k6W@devuan>
References: <5xemaly36nplgnzgpjymwdq44phbg5d43apdb5r7jnxoffjjpp@xgbyo2cksjch>
 <20251109023632.8515-2-arthur200126@gmail.com>
 <n2ajkqskaugqoqjtuxbuxrelepw2gskxzgyrrqsoybqgwtvqam@roe2jqcvnrab>
 <CAD66C+Z0iOJig457DQDVg+CgcVsE0C=wbuXK21we5XcNyGVizw@mail.gmail.com>
 <CAD66C+bS65y8KJu-P3ZcpKDR1MQAZW6fX-B99VycaY+OJAFiNA@mail.gmail.com>
 <tevwgko5kxlkooyvzqgvs67svntqlhhqpdewgooph7hdgc64hc@wskpnevhgwam>
 <aW1cv66DwJiydmyM@devuan>
MIME-Version: 1.0
In-Reply-To: <aW1cv66DwJiydmyM@devuan>

Hi Jason, Ted,

Would you mind having a look at these thread?  The random(7/4) pages
need some updates.  I'd need some expert in the random subsystem to work
on these patches.  Mingye has been unresponsive since november.


Have a lovely day!
Alex

On 2026-01-18T23:21:10+0100, Alejandro Colomar wrote:
> Ping.  :)
>=20
> On Mon, Nov 24, 2025 at 05:44:17PM +0100, Alejandro Colomar wrote:
> > Hi Mingye,
> >=20
> > On Mon, Nov 10, 2025 at 11:51:30AM +0800, Mingye Wang wrote:
> > > On Mon, Nov 10, 2025 at 11:05=E2=80=AFAM Mingye Wang <arthur200126@gm=
ail.com> wrote:
> > > >
> > > > > Does /dev/urandom block when reading with read(2) before the pool=
 is
> > > > ready?  I assume it blocks.
> > > >
> > > > From what I've heard it does not. Working on other comments.
> > >=20
> > [...]
> > >=20
> > > I am sending only the revised version of the patch you commented on
> > > (the one that touches three files, random.{4,7}, getrandom.2). You
> > > might notice that this patch is much larger. This is because when
> > > editing the table I noticed that there's really no reason to keep the
> > > "Pool" column around for 5.6+, but removing it also felt off. In the
> > > end I just made two separate tables, but with identical cell-width
> > > settings.
> >=20
> > Please split into more patches.  I think this patch could be broken into
> > a set of many small patches, each of which does one thing.  5 or 10
> > patches would be okay.
> >=20
> > > Speaking of cell-width settings, the existing version was not filling
> > > the entire screen, which contravenes what man-pages(7) says about
> > > using lbx. Adding an "x" does make it look nicer too.
> > >=20
> > > (I have no idea whether this is the fourth version, but it's
> > > definitely after the third and five seems too many. In any case, I
> > > will be incrementing this number in future patch submissions to keep
> > > things navigable.)
> > >=20
> > > Regards,
> > > Mingye Wang (Artoria2e5)
> >=20
> > Some review of v4:
> >=20
> > 	diff --git a/man/man4/random.4 b/man/man4/random.4
> > 	index 0a651b03f..071fc99ef 100644
> > 	--- a/man/man4/random.4
> > 	+++ b/man/man4/random.4
> > 	@@ -56,17 +56,29 @@ .SH DESCRIPTION
> > 	 .I /dev/random
> > 	 instead.
> > 	 .P
> > 	-The
> > 	+.\" commit 30c08efec8884fb106b8e57094baa51bb4c44e32
> > 	+Since Linux 5.6,
> > 	 .I /dev/random
> > 	-device is a legacy interface which dates back to
> > 	+is identical to
> > 	+.IR /dev/urandom ,
> > 	+except that it blocks during early boot.
> > 	+A jitter-based seeding technique added in Linux 5.4 should help reduce
> > 	+block time.
> > 	+.\" commit 50ee7529ec4500c88f8664560770a7a1b65db72b
> > 	+.P
> > 	+The pre-Linux 5.6
> > 	+.I /dev/random
> > 	+device was a legacy interface which dates back to
> >=20
> > I'd prefer 'Before Linux 5.6,' instead of 'The pre-Linux 5.6'.
> >=20
> > 	 a time where the cryptographic primitives used in the implementation
> > 	 of
> > 	 .I /dev/urandom
> > 	 were not widely trusted.
> > 	-It will return random bytes only within the estimated number of
> > 	-bits of fresh noise in the entropy pool, blocking if necessary.
> > 	+It would return random bytes only within the estimated number of bits=
 of fresh
> > 	+noise in the entropy pool, blocking until additional environmental no=
ise is
> > 	+gathered.
> > 	+This old
> > 	 .I /dev/random
> >=20
> > Please use semantic newlines.  See man-pages(7):
> >=20
> > $ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
> >    Use semantic newlines
> >      In the source of a manual page, new sentences should be started on
> >      new lines, long sentences should be split  into  lines  at  clause
> >      breaks  (commas,  semicolons, colons, and so on), and long clauses
> >      should be split at phrase boundaries.  This convention,  sometimes
> >      known as "semantic newlines", makes it easier to see the effect of
> >      patches, which often operate at the level of individual sentences,
> >      clauses, or phrases.
> >=20
> > I'd write it as:
> >=20
> > ```
> > It would return random bytes
> > only within the estimated number of bits of fresh noise
> > in the entropy pool,
> > blocking until additional environmental noise is gathered.
> > ```
> >=20
> > Same here:
> >=20
> > 	@@ -121,7 +133,8 @@ .SH DESCRIPTION
> > 	 .BR read (2)
> > 	 from
> > 	 .I /dev/random
> > 	-will return at most 512 bytes
> > 	+has the same maximum size since Linux 5.6. Between Linux 3.16 and 5.5,
> > 	+the maximum size was 512 bytes
> > 	 .\" SEC_XFER_SIZE in drivers/char/random.c
> > 	 (340 bytes before Linux 2.6.12).
> > 	 .P
> >=20
> > Use .P instead of .PP here:
> >=20
> > 	diff --git a/man/man7/random.7 b/man/man7/random.7
> > 	index fda408d38..65e21a07e 100644
> > 	--- a/man/man7/random.7
> > 	+++ b/man/man7/random.7
> > 	@@ -54,17 +54,16 @@ .SS Initialization of the entropy pool
> > 	 When a sufficient number of random bits has been collected, the
> > 	 entropy pool is considered to be initialized.
> > 	 .SS Choice of random source
> > 	-Unless you are doing long-term key generation (and most likely not ev=
en
> > 	-then), you probably shouldn't be reading from the
> > 	+Unless your program may run at early-boot, before the entropy pool
> > 	+is initialized, there is no longer any palpable difference between
> > 	 .I /dev/random
> > 	-device or employing
> > 	-.BR getrandom (2)
> > 	-with the
> > 	-.B GRND_RANDOM
> > 	-flag.
> > 	-Instead, either read from the
> > 	+and
> > 	 .I /dev/urandom
> > 	-device or employ
> > 	+since Linux 5.6 (see the table below).
> > 	+.PP
> > 	+On older kernels, either read from the
> > 	+.I /dev/urandom
> > 	+device or (especially if you are concerned with early boot) employ
> > 	 .BR getrandom (2)
> > 	 without the
> > 	 .B GRND_RANDOM
> >=20
> >=20
> > Have a lovely day!
> > Alex
> >=20
> > --=20
> > <https://www.alejandro-colomar.es>
> > Use port 80 (that is, <...:80/>).
>=20
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--76kpjlqhyn65ofwa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnnhLkACgkQ64mZXMKQ
wqlxgQ/+MBNwArAg/PZcpaNDofLaRKbp9kUmcoss6yA7hEJpOYwFQ3QISaeddcIP
QvYAuKK75goNfAmxVJj//xWUyEIq6Ixx9WVT9DmhOzZFIoJBURI34hKKRtfUfzDp
bta425phVzxOQ8epLP885iDrolDXIrpkw3KI3EaVnCXgZOwOwfNu5cxtgXno5LpC
xluZgVgn9iJvCzs9HsdTMT/UG5qgEzOgv6bULUoHZOdpe2t0OmzKtZJnuBYZmUPJ
scIxb0eawGfHK1PpOLrKhBWs4ahONtkFdNyW0uHw2YDCZthoW7d8CECkaYn5qcPD
axsBPvMMaLcIg4qBjklqZ4s0GCp6F0SkN0vhXfCl66RQbitwLkuu3TK1KXKsOk2T
9/fjg3D1ST1J4niQXIni5fD98jlCalRmnwQI725kPa9jZlXW5SrI7U8QQTIiE131
uPNyJjO/OvtS/6H1gIcGzrlUQvF9uodhn1YO1GRsIbE4C18bmzCxd6MJ4JmND5zd
DxxrWGUUiPnCxTT78MWyHR2Wc5DUb89RHeYa7hitnWsAsc/aeFglRc3SgJlyf43w
IUy9qqOgYtZdz4ymLxeDCYqiE4WoY8e7mqsB33rAYkq7O73A+vcdix6TBQ2k7ZEf
jqRY42tAhTnoHomnln8ljFWBeLNtWgAoCbfs+qbu3u0PIETO9KQ=
=8uxQ
-----END PGP SIGNATURE-----

--76kpjlqhyn65ofwa--

