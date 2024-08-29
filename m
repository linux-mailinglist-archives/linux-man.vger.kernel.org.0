Return-Path: <linux-man+bounces-1726-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED17964CB1
	for <lists+linux-man@lfdr.de>; Thu, 29 Aug 2024 19:24:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 73A93B21D98
	for <lists+linux-man@lfdr.de>; Thu, 29 Aug 2024 17:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4D9A16D9BA;
	Thu, 29 Aug 2024 17:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnoypX47"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62BE146A96
	for <linux-man@vger.kernel.org>; Thu, 29 Aug 2024 17:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724952264; cv=none; b=Mwr5x6y9PzDxX8Si9YZyiKRHAdV+uKy/+8q+Wf82rNu7vcntjTSjW8O/3y2L3b38MX2ynLaPW6Y1m2QvRy50Tl5eVYaSaVK14o2x4tEA9JW86z1duTRae4dPZDKNbzGKpLTiLi9IkdMPwQMR9db3+1KbOnEQV9nglPl/EgOAKQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724952264; c=relaxed/simple;
	bh=MOb8ohwHJ4HgGHDB6PHAvSljOIGrwHSp6uFy6OZ2gMo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZVbtvwDvB7tahmJyTf28ITLybXGyFXz8uBX6N3sQMTwVfY3cPGdApzoiwaLPhbA2n56pC71Cy9jbJs6wNY9EYK0AlUzBgEZGOVyE4mkm7JxPHDW8BT+RcTiuNvlp2mMzeAZFyjMjNNeaZBGsrubArj5gOfX8ADPPnHNG5KhnGNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnoypX47; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7044BC4CEC1;
	Thu, 29 Aug 2024 17:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724952264;
	bh=MOb8ohwHJ4HgGHDB6PHAvSljOIGrwHSp6uFy6OZ2gMo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lnoypX47J7wQDRz1+slAv0gAd0mhQCzq0HOQdu98dAPjI1G1e9YzNGnQi5tqqQ8oY
	 6/ztSRvsV4/0J8EvAik5mk1cVtf4AusqIY2sNVDfNz/Hej1dsU1BrznlqJPHMJHuop
	 sLMDWkOH8X7HIA0pLJRJ/n96rxjLqB/TonBKc9079iphfgI9cFjcJeNb+SRvhsAqx8
	 5JR/1T1sj2D3puMt0st5tFgFLRYFG7LbWo+oR+r6cyD70exRz7Sil5Ij9hbwbaJaJO
	 PlCpwsPwg46wW3N6ZihoH4Y7KVFZg3tqmoeR4xCGoqx0Wr8tMCbM+cDa1CtzuQI5VD
	 awHBUVFeWkeVA==
Date: Thu, 29 Aug 2024 19:24:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kienan Stewart <kstewart@efficios.com>
Cc: linux-man@vger.kernel.org, Alex Xu <alex_y_xu@yahoo.ca>
Subject: Re: [PATCH 1/2] pipe.7: Note change to default pipe size when soft
 limit is exceeded
Message-ID: <jtmp6mblo42qwzflcf34y4k2nl45wamp6xiyjl2xssi6gtb5pe@4kza5wtgpa6v>
References: <20240829154304.2010305-1-kstewart@efficios.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b3h3wntbedf22mce"
Content-Disposition: inline
In-Reply-To: <20240829154304.2010305-1-kstewart@efficios.com>


--b3h3wntbedf22mce
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kienan Stewart <kstewart@efficios.com>
Cc: linux-man@vger.kernel.org, Alex Xu <alex_y_xu@yahoo.ca>
Subject: Re: [PATCH 1/2] pipe.7: Note change to default pipe size when soft
 limit is exceeded
References: <20240829154304.2010305-1-kstewart@efficios.com>
MIME-Version: 1.0
In-Reply-To: <20240829154304.2010305-1-kstewart@efficios.com>

Hi Kienan,

