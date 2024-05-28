Return-Path: <linux-man+bounces-1009-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A638D18E6
	for <lists+linux-man@lfdr.de>; Tue, 28 May 2024 12:50:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 370A21F2525C
	for <lists+linux-man@lfdr.de>; Tue, 28 May 2024 10:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 988A316B739;
	Tue, 28 May 2024 10:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPU4MN1v"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B37C4D59B
	for <linux-man@vger.kernel.org>; Tue, 28 May 2024 10:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716893421; cv=none; b=HzfQSkmLOESUd3cHPavssyfKyK+YycluVUxXm4vDyIgQMHmqLnqxOakWhINEgurGS58YEh7l7+4erS/8ifvhno6Pwa6mCJaELpFh/katXvGBJvwI4MV1Kej5sMZU3T6yd0Z/OKFw1lVFR8r3NHPUDG7KXmq5KlJ6yuUq52CneS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716893421; c=relaxed/simple;
	bh=EfL5XoEly9E38rJ3R3I4ITCISiiYGjf3+Q9EeCshVrU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C9olrcNodMuAbogyMTQNY9EPrtt6rehlg5W2V2ybzke5vQyE2m+SHYQsp5YjSIGgOXnPCYFFLuOeMHc9FC8XUbrHFuiI/yQ1Ik0lWKs1TuBNOPnjKJGtHq6CidrB+XLzdHOfMSRyTOMinqyLeIyn9pOr+JooXh5poIVYtFiD0JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPU4MN1v; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D532DC3277B;
	Tue, 28 May 2024 10:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716893420;
	bh=EfL5XoEly9E38rJ3R3I4ITCISiiYGjf3+Q9EeCshVrU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lPU4MN1vWTVTxWtqVypVf54Pwc/sr+7uuqZk+sIrsoypFG+1E2JH5ZFbBKwXEnI/8
	 91NODZ1Hyu9A2RR6gqJysNDqdCc1L0g54heWCPD+gpR06mJau9tJGqljE6HEooeA5T
	 jJ2T8izN7dKwF6ZIqs4TNVmHXv9mvBgKCYvHgV2fCr31CVKRsPH9F8FmAcktEeqhHS
	 oIYCbbCMAjU2Wj9w134dIluZjLj7iUytwsOPbAM3lz6batXw13YBcwJd4lJpJogotN
	 YB3ZjQw+0BVX8Xk9NI8u1OyvIro/UY4llZhqrPqJevxW9Gm615s/CXQJzmL8Z/qVy9
	 GMsEnPqqhTGiQ==
Date: Tue, 28 May 2024 12:50:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Lukas Javorsky <ljavorsk@redhat.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx.manpages@gmail.com>, 
	Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] write.2: Fix a typo within the `ssize_t write` function
 argument
Message-ID: <rmoa5iy7ymnouqwnsve66vdzdtnqs7f22ov74w3zoobwc7jjcl@qlgoartjtqjw>
References: <CAK719L0Yys229m7_PGzaho+foPA3yPD4WkuPS1K3psKNbybwDg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4udpauc7dokjww3k"
Content-Disposition: inline
In-Reply-To: <CAK719L0Yys229m7_PGzaho+foPA3yPD4WkuPS1K3psKNbybwDg@mail.gmail.com>


--4udpauc7dokjww3k
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Lukas Javorsky <ljavorsk@redhat.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx.manpages@gmail.com>, 
	Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] write.2: Fix a typo within the `ssize_t write` function
 argument
References: <CAK719L0Yys229m7_PGzaho+foPA3yPD4WkuPS1K3psKNbybwDg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK719L0Yys229m7_PGzaho+foPA3yPD4WkuPS1K3psKNbybwDg@mail.gmail.com>

On Tue, May 28, 2024 at 12:43:21PM GMT, Lukas Javorsky wrote:
> Reference: https://pubs.opengroup.org/onlinepubs/7908799/xsh/write.html
>=20
> I'm adding the patch to the attachment as well because my last patch was a
> bit problematic with the email.

Hi Lukas,

> ---
> diff --git a/man/man2/write.2 b/man/man2/write.2
> index a24cbdc31..e9b7dd739 100644
> --- a/man/man2/write.2
> +++ b/man/man2/write.2
> @@ -26,7 +26,7 @@ Standard C library
>  .nf
>  .B #include <unistd.h>
>  .P
> -.BI "ssize_t write(int " fd ", const void " buf [. count "], size_t "
> count );
> +.BI "ssize_t write(int " fd ", const void *" buf [. count "], size_t "

No; the current synopsis is intentional:

     ssize_t write(int fd, const void buf[.count], size_t count);

buf is an array of void, that is, a void[].  Of course, that's not legal
C, but I made it so that it's consistent with other functions such as

     char *strncpy(char dst[restrict .dsize], const char *restrict src,
                   size_t dsize);

Where dst is an array of char, that is, char[].

Using array notation let's us document the number of elements in the
array.

Have a lovely day!
Alex

> count );
>  .fi
>  .SH DESCRIPTION
>  .BR write ()
>=20
> --=20
> S pozdravom/ Best regards
>=20
> Luk=C3=A1=C5=A1 Javorsk=C3=BD
>=20
> Senior Software Engineer, Core service - Databases
>=20
> Red Hat
>=20
> Purky=C5=88ova 115 (TPB-C)
>=20
> 612 00 Brno - Kr=C3=A1lovo Pole
>=20
> ljavorsk@redhat.com



--=20
<https://www.alejandro-colomar.es/>

--4udpauc7dokjww3k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZVtukACgkQnowa+77/
2zJjPQ//SLF0oyt2AwAhoS0+Yq3aO+TS8GEC0fzDAFmCJWGcCiBD8UtTKCZGLBWT
kL9nldFM+oHi16tptA2eJ4KWGchm+bIeexhBJqxP6XoBbyn2GegnTzrZGzZX+Y5G
ne1UTT3o40oqtuFZNa7Lgxa3F9NJi6WaR6p1ybaKe7yW1lAn3InMgl2IzAV0RZLy
Q6Y7yWHFTSXp/VWu5LswXrudpPxEebH34Y5qeFLJm9N2O8Xs34b+ZpkjsjCiRRJy
qfkLiTARLqTvycOP6fkKYzIeDMAWZAyw7uZOCFuytQq2bbXGJV1W354Rl7oG4hHo
V70gogmPjj/qEpBHTSeSqgKZb8Y9at4/00KRaNVlVF3qsczquIjqUqR4j8C2nABc
DOCC7nMTU1L3S+OMFCerdS+4tjgeJ7P3FTJm9LxoZaOghhOQPQs5x8sT/S08ME1N
zNicy3/z/WMpiyyV+eCKtQCK+CdyNw4jkJ09uuvIXaa1aT79Q7h5CWPO9WCZeoiS
Ai4IPh4Xg58dKxDMGc8/6HGrjTCLg2PLVIMt4vCrCQ4CT8xpl84NmLxzJHbfiOku
wqBKZ5VaoSDgydPESDF7MMuykb86xku4c8Z4Fw+zBzgJ5t+MC4MC7c8MIGcGbjdV
CCMv4Sbg92/d+eDbtTBVyBytMZf3IRBOBAqArTdrEp7GY4rcc0A=
=0Ni9
-----END PGP SIGNATURE-----

--4udpauc7dokjww3k--

