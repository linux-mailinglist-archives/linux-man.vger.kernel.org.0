Return-Path: <linux-man+bounces-676-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C74C880856
	for <lists+linux-man@lfdr.de>; Wed, 20 Mar 2024 00:59:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22930283DEE
	for <lists+linux-man@lfdr.de>; Tue, 19 Mar 2024 23:59:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 042685FBA9;
	Tue, 19 Mar 2024 23:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucllE/VB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B934959B68
	for <linux-man@vger.kernel.org>; Tue, 19 Mar 2024 23:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710892736; cv=none; b=WDFU63wiKX2QHFcLrB+2WIXUx9IiB0hRqH32YxVBMnzVpaERq50N6DCjvZcN6jsnwdkLkJXf+0h8shIsb3QysV6kXlRJCBTU0MncFnanuPLDXizEooYgh/75Ks3YiHZ3Dam9CKCR3fkA5umpUkH4whsG9HygTc9JWS9c4aa/3JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710892736; c=relaxed/simple;
	bh=p4bbkuBUhblhbzqg0PTtR9gdAvLqNQJ/0tcb+oDMHxk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NVAjq7PKQmlgROvyoJrV3u+f608RU5B9JhnaQ0NrEu9bi1xrXS+zs8idVPc3klcRpP4r6I6+doPfmzfNtxsiFDZaKWYvJqgvFudYPQ7c0GxIaXjRFIBVxFDdi0OgI1rH3GGEnR2eMCzzJa58l/v+5UaL2UXvsWD4kU74du9nv+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucllE/VB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DF82C433C7;
	Tue, 19 Mar 2024 23:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710892736;
	bh=p4bbkuBUhblhbzqg0PTtR9gdAvLqNQJ/0tcb+oDMHxk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ucllE/VBKd+rw49vY2ziDP7TNAqROxtlC1bW9OsGUt2fAAxl4DySSHI8DO+i0Q3L2
	 gcGUPILDV+Jp37XeyZ5w+nWcmHVn0BM6BlMvDLoM+zM+ko1GjPiKx8NGoOL8SMF9Qo
	 GdKq0qQRUXZbAMlpmUKIifG/zr1NVJLgfrWVh5s6pKb6mEkQEAe62nX3OZ8kocbb9b
	 jfjUTkG0XxAV3Mle43+zXNM1vW5/IE4vWUWSzg2wQ22Q/BuEXBdiCJdDelnYNsZ0he
	 +gtozE0fVjGnurRyDzgrXnMwF2Xlan8IH04BsbhMWr/LjiWKSrP+iE0nwqOH+ELXDV
	 nHceVJD9KxyyA==
Date: Wed, 20 Mar 2024 00:58:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com,
	ying.huang@intel.com
Subject: Re: [PATCH v5] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Message-ID: <ZfomvYUh18tiZF3d@debian>
References: <20240318-weighted_interleave-v5-1-c821a46d5beb@memverge.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y0zC7vMmj4jM5YX0"
Content-Disposition: inline
In-Reply-To: <20240318-weighted_interleave-v5-1-c821a46d5beb@memverge.com>


--y0zC7vMmj4jM5YX0
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 Mar 2024 00:58:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com,
	ying.huang@intel.com
Subject: Re: [PATCH v5] man2: add MPOL_WEIGHTED_INTERLEAVE documentation

Hi Svetly,

On Mon, Mar 18, 2024 at 09:32:08AM -0700, Svetly Todorov wrote:
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
> Reviewed-by: "Huang, Ying" <ying.huang@intel.com>
> Signed-off-by: Svetly Todorov <svetly.todorov@memverge.com>
>=20
> Changes in v5:
> - document kernel version where WEIGHTED_INTERLEAVE was added
> - Link to v4: https://lore.kernel.org/r/20240316-weighted_interleave-v4-1=
-6ab516f12ced@memverge.com
>=20
> Changes in v4:
> - BR -> B in get_mempolicy
> - use roman for ellipses; format using \|
> - Link to v3: https://lore.kernel.org/r/20240315-weighted_interleave-v3-1=
-416a1ab01524@memverge.com
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
>  man2/get_mempolicy.2 | 12 ++++++++++--
>  man2/mbind.2         | 18 ++++++++++++++++++
>  man2/set_mempolicy.2 | 18 ++++++++++++++++++
>  3 files changed, 46 insertions(+), 2 deletions(-)
>=20
> diff --git a/man2/get_mempolicy.2 b/man2/get_mempolicy.2
> index 5248f04ba..00ce287c9 100644
> --- a/man2/get_mempolicy.2
> +++ b/man2/get_mempolicy.2
> @@ -137,7 +137,11 @@ specifies
>  but not
>  .BR MPOL_F_ADDR ,
>  and the thread's current policy is
> -.BR MPOL_INTERLEAVE ,
> +.B MPOL_INTERLEAVE
> +or
> +.B MPOL_WEIGHTED_INTERLEAVE
> +(available since Linux 6.9),

