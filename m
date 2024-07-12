Return-Path: <linux-man+bounces-1453-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C55C992FFFD
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 19:53:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 020691C2163A
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 17:53:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FB7B175560;
	Fri, 12 Jul 2024 17:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+h4MYim"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0BCE143C52;
	Fri, 12 Jul 2024 17:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720806803; cv=none; b=Vym9mUYLRMFER3KfkQE1gIwci8xXAClkQWFakt5CXfDOgwlKLMes3hwvOYTM8xv6RBAxziWQDpfYyO/4VkvDz/CujJtca+4v+UH2LVtHPF+v5Hvu1MCQhsBnfa+KmZjzRRIZ0SYhLFJs9lBeckSxAyA2tzAnBhmhoGLkKK11u2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720806803; c=relaxed/simple;
	bh=j6sIATo6CzMdTySQVxN2VTzdLQnH8mMMhtziO3X3I/E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oZGDzjsuiEucNprjLfsVuJtf01DHtJzLijoRfgBTSiwQx0Nbs7gySAbH7C/Iz/cnbpcasb1NjkWSzuEwgWw5EVchZFgg20eA9TMKD2l9EJQP2RTwYnFqholirsiGk6PB0CItpzQXt1VcBODftwReuV4fGswiYGMSdLtYBATit+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+h4MYim; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14E33C32782;
	Fri, 12 Jul 2024 17:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720806803;
	bh=j6sIATo6CzMdTySQVxN2VTzdLQnH8mMMhtziO3X3I/E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y+h4MYimHoS/UykF28uMFfqcxmYpXz2il8r01j1RcTVzF5NEKehAHQYHRsszEEONT
	 RGWIC3S+Ennj4P+LgSKLhRqF6zt1Yy2RNocWC2ge5URksHbdnsL8FqFgox1KxUvfj/
	 WSadZ1ms4Hw2AS3Cc1kM+nYuW0tM2GkcpfIZCnLEQxtvXvwXd4b/T/LW2mSWIRTGc2
	 zT30N7p4EjEyee/olsLSpBMeJPty8MK8rPSMG/+QevMD3mDOix6Jzsdpa7wzFy5BCx
	 cQyFTzKB1BwRtfUK9yHMF8DucOORQ3MBW1Tms3CIPYEtoEMCdkO7CgXg4xQKuJbpVo
	 nd/hHAZZ66dug==
Date: Fri, 12 Jul 2024 19:53:19 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Petr Vorel <pvorel@suse.cz>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@linux.microsoft.com>, =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	=?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, linux-security-module@vger.kernel.org
Subject: Re: [PATCH v2 2/2] landlock: Mention -1 return code on failure
Message-ID: <bz3xewcvhobkffqrwg5bgt5wh3z5rd6ipmsjgczxj6p4ljkbg7@h77ig7r7t2vd>
References: <20240712172246.151258-1-pvorel@suse.cz>
 <20240712172246.151258-2-pvorel@suse.cz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sec3mkynufb7yv4a"
Content-Disposition: inline
In-Reply-To: <20240712172246.151258-2-pvorel@suse.cz>


--sec3mkynufb7yv4a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Petr Vorel <pvorel@suse.cz>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@linux.microsoft.com>, =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	=?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, linux-security-module@vger.kernel.org
Subject: Re: [PATCH v2 2/2] landlock: Mention -1 return code on failure
References: <20240712172246.151258-1-pvorel@suse.cz>
 <20240712172246.151258-2-pvorel@suse.cz>
MIME-Version: 1.0
In-Reply-To: <20240712172246.151258-2-pvorel@suse.cz>

Hi Petr,

On Fri, Jul 12, 2024 at 07:22:46PM GMT, Petr Vorel wrote:
> Mention -1 return code on failure for landlock_add_rule(),
> landlock_create_ruleset() and landlock_restrict_self().
>=20
> Although it's a common rule to return -1 on error, it's better to be
> explicit (as the other man pages are).
>=20
> Fixes: a01d04a69 ("landlock_add_rule.2: Document new syscall")
> Fixes: ca5163697 ("landlock_create_ruleset.2: Document new syscall")
> Fixes: 3f7e4f808 ("landlock_restrict_self.2: Document new syscall")
> Reviewed-by: G=C3=BCnther Noack <gnoack@google.com>
> Signed-off-by: Petr Vorel <pvorel@suse.cz>

