Return-Path: <linux-man+bounces-598-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1DB87C14D
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 17:33:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB0541F21FBE
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 16:33:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D0D854F8D;
	Thu, 14 Mar 2024 16:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqoSyo4R"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9F31A38D0
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 16:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710433995; cv=none; b=blIxzCxNY7MDzIwot3mzUJD+mcVDMO2Ze48897a9zOxXRn4c+lFnhAmqOcgCITvrVmxUO4/VFheBH2iU4hIcLSYVDyEMqNMis6+QSnHUgpvNmYEo3GFVYrbGJFnKufrpmWNr3WsttkwCALdKZhe4v4Va/cwuD3esu4tyNpflGR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710433995; c=relaxed/simple;
	bh=ci5CR5lf6A2fLBobOm1RKNVF0fetscqpNxjcJzI6sFQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b5qRx75g6Q23Ah4ubXQw3VD6+11ZSRZJzsStjRTG/IAdFq15yw36QDd+FcvcmViPH1mX6R/acu+f6m4FOFbCshQSa2LO/77xEH17RwO3uepzjYZHQwpqHtBGtJttq8rMM1MY0bF58n8rIg62/mZYpFFQhvs8mxYGSZfolYMNWJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqoSyo4R; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2819C433F1;
	Thu, 14 Mar 2024 16:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710433994;
	bh=ci5CR5lf6A2fLBobOm1RKNVF0fetscqpNxjcJzI6sFQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nqoSyo4RnbQQk3aT2eHpe3cuGx1xIQfowbGshXraP7r7wdKtjA7E7fd/RJL9zXvlP
	 LKDVx6ArPUTWsHFS9xnYHtCv4ZtZ6s4DmHc33ZG8N3aoRzN1WJ/XpvRfTf8M6W/+bY
	 3gySdJxaJtBV2HWUVNwLUu5ud1RgAuXlS5wH3Mit1eBDjiVrzK9xhNkWrMTVCB7YDj
	 pKHGQN2eXkUFD2rKhwQjjb0/I2bql/altO005gAqk7ykt5u8FYQSfrL1mPDdinNyco
	 GW0IYN4WoaALcyeNNlK+/nct90ZF2+1/GqclKJFa7aIIu7D56cuvsbHf/zAxtq/+vA
	 dX+bs4rHCx8Iw==
Date: Thu, 14 Mar 2024 17:33:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 6/6] getrusage.2, proc_pid_io.5: crosslink
Message-ID: <ZfMmx4sAVf3ZGFkV@debian>
References: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
 <9a382ec3d10bc896e818bd1a932ea9c95756d048.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a0XjuHYOFRoCKhgF"
Content-Disposition: inline
In-Reply-To: <9a382ec3d10bc896e818bd1a932ea9c95756d048.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>


--a0XjuHYOFRoCKhgF
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Mar 2024 17:33:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 6/6] getrusage.2, proc_pid_io.5: crosslink

On Wed, Mar 13, 2024 at 03:26:54PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> These serve the same purpose from different perspectives
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

Thanks!  Patch applied.

Have a lovely day!
Alex

> ---
>  man2/getrusage.2   | 3 ++-
>  man5/proc_pid_io.5 | 1 +
>  2 files changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man2/getrusage.2 b/man2/getrusage.2
> index 8baff09c4..2ae9dafa4 100644
> --- a/man2/getrusage.2
> +++ b/man2/getrusage.2
> @@ -246,4 +246,5 @@ .SH SEE ALSO
>  .BR wait (2),
>  .BR wait4 (2),
>  .BR clock (3),
> -.BR proc_pid_stat (5)
> +.BR proc_pid_stat (5),
> +.BR proc_pid_io (5)
> diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
> index 181717192..d0116ba13 100644
> --- a/man5/proc_pid_io.5
> +++ b/man5/proc_pid_io.5
> @@ -92,4 +92,5 @@ .SH DESCRIPTION
>  access mode
>  .BR PTRACE_MODE_READ_FSCREDS .
>  .SH SEE ALSO
> +.BR getrusage (2),
>  .BR proc (5)
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>

--a0XjuHYOFRoCKhgF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXzJscACgkQnowa+77/
2zKX/g//b5ve7NmJNa3UE1VvXhi8CIZV2aE6NrtekLkJ/z3YSqB+X7NN0hZDzYCX
bqNJfgYSi1QMfVG+LcdwFoGhzXUNirUx7V3K+uFEM2qEDFPzpP8UoaQzhtZpDchs
aUoWlaVzzmcirNvnBFkqnm6dsNFCgwMF6xjqKT0DSC1OcgdWm2mS585yTc1/altt
yYewhb+txOyI8o9jd7p2/lCbjVSV6YCl6n3jgRKk3HuP88fZ7F+sCO5FX5dGY1M3
lw99gnbWfizBuN4uHtVbeAMwRYV+/RG/KA2YNPvk12zAk8PGXr+rlB/TLCaxooW4
yEKbuA8JV7e5LUMTTgWvfdZ/DxJUBuaukhhXfqzUk9zLoAU5OQk8IqRhmg1W+fDr
7PERBp+XgNYxzvRYt0XYLCdPym1PjokPYhbTWSHjPNXt4ASqAdZOeNtrEC74qWuR
IQuWb+dcSPguc0/AZRhjBQ2tZI+YuFF8n2OjhwzRm7b2lXDJCRXQ0T4IUkbgzh/G
gF/mVXNLhSosfueEAv3iGkjnfVgVUF3kiXr0yGeh+nahWECHh18ca91HiOrN4yGZ
eKyFE+kcO77qno+wpC53nRpKdqBp0xAZWjr28DH8fgRt9r8PA0vMSJdDhK9d7iTp
KxIm0jkKH3eXRHS8JzS0Omi9K643nQAz8seIgdsJVJS/e0oheV0=
=wacr
-----END PGP SIGNATURE-----

--a0XjuHYOFRoCKhgF--