For consistency, I try to use the same phrase everywhere:

	(since Linux x.y)

But, in simple mentions, we usually don't specify when a flag was added.
That's already documented in the proper documentation of the flag.  So
here, I'd just remove that (and the comment below).

> +.\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758
>  then
>  .BR get_mempolicy ()
>  will return in the location pointed to by a non-NULL
> @@ -206,7 +210,11 @@ specified
>  but not
>  .B MPOL_F_ADDR
>  and the current thread policy is not
> -.BR MPOL_INTERLEAVE .
> +.B MPOL_INTERLEAVE
> +or

I prefer "nor".

> +.B MPOL_WEIGHTED_INTERLEAVE
> +(added in Linux 6.9).

Same here.

> +.\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758
>  Or,
>  .I flags
>  specified
> diff --git a/man2/mbind.2 b/man2/mbind.2
> index b0e961f9c..6f2449946 100644
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
> @@ -243,6 +244,23 @@ at least 1\ MB or bigger with a fairly uniform acces=
s pattern.
>  Accesses to a single page of the area will still be limited to
>  the memory bandwidth of a single node.
>  .TP
> +.BR MPOL_WEIGHTED_INTERLEAVE " (since Linux 6.9)"
> +.\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758

Here is where we usually document the kernel versions.  So here (and
in set_mempolicy.2) is good, and enough, I think.

Have a lovely night!
Alex

> +This mode interleaves page allocations across the nodes specified in
> +.I nodemask
> +according to the weights in
> +.IR /sys/kernel/mm/mempolicy/weighted_interleave .
> +For example, if bits 0, 2, and 5 are raised in
> +.IR nodemask ,
> +and the contents of
> +.IR /sys/kernel/mm/mempolicy/weighted_interleave/node0 ,
> +.IR /sys/ .\|.\|. /node2 ,
> +and
> +.IR /sys/ .\|.\|. /node5
> +are 4, 7, and 9, respectively,
> +then pages in this region will be allocated on nodes 0, 2, and 5
> +in a 4:7:9 ratio.
> +.TP
>  .B MPOL_PREFERRED
>  This mode sets the preferred node for allocation.
>  The kernel will try to allocate pages from this
> diff --git a/man2/set_mempolicy.2 b/man2/set_mempolicy.2
> index fc3ad9df8..3c08b6bf0 100644
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
> @@ -199,6 +200,23 @@ the memory bandwidth of a single node.
>  .\" To be effective the memory area should be fairly large,
>  .\" at least 1 MB or bigger.
>  .TP
> +.BR MPOL_WEIGHTED_INTERLEAVE " (since Linux 6.9)"
> +.\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758
> +This mode interleaves page allocations across the nodes specified in
> +.I nodemask
> +according to the weights in
> +.IR /sys/kernel/mm/mempolicy/weighted_interleave .
> +For example, if bits 0, 2, and 5 are raised in
> +.IR nodemask ,
> +and the contents of
> +.IR /sys/kernel/mm/mempolicy/weighted_interleave/node0 ,
> +.IR /sys/ .\|.\|. /node2 ,
> +and
> +.IR /sys/ .\|.\|. /node5
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
Looking for a remote C programming job at the moment.

--y0zC7vMmj4jM5YX0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX6JrwACgkQnowa+77/
2zKd6Q/+PYabLcXXWul9E+W0apYJrIfpU914ijmlQHWqNHqv2DfHH7WqRzX9gQfr
PX8y8UVtOhcI75Zm/knmjz/Vq6eqjS3JFt48YxXIDabpaw61a0tYixXw3eEGWgdf
kdqhSTmwsX2xgAA0/qegRmTGuFXiWMCbXFuLhDZSi4yk4Q2F8ayeRsf9SaKzfWu4
6gJHdrquVGKpTLQ3kL0M8FUTKPugjO/6kbcYEyj2VPh0DpjIfvEXqDcRaYq6woO1
GDN/Eqnv6AtO02hjij+vn04SwTUIHP9dpkpCdcRmPLr7iXaYWfJlHCWmjWRnLGgI
K6lIHsu/ln9q6fc5GCfSWeNaU2wfXUKcCErwwRn4yVFISl1hQwheFIEfqASukFU1
ZqOVgrBwIfW1RRBbl//flFBfSnqCPrXsEO4aM2D+aLf9kl9rjBZCt/UPjU+t+WfN
586CZ0e2Ksq+QKnJEQUokvPswziyCNSIHbClEbORm8Iqj1aDi09yXOBM/AWhTCWj
PGudjoCL6YJ0mjPN1CpTXbvtaZlHd1e4wj9m2dagXK9rHaYfa79SI9ffobeFykZe
PuRIxFbQppOqkROY0oApP53cHkuvxDxv7MRgIX/KsOQO9HFp4dQKPhdr3E7se7ML
3a9tMXtQciXzddjnZFvcPZOt4XkwlDKMwIhAI8xybSH5KSxVdZU=
=5MJl
-----END PGP SIGNATURE-----

--y0zC7vMmj4jM5YX0--

