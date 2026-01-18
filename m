Return-Path: <linux-man+bounces-4832-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A68D39A79
	for <lists+linux-man@lfdr.de>; Sun, 18 Jan 2026 23:22:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF898301FF43
	for <lists+linux-man@lfdr.de>; Sun, 18 Jan 2026 22:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70F182C159E;
	Sun, 18 Jan 2026 22:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEzfGkaN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35018274FD0
	for <linux-man@vger.kernel.org>; Sun, 18 Jan 2026 22:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768774870; cv=none; b=LooB8HMGl2SY/kB+Ym+LyOGs9H5D35HJ7ZP71MjyjR5uEPaYSa2UnqNVmuD2VGufrtU7jCx/JQaiQpqJEW7LXIfliwpXqaJxWS93mOBJHNrGHksywvSR0yesBYuXwkbnDmAS+Qqjfd2PuMDa0lwb7OUQQ4Ycwtwa4bMb5PfJGZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768774870; c=relaxed/simple;
	bh=eZCl9HS9rtMEjcJcJ3S/lH+yjBnjRU01dBvMTw0CarQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KQirCvJ6+acO/7cR5cfteuV42efEB67fHZVMI4gluXI4ZuUau2ACc9vsGk87Tjq9VYhR+yiY4qqRVMSWDAVfiLsOdod18wqZI1auChJmR+0kF7RE8hnHhEzhBKMnjpsIQD87RijcMtzPRR7vqIzoD8chcauhG5Wk63b0KTUpH9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEzfGkaN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 384F1C116D0;
	Sun, 18 Jan 2026 22:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768774869;
	bh=eZCl9HS9rtMEjcJcJ3S/lH+yjBnjRU01dBvMTw0CarQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OEzfGkaNRi5TicjHujhfvNlwopKUHOvOiCG/eBZm+sTqt0Zay23TVOkkFtjEFs26k
	 QQzosJwGmSx8cAQMc/Rc001pj7c7DMAxW27ljjavAfTI2tH96T7vgfiVOTqVX6ce1C
	 8TJGxFrqF8iyAdUxvf+U8OKNq9P6D5NPTzVaMfQdm6N4jFWhIB2lbuYoz9CcifeI/P
	 e9S/hFh0xi7a0R8l1c8yzrjqWIH+RA4UITORCGXv633nj8844CfkeyEIErH5IuK5rQ
	 LaZQ91HJRVZJzkDnB/GSoZLj95vWLVEfLYhMTRx62ANgJog+AqsTfNwhC0y3oyLA5X
	 l5gFpfsbMUt+Q==
Date: Sun, 18 Jan 2026 23:21:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v4 1/3] random.{4,7}, getrandom.2: Adapt to Linux 5.6
 changes
Message-ID: <aW1cv66DwJiydmyM@devuan>
References: <5xemaly36nplgnzgpjymwdq44phbg5d43apdb5r7jnxoffjjpp@xgbyo2cksjch>
 <20251109023632.8515-2-arthur200126@gmail.com>
 <n2ajkqskaugqoqjtuxbuxrelepw2gskxzgyrrqsoybqgwtvqam@roe2jqcvnrab>
 <CAD66C+Z0iOJig457DQDVg+CgcVsE0C=wbuXK21we5XcNyGVizw@mail.gmail.com>
 <CAD66C+bS65y8KJu-P3ZcpKDR1MQAZW6fX-B99VycaY+OJAFiNA@mail.gmail.com>
 <tevwgko5kxlkooyvzqgvs67svntqlhhqpdewgooph7hdgc64hc@wskpnevhgwam>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4tppelll54pndgju"
Content-Disposition: inline
In-Reply-To: <tevwgko5kxlkooyvzqgvs67svntqlhhqpdewgooph7hdgc64hc@wskpnevhgwam>


--4tppelll54pndgju
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v4 1/3] random.{4,7}, getrandom.2: Adapt to Linux 5.6
 changes
