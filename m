Return-Path: <linux-man+bounces-2605-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F03A6358F
	for <lists+linux-man@lfdr.de>; Sun, 16 Mar 2025 13:10:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 926377A56F9
	for <lists+linux-man@lfdr.de>; Sun, 16 Mar 2025 12:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD7391A0BFA;
	Sun, 16 Mar 2025 12:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lv9tjl1H"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DEB8134CF
	for <linux-man@vger.kernel.org>; Sun, 16 Mar 2025 12:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742127004; cv=none; b=iJz8twy4fu0HleNfq3IN6kC7E00DxBQkBt74CWDhNzDBfmPpp81suixL3uu6Zu5Um/K4+JOjIowop2lDtuAC+RCbLg33TjTgPzjHSmPaDiWXeirE8d1IrLQGpzrVx5Ur3+EBpR/TD38kbQ2vfwOI98vRy+e+1/a/uFWIod+yrS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742127004; c=relaxed/simple;
	bh=hLHAYrRcWFI8CUws+ikaKmA43q0dFYtZu/NJx5QKdM4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HmD2LPZT6bNalXQFJoOTST7lKnphBEeWMu52gq5SeVQ77y9WBQ4LJR4oD4QQrC6MuF/CKmHTPUXXG7XyegHfLq7ziICJoAr21u58DEgYAaSazZv+4EhAR4KVc/lkUwXIeArC6echkFt9Yy27O3XRBAKxzyn+L6Rsl0jav7ryRho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lv9tjl1H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 202ADC4CEDD;
	Sun, 16 Mar 2025 12:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742127004;
	bh=hLHAYrRcWFI8CUws+ikaKmA43q0dFYtZu/NJx5QKdM4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lv9tjl1HOPndZGhF5Ug5jJEmg+JYOqJRPLZarrk0ckwpOXpwgc9+dLU3sB4O8RGf8
	 Zff4ydeZo3jL+MhjBlAHucj9YJ90hgFMOcMhsLbnXxM1rFhuHwZvQ9gGTNtQaBPzVN
	 kU3BxWRYXUaBiXDrx8+JbvlhT2uO4Uw5hBheD2gAWP3FnC09IVdasp20rAP0FY/T2a
	 xwDmwlmoXXTRMHG05TWJQCB8EuyN12ZrI7QrBcvq61QhO5ory6DnyIyEQVKem4LUHZ
	 bMwGhRu0Jar1Gs+SAOEsi/CK9WIhqvy8uHbCtTgZOqMtOitOjw4xTKDfGCgr7530Ua
	 OG6K8b8xWuGTQ==
Date: Sun, 16 Mar 2025 13:10:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Kang-Che Sung <explorer09@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH 2/2] man/man3/wcrtomb.3: Document MB_CUR_MAX length
 requirement
Message-ID: <uxualrxjgtb4cld44fvt7lr6blpltiflnjzertpkctk3s2jwx7@ei4h74ueqzc4>
References: <CADDzAfM1HVMkyQY-zhv81NKS4X-neCTGETQec-f9X4acgpZApw@mail.gmail.com>
 <CADDzAfMq3X=u7+Sk_gTxOKA0O+4OgXw8XD3KifnQKSNFwGtG0Q@mail.gmail.com>
 <CADDzAfMfQ0Tg+Xy_0Moe2oQ6SC5BgXhCa8oBDPgrmMRb2RPnUA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="npeyastyft2rxh47"
Content-Disposition: inline
In-Reply-To: <CADDzAfMfQ0Tg+Xy_0Moe2oQ6SC5BgXhCa8oBDPgrmMRb2RPnUA@mail.gmail.com>


--npeyastyft2rxh47
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kang-Che Sung <explorer09@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH 2/2] man/man3/wcrtomb.3: Document MB_CUR_MAX length
 requirement
