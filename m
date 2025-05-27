Return-Path: <linux-man+bounces-3022-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B664BAC4A0A
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 10:20:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CC4F3B57D1
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 08:19:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC93F248F4C;
	Tue, 27 May 2025 08:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKC69tlu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B1D248867
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 08:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748334012; cv=none; b=GYWY2GC2pgTEzX4KjCxEG4x22QdTBKes+rHFmkLAyU8zkznCC4i+JjlwClHB3nj66H3xZFood7+x83U1akDtmdj8po2naOSCiCJcrM2aZnNVLKelv3E/Jhu/XCZYGFCH99w/MsV1s0XbP1YnhmX/Qnvkidwmx6qQdf7Tp8DlN0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748334012; c=relaxed/simple;
	bh=XwMy7fvgbpiETRbKXUI55A+6GwE+JGcnsiBYW8kXfSw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CxSNohayFH4h2pNlfE0XOVHZtkWnV6+9Q4M2UZ1noynqS2Dge2WpQUL3wa5Md7vXGfSTjFPU6k3IFTXGfWUV/Sy5rAiqIetRdmIhqZQPSonvOs+Q1bIm0Iz+Tg4atqTIDIY+9YhP5m282PUR8xh+ETHYVOd5vJM/jo3pJueqtXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKC69tlu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 415F4C4CEE9;
	Tue, 27 May 2025 08:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748334011;
	bh=XwMy7fvgbpiETRbKXUI55A+6GwE+JGcnsiBYW8kXfSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dKC69tlutjI5Qx1b91qXF/9Nv5oNorHXb+L7cWQEKEPf3TLcznfHouZpnypc004W/
	 5viuu30bY/8FAz+pfmot2Qs90RaSXJpUgSYlKGa+7XeAtVfr+prHDnW3NUs6IabP+G
	 /5MQfS+aijgUkYtbgOrtGQs41E31voO+rNhoxm0jb9Yf59gqq+6F+pTrukPhGEy8HZ
	 QgK+NJsalryJpbdYR8naYsWLsctFAc+TMB4t2EAnB5I6bDaOTEZGSc30Yswc9KTCJZ
	 dVAWgeO5Mwa0HfEyjdCA7+alaLVeaEqWzkiYw0/R9bA3Wvwp7fODKJFb56RA9g7ShR
	 nVKuqlCZLZOHA==
Date: Tue, 27 May 2025 10:20:08 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jim Garrison <jhg@acm.org>
Cc: linux-man@vger.kernel.org
Subject: Re: man7.org inet_ntop formatting issue
Message-ID: <yof7u5lp7pgyfcskqkcprp3zvk2gzhjkzebnob7zuzgwy6uklq@gcup4ojt5xyc>
References: <B81F3885-DB08-46A7-9DD2-BA0156CB77BE@acm.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l4dupng2fbeezi6a"
Content-Disposition: inline
In-Reply-To: <B81F3885-DB08-46A7-9DD2-BA0156CB77BE@acm.org>


--l4dupng2fbeezi6a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jim Garrison <jhg@acm.org>
Cc: linux-man@vger.kernel.org
Subject: Re: man7.org inet_ntop formatting issue
References: <B81F3885-DB08-46A7-9DD2-BA0156CB77BE@acm.org>
MIME-Version: 1.0
In-Reply-To: <B81F3885-DB08-46A7-9DD2-BA0156CB77BE@acm.org>

[Adding linux-man@ to CC]

Hi Jim,

On Mon, May 26, 2025 at 05:27:36PM -0700, Jim Garrison wrote:
> Synopsis:
>=20
> const char *inet_ntop(int af, const void *restrict src,
>                              char dst[restrict .size], socklen_t size);
> Shouldn't that be=20
>=20
> const char *inet_ntop(int af, const void *restrict src,
>                              char *restrict dst, socklen_t size);

