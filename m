Return-Path: <linux-man+bounces-330-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 112D98213A6
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 12:56:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D9C55B21A10
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 11:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B3D41FB0;
	Mon,  1 Jan 2024 11:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSHSy0DX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D6E3C0A
	for <linux-man@vger.kernel.org>; Mon,  1 Jan 2024 11:56:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A5FAC433C7;
	Mon,  1 Jan 2024 11:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704110173;
	bh=GD4BXzwt4zmZVI4oCLIsRJoKWPQ72Vj1AgmZdb8dR+o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uSHSy0DXbg/yjWvEmHJHR7CT9bAdqn+A9oYXmK9bfL9uppB+IVxomTKYWWHjN+7Y2
	 E3cR8kFrP1/Ok2vSuBq50C++8t10QW+M2LeGkunOoarHEfdn2iP5LhV7dYHimmW1B5
	 b3poJ+iD7Uc/BLiMPDHREKyXGZivdMjg979NQ2UmcmCIe4HMUl5DcjEW8tOqcoKdeN
	 Av90D9POPYlpvKGQMj+CsOAc5YQTivPvByW3kqxGZt2KqaFJSKQVCKHAW2QgFRR5NT
	 yZGzTBxmzecYxuGcaBktaO5mDHwG2HvMHwtt8tuRYn9eGmHYoLIyfPhz8F8zY4SXDY
	 /60TMgK+Atlpg==
Date: Mon, 1 Jan 2024 12:56:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Rajesh Pandian <r.pandian@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] bugzilla_218018
Message-ID: <ZZKoWlGumW-0cGJN@debian>
References: <20231228155601.16558-1-r.pandian@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ROkMA0Ws1T697112"
Content-Disposition: inline
In-Reply-To: <20231228155601.16558-1-r.pandian@gmail.com>


--ROkMA0Ws1T697112
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 1 Jan 2024 12:56:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Rajesh Pandian <r.pandian@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] bugzilla_218018

Hi Rajesh,

On Thu, Dec 28, 2023 at 09:26:01PM +0530, Rajesh Pandian wrote:
> ---

Missing commit message.

>  man3/dl_iterate_phdr.3 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man3/dl_iterate_phdr.3 b/man3/dl_iterate_phdr.3
> index 0a8beb3ae..f47fdd502 100644
> --- a/man3/dl_iterate_phdr.3
> +++ b/man3/dl_iterate_phdr.3
> @@ -129,7 +129,9 @@ The
>  .I dlpi_phnum
>  field indicates the size of this array.
>  .P
> -These program headers are structures of the following form:
> +The ELF program header is described by the type Elf32_Phdr=20
> +or Elf64_Phdr depending on the architecture.

Please use semantic newlines.

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In  the  source of a manual page, new sentences should be started
     on new lines, long sentences should be split into lines at clause
     breaks (commas, semicolons, colons, and so on), and long  clauses
     should be split at phrase boundaries.  This convention, sometimes
     known  as  "semantic newlines", makes it easier to see the effect
     of patches, which often operate at the level of  individual  sen=E2=80=
=90
     tences, clauses, or phrases.

In this case, I'd break the line between 'by' and 'the', or maybe before
'depending'; whichever you prefer.

Cheers,
Alex

> +Following is an example of 32 bit architecture:
>  .P
>  .in +4n
>  .EX
> --=20
> 2.39.2
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--ROkMA0Ws1T697112
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWSqFoACgkQnowa+77/
2zI+pA//byjDUWJYQFVIvLSO1B8xdVu+Uwd3xFnODK3KXUrMvkBelDLVLmoA6ha+
dHcxMfC5X4Ke+85HcQzDmZsjZ5YOd0Ovdw9TWiZDPmSPSxuBisOtjFaBNLaqk7cH
5wZRX0gAlsnI9H+I287KYgz6mneGwmNsebGbUTrr/Nt16fyujH4UyAKe0x0Ru6JL
pPXyg1Vgnsx7Kfb88v4ynu104zbGb3vIBVkEZd35vUA57yb8Eet6yi0rnLRB50ez
cVxAoth8WTukO4CgD8JzH+QLAMrXTn51efWHFwx7EQYPWi+xFvYP7w1/kl+vI6k1
OrGOnIFBK/c0EX26QGcMv9zcBiSDsm2eDJG6GIxK3j0fGwPlVENfkbBm1zERSZO1
bLNpK14CKrCLYwtHEA0KMLW3zxJHqyq4Izanm6T0O7pZ8d7YCCUT4CkEB22J48bV
bhcG8xOCsMqvCTKKERaivhHRz6Q2uz7nNlWp2cxj5hiboClMN05WKsti6r1skR9Y
bjYjBRGBT1QwbaJjuSI2+V+FKQgG9AjaY8KPCvb2xtct21dyZhrNqbFnwQLzzTSB
AJ2Y43IlTneFT/EYrg7/5b1sQdgWOnytCazMJHyHAlzmuol8ftBQN/hgNoAB2wZu
JAMPdwsqEl2xlzWreJhoCqRTVnIM/6v1YaWfplt5fI0WagyKP5I=
=unCS
-----END PGP SIGNATURE-----

--ROkMA0Ws1T697112--

