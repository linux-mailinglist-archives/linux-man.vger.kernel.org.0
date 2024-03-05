Return-Path: <linux-man+bounces-532-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 76655871243
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 02:19:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 14CD91F22E5E
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 01:19:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3824411733;
	Tue,  5 Mar 2024 01:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPzFA/QE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED0BD111A2
	for <linux-man@vger.kernel.org>; Tue,  5 Mar 2024 01:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709601539; cv=none; b=Q7/Njahiu2d8ypLJ86OgSQ/1+MSRE2NteAASXAnLDjPdWJbS9+WoJ5EyUuNx9IQvSiXh1DvcKjB+8TilApUTi9T9VNfkWq0ep5zQ0XIN0uS3U4TG60MyTWLMLFB9UYagfblt1WXrXk0xxwQ8Bnz+oaYK5lRQuBxwzeGHbgbDBWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709601539; c=relaxed/simple;
	bh=Mzh/MIB1BMocLUawq6FnoqVegRhT18Y9u9bgimS7fN8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bz7Mu031Cdc6UnEzG+LqNHzTOEZzUyOGZX6BT109+GnD3uN6XitULQJYIO8QpIRheGWKwrhUUrv0Oi9dmAI+pp6hjBG4FRLrEpzvbsGFNA76miaISq4aCcbVl63SUO1KwVK7XI5yiTyypj85ZvUlEQlT8IgFG6Wk+jhL+7FUqQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPzFA/QE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB0D6C433C7;
	Tue,  5 Mar 2024 01:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709601538;
	bh=Mzh/MIB1BMocLUawq6FnoqVegRhT18Y9u9bgimS7fN8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gPzFA/QE3oMdgNmvvdsSpW5SuAcNuDgTUTSyDhwarbwCcwOTabHXxsF37gmrJGq7F
	 iMz3i3TKTyuEo90HEZPgxMfaa+EcfaR4pSKvM1xzbUnDlqEzOCGxJzDLc7hePcTRb6
	 B2ZNrZRfowXBnRoDKQvfa9xML6FPLxcT+xUaGhVpD+Uz2TdZuoRDlAKIqAA5GH1/DL
	 2pUcUkG2G+YTHSTb5eiPMvSZBFlwdW2X4m/d51hPxtbbp3TRpihEyXLj8bO8iv+e7w
	 zYR95u3K9NzNh6VHPCKk5ELEtIAkoUaWZhNc+YSIKZrVEsInkkOBq3DI6J4v1Y779G
	 D4G5eJleKAIGg==
Date: Tue, 5 Mar 2024 02:18:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10
Message-ID: <ZeZy_0HpoRVFN4RZ@debian>
References: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rdfshjmi8dFTpFy5"
Content-Disposition: inline
In-Reply-To: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>


--rdfshjmi8dFTpFy5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 5 Mar 2024 02:18:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10

On Thu, Feb 29, 2024 at 07:28:10PM -0500, Morten Welinder wrote:
> log2, log10:
> These use, e.g., "base 2 logarithm".  Compare that to exp2's "base-2
> exponential" (with a hyphen).  I am leaning towards the hyphenated
> version being correct, but I am not a native English speaker.

Agree.

Have a lovely night,
Alex

commit daffbd4861cfd0534802dbed3122e2f95d9afcd0 (HEAD -> contrib, alx/contr=
ib)
Author: Alejandro Colomar <alx@kernel.org>
Date:   Tue Mar 5 02:15:14 2024 +0100

    log2.3, log10.3: wfix
   =20
    Reported-by: Morten Welinder <mwelinder@gmail.com>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/man3/log10.3 b/man3/log10.3
index 415a77c5a..40e43117a 100644
--- a/man3/log10.3
+++ b/man3/log10.3
@@ -42,10 +42,10 @@ .SH SYNOPSIS
         || /* glibc <=3D 2.19: */ _BSD_SOURCE || _SVID_SOURCE
 .fi
 .SH DESCRIPTION
-These functions return the base 10 logarithm of
+These functions return the base-10 logarithm of
 .IR x .
 .SH RETURN VALUE
-On success, these functions return the base 10 logarithm of
+On success, these functions return the base-10 logarithm of
 .IR x .
 .P
 For special cases, including where
diff --git a/man3/log2.3 b/man3/log2.3
index 62103fe46..11d8c3cc2 100644
--- a/man3/log2.3
+++ b/man3/log2.3
@@ -41,10 +41,10 @@ .SH SYNOPSIS
     _ISOC99_SOURCE || _POSIX_C_SOURCE >=3D 200112L
 .fi
 .SH DESCRIPTION
-These functions return the base 2 logarithm of
+These functions return the base-2 logarithm of
 .IR x .
 .SH RETURN VALUE
-On success, these functions return the base 2 logarithm of
+On success, these functions return the base-2 logarithm of
 .IR x .
 .P
 For special cases, including where


--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--rdfshjmi8dFTpFy5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXmcv8ACgkQnowa+77/
2zJEPhAAiv1wDmW4SnbHAL96Wyfnktle4yZ3FRLapl/qDO8SqZEprQC3I23R0zli
4UJAqobfcUCfQbGc5c2/O88BSbW/7BSei4BZcGH36sLgwwokG1FKjvbOQh3fRx9R
9+Hzea5Q3/BgBEqhxKI0VMB9smKZPPO1bfuCSD/N2Uhf5BL1ZtvT4XDp6wXcfg4A
b92+337efjYKWIVKNVOMPrW8EV18SkstyyoqalsIwoNaJV4cLLaZ4Vh4RV6QthwI
j08aS4UCBFlNe9+fi3xRohbY9TuYAzTgDafNrUObxtTFTkbCJ+RMxeueN+U1arNV
PYSsteNh3GhCGPpy9+mmU5mG16hcgExYj+A0BGv4V1b9398kpjyKw1qZ8U7MOrD+
zbtD7I/pDiUx32dYioy2HBdzRm1CctDHi75RletmypDEyYdtsrTu28fdPvGG5fdo
l2EimRSjNtgSOXeWaaxUPZIBT36ppnoy54Jeu2682Kc1qZ4qaaBYT9Zrg+iAm2WI
KBR+P2SHcZqEtm/GQ/FVIR2lx+0ookwMbqK/IZ4hJxTcRjA7crchty3I62V7eTOW
FzIFvwOq4pBSxNCbGpoI25DEluvYsLe3nPRtZ51O1nur5h6uySvNJEbk3NG8NUcu
56vYs8SJBomWwKCweFPHr5nIxJpjL0/0ANzhHjVpAgR27u8JrJc=
=0iwe
-----END PGP SIGNATURE-----

--rdfshjmi8dFTpFy5--