In the latest release of the Linux man-pages project, 6.14, the
prototype has been changed to

	$ man -w inet_ntop \
	| xargs mansect SYNOPSIS \
	| MANWIDTH=3D64 man /dev/stdin \
	| cat;
	inet_ntop(3)        Library Functions Manual       inet_ntop(3)

	SYNOPSIS
	     #include <arpa/inet.h>

	     const char *inet_ntop(socklen_t size;
				   int af, const void *restrict src,
				   char dst[restrict size], socklen_t size);

	Linux man=E2=80=90pages 6.13=E2=80=9057... 2025=E2=80=9005=E2=80=9006     =
         inet_ntop(3)

which uses GNU forward declaration of parameters.  It was changed in
this commit:

	$ git show d2c2db8830 -- man/man3/inet_ntop.3
	commit d2c2db8830f8fcbb736bdea52b398257447bef6b
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Fri Mar 14 18:33:41 2025 +0100

	    man/: SYNOPSIS: Use GNU forward-declarations of parameters for sizes o=
f array parameters
	   =20
	    This syntax has been proposed for standardization in N3433.
	   =20
	    Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3433.pdf>
	    Cc: Christopher Bazley <chris.bazley.wg14@gmail.com>
	    Cc: Martin Uecker <uecker@tugraz.at>
	    Cc: Joseph Myers <josmyers@redhat.com>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/inet_ntop.3 b/man/man3/inet_ntop.3
	index 2082d2a5e..d9d1d3b5a 100644
	--- a/man/man3/inet_ntop.3
	+++ b/man/man3/inet_ntop.3
	@@ -14,8 +14,9 @@ .SH SYNOPSIS
	 .nf
	 .B #include <arpa/inet.h>
	 .P
	-.BI "const char *inet_ntop(int " af ", const void *restrict " src ,
	-.BI "                      char " dst "[restrict ." size "], socklen_t " =
size );
	+.BI "const char *inet_ntop(socklen_t " size ;
	+.BI "                      int " af ", const void *restrict " src ,
	+.BI "                      char " dst "[restrict " size "], socklen_t " s=
ize );
	 .fi
	 .SH DESCRIPTION
	 This function converts the network address structure


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--l4dupng2fbeezi6a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg1dbEACgkQ64mZXMKQ
wqnkvg//ZfmSRhKcVkeK3mrlc4myceNoAIrz71FPb/h1xcz0lumiX1kLiqgIMHgP
1tijAgHEfs8bwDt4GH0JWM1Id382IYbprDI4tRll1sFZiBBAf1hkUx0jtUJrHqCu
mhnMDOx/Q0bEotwOTf4tIeTdKZHynmeE5WH+LRpowQ7fQOkZcgu88DULpUzklZmQ
eAK/89mnnMeXXg2U/14vTqItu2A/b4lpSic7RHOBdmkUm6KHUwO/H8m6s2WC0En8
+pS3DPvGYkV5DVMesnCDzm5SgLYSk0/IhkrIKKy19Q84GN0ymUdq9kQN2357cRpw
b5XnBUD9zAbdPPguxEt4wne4j6/4Cr5gKt7LDxNTw1wbvh8eWcLxSaPef3klb6YW
330XCpyh9Znx5lzcasm056L2QFbb3YXzpsx1jqmvOQcVUwbJn4Ve4RSRaY348lSx
HcFPCFCGS3SAyU3im/HI19JA62oIAy4PZmBTPdR4LdOG/1+45EuSWMPgWejftxXe
DPd6I3V98RCDyrVc3HWM41WRYkvxFcO1PwfJluaI0mebF73jOjJHp6r4l1RJo/ZV
ckoPGLEUK4tB6lopYfK4LwCwYLd1tAAoTUbzNNBEmRsdle/vU+wrBQgoWjY+SIfM
op4lu8Zwnx4tPAziwu2mXDGqY4K0KB8fXQF2/5JjAmkobT8OOFo=
=gP/3
-----END PGP SIGNATURE-----

--l4dupng2fbeezi6a--

