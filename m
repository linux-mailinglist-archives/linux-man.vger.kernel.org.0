Return-Path: <linux-man+bounces-2332-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FBFA24F08
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 17:56:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7DADF162F50
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 16:56:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1E9E1D79A0;
	Sun,  2 Feb 2025 16:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MisCzJ7U"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE7839ACC
	for <linux-man@vger.kernel.org>; Sun,  2 Feb 2025 16:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738515374; cv=none; b=LtjkZJsfftb/hq1oLY1dF9vgXHK6JMjHB48P4K0JB67oWN5XGk2iMiL0TcZRvH4i/MUk8K5zTty2AuUl8ZlpoFKEh2Lb/19gXt9AGMNpsKzR1q0P73aIwLIcNxaQ2XOtUypOjzmgR9ZAi65ozkOpqbsbA9o2keK1aTYKVvT70po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738515374; c=relaxed/simple;
	bh=ikiIx15bDaznW9RsFz4iLhYiqLBLnIFR+edZhFpfxQU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZtMSU31xOodK4U72Zcv2sUJKcyNLM6GKIlsUYNSanR00876cF4VXwH2nmjU///XKUpc8Wnl2S1Qb08qM8vbfVrH1T7JJfBn6VXHLWYKM++FGv5FuIzh4s5Bf+EJBjN0erhQp8m6IkOhbTLf1R36BKslAiwb8pkpOuEry2h4CISs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MisCzJ7U; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E52AC4CED1;
	Sun,  2 Feb 2025 16:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738515374;
	bh=ikiIx15bDaznW9RsFz4iLhYiqLBLnIFR+edZhFpfxQU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MisCzJ7UroO2bEkZFVoBEVgqrF+DNTxftutlJgb0QoK2+ojHQnCnlw11YYAAjUSz6
	 uO7oaLNGE9JLk6mrjZpuB57jXiYA0SlIZU4HlOXUgzD8mY+MmP8H6GniA+ZEWThH3U
	 GrEye89OcvGVa5RfrxDKDUx0BwIQXBCoUf6Eis1lQCaE5vLrw9pr+L3c3KW0fcPGfg
	 KkZftOlHwN4ImamIoomUjrfB5Q2jr6FTa6vBtj7TzoOA1jT7SIuO+pcQuAguhPhPRd
	 pMvW27KLEeY+rMJlcyJpfrF9T55ZOLmtreKyPtfOeTtD3XBGAEFIyCEt/sv8wy40hy
	 ia5h4eb7FD7Wg==
Date: Sun, 2 Feb 2025 17:56:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/clone.2: Use munmap() to free child stack
Message-ID: <42ewgvp6rg2lnyrd2z3dsfenqp33gjfrbeofirkzdeoaivtbpt@fzue6wssksib>
References: <647EBDB1A8DE7507+20250121031351.548052-1-chenlinxuan@uniontech.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ycn45xsv65mieg4d"
Content-Disposition: inline
In-Reply-To: <647EBDB1A8DE7507+20250121031351.548052-1-chenlinxuan@uniontech.com>


--ycn45xsv65mieg4d
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/clone.2: Use munmap() to free child stack
References: <647EBDB1A8DE7507+20250121031351.548052-1-chenlinxuan@uniontech.com>
MIME-Version: 1.0
In-Reply-To: <647EBDB1A8DE7507+20250121031351.548052-1-chenlinxuan@uniontech.com>

Hi Chen,

On Tue, Jan 21, 2025 at 11:13:51AM +0800, Chen Linxuan wrote:
> While reading the help manual for clone.2, I notice that the parent
> process in the example code does not release the stack of the child
> process.
>=20
> This is not a problem for the example program, but it is somewhat
> misleading.
>=20
> Signed-off-by: Chen Linxuan <chenlinxuan@uniontech.com>
> ---
>  man/man2/clone.2 | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/man/man2/clone.2 b/man/man2/clone.2
> index 3ffe8e7b8..5e6b2ef1f 100644
> --- a/man/man2/clone.2
> +++ b/man/man2/clone.2
> @@ -1910,6 +1910,8 @@ main(int argc, char *argv[])
>         child commences execution in childFunc(). */
>  \&
>      pid =3D clone(childFunc, stackTop, CLONE_NEWUTS | SIGCHLD, argv[1]);
> +    if (munmap(stack, STACK_SIZE))
> +        err(EXIT_FAILURE, "munmap");
>      if (pid =3D=3D \-1)

Would you mind clarifying why this munmap(2) call goes before the error
handling of clone(2)?  I'm not very familiar with clone(2).


Have a lovely day!
Alex

>          err(EXIT_FAILURE, "clone");
>      printf("clone() returned %jd\[rs]n", (intmax_t) pid);
> --=20
> 2.43.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--ycn45xsv65mieg4d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmefo6IACgkQnowa+77/
2zJ6Iw//bEhtBlMs6gUg+I7Yd4nYi60OtSgB62altl70B9MUEfndLigfH+ZHscac
E84AKyAdeQ/0DSON3pPqWeALAi124BYaHC61FdvIdrv0At0ooY3ZlUWwRpU1y4Ad
1MPXkuw9Hh0uuAzVkH+FQ/vvHyNHSZvybINfkQvisNracsJoyL4PXFzMzUzmnonT
J57tTKAOclxjyf7kf/HI5FfwpE9/qKH5pL+9N/qdwxkuaLfSi3MEllsYBx/THFrg
BP6zDqkMb6GstE7VBJSGvyJpuMt5bUeQgAuNKYxdp1/tqiARrXsNaSTe1q54CSzz
rQ3PGbiTYFILtVw9G4rKVxpN12zEYQ/rzEohIYG1iQfoID+wZBIr7+8y9TPKo0Qf
gYE2NBs9EZ8bdEN9rvqvkpT3DCpeeN5iHVXN1nnioTiXQ4exOfg6l0Le69LGDdkg
GOTxHqlaJFztSF4g/FbjIwWXk2Fjyc4BUcZcCXpmhUEXhOioYyP9nLHwKRUwQaPo
wLlyxHHfBeyCmLl896daOql6QdhpxCYuBJYqbe0Yktt49sZ2VsEgUcOMQ4knLULD
5ZxQNzyNfM9iuaagVHMhGwo9IqkSHYYpNC4chYItKVb5EC2qlytKlksL+s23Bs+/
WydNwjZnhg9ZxCXXhvgTQEamcGhsHKm3uNEZPkglKuP6vJvY88s=
=tG0Z
-----END PGP SIGNATURE-----

--ycn45xsv65mieg4d--

