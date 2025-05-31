Return-Path: <linux-man+bounces-3074-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A174AC9CC3
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 22:52:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57A1617A981
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 20:52:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C3C218B47C;
	Sat, 31 May 2025 20:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiMs871U"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFBF672608
	for <linux-man@vger.kernel.org>; Sat, 31 May 2025 20:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748724722; cv=none; b=Reeymu/1UZ3EKiN7CrW9yxxLuKdNZX4hH8osTuJuARGDqRkDctA6HfcdnEXigwQOxfsyzvgVpvUZ1OHwYlnjWUnUfifAJp9QIFG7JD5YkSW1s47gF5tYZQj7ajcIv/u6DVG4HYW7QK2+krbAuYJnnxpvRkKhHjyF7vSyxtX65+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748724722; c=relaxed/simple;
	bh=FOt0xipp/75t/itiUaoskTOt4O863eZiaw/zIHuBKEE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j/Gm4R5SYnaOzO+vv9tsjQQJZJIzCgfaQZg9YdHURN19C5Aaf8LnBMXs0fpbuENXsxlmyxxuwNsYBXKrPNFZ3eENu9J9iPEB3207wWM8x/WcZT+PkavpJIe3V048+UuA+OLDlF7EGUBO1SWPW0xyHtz13O55Coqjels16+2IGZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiMs871U; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9595C4CEE3;
	Sat, 31 May 2025 20:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748724721;
	bh=FOt0xipp/75t/itiUaoskTOt4O863eZiaw/zIHuBKEE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KiMs871UNTKJ6o0jBH2a7rHE5r9CkuM+HGk+/aym7QChe7cowdAPbpUSmAr7BByla
	 iBCY3QnbzADJtpUFMgufCERTxJNp27xzposGFEHJ8a+Xruf9JDQ91mfZhM9HOecyb7
	 8u1zbeqe2wAPuF0PeFqv9lYklfWM7PE/3LU8NyUwO/mMhx8OF3Vpbar676asdxjGG8
	 +w3eziP8gepNidsLqRxQoiGUaOyKQhYXl2v55feR0cc+THXkA+Vpto6Hcxc8xU1fTd
	 IthL6dEuNmDIkMusN2YEiIVSYvbuT9qiaVUidYcdS9BIFlWjz9zEYsxAdI+pYGQLfK
	 rUZLQBjplKjMw==
Date: Sat, 31 May 2025 22:51:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] man/: Fix name of vm.hugetlb_shm_group
Message-ID: <rrlb4jg4tso5w6sqqqotxnq4p55x3pddab3n2ijjmrmdvlrjie@6tenuwfcyamz>
References: <t67f5vgjqhm7zariy3phlva4lohzchvskkaxeo6qweoaiyifuy@h5dwlwfuzbsr>
 <22436441b7bac0177213c99c55187c4af085d4ca.1748714599.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="erzj5z6lpivts3xf"
Content-Disposition: inline
In-Reply-To: <22436441b7bac0177213c99c55187c4af085d4ca.1748714599.git.nabijaczleweli@nabijaczleweli.xyz>


--erzj5z6lpivts3xf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] man/: Fix name of vm.hugetlb_shm_group
References: <t67f5vgjqhm7zariy3phlva4lohzchvskkaxeo6qweoaiyifuy@h5dwlwfuzbsr>
 <22436441b7bac0177213c99c55187c4af085d4ca.1748714599.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <22436441b7bac0177213c99c55187c4af085d4ca.1748714599.git.nabijaczleweli@nabijaczleweli.xyz>

Hi!

On Sat, May 31, 2025 at 08:03:26PM +0200, Ahelenia Ziemia=C5=84ska wrote:
> sysctl_hugetlb_shm_group is the name of the variable(!) in mm/hugetlb.c
>=20
> Fixes: 090fdddb4342 (2021-05-17; "memfd_create.2, mmap.2, shmget.2: Docum=
ent the EPERM for huge page allocations")
> Fixes: 6cee0ddeb414 (2021-05-17; "proc.5: Document /proc/sys/vm/sysctl_hu=
getlb_shm_group")
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D3f727aab6e5f29e756ce9f7a89019869c7b07c61>

Have a lovely night!
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
>=20



--=20
<https://www.alejandro-colomar.es/>

--erzj5z6lpivts3xf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg7a+0ACgkQ64mZXMKQ
wql++A//ZxomRTHmhREI+zUlY8OcpNqVhIXokfGqwavJPLoREkHmK/hP0xWqGqN0
+fFAY1S7FQND/x13a2pRFBDjfCGdZ0604mJeS6btp5ZPtNguDGsqtCLbZ1amR3Ve
2fmTevat8HdKpKruNu2uI9SysWA/BECMSEneZNBP1OL+6Ter7sy1gcQ/2jv+4351
YOWCXR4Hc1DI3uglrGYvlMwgmetboddZ/lnIEtv/TBFYJrGWPwgARq2l8Ys1tv1R
0Z4XajJNsdCb+TZe7Pf/C0zK9jAsxrYDPjDL2IrdOYH1wS3YGS1YVIM7wGpTE66G
m5Il/kuMUPolgaRJtmnzWk6z34epXqw5zX6jQEMEBmOh55LzHDbqQlQJke4RvYQj
TAfOrK7qcuiR+GRdpDAwaG62VCOjCQIx0eiZwwvPqOREbFTCxia3dpBjrpBUrXuy
GFFmGOtILw0UQq5pH0vc1PjQHRM+LKmaJRyfM10pFD7M3jmruKqzo7F5f2bwBy0+
Og+W2HWMO42/cNAEK8U0nKiWiMZaGTQHtZZzhT0AXOZkfTLcX75B4dPDB6+RJO50
fuqlKDhj2BRXfcUrEhE34Ch1pNcASd/hPZ0XsthkyFq15rIOl6xWtfescF+VVzNY
7AEx2IxWq2M9hPOIehLbC9wXQAtFmkEEoQQ2/+ehffpEJJyZ5zY=
=tl0K
-----END PGP SIGNATURE-----

--erzj5z6lpivts3xf--

