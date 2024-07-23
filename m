Return-Path: <linux-man+bounces-1519-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD50693A90E
	for <lists+linux-man@lfdr.de>; Wed, 24 Jul 2024 00:07:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DAA4C1C224B9
	for <lists+linux-man@lfdr.de>; Tue, 23 Jul 2024 22:07:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BF05145A0F;
	Tue, 23 Jul 2024 22:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYnw94Zi"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3680B14430D
	for <linux-man@vger.kernel.org>; Tue, 23 Jul 2024 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721772454; cv=none; b=SJH61IrMowsCs3ArEcqjD0F3KIff/qJFFtno9VBtn+IKf2oHFjvuCBP2NZu23+znN/Zme/b3foZiy7NDwUqvc7ZvgfdH13zVRt4+dT1p6X1zz83PJ7pzoKu2BsApa4wymGn93tMiTOQZvJc9gsSZBryWPQrOVnMX1U74g8fySbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721772454; c=relaxed/simple;
	bh=fGfOdaxV7PMKgJplgNKTkux4z+MoAcEB0FDwN/sVuEY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h97EfadnnRE1/g5n6BFM3pcCw1Kuc0uexuMg2pps/fKpS9yHWSsKSP/dFMu1pcIOCLJD5hv3E71o/w5E8qd5fdhyHHk/bSohRRpsLKhLQ2yv0DssPGhh4ZKlNyz6fPaVfIym0m7zw3uF/N4ytCTbrtiB/zD/vWX3s9hhpc/BWkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYnw94Zi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF92EC4AF09;
	Tue, 23 Jul 2024 22:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721772453;
	bh=fGfOdaxV7PMKgJplgNKTkux4z+MoAcEB0FDwN/sVuEY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eYnw94Zi4o9KEOAKpSStiEO5UbWDxmVbmKH5+YjDPf4h9lmren7c1HpVYKZ1sgKuz
	 pJgItB5fiOzkFOhQJdLiABGonWi3Fxb10LNRdGmodQk5VFOZg7P9GCWuq9WY159OFJ
	 P0iPWYY96QJPmGJe1gIsNav8pNhlKeLMRKDAIoCl9bCa1Mw5PGqKnAohgyGAA40tTk
	 McW8AGL07V6hFQNKrCrxGwxOOrND5MmAvEDxRu7TdyeiW8ofUju4llB1q+gOwpk+XX
	 nRrRKBqo0ozFC+5Q/7uFYf6X+aVJhrBemIISHYS0bmBlFhipfmUNUvq17bYu9qA3T5
	 WyU52FUq8YVDw==
Date: Wed, 24 Jul 2024 00:07:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Henrik Holst <henrik.holst@outlook.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, 
	sam@gentoo.org
Subject: Re: man-pages: make install requires git?
Message-ID: <kq75dok644njnuwoi77mso4rmc55ndheo4xofjpim3vtcmklnl@nkdzwkk2qmjc>
References: <GV1PR02MB84893BF182ECFED6B946F3B88DA92@GV1PR02MB8489.eurprd02.prod.outlook.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4fj3mbm6gyinndej"
Content-Disposition: inline
In-Reply-To: <GV1PR02MB84893BF182ECFED6B946F3B88DA92@GV1PR02MB8489.eurprd02.prod.outlook.com>


--4fj3mbm6gyinndej
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Henrik Holst <henrik.holst@outlook.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, 
	sam@gentoo.org
Subject: Re: man-pages: make install requires git?
References: <GV1PR02MB84893BF182ECFED6B946F3B88DA92@GV1PR02MB8489.eurprd02.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <GV1PR02MB84893BF182ECFED6B946F3B88DA92@GV1PR02MB8489.eurprd02.prod.outlook.com>

Hi Henrik, Sam,

On Tue, Jul 23, 2024 at 08:41:21PM GMT, Henrik Holst wrote:
> Hi Alejandro,
> It seems 'make install' requires 'git' to operate?

It's not actually required; I forgot to silence that error.  The error
is produced while calculating the DISTDATE variable, which you don't
need while installing 6.6.

I fixed that in 6.7, in

	commit 931186249d1896a0c6f32708e6155305698af613
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Thu Feb 15 00:00:55 2024 +0100

	    share/mk/dist/: dist: Support recursive 'dist'
	   =20
	    Hardcode the version and date, and don't use git(1) for selecting the
	    distribution files.
	   =20
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

