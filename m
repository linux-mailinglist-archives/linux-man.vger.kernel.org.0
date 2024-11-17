Return-Path: <linux-man+bounces-1989-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B47F79D035D
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 13:01:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 524DD1F2301D
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:01:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53FA81494DB;
	Sun, 17 Nov 2024 12:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDsJanNP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12108A937
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 12:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731844902; cv=none; b=rlfh/ZH/b0QXFLVahlc0/7fFPDoBZY0OY8+ynllmGrcM7TUcpvTcza8TSVYsynkDWzbH/Y+Ug08Z6Rpyo5WLnAomVbiIpAUNrGhURXOGa+8C8ahtZJUrupCCgB4zHGS/R2n8KxSrQ/qvwncCCxpvNb6LaRQkwlygzDz1Jw1v0c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731844902; c=relaxed/simple;
	bh=Afoj2TR3OTWMVGEzTGSB3CuDTMfa78zQeSr+mm7Wn0M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ujog16ad0D1y7rYsWB5V8sf2/fzE1m7guzykVi6Ox1N0ivzfySWMf9o6szNJxapBqJkTV8KOfCq4IIDYaEfMcUEDYvtoJR9uefp8KcL60K/qqLTXxrGHJnKegRnItrVSWAo9TAuJun/kF7qvDz4WzoZj5AY0VkMJpzWcPFIgECo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDsJanNP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 917B0C4CECD;
	Sun, 17 Nov 2024 12:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731844901;
	bh=Afoj2TR3OTWMVGEzTGSB3CuDTMfa78zQeSr+mm7Wn0M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pDsJanNPuceJL/2SnUcQcWc7tV/SYa0T780p9rOuZaKRDu+f5emG6nb3r+XsGtxAx
	 eiYBN2VGrVr97gf8lSunnrmXWkI5FIMijWyXz0nlU2PtxY7Dfastt2D3Up46Zi4xLY
	 8lNGOiHPQaCkzaxaxw/wpX7/x3ezdwL7V3VXplIMoEqzo7VkmdJPqhfKZ8NiBzFTp3
	 Em1hAA/gpocpBc0Nvf7dvBAIajYOeghMXwyqXwPU1qkP8WneWICjU7vl27fAAgvPXj
	 5xB1dHtrxI6hqZgOvu9f7XeczKpQ0BxzG9bt0WkRua+6RQ4FiTm+ujLsbvpvQwH0Tp
	 shbxi3Kmp+1+A==
Date: Sun, 17 Nov 2024 13:01:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>, branden@debian.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
Message-ID: <gkvmpksnb2e7c5r6apwqmipx3gnzh7zf7gle7v26jukrnbt4uu@ijabu2zug2ib>
References: <ZznJgOKJFHMRJteu@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="j3psawro4lk7x7mm"
Content-Disposition: inline
In-Reply-To: <ZznJgOKJFHMRJteu@meinfjell.helgefjelltest.de>


--j3psawro4lk7x7mm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>, branden@debian.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
References: <ZznJgOKJFHMRJteu@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgOKJFHMRJteu@meinfjell.helgefjelltest.de>

[To +=3D Branden]

Hi Helge, Branden,

On Sun, Nov 17, 2024 at 10:46:24AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    printf-like =E2=86=92 B<printf>(3)-like
>=20
> "The format is interpreted in the usual printf-like way.  Ordinary charac=
ters "
> "are directly copied, tab, newline, and backslash are escaped using \\[rs=
]t, "
> "\\[rs]n, and \\[rs]\\[rs], a percent sign is represented by %%, and "
> "otherwise % indicates a conversion.  The program B<time> will always add=
 a "
> "trailing newline itself.  The conversions follow.  All of those used by "
> "B<tcsh>(1)  are supported."

Thanks!  Fixed.  I've applied the following patch.

	commit 43916c0ce2135bb7c479f0fdba7701d08d6e12b6 (HEAD -> contrib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Sun Nov 17 12:59:40 2024 +0100

	    time.1: ffix
	   =20
	    Reported-by: Helge Kreutzmann <debian@helgefjell.de>
	    Cc: "G. Branden Robinson" <branden@debian.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man1/time.1 b/man/man1/time.1
	index 7729eda86..a4d56aa95 100644
	--- a/man/man1/time.1
	+++ b/man/man1/time.1
	@@ -121,7 +121,9 @@ .SH GNU VERSION
	 .in
	 .\"
	 .SS The format string
	-The format is interpreted in the usual printf-like way.
	+The format is interpreted in the usual
	+.BR printf (3)-like
	+way.
	 Ordinary characters are directly copied, tab, newline,
	 and backslash are escaped using \[rs]t, \[rs]n, and \[rs]\[rs],
	 a percent sign is represented by %%, and otherwise %

Branden, since this may affect your long-awaited patches, please let me
know if you want me to amend the commit with a different approach.

Also, how about sending your MR.sed patches before I break more stuff?
:-)

Have a lovely day!
Alex


--=20
<https://www.alejandro-colomar.es/>

--j3psawro4lk7x7mm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc52yIACgkQnowa+77/
2zJ2Og//bf06xkFfo2gc/S8ztnVRdhACqkOq0coSHwNxwNT+yX4ORmRgpCm37IeG
Ed7ZwziibSjGZnOWqBRT8Z6DYWK6P3B1EZ4BnjNU302VFfSE9CKErq6CfxaUILol
Ct6TFKzFykbDOaBLTwhT04sZ3IVuehfg+5ljekcS1eW18iEciltUgPcDjv/fx9eA
HEG6hAzFofln2JAWK3euX9rqNRn020AM1YYPmYyUNZz0iRLC1dCciuDySNwjboeF
6A3xPX0neFftVYuM3cUR0Dn2l9ojr87QQHNskUN51cMO3QWxEdK7YxjL8zmVHQDf
kKX+3mSP7T3sKrPGD0BYi6g6JKUdaUG7MxaP8NwnATUC75U5oCg40UT9FuZXqgVZ
XWYKeqpRlNVfHLdCSLi5V/NuDH3bEFxB/HdX1FPjcDcF5W3EUpLqlWCR47z3RDls
IsMDgQlondpdSeZ5tquM8N49fT94a/BAQO6QeqJMthIn8E4nnVAEwPPvXAdDUtz8
HG501VWKUj0q1iLy8w3zyrZPtibt9XjKiO/G0vs/m4ZQ6x2eUchnwSzFE0GYi0Vk
oKYA6WxCWH+aPWB3CaqcjF84se5/0IGGqc1EJvKpF2vL3EfP/DoJ5lUenEaUvCQ9
19kBAYdoefjtaInCICC3Fusmu9d4j6e6Vxni9zcJiDymbnix8vE=
=Frq3
-----END PGP SIGNATURE-----

--j3psawro4lk7x7mm--