References: <CADDzAfM1HVMkyQY-zhv81NKS4X-neCTGETQec-f9X4acgpZApw@mail.gmail.com>
 <CADDzAfMq3X=u7+Sk_gTxOKA0O+4OgXw8XD3KifnQKSNFwGtG0Q@mail.gmail.com>
 <CADDzAfMfQ0Tg+Xy_0Moe2oQ6SC5BgXhCa8oBDPgrmMRb2RPnUA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADDzAfMfQ0Tg+Xy_0Moe2oQ6SC5BgXhCa8oBDPgrmMRb2RPnUA@mail.gmail.com>

Hi,

On Sun, Mar 16, 2025 at 05:08:39PM +0800, Kang-Che Sung wrote:
> The wcrtomb(3) function, like wctomb(3), has a length requirement about
> MB_CUR_MAX. So copy the wording about MB_CUR_MAX from wctomb(3) to
> wcrtomb(3).
>=20
> Signed-off-by: Kang-Che Sung <explorer09@gmail.com>

Since this patch does the same exact thing as patch 1/2 but to a
different page, we can squash both patches into one.


Cheers,
Alex

> ---
>  man/man3/wcrtomb.3 | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>=20
> diff --git a/man/man3/wcrtomb.3 b/man/man3/wcrtomb.3
> index 967a1a0f6..27b5bd9c1 100644
> --- a/man/man3/wcrtomb.3
> +++ b/man/man3/wcrtomb.3
> @@ -94,6 +94,14 @@ is NULL, a static anonymous
>  state known only to the
>  .BR wcrtomb ()
>  function is used instead.
> +.P
> +At most
> +.B MB_CUR_MAX
> +bytes can be written at
> +.IR s .
> +The programmer must ensure that there is enough room to store the
> +multibyte sequence at
> +.IR s .
>  .SH RETURN VALUE
>  The
>  .BR wcrtomb ()
> @@ -101,6 +109,9 @@ function returns the number of
>  bytes that have been or would
>  have been written to the byte array at
>  .IR s .
> +The value returned will never be greater than the value of the
> +.B MB_CUR_MAX
> +macro.
>  If
>  .I wc
>  can not be
> --=20
> 2.49.0

--=20
<https://www.alejandro-colomar.es/>

--npeyastyft2rxh47
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfWv5gACgkQ64mZXMKQ
wqlPqQ//bLTNBsZYVlh+C8jPBz0jMPSozy8q8YXv/3vgc6EKPXNNXE3pDs4iZIoI
Ey6fh5uK6ugDbexOHLDsPpPLzjq0jEhiYmiM3KcqDnHbm+ubSpmDcxgvNQbMmUTu
38QzUOOGejVV4I3mjlWFA3IOb4YEXyVEXKwCtApvrkHl63LdoApJmgy4UYUAO5fl
0szVJ5MoPSfXJhIdwkQcXqK8Yqjxw1QbJ2DQpErurfVIS84EoWJ/PCUXkr/SF4lw
Xl5cM90MjsYO5ojn080zkFrOs1HIa76BneP/0vS9oxMVkUrvGvYvJyFAt8UxBzxy
mUWjyUHoD528lLGptnl9zP+g/z/338mKZMJ+pAy+C5ZDXFyFb6UIv1rpekyEWHJb
dpsREzZTGF86+O5K2LKooVvOQ5IkIWMzecDrky06GEa7qrcKhk+cLhTyxgSURoEV
NteCW5/CsvtUvjMc/KQcy5VhTD+uotQW1QgCj/QaT3QaeCQzHXifqXNPUe5LTSwC
QP8Ep0zChDsCRucR6iDb+prQCddDl+UEc2dPIqswWtAe1RKUTwDl9QnPxPQdv2FG
7JWiw2fVj0TsyKVbveBbUqNnf42UYlr1wUOPCmhK4HwM4I7LWbZQUCOtRl03i6zV
Pn4Te8MN2lR6Snr+L+r0zcyPFlF36DKGN4Gf2LWMDoq7FpMzudU=
=KJNb
-----END PGP SIGNATURE-----

--npeyastyft2rxh47--

