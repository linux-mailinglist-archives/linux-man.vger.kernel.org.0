Return-Path: <linux-man+bounces-4314-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A140C81A52
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 17:45:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 799323AB63C
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 16:44:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA3B92BCF4A;
	Mon, 24 Nov 2025 16:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlYAJbFt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8612829E11B
	for <linux-man@vger.kernel.org>; Mon, 24 Nov 2025 16:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764002657; cv=none; b=QzwWXmJiox9LorDYxYvU4uth9dYPpltCZEjZW3EJC+YKPgo4UaUFXfuspOHszYe79Pg0D10HKFduAg8ZKX2GxXPJ2HaPnxaUuHYxQV1dKGuPgzm3xPwF3fr4UKSnwt7zooW6de5sAxbA3D7Y1ZaztinDawsb5fd4RIfBR+PU5Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764002657; c=relaxed/simple;
	bh=B6h37Ff+35Yzo0J8AgmH5cVrWXaJdsM2eP/sYNO3DCQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QJ+PdxhcsnrjXWJGGWfLCVBS0UWOkgFgu+plfkPmWflEvLSfuiCCZMXEZ/51nYCiGhTJApIyJ89sE+SSgFO1fWlv62QM3/HDNsOcXsQuqfkFwr2ZvcGEhW7JkU+3njxOZPXaDgIP85/XnYbDa20i6gVo+Rzq4GfGScOQLLhixuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlYAJbFt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A086BC116C6;
	Mon, 24 Nov 2025 16:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764002657;
	bh=B6h37Ff+35Yzo0J8AgmH5cVrWXaJdsM2eP/sYNO3DCQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YlYAJbFtG3G2vAPW95I/OCMKwg8bDKWWmLE0VYMKMcC+aY+5tSpzF3bBwUbrfDqSc
	 PtDbJLUYxtR4K1k6HUY6RUMrx2oYAgLaXiT/uPuI8VSvXab8K0TOo6QJI9EUZ5MM8Z
	 V7B6jWJ7EmJq52dSOOFaplrrmlhNE0uIcbqLljqJBa53ZKkLO2i/msoLYXmcPVOT+E
	 A7U5gjO5lgeVreuGqkpElA9yHVe0UDhoFcNvYCKHSbQDC9W94Ir07sXwTY5DLh6O7E
	 FVPaEC4GVTkXF9XEEiHm0XFj5LIpu8wj2hfALLAGvy8GHpFEl3yd5yozPiPiAZx2vx
	 pdbMI539eVX0Q==
Date: Mon, 24 Nov 2025 17:44:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v4 1/3] random.{4,7}, getrandom.2: Adapt to Linux 5.6
 changes
Message-ID: <tevwgko5kxlkooyvzqgvs67svntqlhhqpdewgooph7hdgc64hc@wskpnevhgwam>
References: <5xemaly36nplgnzgpjymwdq44phbg5d43apdb5r7jnxoffjjpp@xgbyo2cksjch>
 <20251109023632.8515-2-arthur200126@gmail.com>
 <n2ajkqskaugqoqjtuxbuxrelepw2gskxzgyrrqsoybqgwtvqam@roe2jqcvnrab>
 <CAD66C+Z0iOJig457DQDVg+CgcVsE0C=wbuXK21we5XcNyGVizw@mail.gmail.com>
 <CAD66C+bS65y8KJu-P3ZcpKDR1MQAZW6fX-B99VycaY+OJAFiNA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qfbyxc4zexlxb7ma"
Content-Disposition: inline
In-Reply-To: <CAD66C+bS65y8KJu-P3ZcpKDR1MQAZW6fX-B99VycaY+OJAFiNA@mail.gmail.com>


--qfbyxc4zexlxb7ma
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v4 1/3] random.{4,7}, getrandom.2: Adapt to Linux 5.6
 changes
Message-ID: <tevwgko5kxlkooyvzqgvs67svntqlhhqpdewgooph7hdgc64hc@wskpnevhgwam>
References: <5xemaly36nplgnzgpjymwdq44phbg5d43apdb5r7jnxoffjjpp@xgbyo2cksjch>
 <20251109023632.8515-2-arthur200126@gmail.com>
 <n2ajkqskaugqoqjtuxbuxrelepw2gskxzgyrrqsoybqgwtvqam@roe2jqcvnrab>
 <CAD66C+Z0iOJig457DQDVg+CgcVsE0C=wbuXK21we5XcNyGVizw@mail.gmail.com>
 <CAD66C+bS65y8KJu-P3ZcpKDR1MQAZW6fX-B99VycaY+OJAFiNA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD66C+bS65y8KJu-P3ZcpKDR1MQAZW6fX-B99VycaY+OJAFiNA@mail.gmail.com>

Hi Mingye,

On Mon, Nov 10, 2025 at 11:51:30AM +0800, Mingye Wang wrote:
> On Mon, Nov 10, 2025 at 11:05=E2=80=AFAM Mingye Wang <arthur200126@gmail.=
com> wrote:
> >
> > > Does /dev/urandom block when reading with read(2) before the pool is
> > ready?  I assume it blocks.
> >
> > From what I've heard it does not. Working on other comments.
>=20
[...]
>=20
> I am sending only the revised version of the patch you commented on
> (the one that touches three files, random.{4,7}, getrandom.2). You
> might notice that this patch is much larger. This is because when
> editing the table I noticed that there's really no reason to keep the
> "Pool" column around for 5.6+, but removing it also felt off. In the
> end I just made two separate tables, but with identical cell-width
> settings.

