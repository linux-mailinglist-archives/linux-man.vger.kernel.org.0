Return-Path: <linux-man+bounces-796-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 206148AC127
	for <lists+linux-man@lfdr.de>; Sun, 21 Apr 2024 22:08:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 553B51C203AD
	for <lists+linux-man@lfdr.de>; Sun, 21 Apr 2024 20:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C22041C87;
	Sun, 21 Apr 2024 20:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BM0vjh1j"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D00A2556F
	for <linux-man@vger.kernel.org>; Sun, 21 Apr 2024 20:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713730098; cv=none; b=Q6vowEvvhN5uSAi39NC/vVIeIqbqXtLvfEXLOkKn0ru/0F1BhKmBmJKR8QcgiGgMmI4i+5IJsHzz6ab2cb3zpswG0R8/pIMnGSuvYCfaWpusS6Q9+UU4XjPRfsmbWunKgOKIoknBdJBLGp5u8gqajcjXLPXqG3gpc/KCqntNEvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713730098; c=relaxed/simple;
	bh=DwwD+0u1BQ+7k+3WctMinzt1maiSqsOFDsWmHrTKUXo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a+DKpeD4qSlj0kjo+erlI4F36koK4eZ2i01OhXsREZgvwqb+/aSZ5QvVfU9A1+IUiY28JmbW9n8zGzo5KWv2D0GYNUmqhuzAnWylbvHrLi10577/AbyRRsKhzEd7VemmJR3hCcAdHeAjbDmzsrmmzlDXEodi2ahcP9rXb21NUPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BM0vjh1j; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13517C113CE;
	Sun, 21 Apr 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713730097;
	bh=DwwD+0u1BQ+7k+3WctMinzt1maiSqsOFDsWmHrTKUXo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BM0vjh1jpH3AVvAaf2YViTq5ORwhGID2eflTFhM6lUOA8w1U6LYHN4aB0yFSODrvJ
	 uU71VodpbNw8H8dwVddkAreI/0PZCjpwcSS3tyNjvyqROD7KLWGVW+ElgCHsASS0do
	 HhYIwaQZSMnwMj2i74KwThCC7BYGxQysjEHaClI7EVV45U4H3ZehWleZPXpSIOI3/U
	 HSACrI5lSyc7oZNzLe7WB3rW5nG7HiYGT7PQcTw4NX1ykh2zj4e6MKURFCF97HfBuN
	 ZgwkvdF5YkbRnr5P6aMPQqMr3inWUxGozcRSdnDJgReFT7uaunZEpYdhvgbRcUxunf
	 r4xa2ZyGgWsLg==
Date: Sun, 21 Apr 2024 22:08:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <branden@debian.org>, linux-man@vger.kernel.org
Subject: Re: Problems building the unifont PFA and DIT files for the PDF book
Message-ID: <ZiVyLv5LF2uGf1gT@debian>
References: <ZiO0cHOWPyuiJGQq@debian>
 <2272286.muIFQpQJ8V@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="V1YQ310a1edWtRCo"
Content-Disposition: inline
In-Reply-To: <2272286.muIFQpQJ8V@pip>


--V1YQ310a1edWtRCo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 21 Apr 2024 22:08:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <branden@debian.org>, linux-man@vger.kernel.org
Subject: Re: Problems building the unifont PFA and DIT files for the PDF book

Hi Deri,

On Sun, Apr 21, 2024 at 08:58:03PM +0100, Deri wrote:
> This is one of Branden's changes to groff. Previously a missing spacewidt=
h parameter was=20
> ignored and groff would calculate a value. As far as I know noone has eve=
r complained=20
> about the typography groff produced when using a font with no spacewidth =
parameter, it=20
> is now an error, but it does not stop it computing a value and continuing=
=2E For pdf and ps,=20
> using the default DESC files for the devices, the computed value is 333.
>=20
> However, UnifontM is a bit mapped mono font where all western glyphs have=
 a width of=20
> 500, so it would make sense edit that value into the UnifontM file by han=
d. For other=20
> language glyphs the fixed width is 1000 but they don't normally need a sp=
ace character=20
> between glyphs, but you can adjust with .ss if necessary.
>=20
> I would advise to use:-
>=20
> .special TINOR UnifontM S

Yep, I used that order, following the patch you sent me a few weeks ago.

BTW, why do you call it TINOR and not TinosR?  Also, why UnifontM and
not UnifontR?  What's that M mean?

> Since this is the order you would like the fonts searched, typographicall=
y TINOR is much=20
> better than UnifontM because the glyphs are drawn not bit mapped, so if a=
 glyph exists in=20
> both prefer to use TINOR.

Yep.

> If you want to produce man pages in CJK languages, it would be much bette=
r to install a=20
> proper CJK font rather than rely on UnifontM, I suggested to use it to fi=
ll the gaps in the=20
> iso-8859 pages. Now you want complete pages in other languages for shadow=
, you=20
> should consider installing an appropriate font. I have attached two pdfs,=
 one using=20
> UnifontM and the other a proper CJK font. If you use your pdf viewers zoo=
m control you=20
> will soon see the difference in quality.

Yeah, I was looking for a font that's in a common Debian package.  I
found some, but they were in very obscure packages that I prefer not to
depend on.  I'll keep searching.

Have a lovely night!
Alex

> Cheers=20
>=20
> Deri

--=20
<https://www.alejandro-colomar.es/>

--V1YQ310a1edWtRCo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYlci4ACgkQnowa+77/
2zIfAg/+OlFqBm6PBi/lqqi3TL2Dz7kKw8OyGO84ACw08bnqFOIG1qcuH12ccV/w
DgzC8ddcNpMGSBEsM110OeDP8d9hd+RRUtYM38xVJxrfXzsChym0dlnCKvJOOnY2
ZH3qS6fyMdeiOQLkzCAtvLnJScGQ/zHLb2u6xxZdIFQ3YA0FTfFME+c3tqUw3O+x
Tjfo9WtY+Q33M+cMGHXZCtAVe3Ko5nweN3zi3zWdVMk+XJHp71mZJ/t6GM4GpGgd
mcpVfpO/Gc6uo2PkL1FXpETrB21Y/oJc14AkNcFHFMarnST7DUAoWUzVLYYdLsp6
mq5D0n2TaA5cURuS6K/gMB4Br+xUVmqAaGZmvfqeOsR8Hy5e/N8FEWPoa/p3vXC7
G7NMxEn/9gOsD3DTiIeAO51oZ0w+6Oar4ry9LepZwLXfpy3Q13Whia5Drxrs8sUu
VViFXKVk95J1oLPXu5zQyXe0ogf6V5N/DDo4UHNxdfCZ63JqxR1B3jtRLSuwxDKE
VObuNDIPJWMTcklCJz7bEqFi19sjDMnD/QxCAxZ7d/TCjjuCaq+hk2t5L1Uz1PW8
IEvIWeNY9GwH7f5JnwO61YAruqbcyYYh9B4+HriYODOC1tzv3noLmT+Ikg2ahMm9
9kQbBSHc3/mDKPqhM24VlxFsTBLXTt+E0/Yk33uV2wiHL2zl95Q=
=nVEb
-----END PGP SIGNATURE-----

--V1YQ310a1edWtRCo--

