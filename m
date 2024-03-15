Return-Path: <linux-man+bounces-619-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE2487D76F
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 00:52:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04D122825F2
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 23:52:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43D7C5A0E7;
	Fri, 15 Mar 2024 23:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/kldJpL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E9138F91
	for <linux-man@vger.kernel.org>; Fri, 15 Mar 2024 23:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710546772; cv=none; b=E75Jw7qfxpN3xGFeh4X2dRr011x2skbLRGTUgqEF0OUJsbEjPby5Znk5XD+pNc7OLKMKNb4aARXw90lPAkDsssNG6HVjcpVEOR2ewJQEydZCpT+dh9h5AeVkzS2JRUxHM5v8+VTGc4NhB+DFf6o5qmbt+wQU2y6zLy1jmecyXz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710546772; c=relaxed/simple;
	bh=BA0usMb4fBDylAI6Uy4uqzfOFR6xfC2ihuYNVDxvOB4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j4gpW3Qi7J7TFxYvFMKCZkElXnYhiuhGyTAhxY+Yqx52HiELPJJ0dUqvuOtziChCIxRGSGHJRVQ5RYDe4eWSslRjhZSsC5oiaIXvoO9cCuWMEWlrIGTXKaaCFpFVqkoMsT2Vg9iWsqqykHK+i9DY5cUZtDPntaFqlGGTUGCObtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/kldJpL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B2B7C433C7;
	Fri, 15 Mar 2024 23:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710546771;
	bh=BA0usMb4fBDylAI6Uy4uqzfOFR6xfC2ihuYNVDxvOB4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U/kldJpLFgMGzsoi3STKGEbp+VBACMo7b4Kk0iqVGFP38zOjYAcduxhNKoC3SiWs1
	 GVM2zwAVRPZ2mmGy2yHEbthYw8/h408lnqL72+1/1PR4gBCcAkqF28vOwg2hCQyPF8
	 CK/QIFdC5vOEcwWOVRbQ4BeylR2c7K85RziHzMdvb6K4mgqNyfe54MMBkjhwf7gMKl
	 Hw62STViRZEW13DbXTme6kXDrJgeV6c3pSecmZ2qpaocJ/SOCYFSDNW7N9OOmUjOiE
	 PxJL/ko9mL4/0kRO7IkM5A9boX/X/ywBuWkzFxW7/76n4jrtBr5xRO5fK+9GqFVIBI
	 YbmlajDdyceiA==
Date: Sat, 16 Mar 2024 00:52:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com,
	ying.huang@intel.com
Subject: Re: [PATCH v3] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Message-ID: <ZfTfUMG-LGPnhqHe@debian>
References: <20240315-weighted_interleave-v3-1-416a1ab01524@memverge.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="H/rEJrP4NWw+s0p5"
Content-Disposition: inline
In-Reply-To: <20240315-weighted_interleave-v3-1-416a1ab01524@memverge.com>


--H/rEJrP4NWw+s0p5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 16 Mar 2024 00:52:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com,
	ying.huang@intel.com
Subject: Re: [PATCH v3] man2: add MPOL_WEIGHTED_INTERLEAVE documentation

Hi Svetly,

On Fri, Mar 15, 2024 at 04:43:36PM -0700, Svetly Todorov wrote:
>=20
>=20
> ---
> Adding documentation for the new MPOL_WEIGHTED_INTERLEAVE mode in the same
> manpages that mention MPOL_INTERLEAVE; namely, mbind(2), set_mempolicy(2),
> and get_mempolicy(2).
>=20
> Descriptions were based on the changes introduced in this patch:=20
> https://lore.kernel.org/all/20240202170238.90004-4-gregory.price@memverge=
=2Ecom/
>=20
> Which was upstreamed to 6.9 here:
> https://lore.kernel.org/linux-mm/20240313200532.34e4cff216acd3db8def4637@=
linux-foundation.org/
>=20
> To: alx@kernel.org
> Cc: linux-man@vger.kernel.org
> Cc: gregory.price@memverge.com
> Cc: ying.huang@intel.com

