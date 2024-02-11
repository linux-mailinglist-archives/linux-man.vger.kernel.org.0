Return-Path: <linux-man+bounces-422-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DA2850AE1
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 19:52:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C27BB1F2242E
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 18:52:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42AE65C5EB;
	Sun, 11 Feb 2024 18:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MX0JxZFh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E592241AAB
	for <linux-man@vger.kernel.org>; Sun, 11 Feb 2024 18:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707677572; cv=none; b=L8F0a3fV9tYrwU94iy1+ydQpOaSPn3WBdvKx5TaesSUZmMqxo+KNrLaSZK1AP2xfVTsq08HlqWz/UTcDyg8y1IKwfE87eGQCEq53qPwEoS/lKGTbDH7ibR4Q7U9Fq/KJAMa/FFi5fHj1fvVimwbI7aMoToxdLt1r+av3RyiWpfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707677572; c=relaxed/simple;
	bh=VPHfstEeofoQAP51beazcvj8GEFvtnXGeR1sKp2sKPA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ifsdxtZ4mtk8VCX6jFhCHPxNE4E7GGGGc89RNN+FBCGbbjHtjeE5KPszwiIKEWXzRCgMafFNaomv2C6JFVIV2WAXEYkBwCGr8xW3VBzgTG0XlY+UFVsPWCJwz8ciEy7shlmxMCQ3Vv+amLHqYPfTgRwlhn/ZqB4ClKTkyV1wmEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MX0JxZFh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF998C433F1;
	Sun, 11 Feb 2024 18:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707677571;
	bh=VPHfstEeofoQAP51beazcvj8GEFvtnXGeR1sKp2sKPA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MX0JxZFhULTJq3BG96Y+gQ65JWsGWRIv5Kw5s+5MbAZs1I6L8jXWKtr5HmDXJPyZN
	 EsUKwvykgSrUAs7zMU+YWes23iJlq98OYIPec8+BJFAprA2MIkNzOsxDtNuo6oxTkB
	 re5Faf1F5wlG/kB7419sGOxbFpHpLX4afMKQGaw8UyDIwhA6B+gTDKpHx1Jug5GpSh
	 lH/kowO397UunwGq+FIfJRTV1mbThr2csFGllPJCy0zTn+03fKbL2tdNw/aJJvU5jV
	 q4yDGYq8PMLsQoOG45jTILgh1/ztG5pg4X93WP2IZ/QNGo+cOlRfZrHthQ40XtjDcP
	 8molU4+dyZXVg==
Date: Sun, 11 Feb 2024 19:52:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] seteuid.2: glibc implements seteuid calling setresuid,
 not setreuid
Message-ID: <ZckXgE9O_4QfWaLk@debian>
References: <20240207201336.477108-1-stepnem@smrk.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Iw8Tdv7ssv/YVUHJ"
Content-Disposition: inline
In-Reply-To: <20240207201336.477108-1-stepnem@smrk.net>


--Iw8Tdv7ssv/YVUHJ
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 11 Feb 2024 19:52:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] seteuid.2: glibc implements seteuid calling setresuid,
 not setreuid

Hi =C5=A0t=C4=9Bp=C3=A1n,

On Wed, Feb 07, 2024 at 09:13:36PM +0100, =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec =
wrote:
> Analogously with set*gid.
>=20
> This has been the case since more than two decades, e.g.:
>=20
>   commit eae59a5681a6 glibc-2.3.2-793-geae59a5681a6
>   Commit: Ulrich Drepper <drepper@redhat.com>
>   CommitDate: Sun Jun 8 22:37:53 2003 +0000
>=20
>   Update.
>=20
>           * sysdeps/unix/sysv/linux/seteuid.c (seteuid): Use setresuid32
>           syscall directly if possible.  If __ASSUME_SETRESUID_SYSCALL is
>           defined drop compatibility code.
>   [...]
>=20
> The change in implementation from setreuid/setregid is also
> already mentioned two paragraphs earlier in the same man page.
>=20
> Fixes: a36b2bb0eca4 ("seteuid.2: seteuid() and setegid() are implemented =
as library functions")
> Fixes: 8554dd0324b0 ("seteuid.2: tfix")
> Signed-off-by: =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec <stepnem@smrk.net>

Patch applied.  Thanks.

Have a lovely day!
Alex

> ---
>  man2/seteuid.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man2/seteuid.2 b/man2/seteuid.2
> index 312ed1f9e002..0eae04f79fc9 100644
> --- a/man2/seteuid.2
> +++ b/man2/seteuid.2
> @@ -117,9 +117,9 @@ .SS C library/kernel differences
>  and
>  .BR setegid ()
>  are implemented as library functions that call, respectively,
> -.BR setreuid (2)
> +.BR setresuid (2)
>  and
> -.BR setregid (2).
> +.BR setresgid (2).
>  .SH STANDARDS
>  POSIX.1-2008.
>  .SH HISTORY
>=20
> base-commit: 452f15569fc3cb1697b6482754dd51a56fcab970
> prerequisite-patch-id: 79eb7cb4939079d7fa9f00007856784f30801886
> --=20
> 2.43.0
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--Iw8Tdv7ssv/YVUHJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXJF4AACgkQnowa+77/
2zK58A/9GLnR4fOlk+5zUy/RjzJFTfn8Yo9Mmlxxw94pfTVSWR26FCfU60WMGHsq
onypfrSrCTgTfKk324gAjTNrgTP1WToD1tirCTCUEijGEsj3fa/BiWrcH57VexKO
GFUwor20yfTcM4HPM7P0Lh89UBFo9bPKw16FYut5eCCoYLmXa5pMXxhBz+BZVP1d
I4EGu2PQN4wmivqvvjqJOUuTJ0+9JDMHGL/9YIRILSFj1beXa1LTri2xE4HV3nbT
05H5K5KFNzmJUMBTz1f7H4Dhdfb+e3esfn65ybdpRVcbSfADBmhZlFwjtkr8UnAI
U4l/ubWe1M/Yv6iS0sLwP3Muo+OkbKmHH22ohI3pVnt0ZVWjvpBarogjY4/HzVXR
eU5p0A5wuzOq//kJrnG49xXjz1u8rIoVCIXy/YriRV82jWlAJzbE/zQvB01hB2rP
RvehLsaxg2I6oVcKY7g7Fc458TTYuYaNfmpigNIppxaLfKLGlA2Md4rJ89Ou5Nf4
2X/Y8BHIAFcjkha/92nnWN7NF9o2SwMBsSdAdZHQc7DfMCUAxNVu95TNoBAJeqE6
vwU5dimIQJmPPNyY2abE90WOTYzk3AXn3BouddB428buW0kkkxiG/uyMzb9l4ne2
34d3/PJFY4x+OCCgIozm+SJ70/gUKcE0C7FRaUFDTexKbCmXyZE=
=+svP
-----END PGP SIGNATURE-----

--Iw8Tdv7ssv/YVUHJ--

