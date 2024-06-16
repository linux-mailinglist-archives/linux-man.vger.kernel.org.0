Return-Path: <linux-man+bounces-1205-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C533A909CFE
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 12:47:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 49FCA1F21394
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 10:47:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0E341411DE;
	Sun, 16 Jun 2024 10:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3xWFQ0q"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCD849635
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 10:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718534860; cv=none; b=NyRAsIzbkI5IFny/A/z2uL/pzAH1oF2gzJ1uonlGlYtf9e3vcawwd2ej20EOvv2SHaO21eh1xxb09ESqiKW3fVITysqiTW0LYgjQR/Gcqgikuc5DChanRQvY/axhjLjLtqtoUrc8R2XDTWaqJONIMzICBxba05Ppu6JTbUGvvRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718534860; c=relaxed/simple;
	bh=80H8TMxe3Gw1ojZeLOyFhOgT88iog41nZN/sWaDVrBc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LBV9t9R7SdDGooK9WWZG2i7ZC7vVr4if+TKMX61hC5sZKq48lt/XcKe4DGOVp2TLz338veHwyd0+kTYSeto5Ex+PANi1RnSS2wIVrNSgi7VaFy4vZqRlXp2DTTc1XZ9FHyRxr2ME8QYyJEJTUQOGlD1XQqMdwwvi1W5AMruPh1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3xWFQ0q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27695C2BBFC;
	Sun, 16 Jun 2024 10:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718534859;
	bh=80H8TMxe3Gw1ojZeLOyFhOgT88iog41nZN/sWaDVrBc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q3xWFQ0qslLeMEVymuHJ9i8fYH71pqqAOre4+O8awJnd/nswmUvLUOCANs2OVpreO
	 QKgR781dAX41u1uHYtguzXFUooIBI0Xa+1JS0LHMMHTtIVwMfXidn6WR6+AUXZ3gj/
	 x26jSOED7/plfucU+qJwfUIMTHwfRcHE7T2GparvVQP87HvA8YXIN1MtykqGKpidMr
	 cKJBQ3fXWOiRfiHU0YsFJEjO4cBHeTMc4Vl25m3lqgKR6iTjP2nXmlqWnANY3kMmpP
	 4lw4Xdhp5fCPb5b/TW2XOdUdYqGfl10eDAXyqcrP/BZ3cwA+oFsTtZXE3TQgO+MdU7
	 88KHSmqSQawpQ==
Date: Sun, 16 Jun 2024 12:47:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 07/11] setjmp.3: fix section references
Message-ID: <wetdiek6naltbxd35r7suxa4fus3k6qkjovchfyu2bg6fhqjd4@olqlwyxhfc7f>
References: <20240616011920.1627949-1-kolyshkin@gmail.com>
 <20240616011920.1627949-8-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gyr6is4riigvi77d"
Content-Disposition: inline
In-Reply-To: <20240616011920.1627949-8-kolyshkin@gmail.com>


--gyr6is4riigvi77d
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 07/11] setjmp.3: fix section references
References: <20240616011920.1627949-1-kolyshkin@gmail.com>
 <20240616011920.1627949-8-kolyshkin@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240616011920.1627949-8-kolyshkin@gmail.com>

Hi Kir,

On Sat, Jun 15, 2024 at 06:19:00PM GMT, Kir Kolyshkin wrote:
> Commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
> Reorganize sections") results in a few problems with setjmp(3):
>=20
>  1. "Feature Test Macro Requirements for glibc" refers to NOTES, while
>     those macros are now described in HISTORY.
>=20
>  2. The discussion about saving signal mask is now split between HISTORY
>     and NOTES.
>=20
> To fix all this, let's remove NOTES and fix references to point to
> HISTORY.
>=20
> Fixes: 4131356cd
> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
> ---
>  man/man3/setjmp.3 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man3/setjmp.3 b/man/man3/setjmp.3
> index 2319feb47..1403d6ba7 100644
> --- a/man/man3/setjmp.3
> +++ b/man/man3/setjmp.3
> @@ -26,7 +26,7 @@ .SH SYNOPSIS
>  .RE
>  .P
>  .BR setjmp ():
> -see NOTES.
> +see HISTORY.
>  .P
>  .BR sigsetjmp ():
>  .nf
> @@ -65,7 +65,7 @@ .SH DESCRIPTION
>  was called and to restore ("rewind") the stack to its state at the time =
of the
>  .BR setjmp ()
>  call.
> -In addition, and depending on the implementation (see NOTES),
> +In addition, and depending on the implementation (see HISTORY),
>  the values of some other registers and the process signal mask
>  may be restored to their state at the time of the
>  .BR setjmp ()
> @@ -201,7 +201,7 @@ .SH HISTORY
>  with a nonzero
>  .I savesigs
>  argument.
> -.SH NOTES
> +.P

But the paragraph below is not about HISTORY.  It's current stuff (which
is why I kept it).  How about saying "see NOTES and HISTORY"?

Cheers,
Alex

>  .BR setjmp ()
>  and
>  .BR longjmp ()
> --=20
> 2.45.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--gyr6is4riigvi77d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZuwsgACgkQnowa+77/
2zLMqRAAkVWDFncNBzPLhGhh8QmZQ9t1hfeDtkMNLtcboZA3BL1rV2g+K9ZvOidg
E2ka3oo16wlMBx4a64EJt3M7o3G4t2OgxHD3QMQR+Wr74DEoDTy2nxdUM0mHI9Nj
b++GlZ2dxWYdSyCdyZerucAVY16tc6WYP2lNT+KqtlnsATYPFVTapT4r8L4LYWTS
fYIfZW+TZuzP1peR6PZz3iNkZmTDjBqRmXV7qhT9cbTqb6c6fjLEKciagXg1ptL8
mlWvle92RkgvTfcuAO4Q6tWgQeY5e8fXRtJ/XWgjx1+CFbv0Kw4cIYzxURncXswj
+vG4QOeCxdx68vkCnMm0Xycwma2ctYG+EN5Vp8r9m6lwO9L6oD7xvWZ92WaTpWwT
de1pfK7rURtD1zzdgT2G2PS/Pa32jQ/+coDLZF6aej/KpkxIuFWUqk0r9lKClPBo
eHDB+kchI1iY2wB1m5AzcEuCEIdyM/C9Y/83mlUTGSbpyaqZ3szlp6wIEwljJzIq
ba/qto4l8Len0krbfZLNiwS57jIJ1TS8sFtu9t3r0CR1Ap1oelMwTUOjQL2gl6x0
hOsGod5/LPIzV33DkAPHAr2WLDLOlHzHBtd+G7brkxGWwwIOx2CF9PacwMuVOEFG
l8Tc0DXxHy7n2hmzEMnsSkmXOJbIqK5Xj4u4hqP/ulrswHAu/gM=
=8smm
-----END PGP SIGNATURE-----

--gyr6is4riigvi77d--