Message-ID: <aW1cv66DwJiydmyM@devuan>
References: <5xemaly36nplgnzgpjymwdq44phbg5d43apdb5r7jnxoffjjpp@xgbyo2cksjch>
 <20251109023632.8515-2-arthur200126@gmail.com>
 <n2ajkqskaugqoqjtuxbuxrelepw2gskxzgyrrqsoybqgwtvqam@roe2jqcvnrab>
 <CAD66C+Z0iOJig457DQDVg+CgcVsE0C=wbuXK21we5XcNyGVizw@mail.gmail.com>
 <CAD66C+bS65y8KJu-P3ZcpKDR1MQAZW6fX-B99VycaY+OJAFiNA@mail.gmail.com>
 <tevwgko5kxlkooyvzqgvs67svntqlhhqpdewgooph7hdgc64hc@wskpnevhgwam>
MIME-Version: 1.0
In-Reply-To: <tevwgko5kxlkooyvzqgvs67svntqlhhqpdewgooph7hdgc64hc@wskpnevhgwam>

Ping.  :)

On Mon, Nov 24, 2025 at 05:44:17PM +0100, Alejandro Colomar wrote:
> Hi Mingye,
>=20
> On Mon, Nov 10, 2025 at 11:51:30AM +0800, Mingye Wang wrote:
> > On Mon, Nov 10, 2025 at 11:05=E2=80=AFAM Mingye Wang <arthur200126@gmai=
l.com> wrote:
> > >
> > > > Does /dev/urandom block when reading with read(2) before the pool is
> > > ready?  I assume it blocks.
> > >
> > > From what I've heard it does not. Working on other comments.
> >=20
> [...]
> >=20
> > I am sending only the revised version of the patch you commented on
> > (the one that touches three files, random.{4,7}, getrandom.2). You
> > might notice that this patch is much larger. This is because when
> > editing the table I noticed that there's really no reason to keep the
> > "Pool" column around for 5.6+, but removing it also felt off. In the
> > end I just made two separate tables, but with identical cell-width
> > settings.
>=20
> Please split into more patches.  I think this patch could be broken into
> a set of many small patches, each of which does one thing.  5 or 10
> patches would be okay.
>=20
> > Speaking of cell-width settings, the existing version was not filling
> > the entire screen, which contravenes what man-pages(7) says about
> > using lbx. Adding an "x" does make it look nicer too.
> >=20
> > (I have no idea whether this is the fourth version, but it's
> > definitely after the third and five seems too many. In any case, I
> > will be incrementing this number in future patch submissions to keep
> > things navigable.)
> >=20
> > Regards,
> > Mingye Wang (Artoria2e5)
>=20
> Some review of v4:
>=20
> 	diff --git a/man/man4/random.4 b/man/man4/random.4
> 	index 0a651b03f..071fc99ef 100644
> 	--- a/man/man4/random.4
> 	+++ b/man/man4/random.4
> 	@@ -56,17 +56,29 @@ .SH DESCRIPTION
> 	 .I /dev/random
> 	 instead.
> 	 .P
> 	-The
> 	+.\" commit 30c08efec8884fb106b8e57094baa51bb4c44e32
> 	+Since Linux 5.6,
> 	 .I /dev/random
> 	-device is a legacy interface which dates back to
> 	+is identical to
> 	+.IR /dev/urandom ,
> 	+except that it blocks during early boot.
> 	+A jitter-based seeding technique added in Linux 5.4 should help reduce
> 	+block time.
> 	+.\" commit 50ee7529ec4500c88f8664560770a7a1b65db72b
> 	+.P
> 	+The pre-Linux 5.6
> 	+.I /dev/random
> 	+device was a legacy interface which dates back to
>=20
> I'd prefer 'Before Linux 5.6,' instead of 'The pre-Linux 5.6'.
>=20
> 	 a time where the cryptographic primitives used in the implementation
> 	 of
> 	 .I /dev/urandom
> 	 were not widely trusted.
> 	-It will return random bytes only within the estimated number of
> 	-bits of fresh noise in the entropy pool, blocking if necessary.
> 	+It would return random bytes only within the estimated number of bits o=
f fresh
> 	+noise in the entropy pool, blocking until additional environmental nois=
e is
> 	+gathered.
> 	+This old
> 	 .I /dev/random
>=20
> Please use semantic newlines.  See man-pages(7):
>=20
> $ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
>    Use semantic newlines
>      In the source of a manual page, new sentences should be started on
>      new lines, long sentences should be split  into  lines  at  clause
>      breaks  (commas,  semicolons, colons, and so on), and long clauses
>      should be split at phrase boundaries.  This convention,  sometimes
>      known as "semantic newlines", makes it easier to see the effect of
>      patches, which often operate at the level of individual sentences,
>      clauses, or phrases.
>=20
> I'd write it as:
>=20
> ```
> It would return random bytes
> only within the estimated number of bits of fresh noise
> in the entropy pool,
> blocking until additional environmental noise is gathered.
> ```
>=20
> Same here:
>=20
> 	@@ -121,7 +133,8 @@ .SH DESCRIPTION
> 	 .BR read (2)
> 	 from
> 	 .I /dev/random
> 	-will return at most 512 bytes
> 	+has the same maximum size since Linux 5.6. Between Linux 3.16 and 5.5,
> 	+the maximum size was 512 bytes
> 	 .\" SEC_XFER_SIZE in drivers/char/random.c
> 	 (340 bytes before Linux 2.6.12).
> 	 .P
>=20
> Use .P instead of .PP here:
>=20
> 	diff --git a/man/man7/random.7 b/man/man7/random.7
> 	index fda408d38..65e21a07e 100644
> 	--- a/man/man7/random.7
> 	+++ b/man/man7/random.7
> 	@@ -54,17 +54,16 @@ .SS Initialization of the entropy pool
> 	 When a sufficient number of random bits has been collected, the
> 	 entropy pool is considered to be initialized.
> 	 .SS Choice of random source
> 	-Unless you are doing long-term key generation (and most likely not even
> 	-then), you probably shouldn't be reading from the
> 	+Unless your program may run at early-boot, before the entropy pool
> 	+is initialized, there is no longer any palpable difference between
> 	 .I /dev/random
> 	-device or employing
> 	-.BR getrandom (2)
> 	-with the
> 	-.B GRND_RANDOM
> 	-flag.
> 	-Instead, either read from the
> 	+and
> 	 .I /dev/urandom
> 	-device or employ
> 	+since Linux 5.6 (see the table below).
> 	+.PP
> 	+On older kernels, either read from the
> 	+.I /dev/urandom
> 	+device or (especially if you are concerned with early boot) employ
> 	 .BR getrandom (2)
> 	 without the
> 	 .B GRND_RANDOM
>=20
>=20
> Have a lovely day!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es>
> Use port 80 (that is, <...:80/>).



