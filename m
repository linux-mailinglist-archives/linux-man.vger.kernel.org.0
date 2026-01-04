Return-Path: <linux-man+bounces-4612-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1979FCF168C
	for <lists+linux-man@lfdr.de>; Sun, 04 Jan 2026 23:23:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C418B30084E6
	for <lists+linux-man@lfdr.de>; Sun,  4 Jan 2026 22:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AF4E22655B;
	Sun,  4 Jan 2026 22:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbBxpw/k"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC07E42049
	for <linux-man@vger.kernel.org>; Sun,  4 Jan 2026 22:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767565393; cv=none; b=V2SaZiHoMfjidu+qSv+JB5e8Be4JjxPOwGOjxEuJ7bjtLvoTkJ+PuOf4QpgPMUciNSYKMw2Ew4RCZ1T+KzyVaYc91prlwFHiQA5xjTiPPeZfPYMpxb0sBb1yeCB3eUeSrirkQGkuWCamWtYYgHTLhtJwEItGEQPdHaMLgMkFYOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767565393; c=relaxed/simple;
	bh=UKF/6i0MO8fgiXKZikv3FNPayoJvukv2/adr+B6AfPk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fnj6XUq9ZnL1Vf6tc1J51iY+8vf+Qp5/wGtxoZfJQ6wjr9/AzvVIcpkQ5D3c5w1rrLnVZWyGJFE6YbB3sTe1WUmU7QWy0ywnjusLGJCnuifE4oLgEiUd3m55BjmWZOx5knllatAUUU3MsXtA69/sN8neurSzgB09L4UuFdfaBco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbBxpw/k; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C19EC4CEF7;
	Sun,  4 Jan 2026 22:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767565393;
	bh=UKF/6i0MO8fgiXKZikv3FNPayoJvukv2/adr+B6AfPk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FbBxpw/kIKvqgHypnhKAnhnkXaV3GjT2aJIeJl018/gyFjfrBeGv5QPmUGulgvCqe
	 8i1fR8F5ruupkxX8FC5I7d2jgTZ795yLmVavqEuqkmAylfj4lPOIQKxZOq6Q4HCgsh
	 1y6kG2wZkEpAxJP2YeeE8BorE8qT/3kggwG2hTDGHL2S+AKeK02R5yb1dHQNisiJtC
	 uTNF/wH4puh3Q265SR4srACkaGe+udQ8UloeW6ExAHb4Ybm/A96pKmq8klBj/K6t5o
	 Rwpnz9viyrQc+nzhnPk4v3CM/cPoBqW/5Z2AIpldiAslM4Q6MkKbkOOhY5Hlq+q8h6
	 7Lo07h7Qunung==
Date: Sun, 4 Jan 2026 23:23:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: dg@treblig.org
Cc: linux-man@vger.kernel.org, "Dr. David Alan Gilbert" <dave@treblig.org>
Subject: Re: [PATCH] man/man5/gai.conf: Labels have a label not a precedence
Message-ID: <aVroLT4toQaQD2nn@devuan>
References: <20260104220438.265626-1-dg@treblig.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zc5tgdy3zmafianq"
Content-Disposition: inline
In-Reply-To: <20260104220438.265626-1-dg@treblig.org>


--zc5tgdy3zmafianq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: dg@treblig.org
Cc: linux-man@vger.kernel.org, "Dr. David Alan Gilbert" <dave@treblig.org>
Subject: Re: [PATCH] man/man5/gai.conf: Labels have a label not a precedence
Message-ID: <aVroLT4toQaQD2nn@devuan>
References: <20260104220438.265626-1-dg@treblig.org>
MIME-Version: 1.0
In-Reply-To: <20260104220438.265626-1-dg@treblig.org>

Hi David,

On Sun, Jan 04, 2026 at 10:04:38PM +0000, dg@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <dave@treblig.org>
>=20
> The numeric value on a label entry is a label which is separate
> from the precedences.  Labels are compared with other labels, not
> precedences.

Is there any source to verify this?


Cheers,
Alex

>=20
> Rename the field.
>=20
> Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
> ---
>  man/man5/gai.conf.5 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man5/gai.conf.5 b/man/man5/gai.conf.5
> index 4aff0b0b9..ef330995d 100644
> --- a/man/man5/gai.conf.5
> +++ b/man/man5/gai.conf.5
> @@ -26,7 +26,7 @@ .SH DESCRIPTION
>  .P
>  The keywords currently recognized are:
>  .TP
> -.BI label\~ netmask\~precedence
> +.BI label\~ netmask\~label
>  The value is added to the label table used in the RFC\ 3484 sorting.
>  If any
>  .B label
> @@ -35,7 +35,7 @@ .SH DESCRIPTION
>  All the label definitions
>  of the default table which are to be maintained have to be duplicated.
>  Following the keyword,
> -the line has to contain a network mask and a precedence value.
> +the line has to contain a network mask and a label value.
>  .TP
>  .BI precedence\~ netmask\~precedence
>  This keyword is similar to
> --=20
> 2.52.0
>=20

--=20
<https://www.alejandro-colomar.es>

--zc5tgdy3zmafianq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmla6EgACgkQ64mZXMKQ
wqkaRRAAkOsc26REIPYoOE+ck16EdnMv9IBbD9VIUgx0ccJoyh4Kweyy61G1FAna
6imyJGAdkNDFIjOq2SCk5tZQpZJ9uvDYZ8CQeZ9KUG4SaQY3JvJ0GOIoTJpSL95+
nkqW/tYqfmKFP5gAcp7mqFjgnNQ+tJVbOO/tYh/1bQEpTzjXPLVFXi3ntbcg2uwK
3c6sKH9ucMADVKAVZPXtC1zNuc4HiJE3ZsyioWYqv2CikpuwOsLHQ+Bjzxudy6cq
jXvNrVF6S50k4ZCtbsr4ynBc+T2FDHrUQGvuV1Zb3YA52pYOfSj5H2sL8tRvg5VU
/PhJMezOyF20eA9gj0V2r7P+X2CWTDEd40LYT4m6SaYhjW148fmYf3Q5p3ew71kN
yvU3HuSTEAYbny5sanxMvoKh7YbYxCqkXpZMUOmF4uwhYtrtBoeT8lRdBWdTZIJc
n1r3MrJB0pbW8/Ct520YEP5XomNbg6mXqERoIm50G6GmZEBIR9+weCvrAMSY7Xn4
8nazVIN8aMv1sh3kI+U87eUBD5SS9k1bdLBY1sokb/RgS11aukOS1z1LNLcBEIp6
CxCNQS6dDztjXJ8pBEEgZPKspimMmeT3kuQw1NmWFhcbsi7b5ysOSKc1V2fkUJiX
cA/PqlQCd+BTIDPgHpHdVM2yDMP1uOYDynDQtMvT5GEZVP7uEao=
=Pyes
-----END PGP SIGNATURE-----

--zc5tgdy3zmafianq--

