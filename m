Return-Path: <linux-man+bounces-2617-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 938BFA6AB4C
	for <lists+linux-man@lfdr.de>; Thu, 20 Mar 2025 17:42:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 380A88A74DB
	for <lists+linux-man@lfdr.de>; Thu, 20 Mar 2025 16:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFDDF21D3E2;
	Thu, 20 Mar 2025 16:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dytkU1r4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FF0717591
	for <linux-man@vger.kernel.org>; Thu, 20 Mar 2025 16:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742488936; cv=none; b=s42QFNiJu8XngovegHNbQPQMmQSj6QR3YVuKi8MSjkRKKnuqeu1lMXum2PmIXS7lRhGuwB6gWpOVq2hrzc5fW09M62IaECPS5TSJnhKXiC41sE/lv5UtmUZsLigT08ckFeaBw/n9X8HAdZ/yWkqxU9mQzSq6LZ75AAmVfwO5VN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742488936; c=relaxed/simple;
	bh=pCNIcjAqlEWAr0/cQ1uT0bFOFbVqN0o2XgxfgOtSIcw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ScGj72YPoimlwbhDQ6JH+8qq4ue7MeorsvokDQzxqn2evaHbVLeXaK+LzYJg2orxzQUgkDtm/S1OIqDQFgsatfx+Ehf91I3BgbEOIV0HF0ESBOvPkm8sUCBiwehlw6Geyj33vq7tg0Ah8tsqqRipNUeZgeCWlMRV6S6IaOPNRnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dytkU1r4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46FDEC4CEDD;
	Thu, 20 Mar 2025 16:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742488935;
	bh=pCNIcjAqlEWAr0/cQ1uT0bFOFbVqN0o2XgxfgOtSIcw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dytkU1r4JWPpkSgI/IEBdriRopH/pxvRcgO2qx8as67U0jEQZKkrMVNGn5/UKrrKk
	 6N+mH6NIhGUAJWZ4Exf+bB1E1cWDSNK0dDzMNTSx0PO1DN4+iFcqABg9Hy33FgyQRd
	 zoAf+i8LGwSfpbhI7spbUCd8ubG7qN6lbabR7m7nQ/UXiewiPkDPuc9Xxw6vBbk2C7
	 wh1y9XkumZqoxdt7fmM9CAVxEIM9ySNZ7mtcIuKNxIFyL38rD8Nuw+XZOocs2Non8o
	 bWa8faM7HbxH3vKHlvuNT9lDiP7cA+AD1CDI13htGzxrHa8GwMVrVQUjVtZnXDOHaY
	 oYOVrDJA+b9GQ==
Date: Thu, 20 Mar 2025 17:42:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Joe Konno <joe.konno@intel.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/get_mempolicy.2: nodemask param is a pointer
Message-ID: <zvmwpscmqqyyqwktnvd7e56tw2bpop7hlhold4wfhx5nn46vdv@54zng5rcq2gg>
References: <20250320163319.808000-1-joe.konno@intel.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="olqs25a433fh3sye"
Content-Disposition: inline
In-Reply-To: <20250320163319.808000-1-joe.konno@intel.com>


--olqs25a433fh3sye
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joe Konno <joe.konno@intel.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/get_mempolicy.2: nodemask param is a pointer
References: <20250320163319.808000-1-joe.konno@intel.com>
MIME-Version: 1.0
In-Reply-To: <20250320163319.808000-1-joe.konno@intel.com>

Hi Joe,

On Thu, Mar 20, 2025 at 04:33:19PM +0000, Joe Konno wrote:
> Checked, and nodemask parameter for this syscall has been a pointer
> since v2.6.7 (near as I can tell).

It is currently documented as such.

	unsigned long nodemask[(.maxnode + ULONG_WIDTH - 1) / ULONG_WIDTH],

It is an array parameter, and array parameters are adjusted to pointers.


Have a lovely day!
Alex

>=20
> Fixes: 77f31ff920bc ("get_mempolicy.2, mbind.2: SYNOPSIS: Use VLA syntax =
in function parameters")
> Signed-off-by: Joe Konno <joe.konno@intel.com>
> ---
>  man/man2/get_mempolicy.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2/get_mempolicy.2 b/man/man2/get_mempolicy.2
> index 526acc0c9a17..d6a8eca9564b 100644
> --- a/man/man2/get_mempolicy.2
> +++ b/man/man2/get_mempolicy.2
> @@ -18,7 +18,7 @@ NUMA (Non-Uniform Memory Access) policy library
>  .nf
>  .P
>  .BI "long get_mempolicy(int *" mode ,
> -.BI "                   unsigned long " nodemask [(. maxnode " + ULONG_W=
IDTH \- 1)"
> +.BI "                   unsigned long *" nodemask [(. maxnode " + ULONG_=
WIDTH \- 1)"
>  .B "                                          / ULONG_WIDTH],"
>  .BI "                   unsigned long " maxnode ", void *" addr ,
>  .BI "                   unsigned long " flags );
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--olqs25a433fh3sye
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfcRWQACgkQ64mZXMKQ
wqlOrBAAsX6JuMcUofFDdIj7ETIAwUAr7cG4ig8EIa8ZRY+GRINcu4FV5j2eBpAs
GtCBJqtC2tqXp52YiO5wMMNHU+4WAlWXqnbTj09tBD2HET2SVe+go5rIzQyeI671
wwevvaGohjCN5wZoqlPE1JzGmbjWpllnMa7/XZn1jFa37ADDwkIaixxXV1MDmXPX
hPfhSY7oGvoKgSfDJ2mBbx2SxN3WhHLquspF35sNBByOxwqm28MpyacwFigzuA6y
/i9UvLsj64U/m5i7LU5Ob2VPri4g1VrYqSYHME1MW0XVvzYN2W1NjsKimikzcmv4
UCznV1fzA43qyMKFMQyxkk+3UQWVOSMA1tVKg2rHvcwUHdqKcHuAPZaVyoaULAl0
tk+nX7vKIE58ObVNhahsczcIXEC0hUc/f1zxZAVEagxZZoholxHn67DrJFrybPrI
JvXJtvH59PbsWcQ8Asy9Wyvvk8xcVmonZKKvg17M9BtxO0TV7hioPy6VEhmI/uFh
zPP12w4/2S+KGJpHpsBZjpizX7xssZImUzoEzjYJc66kt0WeyBvmS6gqGeCk1u+c
/wx22JCY0hOSwyQopzkhBnG1M6gSUbvjK8NZKSHdZrRGHIvjN3jlKlDbsHj6o+Ik
aa/koGVVStxC9sMFRdeh/P69yX2Q6kQaxaCK6NgWhO8CPvDSPeE=
=s/a+
-----END PGP SIGNATURE-----

--olqs25a433fh3sye--

