Return-Path: <linux-man+bounces-2964-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B893ABAEA3
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 10:05:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7EDE4189AABF
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 08:05:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AAD2207A27;
	Sun, 18 May 2025 08:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLZAX7yO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495A620969A
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 08:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747555531; cv=none; b=cdig8yzbi40V94H0DFNVc3sPwSFg7fuM6x+wlIHpzll0jl9mddx7M8QnzK6RrWCuY+8MT7JnrhsWsdGGArC02YSHdsQPx1A7H3Cgdz2aNvQ605QVWhIrUkumFbVjwmzXLFqkDwXqoOH0JhiO4rc1JKfZxQfM7lo0HVJRnKk9UCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747555531; c=relaxed/simple;
	bh=RN9VTuQSETn+8Wx+nC4Kn4Tnc7bNkM7YHAJlQ45bM3o=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HTf4GAbRl6gA5w82GkiVMUbaAkl3uzAj1/g7AeuhrCXildEFTtwvjNlzakGG5peuSno/yc9bhLQumvFGCLIzgw0qmZGlkYrQduCx1hYyV4PoOKGK5gjiwSnDBFHRBE3b39QW9bMLv+PjHcoquu0qKxYUHO5Hi5rRkH3w0l54pKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLZAX7yO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10006C4CEE7;
	Sun, 18 May 2025 08:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747555530;
	bh=RN9VTuQSETn+8Wx+nC4Kn4Tnc7bNkM7YHAJlQ45bM3o=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=MLZAX7yOQUTKZYOGI2UmmiavatQuhzszDb2HbdPNT3st4oAL5AWvliwjFUjjKlScL
	 LxS08Y/My0l71dQmwFchsIhRmUzip0VwapwOl9COqZe+z+cGfDzwDLHiT6D0lVS5Mu
	 xxC+tuaWIVwUCmmhw04GCcj/X4iLHiJ2yhT/gXf9B/3G4WwlinRbJ7hT2ea4Sw88B6
	 nA36G9QxpXALk8UQATNQFeKsdNyfrBlrDTtqyAB0KXNjldtkgNaLKJ5PTSDAuKD2l3
	 03a9UflbBsDfONKouCObWVpIQElzmO5bzV5CghIKQx3G8LN7i9LWJjQ0yX2TyppkJc
	 n+vIwZ5h8ai4w==
Date: Sun, 18 May 2025 10:05:18 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Steffen Nurpmeso <steffen@sdaoden.eu>
Subject: Re: man-pages: mbrtowc: misleading
Message-ID: <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>
References: <20250518013401.seThfADR@steffen%sdaoden.eu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5kk2ejadrrfubx6r"
Content-Disposition: inline
In-Reply-To: <20250518013401.seThfADR@steffen%sdaoden.eu>


--5kk2ejadrrfubx6r
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Steffen Nurpmeso <steffen@sdaoden.eu>
Subject: Re: man-pages: mbrtowc: misleading
References: <20250518013401.seThfADR@steffen%sdaoden.eu>
MIME-Version: 1.0
In-Reply-To: <20250518013401.seThfADR@steffen%sdaoden.eu>

Hi Steffen,

On Sun, May 18, 2025 at 03:34:01AM +0200, Steffen Nurpmeso wrote:
> Hello Alejandro, all.
>=20
> "man 3p mbrtowc" is great, but "man 3 mbrtowc" says for the -2
> return that "meaning that n should be increased".  However, "n"
> bytes were consumed; more data is needed, that is true.

Thanks!  Would you mind sending a patch?


Have a lovely day!
Alex

>=20
> Ciao!
>=20
> --steffen
> |
> |Der Kragenbaer,                The moon bear,
> |der holt sich munter           he cheerfully and one by one
> |einen nach dem anderen runter  wa.ks himself off
> |(By Robert Gernhardt)

--=20
<https://www.alejandro-colomar.es/>

--5kk2ejadrrfubx6r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgplL0ACgkQ64mZXMKQ
wqkcuBAArL5Lo/yCS12n3BZVoGZPJNv1W3KyflyaONBI6q+Xn2NtPvRmd2x2TJwi
eLolAVnLCCLUTvUmoJKqEKsqjBP/OthjuaNcvQWQO0qb+UqzXhQ5Ibvao7MXUj2m
Nn1jU0LFMAy/L8bHcZ/zsIwXAPYslu/bCKMJuHEKLebNqGZ4YbRynNgnhtnWMyAs
K9FQE/h4JxKsdx586fT9bkP+eOBankOWMD8VVerMX3n8RlzGwSfW4pdo/JPFHw4h
99yN/CjXx8uRFMIZTpBcuFz+Tbfcw4VV9HPu3IEokgWs6BjVSSJt6PKfOBAkjzpt
aTvcuERR5DgON0rXBYyD36PAIIIbNDWlAbl8qxMb1vylk5vKQI+/i7saD098mnFf
CS7ehSjZ6OhdheIW1kjapxZyYbNyyBRdDc+ttafYcwjs8fIXDt+EdiiZoKTlE5Yf
wOeQQr15jNyRA3U8RUSRhABtkPs4UrsHUEb2nV9Y7T8dMVl6icymWm3axcA0tiwm
39FU4hxdpBtsOnB8m3CEQjENVSqhe/pMGDo3/gWlP1Bp0sa5FQ1WgFz2jp/p/oE4
5ZPj0W5kH8BmBUuwKEmKd5veifrSPymb8zRnhXHW0n2RQQKuw4QFgrlxnp4jOW6a
ZIow81vT1wckyLwu7d6oO0wZuppH6rpeOm99SlH17g5xkpmUxSw=
=aU+k
-----END PGP SIGNATURE-----

--5kk2ejadrrfubx6r--

