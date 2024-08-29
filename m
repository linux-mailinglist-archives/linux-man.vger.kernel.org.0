Return-Path: <linux-man+bounces-1727-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E2C964CD1
	for <lists+linux-man@lfdr.de>; Thu, 29 Aug 2024 19:31:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 687AF1F23AB2
	for <lists+linux-man@lfdr.de>; Thu, 29 Aug 2024 17:31:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C8351B6541;
	Thu, 29 Aug 2024 17:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bf7jAguj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA121B7902
	for <linux-man@vger.kernel.org>; Thu, 29 Aug 2024 17:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724952641; cv=none; b=e1bNS7wONmShkarIoR6WgRXvsIEsd5W9sjN89S7YlvZKnq0DfAMuNex7DmIa6WSGIBF6AxzBEoMDkrreeWXikUiv5fEiZ9fqC119+FPD4dLBpwcBSL0GFbgyskxgnH2Q2jx/WrwW6WlPpQG9pYpCCFjNW4X7YdUwK58tksT6jSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724952641; c=relaxed/simple;
	bh=FTgJOGUWONvhAEVGdHpfiX3ityZ0eZ9xGuoJZgLwSEc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W2RB7IVQ7NsHvTOtFMRgfWOj1NgTPjBMyNAWEM2kROb/XilgwRiCCJqx/8+GD39is71DM2baFIlrWSv2q9Uqt/FqeieA+CyAeM9isyKi082SIJP3BOe0Hm89qNoTQbgBzmWd5weBspN3uqgK4brXCfwsqbxnkODSxomwqJOreCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bf7jAguj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1B26C4CEC7;
	Thu, 29 Aug 2024 17:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724952640;
	bh=FTgJOGUWONvhAEVGdHpfiX3ityZ0eZ9xGuoJZgLwSEc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bf7jAgujLnCo1H2JAddV5lz1erdlSlb6vOT9BslHCmimZS7qued9fa40zjcjcF7MX
	 N+WkLZdjD8pAeJeLm5T6O1LF71vGJav9/n2YW/d6YC3Xs/qYvHIhM8xl/rzWmckq9t
	 zWRuas5K/0dcqfsOiPMTwJixnqi8MxctkqrmlcPfbfmm7DrLxCoXcf9hyePDTn6ydl
	 h9Ft0rFhyfxbudp5ISZ7JonXeMr5MHFy7WtEATyiwob+un4i7P+zPiYjMEw5jLh1dj
	 /aIwYeySDL4yLKKmQItSPud6cFll4g4W0FLRecgrjjq98/DORFL69CdPrfCjTzjuGs
	 dsUIW7fzlpEKA==
Date: Thu, 29 Aug 2024 19:30:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kienan Stewart <kstewart@efficios.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] pipe.7: Reference potential lower default in pipe
 capacity section
Message-ID: <2yg2ckpbzbsdabrhm5y6isue4e7u7mwwcngtshnz65zqieh5b6@ht76cbarxje6>
References: <20240829154304.2010305-1-kstewart@efficios.com>
 <20240829154304.2010305-2-kstewart@efficios.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wtjw4atxpm46jhz5"
Content-Disposition: inline
In-Reply-To: <20240829154304.2010305-2-kstewart@efficios.com>


--wtjw4atxpm46jhz5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kienan Stewart <kstewart@efficios.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] pipe.7: Reference potential lower default in pipe
 capacity section
References: <20240829154304.2010305-1-kstewart@efficios.com>
 <20240829154304.2010305-2-kstewart@efficios.com>
MIME-Version: 1.0
In-Reply-To: <20240829154304.2010305-2-kstewart@efficios.com>

Hi Kienan,

On Thu, Aug 29, 2024 at 11:43:04AM GMT, Kienan Stewart wrote:
> The pipe capacity section makes no indication that the default
> capacity of pipes may not be `16 * PAGE_SIZE` for users exceeding the
> `pipe_user_pages_soft` limit.
>=20
> Signed-off-by: Kienan Stewart <kstewart@efficios.com>
> ---

Thanks for the patch!  I've applied it, with small tweaks to the commit
message.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D663202e816e27dbfb5fddfeb2b93a86919f69027>

Have a lovely day!
Alex

>  man/man7/pipe.7 | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/man/man7/pipe.7 b/man/man7/pipe.7
> index c7f3fbb9e..3d853d27c 100644
> --- a/man/man7/pipe.7
> +++ b/man/man7/pipe.7
> @@ -131,6 +131,9 @@ operations.
>  See
>  .BR fcntl (2)
>  for more information.
> +Since Linux 4.5, the default pipe capacity is lower than 16 pages when t=
he
> +.I pipe\-user\-pages\-soft
> +limit is exceeded.
>  .P
>  The following
>  .BR ioctl (2)
> --=20
> 2.45.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--wtjw4atxpm46jhz5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbQsD0ACgkQnowa+77/
2zJ9HQ/+PoDPJIxj5I/Jcj/xytpguLsS6CKzBnIDG4F4vPRVBr8iJt9bPjlEkxQK
qScOloFNfeaZXHsmtDd5RVMJ4khCbgAcGD5w8Vv/vrPIXbCQTZm8f7quXSnFhcA4
LK1d9ZZd9MpZlpB72D53X0gpi6UKvWATm/oke+h6jbb7G7ow+/6EirN91dpGcGGE
60kO1+WkVX8JTbM/tx39aImqjpq4jNnFd4VD3C0OBTO8h6/8ocJP8gTPQpz36iCX
BMgrMJ+AxselS7joMUb69tLRewgW089eWiYqD0L5P+guv8/OoJ25LcbrxsR+sydq
XySqMJCL5Tl06r32go6UafiKLXPCaj1Q3f64TSceVJYGAai2Nb3pYJw4GsV62ndD
6hUzJKFmcpSLPA8OiyzGMhvkK8jNqaSUe/Dr6ZclnsIAx1rGL2s91N3r0R4fFCTE
Q4wVQv1uYCV39Afjw0te5dAK4P9kU6EK7tuMBWcr2gneybhmDY9zs4P8iRUt0UBt
ClRhUCtxM5GyOVcMrzA6l/69A7vF1sFGWx5q4yKT56duBISZdedWkr9vNbqR39tm
89Xwn230jUe9dB5Kc4qdZM0x8Klcef/1bAf3XaOJehJ9n7QrlDUp/OTYvrfEb8Y3
v/RjXLglV0ILjBUuapRZ3TmHORW/0fbwUZvwJtngHG43le0Tu98=
=5cL8
-----END PGP SIGNATURE-----

--wtjw4atxpm46jhz5--

