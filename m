Return-Path: <linux-man+bounces-3067-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 232A3AC9BE0
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 19:12:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D4BD189E5AE
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 17:13:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80BA2140E5F;
	Sat, 31 May 2025 17:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QS2Y6DOv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C534C74
	for <linux-man@vger.kernel.org>; Sat, 31 May 2025 17:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748711566; cv=none; b=c2mpPfPaKU5UP9uPi3Fv08mjnJUP3Ji7/0D7Nx/fLNK/XwiWyZc2ZBtQFpj9HOB3pKRWXN/L7Mv1cj2MS/NTroJr7MRRIu/LTiqhagupGx31qv6NbU0XdGVwpQaLyINskV6hlf9dc/sbKX3HFFN7ZdwfKl5rmhJDJcp5Yp4/8IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748711566; c=relaxed/simple;
	bh=4sJ+hEAea0xSzUTm8/WyLjO9f7oBRv7pxlYsJKsumcQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pnsmjsTAEHk8wqa1Edz98sQugPEEP/wlD1kyYU7HT7aA++HZjN4Vy9PWlYBBcZpHnVSzE3TYaLEEni3Sg3vkAOdTBMed4lndTvLlz6ytwjot/Be57DvleXublC7Ml4c5KE5GXnjYXNyJ7iVxo6CNfs52MeV9HV+xOPCpnkGaaDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QS2Y6DOv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0279FC4CEE3;
	Sat, 31 May 2025 17:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748711565;
	bh=4sJ+hEAea0xSzUTm8/WyLjO9f7oBRv7pxlYsJKsumcQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QS2Y6DOvPy21AAKIwoXSuAsDnxTQmdBVxJVgoi76ePrXC7nY0DxahBS/tANA8uCVl
	 xIgoebOTdJuNOUw5e3xsNy9FJl2JDtxgxWkvy5AaWl98uTGCRYi7QrPPhV8mFQX0Z6
	 ThR5YOOLT2rIRopyvLaarwsp7SMH7KBHMmYUUbhzRz2uQftYRQTra4mCMOLGERcKaW
	 vpwLlbeby2SMI7oeaKUrxs/rwBLpn8Be8vvI+xvEbK/aWmIAmUACeHmcfZ6oZTNCA7
	 TMExAoZiy/Rxis4bb9QCXFDn1eTLSp/5vmaOLfV3XlJ3V1dglgSHTx7XcYrm/MzQSU
	 qfKUmPIRSEC/A==
Date: Sat, 31 May 2025 19:12:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] memfd_create.2, mmap.2, shmget.2, proc_sys_vm.5: fix
 name of vm.hugetlb_shm_group
Message-ID: <buticgacol4egbwxw5vr2l7osa3rwhpsw2skm2qfazjrkggkof@ghg35koms4wa>
References: <z5nrhnaa3omgagh73lzwywq5555x5qleyjopns7otalqvgxpwm@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="intf5xqredfr7htx"
Content-Disposition: inline
In-Reply-To: <z5nrhnaa3omgagh73lzwywq5555x5qleyjopns7otalqvgxpwm@tarta.nabijaczleweli.xyz>


--intf5xqredfr7htx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] memfd_create.2, mmap.2, shmget.2, proc_sys_vm.5: fix
 name of vm.hugetlb_shm_group
References: <z5nrhnaa3omgagh73lzwywq5555x5qleyjopns7otalqvgxpwm@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <z5nrhnaa3omgagh73lzwywq5555x5qleyjopns7otalqvgxpwm@tarta.nabijaczleweli.xyz>

Hi!

On Sat, May 31, 2025 at 06:48:43PM +0200, Ahelenia Ziemia=C5=84ska wrote:
> sysctl_hugetlb_shm_group is the name of the variable(!) in mm/hugetlb.c

Could you please add a Fixes: tag?

> Subject: Re: [PATCH] memfd_create.2, mmap.2, shmget.2, proc_sys_vm.5: fix=
 name of vm.hugetlb_shm_group

Please use 'man/:' as the prefix, since the specific pages are
unimportant.  Also, please use uppercase after the ':'.

>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>


Have a lovely day!
Alex

