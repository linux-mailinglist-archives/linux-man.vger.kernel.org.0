Return-Path: <linux-man+bounces-2234-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5EDA11558
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 00:26:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7990F7A02DD
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 23:25:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98EDF2139DC;
	Tue, 14 Jan 2025 23:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6WofnTr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DB91D47BD
	for <linux-man@vger.kernel.org>; Tue, 14 Jan 2025 23:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736897161; cv=none; b=OAMON4+egCQOFx3IPrbZfypcVprJvog/rGCe1qQRPmzub1R3/zd8A8dI/Q8YiwMTUghaNAcL8Iah5tQYGW9/4LezuFo+c/rHwyHry8jFhuKZW5hx9mRtJ69z/+udo/kkC4T0a/76WfB/+GPm85PXoKKshi6XkJKkKheDS8//n9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736897161; c=relaxed/simple;
	bh=FSBCxq5BmoQSEx4uLa937OIxD+8u32Kp8a6PvJBs5QM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LxOKS/vFN3Mf9C2nDpijIb7dl5q2058lUnvsEg2W9l/gLtixkIi75o2aCIXCGgo4icMEPVCZUyEFAsEf8qSaCFf9B2ElIvnMqFoNGxA47urUkM9ZlpVAKz2/dzRjf/i3nYO4NeaYGdefof0luxouiOifbfo6gKDU/GF7DCUAGJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6WofnTr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27088C4CEDD;
	Tue, 14 Jan 2025 23:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736897159;
	bh=FSBCxq5BmoQSEx4uLa937OIxD+8u32Kp8a6PvJBs5QM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V6WofnTr2lczhUpK4//fbvduMfeSgw/UqWmzoymwIdfSxIPkOt34Q9chSt7Tr7Vp4
	 9tHIIa7it/LR7cs/iD+fiZe06ggIIxqYoa76CV0wW1tO+rYRSTf+cdhWdHrEYkYyeJ
	 jIYjAmEXqFViBHDIu5sXmhpW+FI8nDkErCMrcw+9nBnjhz9/yFsfjTO4iMphTFhlVZ
	 O0vxGm4K+6jon9PeqK8+c0MMsFDMIaoYkfNVvsLbRdd4LoP0vK/FdjIunUSWuToukG
	 D7Cxcpv6LfhyHBRl1FdHYXH6RoWffNtwsRgWds9+29yhPVjgIPZv7vQuMMNo+8JDqM
	 reTk+O8JZVbhQ==
Date: Wed, 15 Jan 2025 00:26:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man7/man-pages.7: Stop telling contributors to
 write titles in all caps
Message-ID: <bjjq5xfz5kzcqgqpegt3k33hv6cprrpj2vmqupba4g7nssedvp@u2zqmyey5wex>
References: <20250114130028.28638-1-jason@jasonyundt.email>
 <20250114211427.160509-1-jason@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rqrrgge636orlx2j"
Content-Disposition: inline
In-Reply-To: <20250114211427.160509-1-jason@jasonyundt.email>


--rqrrgge636orlx2j
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man7/man-pages.7: Stop telling contributors to
 write titles in all caps
References: <20250114130028.28638-1-jason@jasonyundt.email>
 <20250114211427.160509-1-jason@jasonyundt.email>
MIME-Version: 1.0
In-Reply-To: <20250114211427.160509-1-jason@jasonyundt.email>

Hi Jason,

On Tue, Jan 14, 2025 at 04:14:25PM -0500, Jason Yundt wrote:
> Recently, I submitted my first patch to the Linux man-pages project.  In
> my patch, I had created a new manual page.  On the manual page=E2=80=99s =
title
> line, I had written the title of my new page in all caps because
> man-pages(7) said that I should write it that way.  It turns out that
> man-pages(7) was wrong and that the title on the title line should have
> matched the title in the manual page=E2=80=99s filename [1][2].  This com=
mit
> corrects man-pages(7) so that it does not tell contributors to use all
> caps when writing titles on title lines.
>=20
> [1]: <https://lore.kernel.org/linux-man/rph24kz36vysoeix4qoxxxcwq3c3fskws=
2vmxkkgcb2lpits3f@ysm7ug66svzh/T/#mc84250a6634d7f776118879021331001cceccbe5>
> [2]: <https://lore.kernel.org/linux-man/mog6nnwzwl2dmlrec5b7l76wbxlsnklvd=
ulok644x6o557trib@3zwtoz47r4x3/T/#mf71422d0e159210a7ca2798f2bba50a668e1410e>
> ---
> This new version of the patch removes the ", written in ..." part like
> Alex suggested.

Thanks!  I've applied this patch:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D6eb4c25e3744c9ccbb68af70da1889594cc732b3>

Cheers,
Alex

>=20
>  man/man7/man-pages.7 | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/man/man7/man-pages.7 b/man/man7/man-pages.7
> index dc117662f..0ba3991e8 100644
> --- a/man/man7/man-pages.7
> +++ b/man/man7/man-pages.7
> @@ -95,8 +95,7 @@ .SS Title line
>  The arguments of the command are as follows:
>  .TP
>  .I title
> -The title of the man page, written in all caps (e.g.,
> -.IR MAN-PAGES ).
> +The title of the man page.
>  .TP
>  .I section
>  The section number in which the man page should be placed (e.g.,
> --=20
> 2.47.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--rqrrgge636orlx2j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeG8pAACgkQnowa+77/
2zLwTA/+Ovu5cKenVa5rq95mN6yYeIY+3sWQhMBUnUsanNxyZq/4gOwWRQiOd6BG
rIWRvErwABIhB8gUDTGExQ9DEdA97mrHCX2mnbABrqi++UBf+4FJKAYmY3bccMnE
SVsJBxh5MJ2Ni33MskdNB9pEd5KOy2MbyXzngmmHAhj5sFnPNB+YeNapL98YywRo
tybEnAl66cqixj6LtCEawiqrp0tLHfeN8Y6IIBMrE4+siIdFN44ISM12W+tqp12y
tNLHnnzI3yZH76saaciGqdqfWaDuDZjBr5fB0bYhRoPQrzg/mea2cdSE55CXMzde
8f3r01XGPofLffKqMlw+MDyon4mym7wLHsifYIhkruQDxs48oSV60opztAA8JYdJ
oNvbCPtPnV1Vt0x68NiCeZPOoVqXs3glP7caWwSINaRCIALTz2yIbKSIF+7aJ3Z5
2+j1gInbBU5JPiS0Bf42LWzaNI+VTZEr9VRuUdrBxgRYWP/X6uvKlwEgh9wwyUNO
hi8TroiwXqQTTEvw7Ayes3AD+l4NfFfzfdARmOmuIQ2C5aI7gtYP28tjYnr77Nbn
jJfwio7mTabN4mdWJcNgiOw46b8n9JtH31JC/5/iS/62dm3LOdWPQVnYEsNCYlEW
vR3r/AYGRo1fvV1TVgh5thygHB4QqPlaPT24Cp4oDdJKCVdXw2U=
=0iW3
-----END PGP SIGNATURE-----

--rqrrgge636orlx2j--

