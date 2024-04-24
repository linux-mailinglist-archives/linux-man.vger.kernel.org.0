Return-Path: <linux-man+bounces-810-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C17B8B0717
	for <lists+linux-man@lfdr.de>; Wed, 24 Apr 2024 12:17:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E21AB261FE
	for <lists+linux-man@lfdr.de>; Wed, 24 Apr 2024 10:17:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A988159589;
	Wed, 24 Apr 2024 10:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpasfoCf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4F0159209
	for <linux-man@vger.kernel.org>; Wed, 24 Apr 2024 10:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713953787; cv=none; b=Pd2CQ3Ef5WHzsLZthheqe8pcFh4/YW8499puVpVcChT+xq5+eykrmrKJ8bLnIoQftsEb9znPxbsPsNW2YEhfl1qBHZLgOYEjaoH2JD2K+PZUoRgvaEZ36oHMfPePyYx1UoKZFQRM8/wjkp9e4QcHk7NGrZqsJseIntbFdWTPMkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713953787; c=relaxed/simple;
	bh=An35pe3ZP+BZdxCaQD6XSSPsWmrwXpRgRqVog17nFeM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iQxMzgAhI0pjoW1Lai/P7rwCiTisDpYwegeUmi7lcc/VMrCrIrngh9Xb7FFs9t/FfUwnhrVHnwMoIAYEqXYImZQ6/jn8udT1OjyAj/cFQbfbbK9SWMdIE7IyTUYCJv3bIt0XSRUCy4I9G9+5LEyLjAl3c6962j1eYCkEQMj4yoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpasfoCf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB65FC113CE;
	Wed, 24 Apr 2024 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713953786;
	bh=An35pe3ZP+BZdxCaQD6XSSPsWmrwXpRgRqVog17nFeM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rpasfoCfHEFrGSyPWNrxt8tZO/bQE4SnNn2EaoLar+3biz15VjkY8ZchO20dbgVAP
	 8JwlkPNU4BuN+ZoD8HkrqVXMw80j1laKBFvDVkspoCQz4rxPrvKPlR+TSV75ftUeg2
	 h8NMAZ76UVn/mRWS2mylyRlEV9ZkwaS1ekLK9LEhZbvbWdnLR8UpLOO9XMPO6RvNXL
	 xSHMLvYFmd4IfG/4MS0svzgwtRxFIag0j8zD60MRTUczSUNLy4m4hiffkBNdDidRJ8
	 zVqabytyAvezDfIkb88QZLhdVqoNNFIlzOsBqH1MfJA8dcVYg8IrBnT4DGiMTkLZaw
	 ZwqTN/dgRV4mw==
Date: Wed, 24 Apr 2024 12:16:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Simon Barth <simon.barth@gmx.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] slist.3: wfix
Message-ID: <Zijb98AgXyX6VgYU@debian>
References: <20240424000949.65424-2-simon.barth@gmx.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l5qPPpnwz45g1l91"
Content-Disposition: inline
In-Reply-To: <20240424000949.65424-2-simon.barth@gmx.de>


--l5qPPpnwz45g1l91
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Apr 2024 12:16:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Simon Barth <simon.barth@gmx.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] slist.3: wfix

On Wed, Apr 24, 2024 at 02:09:50AM +0200, Simon Barth wrote:
> This page is about singly linked lists, not doubly linked lists.
>=20
> Signed-off-by: Simon Barth <simon.barth@gmx.de>

Hi Simon,

Patch applied.  Thanks!

Have a lovely day!
Alex

> ---
>  man3/slist.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man3/slist.3 b/man3/slist.3
> index fdb045aee..02745286b 100644
> --- a/man3/slist.3
> +++ b/man3/slist.3
> @@ -68,7 +68,7 @@ Standard C library
>  .\" .BI "                        SLIST_ENTRY " NAME );
>  .fi
>  .SH DESCRIPTION
> -These macros define and operate on doubly linked lists.
> +These macros define and operate on singly linked lists.
>  .P
>  In the macro definitions,
>  .I TYPE
> --
> 2.44.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--l5qPPpnwz45g1l91
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYo2/cACgkQnowa+77/
2zKivQ/+I3QSjdvJEVv7GPv7WjCUPi2X2aHBEA13ld8ml+yxmXNxRPYvVvKqzUFA
Bch66iBN27CKcEOQUmIcg792RYTtN/GS91u4KEIRu12kfzRYAS+kiqVavOUP2CC4
uz28xR217Aj3ae4Ql0yam90ICHCshCNC13XiAfthbgf/f4upRWOIqyUb3ukgRr+s
MGBIvwX200OTJ0H1NEczD88BJLIxByJzyOdsPU6jOiE82FHabZLFov34FE9TuTz2
TQs4PTrAx1VLOyi5xcP/f9t6d8D5PSMzO6XfXSJUz8lnr/xRSiwowIzyQoQu5pU3
rPEON482bjZ9EVu58GJ4AoEa6fxfzUpEJvPFUdaQbPtckbwXPNz9UUOdS/5cScLq
GE2Nw7PY8vc3piHk0p3wpaCCa/JTN72rHB4O08weH5wPQkt138SekDqsVy/R4WxI
N6RJgOiAecgIByJPLp0qusCYS0NU93lGGGAUEZpCq9WFcN2PZz/enxKLJ5WZNJ91
Ox1X9qdukwJoDBLI/GPo34zdqs/7nhq1F4W9DaslQ0XkJZPowk2YU10cjSXkaOyi
2dcJD6MHN5DzbPzjQGwQTNBR575nl5vBEOPbVCuNTeEHJdZ8aJSthpzObGkWYmlh
6MMyf1lRZvOpvsq/AiW5Nks7eFn4LpKB7eFQsaE8dwehbsfgf0E=
=VRl2
-----END PGP SIGNATURE-----

--l5qPPpnwz45g1l91--

