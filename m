Return-Path: <linux-man+bounces-2604-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D8FA6358E
	for <lists+linux-man@lfdr.de>; Sun, 16 Mar 2025 13:09:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE64A3ADBF4
	for <lists+linux-man@lfdr.de>; Sun, 16 Mar 2025 12:08:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E98B919F42C;
	Sun, 16 Mar 2025 12:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSwu4S3v"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7B58134CF
	for <linux-man@vger.kernel.org>; Sun, 16 Mar 2025 12:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742126940; cv=none; b=L0VSumWcuLAA/S8a9NdnKEZpeqg8gaGQJJwfH15cEq0Z+NApmSBdSwbhk1nUxL0+ycS2iOzYxkBGlmnLlfgJFuh9VQOFbVqHgsqPpUN8sSbvijK2f5REC29oBOxRs6tKUpLg/tOuic7d74sY6fWNyC4PCFgFcWK9HcvpIwolMJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742126940; c=relaxed/simple;
	bh=0gIHypa2Ncf+PR1bhqA1PDJ5VzhYVQGq3qf+4bQDGlI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yd4XviVds7R/f/JgqYkZW36AfAbxx/Ubv3AJf6i6bwlrbIdZJiKfRGN8I1MUmnLSRMFP938/N58dWremIwySxKheWacRaIeNTG70vrbDSc0EVO6og2COCODioyOhT9IKMCyMfs0Sm7lFolq9NoOypLLEBRT9RDuMp/MfLvRtH/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSwu4S3v; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A4A2C4CEDD;
	Sun, 16 Mar 2025 12:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742126940;
	bh=0gIHypa2Ncf+PR1bhqA1PDJ5VzhYVQGq3qf+4bQDGlI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RSwu4S3vSNjgIb1EVK5cyTYCgKrnT7tgc2TnYii/MfnfqgLeZvcD2s/5MVlYOg4uZ
	 67JsFzB6QHJwr4k1L2lCTldXshHcdvptWo8qjwfu1G9crxMfov5XcPsKbF9Sljnhv8
	 tKPxE90KX8oRa14HZjIM2OFbT8/vhqOxMk73fkGz8fWFO5u5QQ8FI3g2GnbOIxDh+4
	 rDtbSaFmNntM2UIOSLI37W0mw/gQvNTUh6JipEpmF0gK5Y99pNNFT+pqGrUFGUPuW8
	 VByfnzC6gDp9vTURB6cekNEiArMsO6JxELQgwTv4RnXvUcz7TaZcSqH9RX5cnJvFyY
	 L0eUPfH3MXNYw==
Date: Sun, 16 Mar 2025 13:08:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Kang-Che Sung <explorer09@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH 1/2] man/man3/wctomb.3: Rewording to MB_CUR_MAX
 requirement
Message-ID: <awozvdrndcse25lfzgu7jwyzf26zvprrnzpv7ctgekubawu4kf@z4yhmzxs3ngd>
References: <CADDzAfM1HVMkyQY-zhv81NKS4X-neCTGETQec-f9X4acgpZApw@mail.gmail.com>
 <CADDzAfMq3X=u7+Sk_gTxOKA0O+4OgXw8XD3KifnQKSNFwGtG0Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7e52lmnxj4d4iloz"
Content-Disposition: inline
In-Reply-To: <CADDzAfMq3X=u7+Sk_gTxOKA0O+4OgXw8XD3KifnQKSNFwGtG0Q@mail.gmail.com>


--7e52lmnxj4d4iloz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kang-Che Sung <explorer09@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH 1/2] man/man3/wctomb.3: Rewording to MB_CUR_MAX
 requirement
References: <CADDzAfM1HVMkyQY-zhv81NKS4X-neCTGETQec-f9X4acgpZApw@mail.gmail.com>
 <CADDzAfMq3X=u7+Sk_gTxOKA0O+4OgXw8XD3KifnQKSNFwGtG0Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADDzAfMq3X=u7+Sk_gTxOKA0O+4OgXw8XD3KifnQKSNFwGtG0Q@mail.gmail.com>

Hi Kang-Che Sung,

On Sun, Mar 16, 2025 at 05:07:48PM +0800, Kang-Che Sung wrote:
> The "must" wording on the MB_CUR_MAX length requirement could be too
> strict for what the standard allows to the "s" buffer length. If the
> programmer knows the wide character to convert beforehand, they can
> allocate the buffer whose size "just fits" for the sequence.

Ok.

>=20
> Signed-off-by: Kang-Che Sung <explorer09@gmail.com>
> ---
>  man/man3/wctomb.3 | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man3/wctomb.3 b/man/man3/wctomb.3
> index fce54cb4b..f6aefcd0d 100644
> --- a/man/man3/wctomb.3
> +++ b/man/man3/wctomb.3
> @@ -42,10 +42,12 @@ that is, the number of
>  bytes written at
>  .IR s .
>  .P
> -The programmer must ensure that there is
> -room for at least
> +At most
>  .B MB_CUR_MAX
> -bytes at
> +bytes can be written at

I think s/can/will/

> +.IR s .
> +The programmer must ensure that there is enough room to store the
> +multibyte sequence at
>  .IR s .
>  .P
>  If
> @@ -68,6 +70,9 @@ function
>  returns the number of bytes
>  that have been written to the byte array at
>  .IR s .
> +The value returned will never be greater than the value of the
> +.B MB_CUR_MAX
> +macro.

This part is redundant.  Let's not add it.


Have a lovely day!
Alex

>  If
>  .I wc
>  can not be
> --=20
> 2.49.0

--=20
<https://www.alejandro-colomar.es/>

--7e52lmnxj4d4iloz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfWv1IACgkQ64mZXMKQ
wqlUKg/+PjDaBnoYe7JgLj933Kl8DRls6z4WarSy1MzMwErkS4YZ1iJnyUFh4wnf
GiHcvnoshZ9hb9yvjj3t00xUmF2/amycCY69GkLAJ75vqcsc4KOMuBwoLf03bzFj
6UW2FIzZQFssK+Fs991AJS0pKQ/KDJ1YsK6vU7WWxNOvliHsulElmOoc9O/va+c5
VU5HtY6AKQQm5fT06c6XwYPKLgsi7AJxDrgKz8MTYGd7sEy5IKVjJcRy2/T/fmYC
xtePBtrGTGYAtYZcU8Gdjccsl8vBjhywHv1Z/XjzImluT4u33HeFyRsKmLB1NPuO
Xcr0hlk+iE5F2rvQ8eTnAMkzPASdRtqAJfgtKqZLaA/KozvJFN9s6cTwJ/KKgIxu
s0dkV7P9ZaTiUpIREmYSZ05d/nrnZ06xEJIdXYWtiTmJmBaOnmb9jZGxgX1vclT3
PY4Oklrp2Jq6TeBWm/OppQgmywKQVK1Kq0EZdXH+l/9iERG6oPwpnA9Yrew9oe9a
29JPyPZNFQGHePaOKUyyo3Ud6PkYYwTdb7HTokOt0EFbpp6S7Y7LxqOjDk5eNtOr
Mfn7/9eStXS1lvtfhuwpApitKXeKIJKUT5J4TONLvpAs5c+wU1I1o4BWepQbZEhu
AjborSZ3QtgtolxaP/iDq540bC606FcszkbkLaVZBlLspaouoHM=
=/OpD
-----END PGP SIGNATURE-----

--7e52lmnxj4d4iloz--