On Thu, Aug 29, 2024 at 11:43:03AM GMT, Kienan Stewart wrote:
> See upstream commit:
>=20
>     commit 46c4c9d1beb7f5b4cec4dd90e7728720583ee348
>     Author: Alex Xu (Hello71) <alex_y_xu@yahoo.ca>

[CC +=3D Alex Xu]

>     Date:   Thu Aug 5 10:40:47 2021 -0400
>=20
>         pipe: increase minimum default pipe size to 2 pages
>=20
> Signed-off-by: Kienan Stewart <kstewart@efficios.com>
> ---
>  man/man7/pipe.7 | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/man/man7/pipe.7 b/man/man7/pipe.7
> index d1fad9974..c7f3fbb9e 100644
> --- a/man/man7/pipe.7
> +++ b/man/man7/pipe.7
> @@ -223,6 +223,9 @@ So long as the total number of pages allocated to pip=
e buffers
>  for this user is at this limit,
>  individual pipes created by a user will be limited to one page,
>  and attempts to increase a pipe's capacity will be denied.
> +As of Linux 5.14 the default capacity of individual pipes created

I think it makes more sense to say "Since" rather than "As of".
"Since" more clearly says what happens in Linux 5.13 and Linux 5.15.

Also, this sentence doesn't seem to relate to the one-page limit
mentioned in this paragraph, which is only when the soft limit for the
number of pipes has been reached.  It seems to say that this limit is
the default limit of individual pipes, with no mention to the soft limit
of pipes.

And also, I would mention the current behavior first, and only as a note
the historic behavior, instead of first mentioning the historic behavior
and later the current one.

Instead of your proposal, I would do:

	-individual pipes created by a user will be limited to one page,
	+individual pipes created by a user will be
	+limited to two pages
	+(one page before Linux 5.14),
	 and attempts to increase a pipe's capacity will be denied.

Have a lovely day!
Alex

> +by a user is two pages instead. Users may reduce the pipe capacity
> +below this default value.
>  .IP
>  When the value of this limit is zero, no soft limit is applied.
>  The default value for this file is 16384,
> --=20
> 2.45.2
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--b3h3wntbedf22mce
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbQrr8ACgkQnowa+77/
2zIKORAAj+KNT0gBSceSFW9LRORNt/dFOJ6TNBJ4FyrD9jlxGJqecHDjum8dWFLj
S/swvDtKtvPpHqs/RSLq+7G9xk64p1QvO0NhhHMFSBefN6MD+H+GSJhgRGdKIv9N
n+NYQK1ZEtnKVEiudXzWFSpOYpsxYMjvCAWkErDpnFBfQb9oEM/0d3Xa20oBgVUz
4iJI2YF/XXGcvBBvq8SdjT0UL0bbpA+ENwQPeQK00UP396BK3QJ+2muqPCixtYWo
EjJtHRg5PwW0hlta9DL+DKahk0k+QPHfygwDqJD5Y48qaLAxlEaUDqAg/jDJ+lks
pLL9/H0ksJDNrd1un0HguJ0Z8unXi9mVMYUfMZVAH6ku8Kr3QpxYkkI9SlNl6XaN
vXTVaOSe/G6k6mA6dnfm+lxNV+qfGm0gB4CQZGSA4vmqg+iUgnP4Xw86hmYDz4Rb
lhaOMlMSFS8I5llB8atjgoJf22+hcLkCCqAmObwS8PGanUm49bIstJg2zYqPmMt3
902uaRmdOvcOONQWfl88yQ4UUQtZV5rWIjdYuJUZEK3WWq87QdmSGM7rk6r87rdd
71OwYllNAEpy3O2sltreOTKn+htZwp49a0IYC0l2MbXhm+nbsqksDdgfnA/Ousf5
iHSz90S6g5Ex/XFhZh3D2ASjVuuch0F8oBiQ5zv2BLLd68GmWrw=
=Mqlj
-----END PGP SIGNATURE-----

--b3h3wntbedf22mce--