Patch applied:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Df635c200e5fddd6f4250246239c59a5b833d435c>

Thanks!

Have a lovely day!
Alex

> ---
> changes v1->v2:
> * s/the cause of //g
>=20
>  man/man2/landlock_add_rule.2       | 4 ++++
>  man/man2/landlock_create_ruleset.2 | 4 ++++
>  man/man2/landlock_restrict_self.2  | 4 ++++
>  3 files changed, 12 insertions(+)
>=20
> diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
> index 4b95afb07..d4ae8f2f6 100644
> --- a/man/man2/landlock_add_rule.2
> +++ b/man/man2/landlock_add_rule.2
> @@ -79,6 +79,10 @@ must be 0.
>  On success,
>  .BR landlock_add_rule ()
>  returns 0.
> +On error,
> +\-1 is returned and
> +.I errno
> +is set to indicate the error.
>  .SH ERRORS
>  .BR landlock_add_rule ()
>  can fail for the following reasons:
> diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_creat=
e_ruleset.2
> index e62a3f9b9..618d54f37 100644
> --- a/man/man2/landlock_create_ruleset.2
> +++ b/man/man2/landlock_create_ruleset.2
> @@ -86,6 +86,10 @@ returns a new Landlock ruleset file descriptor,
>  or a Landlock ABI version,
>  according to
>  .IR flags .
> +On error,
> +\-1 is returned and
> +.I errno
> +is set to indicate the error.
>  .SH ERRORS
>  .BR landlock_create_ruleset ()
>  can fail for the following reasons:
> diff --git a/man/man2/landlock_restrict_self.2 b/man/man2/landlock_restri=
ct_self.2
> index 43f15c932..d4e5e753c 100644
> --- a/man/man2/landlock_restrict_self.2
> +++ b/man/man2/landlock_restrict_self.2
> @@ -72,6 +72,10 @@ must be 0.
>  On success,
>  .BR landlock_restrict_self ()
>  returns 0.
> +On error,
> +\-1 is returned and
> +.I errno
> +is set to indicate the error.
>  .SH ERRORS
>  .BR landlock_restrict_self ()
>  can fail for the following reasons:
> --=20
> 2.45.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--sec3mkynufb7yv4a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaRbY8ACgkQnowa+77/
2zKLXxAAjVQrtfgTKY5//jGDqPV+r04i13hevYBapU+gXszAu3D8rRZpZHJe/4WG
LpzsqqJr36CLjq/b4x1mMnE7ZoPy3HNSE/I9SlxA2nVXnx9o/toK/kFH/OXAcgm+
K1UMpU/owZYq2RRUdVxPREbjXqufYPJeKE2AF16E6XfEUtV1iuTVtjcDTPLxjh+V
vCEqEgJ+3kGD+RYkYzlBC7h11FFuSg1V4XIPE2LRIMgxnOPGJCRpq61FX+oiNfBz
HDk2KfBUm6BBerPhwHnbfUQ7KGQ9EF27hNDneSPgvMVQ9fKUwmtzTR/9i/Qf4uNI
NHEN1vemkN7PAFP4Abhu5mII8l0CUxnmLFcywNJwizLHGou6FWOT3x30TOv1RIm8
J41Y97rBeN3XTt0nx9LszyK04+SipK8ZKovuhQrA7jzOI4jpc9AIwxnsfipDdHLt
kySNI9zbtms2IQm4QrwKicA4buMJtgU/YO3ubk3rUflh3K8nycFvstdaUzXEzvsY
bvSIqF4Cpl3VTs+GFicXHnDHqU82s30pdN24IuI2qcbADXnUvTXt8R6q09yVWbbb
zoZU+29CTX3qfqbQ1jlflGw2fgl65tkcU9o4ywnMQdoX+L/0ZZdV04Cg9X4KosyL
zGyniPkMisS6mh7INcE/eITNY3jZRxn0R4Od7gL3ZMuF243vm/0=
=aLxz
-----END PGP SIGNATURE-----

--sec3mkynufb7yv4a--

