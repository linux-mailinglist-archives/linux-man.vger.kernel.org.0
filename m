Return-Path: <linux-man+bounces-2063-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5B59D8683
	for <lists+linux-man@lfdr.de>; Mon, 25 Nov 2024 14:36:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F6C22881BF
	for <lists+linux-man@lfdr.de>; Mon, 25 Nov 2024 13:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8F771A7275;
	Mon, 25 Nov 2024 13:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sn3YdfeE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9ED7193072
	for <linux-man@vger.kernel.org>; Mon, 25 Nov 2024 13:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732541748; cv=none; b=sg1hm20Yp/deXtC/ZCPs1YC1NbVwLi3Tl9QAyT3505iz2TtiLX4J4qj/t170Wo0n/jzT1NHxFxFxorvqB7YYPMj+gZwYEwHTetqX/mfHX3j/wM2qgpWVVHYtcZYN8wtpIsImuHCatbPlkxOcm3xaMrA20txH+hj9P0y6rzGMDzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732541748; c=relaxed/simple;
	bh=q50ue/JHl69RD0OJ4DWgOc9/pA7z4g8vrpp0lI4cKGk=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QvIzXN/0edrMtiOOIgaMCkbHAZSdIzyeExi6I3MQKvdvcn+7LUt4S0AGY9ppCfWpexnogmF0OKupCVuZcmXthAMzBfR5QOnsc+UxFkRkNkXFePwCE4OhxWuFmZLAg85CJZeewF3B8cCuJQ6JEUTZSO4XVfsZWZB6IVQWrwLUDts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sn3YdfeE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E242C4CECE;
	Mon, 25 Nov 2024 13:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732541748;
	bh=q50ue/JHl69RD0OJ4DWgOc9/pA7z4g8vrpp0lI4cKGk=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=sn3YdfeEhm2Ghkr8Eeqrgrkm6LsWu9cmoiIxkWoJNdV0pnLML0BjFYbZ1z9w9CdC3
	 mS4zeAxFgFqfJ9tozRUcWPU/TWnfvzAM5UwRfXov1wvsIk8ZTpVlprqdJwqdpdJNEA
	 rbQRN81y9xAzBShFdTmv7R5KcxDjVxVk5s7ksAl/HRbYcJWh0c86bYFiyb3ZgKXA8k
	 ARCDSTl204B1u4o2zih5hNYzRVzWp4mByLSoV5dk0BTEDcCG0o2J/8yXel5zawlSgK
	 llcVKvdLGfR2r+6BJENXnq00tBj9ltpzVzIRRUu5zDJCctF5yjbYxSVmVQ4ygmB79a
	 OZkGNiuQKZC8A==
Date: Mon, 25 Nov 2024 14:35:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: diffman(1)
Message-ID: <20241125133545.bhqlnwakldqzpgek@devuan>
References: <20241125124404.h37pgmy2pxuzxevg@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="opkyrpurhokf43dt"
Content-Disposition: inline
In-Reply-To: <20241125124404.h37pgmy2pxuzxevg@devuan>


--opkyrpurhokf43dt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: diffman(1)
MIME-Version: 1.0

On Mon, Nov 25, 2024 at 01:44:07PM +0100, Alejandro Colomar wrote:
> Hi!
>=20
> I've developed a new program (actually, a bash script) that diffs manual
> pages.  I find it quite useful for quickly seeing differences between a
> page as installed in the system, and the file I'm working on.  The
> output is diff -u of formatted manual pages (suitable for less -R).
>=20
> You can find it here:
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3Dfa4743c43762cc3be4af9672ce12a7ed58f9a500>
> and soon in the <kernel.org> repo.
>=20
> The script is just a fancy version of
>=20
> 	diff -u \
> 	       <(man -w "$1" | xargs groff -man -Tutf8) \
> 	       <(man -w "$2" | xargs groff -man -Tutf8);
>=20
> I had to make it fancier for error handling, since process substitution
> doesn't propagate errors (not even with `set -Eeo pipefail`).
>=20
> You may find it useful for development of manual pages.  If so, please
> let me know any feedback you have for it.  I was wondering if I should
> pipe to less -R, just like man(1) does.  For now, having doubts, I kept
> it simple, which would allow wrapping this in fancier scripts that for
> exaple diff an entire repository of manual pages (although that maybe
> calls for running groff(1) and diff(1) directly).

I've decided to keep it without piping to less(1).  For piping, I'll let
users write their own wrapper, since it's trivial.  I've called mine
duffman, which is like diffman(1), but with more fun.  :-)

	$ which duffman | xargs cat
	#!/bin/bash

	set -Eeuo pipefail;

	diffman $@ | less -R;

duffman is not in the repo for now.

>=20
> Have a lovely day!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--opkyrpurhokf43dt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdEfTEACgkQnowa+77/
2zIniA/9GifKRxYu/7jXWAunFvEjkGgHH9WeyOJexY5aLa3XcnKb1dzhRMh/EQyA
WPaasTGPquaEvR1e8LxGlZHnfWiaKar9WkcnHbIHK+vVpKzTEs7nTHwphwXlvt4E
UH8vnVnsVLsdxjlG0U7m96wPaACptXKuWkWyoVsBzWmWuvZN/zSIaoZu/6UwmiEr
O6jYfw8wlTO3+ZKPSPvDGH9G5gVSMFO9iTJ/bSZkqgaz7wAZp+z5TnfWbXwKm8lC
HIqfPj183JOj81Mpr351/nvxNrBeq3oFs1yKc58RJRBQP0saJNcBw9XEjvFDhcDF
rKk9uHZsd+ShKdz2cwXZEy99TGw+dTLmldWiLCtyazU0ebrmGDTzL7ytCmD/CPFz
rbXGRxAiwQkg6HusxAVdLxn6HextuWpqK3O11i5fhHVMEO0NM3NQdEO4eiTsUtsx
8l9hk31Y9k8p7xv7AVvMpCKywgz9FqYw8tGd3LxI3aMdOji/tTPO4LKVRj9CYN6k
uzbshEwTZ1yXmL/wJwtUJNQr0+eHYxy5gzEw6Ml5+o/Hbrj4uQ8OI5OaRwW8r+yE
dgfP0mPmtJKE9ljRzpM4VuLrgd42ztP7dZiQn3iqdl+mRojsxu24a7ABl8Cr1SuT
k/kx8/Mr+WQ8+WKUwsmzM6PJCXlebqbXqQl0nNGJQD8QSdhlJFs=
=GkNd
-----END PGP SIGNATURE-----

--opkyrpurhokf43dt--