Please add those to the commit message.

Content-wise, the patch LGTM.  I have some comments about formatting.
Please see below.

Have a lovely night!
Alex

> Signed-off-by: Svetly Todorov <svetly.todorov@memverge.com>
>=20
> Changes in v3:
> - italicize paths
> - Link to v2: https://lore.kernel.org/r/20240315-weighted_interleave-v2-1=
-b742a48750b0@memverge.com
>=20
> Changes in v2:
> - make flag documentation implementation-agnostic
> - Link to v1: https://lore.kernel.org/r/20240314-weighted_interleave-v1-1=
-ce85d64db0d4@memverge.com
> ---
>  man2/get_mempolicy.2 |  8 ++++++--
>  man2/mbind.2         | 17 +++++++++++++++++
>  man2/set_mempolicy.2 | 17 +++++++++++++++++
>  3 files changed, 40 insertions(+), 2 deletions(-)
>=20
> diff --git a/man2/get_mempolicy.2 b/man2/get_mempolicy.2
> index 5248f04ba..03550331d 100644
> --- a/man2/get_mempolicy.2
> +++ b/man2/get_mempolicy.2
> @@ -137,7 +137,9 @@ specifies
>  but not
>  .BR MPOL_F_ADDR ,
>  and the thread's current policy is
> -.BR MPOL_INTERLEAVE ,
> +.BR MPOL_INTERLEAVE

This should be B, not BR (BR is for alternating Bold and Roman).

> +or
> +.BR MPOL_WEIGHTED_INTERLEAVE ,
>  then
>  .BR get_mempolicy ()
>  will return in the location pointed to by a non-NULL
> @@ -206,7 +208,9 @@ specified
>  but not
>  .B MPOL_F_ADDR
>  and the current thread policy is not
> -.BR MPOL_INTERLEAVE .
> +.BR MPOL_INTERLEAVE
> +or
> +.BR MPOL_WEIGHTED_INTERLEAVE .
>  Or,
>  .I flags
>  specified
> diff --git a/man2/mbind.2 b/man2/mbind.2
> index b0e961f9c..6f85dec0e 100644
> --- a/man2/mbind.2
> +++ b/man2/mbind.2
> @@ -105,6 +105,7 @@ argument must specify one of
>  .BR MPOL_DEFAULT ,
>  .BR MPOL_BIND ,
>  .BR MPOL_INTERLEAVE ,
> +.BR MPOL_WEIGHTED_INTERLEAVE ,
>  .BR MPOL_PREFERRED ,
>  or
>  .B MPOL_LOCAL
> @@ -243,6 +244,22 @@ at least 1\ MB or bigger with a fairly uniform acces=
s pattern.
>  Accesses to a single page of the area will still be limited to
>  the memory bandwidth of a single node.
>  .TP
> +.B MPOL_WEIGHTED_INTERLEAVE
> +This mode interleaves page allocations across the nodes specified in
> +.I nodemask
> +according to the weights in
> +.IR /sys/kernel/mm/mempolicy/weighted_interleave .
> +For example, if bits 0, 2, and 5 are raised in
> +.IR nodemask ,
> +and the contents of
> +.IR /sys/kernel/mm/mempolicy/weighted_interleave/node0 ,
> +.IR /sys/.../node2 ,

Since ... is variable stuff inside an italicised word, according to the
groff_man_style(7) paragraph I quoted, it should be in Roman.  So,

=2EIR /sys/ ... /node2 ,

Also, for better formatting of the '...', we use \| between the dots,
which on proportional fonts (in PDF, or HTML, for example) will produce
nicer elipses.  So,

=2EIR /sys/ .\|.\|. /node2 ,

