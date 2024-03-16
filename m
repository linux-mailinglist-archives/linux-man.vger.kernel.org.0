Return-Path: <linux-man+bounces-626-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2933987DB80
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 22:10:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 933861F214B8
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 21:10:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2D841CAA0;
	Sat, 16 Mar 2024 21:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJ4xcu88"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572921BF27
	for <linux-man@vger.kernel.org>; Sat, 16 Mar 2024 21:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710623216; cv=none; b=X6q/ozswrIkAgAeCnYlWXCI1WCX3N81Kk9PS3BmYGGy/i9yuskGZxCrLLbrShWxPzACohr9ukl4Wj4kjIw1xxFFbdmt7k+3jVcd1ymaMpZ6AGspKDsuheqHu9wtvdMSg4+q+lQQcepFtiJkvUsnO0wGylN5ElDXUlAf8DKsiEOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710623216; c=relaxed/simple;
	bh=9vCPJNoeK4EJiUDmaa8c/mw8NAZICijZeR73sxjBfcE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OYWpOuSUWwbG6jjQHxNzSPeAqmck75ppIQvEz97erKTwNW3akxfqR2kzSyoQetl38DkMAYVjjyyTwEJZciSpS9LkBqo7VS4fR2wCT4woEj44Rapsfv6grsjaKAuARtAEfY6W+H/vTUwBkoHciVV/pKctq/flPGN6yCOWDnLGESg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJ4xcu88; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2534C433C7;
	Sat, 16 Mar 2024 21:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710623215;
	bh=9vCPJNoeK4EJiUDmaa8c/mw8NAZICijZeR73sxjBfcE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PJ4xcu88GVJtPgIzpCsdzEBwkXiam7EBgddVhJulaNXX+s4K40JqGIGI+EzzoH93T
	 ibXo88FBpT0mgpUQGtYUed1fi6v2NTzYkKlX+9cEl4UtI5IXza/CqpHFDQeliZ10UE
	 jrhWs8TepEYcmIHd6FIM+7OpUSf1e+h1bHaDJADMDKfqr4xMjuL65L5N2DBqiA0zlr
	 03KsDTvG3GXn/6ETnG3cU5OQNhIbqg5zlVFheSFNh4xslLJh5q8I3pUGnHrWdCRbww
	 lhzS2LaSkJKadVAz8h9wZsx5RfdL7OS3X3XjXx1Zw09vIgum/TBOg08i8QX6aJ3yvZ
	 jMEowryyzw5sQ==
Date: Sat, 16 Mar 2024 22:06:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com,
	ying.huang@intel.com
Subject: Re: [PATCH v4] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Message-ID: <ZfYJ7MQdjRC3-mzN@debian>
References: <20240316-weighted_interleave-v4-1-6ab516f12ced@memverge.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FdKt1SRUib9T5Dgq"
Content-Disposition: inline
In-Reply-To: <20240316-weighted_interleave-v4-1-6ab516f12ced@memverge.com>


--FdKt1SRUib9T5Dgq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 16 Mar 2024 22:06:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com,
	ying.huang@intel.com
Subject: Re: [PATCH v4] man2: add MPOL_WEIGHTED_INTERLEAVE documentation

Hi Svetly,

On Sat, Mar 16, 2024 at 12:50:47PM -0700, Svetly Todorov wrote:
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
> Signed-off-by: Svetly Todorov <svetly.todorov@memverge.com>
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
>  man2/get_mempolicy.2 |  8 ++++++--
>  man2/mbind.2         | 17 +++++++++++++++++
>  man2/set_mempolicy.2 | 17 +++++++++++++++++
>  3 files changed, 40 insertions(+), 2 deletions(-)
>=20
> diff --git a/man2/get_mempolicy.2 b/man2/get_mempolicy.2
> index 5248f04ba..a81b84a00 100644
> --- a/man2/get_mempolicy.2
> +++ b/man2/get_mempolicy.2
> @@ -137,7 +137,9 @@ specifies
>  but not
>  .BR MPOL_F_ADDR ,
>  and the thread's current policy is
> -.BR MPOL_INTERLEAVE ,
> +.B MPOL_INTERLEAVE
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
> +.B MPOL_INTERLEAVE
> +or
> +.BR MPOL_WEIGHTED_INTERLEAVE .
>  Or,
>  .I flags
>  specified
> diff --git a/man2/mbind.2 b/man2/mbind.2
> index b0e961f9c..cd4e6f4a4 100644
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

We should document the kernel version that added this.
Please look for other (since ...) in the same page.

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
> index fc3ad9df8..f9837d918 100644
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

--FdKt1SRUib9T5Dgq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX2CewACgkQnowa+77/
2zKpehAAh3tBjZHr0pGA2fuj2aH/Bl9gXvNAqZxD5J+BIhvOck2QBdHE/+QUto54
ZU45ehbvvRXqd3sSS3dJVMehiCE+NwGh4Pr4ULHJbu7GEbQRUZziiUj1jMLRHp3I
fESN2sl4jfBNnBphqYCOYyO7nSNm+94z/nPIvxJYzz7PQ+3PNoQt3yqPEI7l5vD2
JaDk3exQlt/kdf6C+DienRaGFsrWTboqXWhCdpHJUO6BrPP+YbmtNqG7rzdP8GAM
UtTIjP325weGECQHHKmEFZmj3H/4LaTR6LMwp3VS83z2c+ccvJOmWkU0cXDp9Oj2
gzhsvvTHeC7GlEvIoInLUqj7CSrjtdBLrUL6vDEYRqYMkh38I+kdKh2bTVCYjIJg
MiTAM3aTMEna2aYketxIio147hKAajbs+8bG2/vfn/UkmGjSBoOjH9TISia6OUe5
2F8BS584ENc7/CyZ0vnazIYGVyWDbJVkopqiFoVL+y1chTNJvaFZcrXo/H2ZSgMe
/X0JsTFzrNLHDV3sZpvEczaLJqWp6GZCQroLfRRbMh0zIjg+VSYG++qB2hvPsicF
f9fl0hzK+KMVEBcJiX82nhQOZnL0Z/nS0o5/9whHZfnoEjcpLPfG5x+nTRgaaSF5
f3nfxyEKbUJA+M5X1nsHmgsIjL97eQsB98SjvxrZso2OhDsBMU0=
=Wplb
-----END PGP SIGNATURE-----

--FdKt1SRUib9T5Dgq--