> ---
>  man/man2/memfd_create.2 | 4 ++--
>  man/man2/mmap.2         | 4 ++--
>  man/man2/shmget.2       | 4 ++--
>  man/man5/proc_sys_vm.5  | 2 +-
>  4 files changed, 7 insertions(+), 7 deletions(-)
>=20
> diff --git a/man/man2/memfd_create.2 b/man/man2/memfd_create.2
> index 4cf30c157..29a110ef7 100644
> --- a/man/man2/memfd_create.2
> +++ b/man/man2/memfd_create.2
> @@ -195,9 +195,9 @@ .SH ERRORS
>  .B CAP_IPC_LOCK
>  capability)
>  and is not a member of the
> -.I sysctl_hugetlb_shm_group
> +.I hugetlb_shm_group
>  group; see the description of
> -.I /proc/sys/vm/sysctl_hugetlb_shm_group
> +.I /proc/sys/vm/hugetlb_shm_group
>  in
>  .BR proc (5).
>  .SH STANDARDS
> diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
> index 255fa2353..cf110dad9 100644
> --- a/man/man2/mmap.2
> +++ b/man/man2/mmap.2
> @@ -614,9 +614,9 @@ .SH ERRORS
>  .B CAP_IPC_LOCK
>  capability)
>  and is not a member of the
> -.I sysctl_hugetlb_shm_group
> +.I hugetlb_shm_group
>  group; see the description of
> -.I /proc/sys/vm/sysctl_hugetlb_shm_group
> +.I /proc/sys/vm/hugetlb_shm_group
>  in
>  .BR proc_sys (5).
>  .TP
> diff --git a/man/man2/shmget.2 b/man/man2/shmget.2
> index 8101dbb50..d273966a9 100644
> --- a/man/man2/shmget.2
> +++ b/man/man2/shmget.2
> @@ -251,9 +251,9 @@ .SH ERRORS
>  .B CAP_IPC_LOCK
>  capability)
>  and is not a member of the
> -.I sysctl_hugetlb_shm_group
> +.I hugetlb_shm_group
>  group; see the description of
> -.I /proc/sys/vm/sysctl_hugetlb_shm_group
> +.I /proc/sys/vm/hugetlb_shm_group
>  in
>  .BR proc (5).
>  .SH STANDARDS
> diff --git a/man/man5/proc_sys_vm.5 b/man/man5/proc_sys_vm.5
> index 4ee50a54f..1ed32b8ff 100644
> --- a/man/man5/proc_sys_vm.5
> +++ b/man/man5/proc_sys_vm.5
> @@ -85,7 +85,7 @@ .SH DESCRIPTION
>  .BR sync (1)
>  first.
>  .TP
> -.IR  /proc/sys/vm/sysctl_hugetlb_shm_group " (since Linux 2.6.7)"
> +.IR  /proc/sys/vm/hugetlb_shm_group " (since Linux 2.6.7)"
>  This writable file contains a group ID that is allowed
>  to allocate memory using huge pages.
>  If a process has a filesystem group ID or any supplementary group ID that
> --=20
> 2.39.5



--=20
<https://www.alejandro-colomar.es/>

--intf5xqredfr7htx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg7OIQACgkQ64mZXMKQ
wqlflg/8CbdCItA8V87V60CirQwll6US2AX6iqLWazIbdrtdgwJJxzHt0UTqQFFV
Leh28man+T+ZP+SO51+fpenPQbjfIwV49XAIih+nY5nvIMFaMoQrx7tRtDrbJqYv
15hAgR8HkN/J+l1xueneoEOuG/5C+r1tzEr02ePyvKdjVNDw6ee9S8twwlijUAxm
Foyt9NQPSYZEfcI/yB+pPkwJg8HeeT2FZzWZYkZwnaiYYyTOeIEn/GctLjCK2IS2
JmzEfwLJ6OIDo/h5j1jG/CoAYQI1wDDx9ZvRuiO7QJKmeSmcajtdopcAL2o6z1ZE
Yc8E+HbKfO7qyZekQhCHDvi4iI1o0YgZFbA+Eaea4GJlvlcfUBlryKw4QJdnyGFg
RPVCGPFRw+j/lSXpIZAbcPnFY6EGV6Wo4i7WKV1ji7C/59Lo55gjnpCp3DT0aJFY
gK1iTKi00i9PMadmxHXDafBbFO1hTp5p61UAqyGAw3CmTcXlIDzBIRExMpvG2hyU
MY7cX1gacFDhntyWYKtxKPqGsMcdtGVkLqFHERBXrusm+i4uOJxlkX3drIZpbpr5
D+V9QPlc1bpgczVyF1/yBKYPNt3Dvz0sE0o4AEmUgqfSwW3DyBgz6bAXcnY12ALJ
Zc3lKHvdgTfsUt+PxOGuz9NrGELQdFqp9lhvIyIuPZB3mzn8rCY=
=+oYj
-----END PGP SIGNATURE-----

--intf5xqredfr7htx--