Please split into more patches.  I think this patch could be broken into
a set of many small patches, each of which does one thing.  5 or 10
patches would be okay.

> Speaking of cell-width settings, the existing version was not filling
> the entire screen, which contravenes what man-pages(7) says about
> using lbx. Adding an "x" does make it look nicer too.
>=20
> (I have no idea whether this is the fourth version, but it's
> definitely after the third and five seems too many. In any case, I
> will be incrementing this number in future patch submissions to keep
> things navigable.)
>=20
> Regards,
> Mingye Wang (Artoria2e5)

Some review of v4:

	diff --git a/man/man4/random.4 b/man/man4/random.4
	index 0a651b03f..071fc99ef 100644
	--- a/man/man4/random.4
	+++ b/man/man4/random.4
	@@ -56,17 +56,29 @@ .SH DESCRIPTION
	 .I /dev/random
	 instead.
	 .P
	-The
	+.\" commit 30c08efec8884fb106b8e57094baa51bb4c44e32
	+Since Linux 5.6,
	 .I /dev/random
	-device is a legacy interface which dates back to
	+is identical to
	+.IR /dev/urandom ,
	+except that it blocks during early boot.
	+A jitter-based seeding technique added in Linux 5.4 should help reduce
	+block time.
	+.\" commit 50ee7529ec4500c88f8664560770a7a1b65db72b
	+.P
	+The pre-Linux 5.6
	+.I /dev/random
	+device was a legacy interface which dates back to

I'd prefer 'Before Linux 5.6,' instead of 'The pre-Linux 5.6'.

	 a time where the cryptographic primitives used in the implementation
	 of
	 .I /dev/urandom
	 were not widely trusted.
	-It will return random bytes only within the estimated number of
	-bits of fresh noise in the entropy pool, blocking if necessary.
	+It would return random bytes only within the estimated number of bits of =
fresh
	+noise in the entropy pool, blocking until additional environmental noise =
is
	+gathered.
	+This old
	 .I /dev/random

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.

I'd write it as:

```
It would return random bytes
only within the estimated number of bits of fresh noise
in the entropy pool,
blocking until additional environmental noise is gathered.
```

Same here:

	@@ -121,7 +133,8 @@ .SH DESCRIPTION
	 .BR read (2)
	 from
	 .I /dev/random
	-will return at most 512 bytes
	+has the same maximum size since Linux 5.6. Between Linux 3.16 and 5.5,
	+the maximum size was 512 bytes
	 .\" SEC_XFER_SIZE in drivers/char/random.c
	 (340 bytes before Linux 2.6.12).
	 .P

Use .P instead of .PP here:

	diff --git a/man/man7/random.7 b/man/man7/random.7
	index fda408d38..65e21a07e 100644
	--- a/man/man7/random.7
	+++ b/man/man7/random.7
	@@ -54,17 +54,16 @@ .SS Initialization of the entropy pool
	 When a sufficient number of random bits has been collected, the
	 entropy pool is considered to be initialized.
	 .SS Choice of random source
	-Unless you are doing long-term key generation (and most likely not even
	-then), you probably shouldn't be reading from the
	+Unless your program may run at early-boot, before the entropy pool
	+is initialized, there is no longer any palpable difference between
	 .I /dev/random
	-device or employing
	-.BR getrandom (2)
	-with the
	-.B GRND_RANDOM
	-flag.
	-Instead, either read from the
	+and
	 .I /dev/urandom
	-device or employ
	+since Linux 5.6 (see the table below).
	+.PP
	+On older kernels, either read from the
	+.I /dev/urandom
	+device or (especially if you are concerned with early boot) employ
	 .BR getrandom (2)
	 without the
	 .B GRND_RANDOM


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--qfbyxc4zexlxb7ma
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkki1gACgkQ64mZXMKQ
wqnnIA/+JAsWzZtzxnTiVFRg0Xpv1SvNTdxcqvuP4ZOxM/wL32M+LSkiZ20Xgl9q
pQ3jvKgrycYxJGgGTy+9fATNvulAtsznsVdVSaDe1f2Ibt0TPjsg6Vhy5fiRbQx3
p4E7/eea+A+IV/2jjaKXlVrqwrZe4VKaUAOmJfpGCr5iEQ9GKvNF+VIiOHTVI54m
GsWTbydqBToXDMgf+NUx3yvdCx1nBZsu5afn/869MAurbkUZiyCL1KW+ed8O3ret
n0IPx8ruddXCTN1knkSdQbSLr/sszt26dLuQ9G1e72gBSdO1pf2TVdfXzpgL6Ukr
qTPyCK3x+8Uq01VdC8NdM1DINmRn8+IcZ2pEvBrcuqEjgYwZNxPPTBV3Ya/4XqCj
XOlSByz/9zQQvIF5zrHg7Kfgfla45hBEm9eb3ARobMUTJQS45RqQ7NP0LUK6VBsY
+G0lp3eWsLYXdyEmNoITyaUWH1EaDy531Un/+4K8MrDoeGwg3+79it2TXdS9VOMH
l9D5XDY3QiQ6BGVey9jc0TEb07rg0Qu49obPmjpRpXZ179/MVzrKYVL6luZVqNFL
rWM1t1Mdyc8Xmb2F9/blp4Fkcw1sk0IrcZAiJnyAxaLxKf1VE/9c+GvHCTwffY3r
8Jgl8svIj2v/nJ2ZXOyx9SqNflFpDYdo3/9jrti7AhWnIPPHFys=
=XcGN
-----END PGP SIGNATURE-----

--qfbyxc4zexlxb7ma--