--=20
<https://www.alejandro-colomar.es>

--4tppelll54pndgju
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmltXM0ACgkQ64mZXMKQ
wqk3NA/+MFkrkg1A0vX2JrwKilOnV7V+BSkw6K/dOQU/NjryMcGhDFY36WKARGAR
28IWjeWYgisuB6kTrmIZ/2NKpD5DSTg4dG9e+/zKlT8ooSzpuAQTlk72xC4aeCaM
6KcziWgKFqCkROLme7/Qbkq/e/pRpHnbclc3PlHSRpVRwwYU/lv57I1DluUkaIOr
XzQswRV4ZktgucsO0x6jjV/Re72YqZdj5whyNpP5aCYtEOWNG7n5RGVPHzMVBjXN
2X2zk1fBY2R66GXvM+EsyWKm8bx7nv4KcEWD2pM+VzFhixJHsWhZ6meqAyEabNyg
HSrnKvzUrm36kffTM7aDXtp9zNJiWL4/h19XQh8gmkMhZV+lxvmKLWNEZFp3yOUF
RY40XQYg2XhDenzCEHmdJ2KA3zKHlMRPcDR4KYfQXdcbToU64HgM1WLhIqBZ4TXY
ayHa9iK0NxVrduntInNZYogAg0Qo76b+JqLDmNjTGcmKgXWFqMTVfEd/10XnaX5V
8aNwfJAOAvJlrz+JLh0L8l/6iusxyBOxfOUaX04s3+sQcoQftDAKqoy/rE1MJif0
VERlhJAq8NyZLbg4di+fLIoSgcAPzAoook9fBx8KEVa3kGosoHpZ2mBFZdBeS5+o
XW2b5p99C03O0CJoyk5jaH5cgz4J8GVD4zCAqbGyAKNqiEMfbIM=
=dAv0
-----END PGP SIGNATURE-----

--4tppelll54pndgju--

