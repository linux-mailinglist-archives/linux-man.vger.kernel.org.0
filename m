Return-Path: <linux-man+bounces-1210-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD18A909FC2
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 22:43:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66A6928221E
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 20:43:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DB6B50285;
	Sun, 16 Jun 2024 20:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmKAF6jM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5F312E5B
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 20:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718570601; cv=none; b=kMgM0+jTZJ5AT7F7qknr+5tQjjO8SLA592VG5Z4jdrJgGVIXjAPt6QenmKLaZOuIZ5jRLtzCWQhH6USV0TUwoXnoyWegFg2yNt7tuzauGuTx48ZHpS5yo5aTAhW25nr2qtlo8tXruHlA4GF5C2z2mKilBaBmBuw3DRlmHILa1DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718570601; c=relaxed/simple;
	bh=5CKuQhuAVobq389Qx2dvSQP2IUHS5LEmvYSGk0dwWhA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rm6rrXgSwqhHviD2Yh6iEc1UNIavTTZUOPO9DMBQ7VAs1sFQ6rjfbqPLWfSOpNnYrnW+ROqIdvbAS9jy65VHeOA16Nmy01eWi//Jz9jH971856MVGQJXFJlwRFKbpA2Jks10Z9Ipg/OymX3Ixlgzm3ziBSErjROcPkV7fWUE6uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmKAF6jM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F297BC2BBFC;
	Sun, 16 Jun 2024 20:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718570600;
	bh=5CKuQhuAVobq389Qx2dvSQP2IUHS5LEmvYSGk0dwWhA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qmKAF6jMNQlfLib/JHSrWQoKh9+bdx/KXdaSjBIXU7RBphbu2OA42/6LiJw2rmJyf
	 ElHg25J3JqZrKBj4mIYzwwvtJu98nT+Otdl2Lq8+3G77fbhpaOlrX/AgK59Bswd8nB
	 bju9thh2VmrgO76i0ukGkNO4spqOW4NF/f8mPmNfAXHhJjMBHmr731ZNo3mbDmAkXA
	 lMX4x5Z6z6Zf4VMFohOeTWRGJ7LFPUucycS5dgJBR0W5zf/YXCf7Xx9dzYaohMVeW/
	 jYtlaMiNPH82bnexMEpu36C0KiDdzuAYfkTeQUy8QBzL4K18je39KbKOsvM7bUWSj2
	 YWBtBjX7+Lu8Q==
Date: Sun, 16 Jun 2024 22:43:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 07/11] setjmp.3: fix section references
Message-ID: <v2djcfdokdqdoot2rjuspng3tdiqbcupxdcclcrjk3a3c7vsbt@xgch4wknhyiu>
References: <wetdiek6naltbxd35r7suxa4fus3k6qkjovchfyu2bg6fhqjd4@olqlwyxhfc7f>
 <20240616201946.1663626-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5cvbnup3kd4cvf43"
Content-Disposition: inline
In-Reply-To: <20240616201946.1663626-1-kolyshkin@gmail.com>


--5cvbnup3kd4cvf43
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 07/11] setjmp.3: fix section references
References: <wetdiek6naltbxd35r7suxa4fus3k6qkjovchfyu2bg6fhqjd4@olqlwyxhfc7f>
 <20240616201946.1663626-1-kolyshkin@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240616201946.1663626-1-kolyshkin@gmail.com>

Hi Kir,

On Sun, Jun 16, 2024 at 01:19:45PM GMT, Kir Kolyshkin wrote:
> Commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
> Reorganize sections") results in a few problems with setjmp(3):
>=20
>  1. "Feature Test Macro Requirements for glibc" refers to NOTES, while
>     those macros are now described in HISTORY.
>=20
>  2. The discussion about saving signal mask is now split between HISTORY
>     and NOTES.
>=20
> Fix the references accordingly.
>=20
> Fixes: 4131356cd
> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>

I've applied both v2 06 and 07.  Thanks for the revised patches.

Have a lovely night!
Alex

> ---
>  man/man3/setjmp.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man3/setjmp.3 b/man/man3/setjmp.3
> index 2319feb47..39511e49d 100644
> --- a/man/man3/setjmp.3
> +++ b/man/man3/setjmp.3
> @@ -26,7 +26,7 @@ .SH SYNOPSIS
>  .RE
>  .P
>  .BR setjmp ():
> -see NOTES.
> +see HISTORY.
>  .P
>  .BR sigsetjmp ():
>  .nf
> @@ -65,7 +65,7 @@ .SH DESCRIPTION
>  was called and to restore ("rewind") the stack to its state at the time =
of the
>  .BR setjmp ()
>  call.
> -In addition, and depending on the implementation (see NOTES),
> +In addition, and depending on the implementation (see NOTES and HISTORY),
>  the values of some other registers and the process signal mask
>  may be restored to their state at the time of the
>  .BR setjmp ()
> --=20
> 2.45.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--5cvbnup3kd4cvf43
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZvTmUACgkQnowa+77/
2zLRgw//Se/CFxAkD+wEYkWHGxScWVvJ9wrBEbixJ/cg4+gYYcK/fe0gwT5xXOOD
YdVMyPPfBOWlVZdT3tsEfSsVfF5SIsv41mObL+OBtiaIXm5e2Q5Qx32I/3dQwHoD
9biZV4QeYOGL9601ECTJ3aOrB+TiddQh9BrZkvjpU4Qvv3C8AnI6Y6GbWnlwzvDg
J7Ey/0enznrBmTd6Ocz9sWD14l/xqECfecPxJl+kJDIcdhJrwh3uXPP3wRhLw2fO
mzsvpOge5cOB4+nQGzZ80AI46QNZr5igX/+N+JmI7ACOtNxzuUPBnC8e+n1oyVx/
p9mV5DEiZv3ZRla5x5wrOiSbwkFDOyOJ2ZH4iC58dwzmZmNnRk5wb3KLKrS9zmkc
lKii94m6nAdq8WLJ5Seq7DF85qtRLOY/S01EgVRxbbeYZI13sX4fV5gvSMIMjrPE
DG6X3zAt+Iy93T7E5QTEJikjewGzQfxRwDmIjX5XXKx5RL84Cgl3occjloV1XfBy
4COvumVLZRP0faoOF4j5WYWvyQhO5Gh6Va48cwgHBIPElXdfHGSaaDlxzDjyWE0K
RBBBzsOui72asfNV5dXG8urdg2aurN0+FSW99RKaFIBR4j3mk5ZhXUFtCKnFQj60
kM3EEGir7Zqh/s9W5N2exTt8LDuyqwMRqSaxj5Y+AulC5XLJGj8=
=kuWB
-----END PGP SIGNATURE-----

--5cvbnup3kd4cvf43--