If you want to patch 6.6, you can apply this trivial patch:

	diff --git i/share/mk/version.mk w/share/mk/version.mk
	index af3c0cb2a..f867f25b1 100644
	--- i/share/mk/version.mk
	+++ w/share/mk/version.mk
	@@ -14,7 +14,7 @@ include $(MAKEFILEDIR)/verbose.mk
	=20
	 DISTNAME    :=3D $(shell $(GIT) describe $(HIDE_ERR))
	 DISTVERSION :=3D $(patsubst man-pages-%,%,$(DISTNAME))
	-DISTDATE    :=3D $(shell $(GIT) log -1 --format=3D'%aD')
	+DISTDATE    :=3D $(shell $(GIT) log -1 --format=3D'%aD' $(HIDE_ERR))
	=20
	=20
	 endif  # include guard


I'm guessing you're on Gentoo.  Sam, do you want me to release 6.6.1
with that fix?  Is there anything else that's broken that I should fix?

> Is there a way to make install without having git installed?

You can safely ignore that error.

> (Or should I just silence / ignore errors from bash?)

Yep, it's safe to ignore; I can release a 6.6.1 if that helps.

> [root@zink man-pages-6.06]# bash -exu -c 'make install DESTDIR=3D/tmp/foo=
' | head
> + make install DESTDIR=3D/tmp/foo
> fatal: not a git repository (or any parent up to mount point /)
> Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set).
> INSTALL=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82/tmp/foo/usr/local/sh=
are/man/man2/ioctl_ficlone.2
> INSTALL=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82/tmp/foo/usr/local/sh=
are/man/man2/ioctl_ficlonerange.2
> INSTALL=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82/tmp/foo/usr/local/sh=
are/man/man2/ioctl_fideduperange.2
> INSTALL=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82/tmp/foo/usr/local/sh=
are/man/man2/ioctl_fslabel.2
> INSTALL=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82/tmp/foo/usr/local/sh=
are/man/man2/ioctl_getfsmap.2
> INSTALL=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82/tmp/foo/usr/local/sh=
are/man/man2/ioctl_iflags.2
> INSTALL=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82/tmp/foo/usr/local/sh=
are/man/man2/ioctl_ns.2
> INSTALL=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82/tmp/foo/usr/local/sh=
are/man/man2/ioctl_pagemap_scan.2
> INSTALL=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82/tmp/foo/usr/local/sh=
are/man/man2type/
> INSTALL=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82/tmp/foo/usr/local/sh=
are/man/man2type/open_how.2type
> [root@zink man-pages-6.06]#=C2=A0
>=20
> Best,
> Henrik Holst

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--4fj3mbm6gyinndej
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmagKZwACgkQnowa+77/
2zIu/BAAkjwPVIFOxvy/Q434sTPWwDtcgM2zQ2WvpJL1a/2nNVsq09OZqvlrfSpp
L89K1Rz4HbPv9RwNoRF3AfxHiFmZ8No/eU/kdwLiHloxQKaM7Xm9x5VTXh7HvPq1
rBapRJ7ny523JcsqshFHZ9V7vo70eg6ncH3U0gsTsmQ6NdCZJ/d0uSSRyyiRvjFV
SNkkNzHJNsblRfZxsk7RN5doC6Wl0rj0O3WmDyM5AtfDoRvNFKi+q1Ie9KfOSt4I
KXdh38/C0X+2iHvfV49R9QyIa3gDEwA1MxiVsKOjzQXXaMpLEc4yT0u/469CWBdW
xdQz7t1N9kVgpDbpB5B2X6afRfcFY6y+J8KtC1mEKTZwSzmUNAnyWcLg29fephXP
9Gunfk5lnUwS4Tmqv6iFjX/I/tCUS3vkj6chKwgE+odxrbdwKk7Vk1VsIu0PFUwC
S9XPq3eGm25gM+rHWptQQ4zypC8Ufve1QD1NksMkAg26ofQYpllevX1Zqdkv/8ml
80mfC5ypNWefOOUoA6bnse6lSINeUOPg2k3gAXUawUmojs9QeGDj+dvEah3Kf8/u
ip7k3mVyF4eVAZG461l1kLzEe0XbuMMZVTgGHdLMk5GXlvUp2nt9V4wjKSYXFGmb
yrcF05wGGrQ5fIqNY4IxZOBQCqgcbLvJ3fNyuOxuTSNvYB3IUeY=
=8PEn
-----END PGP SIGNATURE-----

--4fj3mbm6gyinndej--

