Return-Path: <linux-man+bounces-1054-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF3F901724
	for <lists+linux-man@lfdr.de>; Sun,  9 Jun 2024 19:10:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 353AB281684
	for <lists+linux-man@lfdr.de>; Sun,  9 Jun 2024 17:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E44DD42A91;
	Sun,  9 Jun 2024 17:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4VsIPCr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A41BF3B182
	for <linux-man@vger.kernel.org>; Sun,  9 Jun 2024 17:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717953025; cv=none; b=g5cn3spLw69QYvxERovbcj+C6HN3fOY/DG9tClgoI3OtkEKasHZqOFsGt3VPdC1aHce3HPwcj3Id2VHWbhGDOkoKfP7RP6JsS/9XGzUXHZoJskJyISTJZqAZ+2dsLg/XosJ/cfWOEC8n9oquyV03l4f8foUgyHDHMNIWtY7Uk6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717953025; c=relaxed/simple;
	bh=2/lhWtUX+IYbs1ni4T6wsQ2X4gFNIP5JeCN8yzQlVtw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d8hj0aFVeLAa4Oro677Rg/ydpaOy5Uy6dDR3BgdA5H2P/YVJOGDSmXaq+97xFDAdMl78XipGDqaQRkZkx7LlZo/SDmvdpqvpigIffNnXfwBv5+TYt2BMhjI+XcR/SkTUEBQYxrLtIVglZtDbNsYkjQ7CmQVdE5aSPZwZbb7/iDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4VsIPCr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EDC9C2BD10;
	Sun,  9 Jun 2024 17:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717953025;
	bh=2/lhWtUX+IYbs1ni4T6wsQ2X4gFNIP5JeCN8yzQlVtw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I4VsIPCrI0RW8yf+m7uc+ilKr2VRsVIZfzJvud93w+1KBCdKAA1AnLFGQR9n6nR4n
	 UV0ETPqeOlHFzocSDRuDy3tvhNCmUjJQpQicDgA+IrOxfEGgi1dWNvQJkQQ+qwXW6s
	 Gkohkxcz1YVm57krN/Cq/It2fVzieX+btq4x9J8AuykhM/c39WbH3G3D4bQ1qU1uoX
	 YsO1xXwiQjc25HsOrYy7Cm6D3pOhOrN/VQL77u+G+3cNmS4EVXUN0gcqMVI0CPna1q
	 KAktrC5X2O/XH1IHP9qnHrCuHbIOA5htAJr0i0DBo71NReCLPz+f5/2FsDFP0/hfn3
	 /mWucRW2j7wTg==
Date: Sun, 9 Jun 2024 19:10:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: nick black <dankamongmen@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] memchr.3: memchr/memrchr take pointer arguments
Message-ID: <p5e7wmlqqjfk2r5xjfuw6tjcqgd6bzchoqhrwsafa3guvtcsrb@spu7jkp4hoog>
References: <20240609091019.GA1990109@schwarzgerat.orthanc>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="faesnmeaf2j2w4i4"
Content-Disposition: inline
In-Reply-To: <20240609091019.GA1990109@schwarzgerat.orthanc>


--faesnmeaf2j2w4i4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: nick black <dankamongmen@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] memchr.3: memchr/memrchr take pointer arguments
References: <20240609091019.GA1990109@schwarzgerat.orthanc>
MIME-Version: 1.0
In-Reply-To: <20240609091019.GA1990109@schwarzgerat.orthanc>

Hi Nick,

On Sun, Jun 09, 2024 at 05:10:19AM GMT, nick black wrote:
> memchr: memchr/memrchr first argument is a pointer
>=20
> Signed-off-by: nick black <dankamongmen@gmail.com>
> ---
>  man/man3/memchr.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man3/memchr.3 b/man/man3/memchr.3
> index bb598c7d4..24fbef340 100644
> --- a/man/man3/memchr.3
> +++ b/man/man3/memchr.3
> @@ -20,8 +20,8 @@ .SH SYNOPSIS
>  .nf
>  .B #include <string.h>
>  .P
> -.BI "void *memchr(const void " s [. n "], int " c ", size_t " n );
> -.BI "void *memrchr(const void " s [. n "], int " c ", size_t " n );
> +.BI "void *memchr(const void *" s [. n "], int " c ", size_t " n );
> +.BI "void *memrchr(const void *" s [. n "], int " c ", size_t " n );

But it's not an array of pointers.  :)

We use array syntax, even if being a bit illegal, to document to which
argument the size applies.  In these functions it's more obvious, but
in functions with several arguments, that's more important/useful.

Have a lovely day!
Alex

>  .P
>  .BI "[[deprecated]] void *rawmemchr(const void *" s ", int " c );
>  .fi
>=20
> --=20
> nick black -=3D- https://www.nick-black.com
> to make an apple pie from scratch,
> you need first invent a universe.



--=20
<https://www.alejandro-colomar.es/>

--faesnmeaf2j2w4i4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZl4f4ACgkQnowa+77/
2zJwFw//cN1cf7rM3VBg/YI8k008nXXmNL33tbaL2bgjNTQ6ejpgkAjai0eidywz
H9HfI00BycSIlur/ESR5Dz4SouRIIx8uxESXXObSEz3U9ZwqDvjHL6DB/zNTLA8f
UkNqAWN2kr5+3KapFpLKvm0J7IFoTGESiFqeYFzOJns3wCW5s/uwoOOtGf02L11h
IwvZ6DyJPzbLTbZD8X9LzVuTAzv4TBQZitMTo6ULNbRBYv8sC2BD9TKMRtDONHFg
Ijfi/dTHvKdfgNzbeua8FV5cO/tqLI/jlUluTBBQRlhr9Xp5szWIhbRJxD9uzRT0
erxXMiw89ektkmBgadJgctRaMGNlKUdnN8Ti7iu9eGE0aQmKx23GdOWvQW90+Yb9
ylk8StWKMEd94/qtz+nv66cbwnEbENBl97c0+QUD0se0btdiaScgDxLSKVZRCrKf
/pYdVqpYluM8r2XkSDNOEeuiM18IMXZahYYnwoE7baNiI2XmiGWyAU+71jQBTvIr
4esF6srU4gU9TOS8X9Pm+hdSlNwkbyOXfeWbmE6AMY2Gg23iJq4RASKoLH6IEsQs
JddDbKHBXFMxJ+sQ9vxLHfibUE1SDUbsBtK6tY68bugy7aw5/GqhwjhOJlig9oY5
ouovfrG/vaPzS8Db4cj9jRwbuIQMLGoRlu32sU2cwbAZd2znBos=
=MUjl
-----END PGP SIGNATURE-----

--faesnmeaf2j2w4i4--

