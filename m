Return-Path: <linux-man+bounces-2570-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A63DAA4BBA3
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 11:04:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9CFBC1891DBB
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 10:05:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F3B11F2360;
	Mon,  3 Mar 2025 10:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHV1Hnr2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED101F1534
	for <linux-man@vger.kernel.org>; Mon,  3 Mar 2025 10:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740996282; cv=none; b=qmruy3x+Fw5HqHZ3C53fK2b7+mETlvpnTMzq6aHEhKuy5/QsRNudg7wnpH3B2oAAar8B52a/I6qeyHQgcLOZS2TSFpnmOzwMlTwEbP+QVJ6aFz794YvKdjvMddUTnuwH6pLEEYIQXZJztlduTbZpGhgilL0slkP14FIPPGPl2x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740996282; c=relaxed/simple;
	bh=sBVx+8Zs7dMZJ1m+d2qGWpB1z8O3UPWWJyXaiUqaozE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nYUSUEEcClUt2Pbk1Ihz/s99AOg5fv6rbfhotyomOYjMTyvU0RtqQ08i01Uygzx1MMwpC+p1UFPGcbZBKh0AhnuqnPThb25ufAj6xrlbC6jUXYya/3+IavGymNvlIrQoZ+Iy6dY2h9lWSaFeQSaBBYjuJhv76RbTJz05PcKTDBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHV1Hnr2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEFF6C4CEE5;
	Mon,  3 Mar 2025 10:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740996280;
	bh=sBVx+8Zs7dMZJ1m+d2qGWpB1z8O3UPWWJyXaiUqaozE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BHV1Hnr2yrXs49XuE4Tk7yn2WiIUx07W1gzut/OCzgKBv6t3tP3hW8Hk63K192I6I
	 cYnWt303EiGpRFgvDTtl6GiggGah8+1yyDKKzedy/2fcI21916PgGrMqWSIie6ypzf
	 oXBbkZXpEI3NtMmzThWuRsDHklGOi3zeDHKOY/yG9ssYljY6oJjA+vW6KjETrD+rd7
	 bl6x3TFdjQGd0OFBeayPbG0VfZV5AAlBSC28vTm7w3cNAb+0SSMo7fzvQHreP6QO3B
	 eNT3wJipap2Eqz6niaS7qsQKv4jm77DqCX0L8TZiRLq19MoqywQJKxXgggYU/WjyAM
	 JF0KeFXdK/v/Q==
Date: Mon, 3 Mar 2025 11:04:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/mkdir.2: add missing .TP
Message-ID: <acnm342pailsiqqrelvaugpaupuceks5hvtvapejydxkig627b@acdnbxarcmro>
References: <6DF9A4EE0A868FB4+20250303095057.92138-1-chenlinxuan@uniontech.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jabiibwarssnog6m"
Content-Disposition: inline
In-Reply-To: <6DF9A4EE0A868FB4+20250303095057.92138-1-chenlinxuan@uniontech.com>


--jabiibwarssnog6m
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/mkdir.2: add missing .TP
References: <6DF9A4EE0A868FB4+20250303095057.92138-1-chenlinxuan@uniontech.com>
MIME-Version: 1.0
In-Reply-To: <6DF9A4EE0A868FB4+20250303095057.92138-1-chenlinxuan@uniontech.com>

Hi Chen,

On Mon, Mar 03, 2025 at 05:50:57PM +0800, Chen Linxuan wrote:
> Signed-off-by: Chen Linxuan <chenlinxuan@uniontech.com>

Thanks!  I've added a Fixes tag for it.  I have applied this patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Df96a882532f67b516afa89b6e8feb6064c4e344a>


Have a lovely day!
Alex

> ---
>  man/man2/mkdir.2 | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/man/man2/mkdir.2 b/man/man2/mkdir.2
> index 3c3fad6ee..20163c88e 100644
> --- a/man/man2/mkdir.2
> +++ b/man/man2/mkdir.2
> @@ -203,6 +203,7 @@ does not support the creation of directories.
>  .B EROFS
>  .I pathname
>  refers to a file on a read-only filesystem.
> +.TP
>  .B EOVERFLOW
>  UID or GID mappings (see
>  .BR user_namespaces (7))
> --=20
> 2.43.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--jabiibwarssnog6m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfFfrQACgkQ64mZXMKQ
wqncxRAAsS7+1zM+4KlqU7W14IbPY1eiVMVxi4hO9TIhU5FOvwb4z5dY7/QbAsaB
XpC5ApAO5tr1QytuPh/No1K72NZJP1cZ2IulIUH4c4dBJJ+SPolAbrOSJKhH/gT4
QJc8zKleBq86qyQiceNnj3LHD5NVuIauozwxJsY5Mm6/Z1WK1fUlGNwohdvZA9Q0
OEJteqZKgPjPrv3Siy07MMLBlK8pHqH2poDgyqwWIYG81JQDX1ZeUKdibHg/GYnt
MR5cMO4edRc37yE4sV+KQc1CQmoDA9vNA+46Hjd4TIGxvtRRNXjLd8dAvIrpGA4o
LKeeZ2bWWyG0RMV/7wIh0M4Yd4l1GTDcA8Swc/9Xvw6495QRyi+kN4XcfP7ETVL9
tntzr7cElvL7/PRSOzytrjuPtK4YCAaQZMzJ22/V+Bh4BYR7WyjytS7Ywjtomjo5
Xh5GOGZeElxVI3P9hTE/0fZDUAbIJsZ7apGW4hRdGuKNZzXq46CGqLr4MDjOSnel
xAa9FaWtkNIBv4sqdTc/5w/Oyvm27SCWpRlE2lOY8CbiDCST6ks5A3+pNNfKuTo0
XvJacfhWIxe0UAlQbq77q5D1wOh2pxK0SIZ+GqHofgqlWRWipKzNWG6NKzb8FLvJ
MTLIg3Kz+6dRrbihS/zaqRmZmy6f8H8WPuDtElqJMjgKVyHbtuY=
=CV2I
-----END PGP SIGNATURE-----

--jabiibwarssnog6m--

