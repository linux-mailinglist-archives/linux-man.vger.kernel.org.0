Return-Path: <linux-man+bounces-721-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA35F8983C1
	for <lists+linux-man@lfdr.de>; Thu,  4 Apr 2024 11:10:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 518F31F2450B
	for <lists+linux-man@lfdr.de>; Thu,  4 Apr 2024 09:10:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4BB673531;
	Thu,  4 Apr 2024 09:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKtAThSN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D0029D1C
	for <linux-man@vger.kernel.org>; Thu,  4 Apr 2024 09:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712221841; cv=none; b=tz5RSl7g+7Q2FoZZNpK/x/tOdiri3EWVdNKs/4ABBtxGLBorZMF4rA/bSJ6yKjTvs28ExCIdBUX4Cwdv6ta04y8oJhuVHXSO5BT4W9mQzVb8r1PYuzsX4Yj7ssxYSMFpdR+zf0rw2lwd0tlJGgH5qE/4mPyvbeUkvAJOBVf1wEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712221841; c=relaxed/simple;
	bh=tqBdBev6Ayvlwbf0pnJndX0yvpy0Fie8+TN8LZHtYl8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iwI2i3kQ9dCOE3gnmcHu2Pd1i95ep/A3K15qFo+O6S0L/7zZ+gqpAtkU6XbNlNjyyr+62+T7CL0nKpPHL9La012Nz24RTm2W2ZU2TJPD68fnBK5CVcGKOUMmvEpAHA07xjDYxTFXtilSKJ4VKUZwg75MKZ0hJvcudzUCbTmw9dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKtAThSN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2503EC433F1;
	Thu,  4 Apr 2024 09:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712221840;
	bh=tqBdBev6Ayvlwbf0pnJndX0yvpy0Fie8+TN8LZHtYl8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SKtAThSNGAdjlMNMmfFQtjZ3OYboND8suR3RyxJc0m3cnloKLTT+h3p2Y5VZP2EM2
	 k9YE9I1qQREVlk6sR3wsqbxXa5Cj81p7ZE4gPb7EnbLUBo4x+8RXi6Rl0kfpi6Dm5d
	 hImg2GGIayP4z/U+a7uXXXzh40uIDlY5cqINViWXhC4zmrWEHWsvLILhjyxHpj+oon
	 4qB3o/Hea7yLAJhjA42bEgHCQBq4nFG6daQHwAu1UOQmgArxVheVHn6zItS1Az6kQa
	 8Ei25nruDSPyza9PtEwqk6e/86cAPpdeGNh6+PoNGOxXba8jbvw1Htn5cFoyFFndGV
	 QnrppV93dn86Q==
Date: Thu, 4 Apr 2024 11:10:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com, 
	ying.huang@intel.com
Subject: Re: [PATCH v6] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Message-ID: <rbxc53tqqsfkmdwqlijpof225anw5pedfe7hwe7quvgzpgk7e6@w35b2pvut75o>
References: <20240402-weighted_interleave-v6-1-4c2891901352@memverge.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="llhl5aknkpwsmc7n"
Content-Disposition: inline
In-Reply-To: <20240402-weighted_interleave-v6-1-4c2891901352@memverge.com>


--llhl5aknkpwsmc7n
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com, 
	ying.huang@intel.com
Subject: Re: [PATCH v6] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
MIME-Version: 1.0
In-Reply-To: <20240402-weighted_interleave-v6-1-4c2891901352@memverge.com>

Hi Svetly,

On Tue, Apr 02, 2024 at 01:26:35PM GMT, Svetly Todorov wrote:
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
> Reviewed-by: "Huang, Ying" <ying.huang@intel.com>
> Signed-off-by: Svetly Todorov <svetly.todorov@memverge.com>

[...]

> @@ -243,6 +244,23 @@ at least 1\ MB or bigger with a fairly uniform acces=
s pattern.
>  Accesses to a single page of the area will still be limited to
>  the memory bandwidth of a single node.
>  .TP
> +.BR MPOL_WEIGHTED_INTERLEAVE " (since Linux 6.9)"
> +.\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758
> +This mode interleaves page allocations across the nodes specified in
> +.I nodemask
> +according to the weights in
> +.IR /sys/kernel/mm/mempolicy/weighted_interleave .
> +For example, if bits 0, 2, and 5 are raised in

I've checked that there's no other use of "raise" for saying that a bit
is set, in the Linux man-pages project (or I couldn't find it).  Let's
say "set", which is far more common, I think.

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

Same here.

Other than that, the patch LGTM.  Thanks!

Have a lovely day!
Alex

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

--=20
<https://www.alejandro-colomar.es/>

--llhl5aknkpwsmc7n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYObosACgkQnowa+77/
2zJwCxAAlIppHG2k5v2rjYONXNfH2UWSSQt7BSUHHiShLPtOI+NC32sBElTERIRm
FeOha2nJ7dYXZvModDcRC0L181afQJ3DacZnv9Ln4QLjCQLP2nXn7T7FTJFfZa1a
ZylcD+EAeqi0yrA381cfMntqtRrDKa4iSoI/F7MiSfvHgCoapZ44q431u+ZmUqb4
SkSsJaj7nljPSY1W7LBeg/0rnd/+VgBPRvzp142velaWi3dIk7l/xLhUl/YYN8XA
RGj69SsOpvmOj8h/ntTMmiTzImxu/KadhJtPKwqr3+FVJ/ANzw/Z2EUTli+IhbQ+
Gx6AGSAa2FukgWDukVq/53I3Wi2ECDaQQZiuNa2OXNvlaind+VEbG+YqfDH1s/cW
dc9wuQ9pw1VUIiJ/4XfyacgPUbKKGt0u4H3I3rr7Vr9B3hjmj09034Id5sUvXTHM
evUhtmVdr9H5vrP7ZAvajOPooHE1FKwjgzrU9arv2ej/jAnKyJJYRPqGEnaIiPxR
5LPbzoWdv7LxdBE6ZLOU7KJSMgYYNxjCZAiyVXjHKmnaL3fhIuC9ZyjuDr8F+dVY
G/7BPzAuTuv2y7/b9HpCY6oboz+eNvnfgrNzShma1Hxkrtuk8ATuJVwsB7tzohnF
77yDioy0qQZEuYbT9WTeelxgup5jIi9qnMmJxKBUt5bPot2rw7o=
=TcR2
-----END PGP SIGNATURE-----

--llhl5aknkpwsmc7n--