> +and
> +.I /sys/.../node5
> +are 4, 7, and 9, respectively,
> +then pages in this region will be allocated on nodes 0, 2, and 5
> +in a 4:7:9 ratio.
> +.TP
>  .B MPOL_PREFERRED
>  This mode sets the preferred node for allocation.
>  The kernel will try to allocate pages from this
> diff --git a/man2/set_mempolicy.2 b/man2/set_mempolicy.2
> index fc3ad9df8..6b51cb376 100644
> --- a/man2/set_mempolicy.2
> +++ b/man2/set_mempolicy.2
> @@ -63,6 +63,7 @@ argument must specify one of
>  .BR MPOL_DEFAULT ,
>  .BR MPOL_BIND ,
>  .BR MPOL_INTERLEAVE ,
> +.BR MPOL_WEIGHTED_INTERLEAVE ,
>  .BR MPOL_PREFERRED ,
>  or
>  .B MPOL_LOCAL
> @@ -199,6 +200,22 @@ the memory bandwidth of a single node.
>  .\" To be effective the memory area should be fairly large,
>  .\" at least 1 MB or bigger.
>  .TP
> +.B MPOL_WEIGHTED_INTERLEAVE
> +This mode interleaves page allocations across the nodes specified in
> +.I nodemask
> +according to the weights in
> +.IR /sys/kernel/mm/mempolicy/weighted_interleave .
> +For example, if bits 0, 2, and 5 are raised in
> +.IR nodemask ,
> +and the contents of
> +.IR /sys/kernel/mm/mempolicy/weighted_interleave/node0 ,
> +.IR /sys/.../node2 ,
> +and
> +.I /sys/.../node5
> +are 4, 7, and 9, respectively,
> +then pages in this region will be allocated on nodes 0, 2, and 5
> +in a 4:7:9 ratio.
> +.TP
>  .B MPOL_PREFERRED
>  This mode sets the preferred node for allocation.
>  The kernel will try to allocate pages from this node first
>=20
> ---
> base-commit: a4ea5f76215dcf1d8d017eb65ab12919ccf09f3f
> change-id: 20240313-weighted_interleave-e8141ed754f9
>=20
> Best regards,
> --=20
> Svetly Todorov <svetly.todorov@memverge.com>
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--H/rEJrP4NWw+s0p5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX031AACgkQnowa+77/
2zJn7A//Q1Q/YD7L9hrj2gA6fsTk+CGQ9lls4ywCKpCNltJuarZrfAESI0+6rzVn
oKC5mKEHaLyPaRQ4fq9Wz30ExH79RY22rVYPIU96aGydD5amZXS/nXq+/PjoomW+
TWR2Hy5V9UzJpIGrlb0hRwEmjfan0/ayahKfwUQKO7fPQkMWxKNTIJapPmD1ZQ6r
TrwP8aak1KzRRgiiHuNG50MHLu+dFQeiAFiI1HoVMW6QBzjlPqya1Hs7wMGVr0j2
mNo/ymZXGxWEgIz/aFyNvb5ECzip21KNSWpfK3xrvG+ivSwrVApWNndEnjhnWnAq
tW6Yht1sq3/DazNndWAWAiOiWfK6j5c0KPRtBpbkA2NydyZvEMEOt2RHgW4gUhi6
Lj/xFrQ3ypuKjeZGb0GTC4u9Bmnwcw2j3VjfX5K24rLol/c6Br6SKkU1UJDuSLL/
18WHQThj7dRqzLVkHwdyQPzK72xuDYZLe1MRI7u7k8Sg8CpXL5uNIg6+dMb4p0EZ
WIBVHvQSxm4q8V2GMYhHrN32L7tjk+rjh/+RVoB2LdledR7IdLdvjvlG5Gzn5nDv
K4ChGxFA6xyZ45MxiETOMGISzuZL9YHfdQnShUHuHINPsX0FBy5XOF7OEtrLnr4V
M3qSG+T5C1eCUywdVK0dQnAXokM1Ppub02exRFAzpE1za4394Jw=
=mkca
-----END PGP SIGNATURE-----

--H/rEJrP4NWw+s0p5--

