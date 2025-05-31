Return-Path: <linux-man+bounces-3075-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C47AC9CC4
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 22:52:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 683EC1892CB1
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 20:52:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 631BA18B47C;
	Sat, 31 May 2025 20:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KT1Mq1st"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DB872608
	for <linux-man@vger.kernel.org>; Sat, 31 May 2025 20:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748724741; cv=none; b=byNO/F8o/M5gBh18cLuVZDBBQFkRFWvuXxhNu0IMpvgbcdYVXmlmXNnR3LIowrllAsutL90WWTtTULL/mH4Hg6R8KX/6JsU5FZKz4jsogKDZzBzdlSd59zuA8vvoDw0iWnxAwXFEmFg/ckBM5fRZ3e4orbJP9I5b+N3VTi1/8Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748724741; c=relaxed/simple;
	bh=uh6MeHUClkmBpZ/YpXGwctbNNhXoCnQXC2/syAZN+S8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iMD4zT4CNiSnTZJsOFjhSIQvQNaff4lkFKHpgGVPqC8ZDN3P9soj3Qvuh9y8P6+uoukPwVQ2MuB4taP/6h+nxia8g2iG3VezNr4jUoRV7brfFs96LJhlI6P/7D3EvHZyGFcRTgLouMwsnz+aQYQghskjN44yQPtPCt251TLSHK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KT1Mq1st; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0237C4CEE3;
	Sat, 31 May 2025 20:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748724740;
	bh=uh6MeHUClkmBpZ/YpXGwctbNNhXoCnQXC2/syAZN+S8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KT1Mq1st+zo/sbNLdF18lkyIecMuTMBcd0zAO6VBUYP5uX94qVRcJYLkFMkEjO67W
	 iCh4OenPNSLUJAjfwxqHV9K3qtLU8fODXu2xF+C5kC+hA4l7lBVc0Q6CRVU2wZTHql
	 Fuu3Lh2OLR/ixWdteDPnYCIh7HiBf8k+gellyySgxO017tRQFgg1htLLRLhomGUuZw
	 ewlkbP2PQdyeWfdKsVUhMDOiiDWsvcI8YEd5aLqIl9jmAJXwvhWFms6Vxkp+QQf1qb
	 1jfNI6WK5Zc3Nx/sCorB1gCq2lX+WNpptUjMyYbyTCtwfsgt/mOOWnJxZGtpCv2bqv
	 8yq6K8PussNVA==
Date: Sat, 31 May 2025 22:52:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] memfd_create.2, mmap.2: fix missing references to
 proc_sys_vm(5)
Message-ID: <7mxzuqpkgdz5ij7qltwymmcd4gbwh4onzooyd5ei6sugybkotw@p2kplto2gi5g>
References: <t67f5vgjqhm7zariy3phlva4lohzchvskkaxeo6qweoaiyifuy@h5dwlwfuzbsr>
 <c28f98b90ff40c3944aaa3189627d795e0c2d9f6.1748714599.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wkzg4jtx2nxr5bim"
Content-Disposition: inline
In-Reply-To: <c28f98b90ff40c3944aaa3189627d795e0c2d9f6.1748714599.git.nabijaczleweli@nabijaczleweli.xyz>


--wkzg4jtx2nxr5bim
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] memfd_create.2, mmap.2: fix missing references to
 proc_sys_vm(5)
References: <t67f5vgjqhm7zariy3phlva4lohzchvskkaxeo6qweoaiyifuy@h5dwlwfuzbsr>
 <c28f98b90ff40c3944aaa3189627d795e0c2d9f6.1748714599.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <c28f98b90ff40c3944aaa3189627d795e0c2d9f6.1748714599.git.nabijaczleweli@nabijaczleweli.xyz>

On Sat, May 31, 2025 at 08:03:28PM +0200, Ahelenia Ziemia=C5=84ska wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

Thanks!  PAtch applied.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D3c2e9ebe2d5ea15a47c1669f75b280cea42a6f8b>


Cheers,
Alex

> ---
>  man/man2/memfd_create.2 | 2 +-
>  man/man2/mmap.2         | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man2/memfd_create.2 b/man/man2/memfd_create.2
> index 29a110ef7..487fc0311 100644
> --- a/man/man2/memfd_create.2
> +++ b/man/man2/memfd_create.2
> @@ -199,7 +199,7 @@ .SH ERRORS
>  group; see the description of
>  .I /proc/sys/vm/hugetlb_shm_group
>  in
> -.BR proc (5).
> +.BR proc_sys_vm (5).
>  .SH STANDARDS
>  Linux.
>  .SH HISTORY
> diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
> index cf110dad9..036610f9d 100644
> --- a/man/man2/mmap.2
> +++ b/man/man2/mmap.2
> @@ -365,7 +365,7 @@ .SS The flags argument
>  See also the discussion of the file
>  .I /proc/sys/vm/overcommit_memory
>  in
> -.BR proc (5).
> +.BR proc_sys_vm (5).
>  Before Linux 2.6, this flag had effect only for
>  private writable mappings.
>  .TP
> @@ -618,7 +618,7 @@ .SH ERRORS
>  group; see the description of
>  .I /proc/sys/vm/hugetlb_shm_group
>  in
> -.BR proc_sys (5).
> +.BR proc_sys_vm (5).
>  .TP
>  .B ETXTBSY
>  .B MAP_DENYWRITE
> --=20
> 2.39.5



--=20
<https://www.alejandro-colomar.es/>

--wkzg4jtx2nxr5bim
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg7bAEACgkQ64mZXMKQ
wqkF2w//R9lIxWbajT552Qo8FTlD+sY/KwmkFEDoI5GGDjcdV8cffXaRHatrRks2
i7g/JbyUjHJ3tOwBH/AQ5pJYrBDen33vwkE2mV2+i6OvbK2cyGm0Ku2ZsAuiOvND
5qeS6f0JJU+eaIqj6kUjMzdRk83EEfaXhHNdAl3GhYSHDtg4V71JZEoNLsblj5mQ
yRW4RQkXWpwS5CBdI6q7O2OBo8r8MYNUYsFk2stCH/RCIECEV+8TZSC7cv2kEDF2
UlV+PxAcHxPgSRjww22JPJCQJ3Cm6d20gDGbqmhfPUJSWBx6bxAtMZLzfQv8AKVQ
j2diH/qmr92rwS8c33mf1dkgrU5NkdAodi5ZoBWGS5mHaLy8NpigBkCtoVtNe6Ud
RF3kEZusbJGgQ7UQW0/bl5zkclQ4oFJ6v3XfPwP6ph3r+1/CitzTDnh5Yc66lvRU
O2b1fS/ZtHA/w83C5zcHaov2CBRHUxiGTMVqpBDb07vHBuubRyjGEAwMlXrVpfYD
RpJ7e4mToQ+99ahYjXIkhTXHhFnZI4zKv3o87XvMHAP6nPfGr2yv5j4lqjV/tmsv
mKb8Hw5ucYYZNusMD1wR/I+CemrmdKcpJcIkXyMZsm166Rq7YUuW0Lx+3Dq46KA+
DcTExwh7+9y11O4Qf+x7D+GaCDv7SxGreQgdt1HKU6CqS3dHm4U=
=QmEW
-----END PGP SIGNATURE-----

--wkzg4jtx2nxr5bim--

