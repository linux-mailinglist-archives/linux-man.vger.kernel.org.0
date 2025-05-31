Return-Path: <linux-man+bounces-3069-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 12787AC9C1B
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 19:44:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81F8F3BEDE8
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 17:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC50B199EAF;
	Sat, 31 May 2025 17:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNA4IaFt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D4D43B19A
	for <linux-man@vger.kernel.org>; Sat, 31 May 2025 17:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748713455; cv=none; b=lnpTFWggGGG0/AjYdLxw9soVfurJz/dv/gGo34Q9DIU/oGcfSfuP1//3p+vze/qyv9kHlbqGUwXBACQnbo/5WRNZwEA7OjXf1+cqylcsbtR7zIexgx5eITYnYb+yVBgMWRRel8wypOHR+pyJgFCVxZ0NJX3UHnjba0DYqajOBcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748713455; c=relaxed/simple;
	bh=k1xM1OGL5bAMP27JxyF7H+4Fd+vTj+X6No5Q/1FavoA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bonRUVWZEGMGGqgBhihKmWXuoonn9m2JFgpdeqyvfIEPSpB1rgLrW2OP7W5lzTbdYUvaCt+JBfvOrK0nTv6BrfUjHvkKHDST6pWosxN+IW8dVDmVx53waaS+Bt9GmDvVmypxCsNE7eEKgXq0dOwZWeGk53ZjQaFuKdTXSj8yIGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNA4IaFt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 797FAC4CEE3;
	Sat, 31 May 2025 17:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748713455;
	bh=k1xM1OGL5bAMP27JxyF7H+4Fd+vTj+X6No5Q/1FavoA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SNA4IaFtP4oDuf2HvIh5KmQ+GYsTsNNlvNd92iCdw7Da2nNYqMUnRq2H3g9K2xlqA
	 WYpwTCwcpHgDSTTMlQcgGb8CbO8qR1TWbpTpRUX2wvBJby24rjsYsDiZM6OPao1Cov
	 s55XWO2KEzXPzoibpvSy2qU1AviHiB2Q/K+iUdZSzpbTbvN9pIfaxRVdmbRn3VbvcX
	 BkvhGPgaJOjk0rI3o6+7rrvIvx3DI4LtIyZ4t71qbdy5FKI3RednnnOkTldEBNHQBu
	 jb98DhDex5GekzoynvpnQ1hq5cDE0cb4cE+r+MxjLYvOvA2cl+EmLsOeYYZL2KKWNL
	 5fq5xTNE6OD3Q==
Date: Sat, 31 May 2025 19:44:12 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/: Fix name of vm.hugetlb_shm_group
Message-ID: <t67f5vgjqhm7zariy3phlva4lohzchvskkaxeo6qweoaiyifuy@h5dwlwfuzbsr>
References: <buticgacol4egbwxw5vr2l7osa3rwhpsw2skm2qfazjrkggkof@ghg35koms4wa>
 <op673ihd4gyc7esgrdoajeer7bsvirf446rcq2tzuk3fkfs7fk@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jrbmpy5xdlueduiz"
Content-Disposition: inline
In-Reply-To: <op673ihd4gyc7esgrdoajeer7bsvirf446rcq2tzuk3fkfs7fk@tarta.nabijaczleweli.xyz>


--jrbmpy5xdlueduiz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/: Fix name of vm.hugetlb_shm_group
References: <buticgacol4egbwxw5vr2l7osa3rwhpsw2skm2qfazjrkggkof@ghg35koms4wa>
 <op673ihd4gyc7esgrdoajeer7bsvirf446rcq2tzuk3fkfs7fk@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <op673ihd4gyc7esgrdoajeer7bsvirf446rcq2tzuk3fkfs7fk@tarta.nabijaczleweli.xyz>

Hi!

On Sat, May 31, 2025 at 07:18:32PM +0200, Ahelenia Ziemia=C5=84ska wrote:
> sysctl_hugetlb_shm_group is the name of the variable(!) in mm/hugetlb.c

Hmmm, thanks!

>=20
> Fixes: 090fdddb4 ("memfd_create.2, mmap.2, shmget.2: Document the EPERM f=
or huge page allocations")
> Fixes: 6cee0ddeb ("proc.5: Document /proc/sys/vm/sysctl_hugetlb_shm_group=
")

Please use 12 characters for the hash, and include the commit date in
commit references.

I suggest using this git alias (I should write this in
<CONTRIBUTING.d/git>):

	ref =3D show --no-patch --abbrev=3D12 --date=3Dshort \
		--format=3Dtformat:'%C(auto)%h%C(reset) %C(dim white)(%cd%x3B \"%C(reset)=
%C(auto)%s%C(reset)%C(dim white)\")%C(reset)'

$ git ref 090fdddb4 6cee0ddeb
090fdddb4342 (2021-05-17; "memfd_create.2, mmap.2, shmget.2: Document the E=
PERM for huge page allocations")
6cee0ddeb414 (2021-05-17; "proc.5: Document /proc/sys/vm/sysctl_hugetlb_shm=
_group")

See also:

<https://lwn.net/Articles/1001526/>
<https://lwn.net/Articles/1002170/>
<https://lwn.net/Articles/1002414/>
<https://lwn.net/Articles/1002415/>

> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
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

Would you mind sending a second patch updating this to refer to
proc_sys_vm(5)?

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

Same here.


Have a lovely day!
Alex

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

--jrbmpy5xdlueduiz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg7P+UACgkQ64mZXMKQ
wqmjEw//RVcoHc1tbAZVrxJf0ZqJkjzKjJEd1AjC2zOF76vsbcjrFLaHIOmCTTGg
mQl7dEXVA7HROXgdq9xpp608uBbr16uQtMj9WV2XAD57aIBqdD5+E7QbcM17LQ03
HClfQKyvyobEu8OGkVmS3V5ZIiMqp0We7hsNt/jb/abeAHfir1GuO3X/kQC9L3Rj
llE39liM2bqlkjj7kcbpkS+kGxlCtJoc7o7pTYHnwoKXLoMNJQytY/R0I/zRxEju
IaPqj0KL5fWZQIuMl+ci1ZAm9ASY5U27BJ7PmTLHKQ8kcdc4e0tA9+WMahkotfZv
ZS6VSZDvdB+HkMxINAmzpCortdemVjEUhlyEhyKsmcOyYRjnwx31E8SKzl04eQ43
+Q2UWp57r8OkQCkUAuafA2uqp9LhuMiJqp/qS8fZ9NlGJ1ZHEcipw5k+gxIst3Fs
fUqa7uC5+/4AT2jW99mOKRpaPuWIfSwfwfkT5Rxk3lk8KJuy0tnZDlUfFNQ+QL63
rMdRz4zu8TvbBYgRIbgFBLOrUlHMtbUMW9FI4l2e9e3g7Txxr+jQuswVhLN4Ws3b
Cf2cNigGkIfRwJ/IDEWUGW7rbcLF2ExMRuZtKTYJ0VTXm8e3clwPTUcv1GujyfQi
B8pNOJk5fdz4a84sP0oQJQJW0AAieYOnruqC49h7lBO3oqoNX1w=
=WJkF
-----END PGP SIGNATURE-----

--jrbmpy5xdlueduiz--

