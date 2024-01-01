Return-Path: <linux-man+bounces-333-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E210F8213A9
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 13:04:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DDF0A1C20BFB
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 12:04:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B20CA20FD;
	Mon,  1 Jan 2024 12:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEW5575o"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 744CF20E8
	for <linux-man@vger.kernel.org>; Mon,  1 Jan 2024 12:04:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6273C433C7;
	Mon,  1 Jan 2024 12:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704110658;
	bh=GL92p1TMaKFIGjjVAca6CVkKe0uaU0GAQDb6M7U8cgE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jEW5575oPuz3EqMdB/oIUW3JFnwc68nmzDHcyKa4L2qCHqtcX70HRAMFQDHbzYWoI
	 FXKmOwnn7oCVI/yICemChLAUZKMzQTm7mDvwP6yjfhNk5hENIcAo5wbqcO+lULo95B
	 QE6C516xXfMIGw/EqyG/HuLnRIVKGJqsE+KYASylkj8B7DslNQjM0OHxuGNkhGTDV9
	 GuACiwWHbbRlDjwoN+AUah8SGZjlC+2d1+1CKW4lLriz4BQfF+/TNPRFMqoIY1pOz5
	 i3CRC0nS0BwzsMGzAlByt4qfI7XuMxlcy1aF7WBRr81bLJ/hCtbrbFvW/nJSQpOhr+
	 WwcYsT72He0og==
Date: Mon, 1 Jan 2024 13:04:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Rajesh Pandian <r.pandian@gmail.com>
Cc: linux-man@vger.kernel.org, schwindl@posteo.de, stefan.puiu@gmail.com
Subject: Re: [PATCH] bugzilla_218018_v2
Message-ID: <ZZKqP6JnPSlEJoOH@debian>
References: <20231230050339.4599-1-r.pandian@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="laOdjoDe3f7qUmY3"
Content-Disposition: inline
In-Reply-To: <20231230050339.4599-1-r.pandian@gmail.com>


--laOdjoDe3f7qUmY3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 1 Jan 2024 13:04:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Rajesh Pandian <r.pandian@gmail.com>
Cc: linux-man@vger.kernel.org, schwindl@posteo.de, stefan.puiu@gmail.com
Subject: Re: [PATCH] bugzilla_218018_v2

On Sat, Dec 30, 2023 at 10:33:39AM +0530, Rajesh Pandian wrote:
> ---

Hi Rajesh,

This is missing a commit message.

Thanks,
Alex

>  man3/dl_iterate_phdr.3 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man3/dl_iterate_phdr.3 b/man3/dl_iterate_phdr.3
> index 0a8beb3ae..263178e3f 100644
> --- a/man3/dl_iterate_phdr.3
> +++ b/man3/dl_iterate_phdr.3
> @@ -129,7 +129,9 @@ The
>  .I dlpi_phnum
>  field indicates the size of this array.
>  .P
> -These program headers are structures of the following form:
> +The ELF program header is described by the Elf32_Phdr or Elf64_Phdr type,
> +depending on the architecture.
> +For example, the following layout applies to 32-bit architectures:
>  .P
>  .in +4n
>  .EX
> --=20
> 2.39.2
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--laOdjoDe3f7qUmY3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWSqj8ACgkQnowa+77/
2zIOMRAAj2MXuBqUWA3my0m7MWK4cindx5GqevFlLPSYGTSeVNflRxzCyq/hbira
7nDvN0fhXmmjNXYfPLqXTCTEuJ77Q8oIyC3IC2iYz0MHYJrPzcUmF2WZ7Cz5TcQR
1rIVqxDf/Ey13oiu1cm3kbKWXxi5Q1fLAbc3kONqsdha+a7tml05yWibQPUDWrNI
aTyaW5GH+ygeLeSKibaGe678tBpy0ZJlqsyjvnYjpifRvFJ3icA9y+Y6v9r5KpB/
NIzaYMVkcCH9iqFtzwFjKBvjn4npP69REU/88rGUJ4UI73c6CLVxt9lMDOwD1WDD
BZGK4jYHkHJtWir8eOqjGDQMYolQ3DpTYDtmPX56+ciAfHDK0vOkrTWrXO/FoYmO
FaoQsjdRDaMZKDZHw1riBDXaXqzlUVDyqrhFGmjrcukdOTpVRGktRSwC5wMBX8sH
qRnH18FDWqbgUEsislvgSF3IPyv34BY/AuAJQV1fai9lr3YnrCHkyA/QrilzcwVr
LVuKJaMRu8svR65Td86LVUL2tFmGv6DKPwjuiziyzNSDBh+1C45J8EmAXM03uPX+
WXSvsZpiRVlSpw9+F8quvd7b1Lt7UYz4wueN3jx8AHssNu3kd01IfbNHi/u3cp36
TdaSriru7A1wedjuJawNcZvxJtKMVvFrF2zJygTnRbJxwfO4NFc=
=6C7x
-----END PGP SIGNATURE-----

--laOdjoDe3f7qUmY3--

