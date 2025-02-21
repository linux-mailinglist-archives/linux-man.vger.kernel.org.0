Return-Path: <linux-man+bounces-2500-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D4961A3FE7F
	for <lists+linux-man@lfdr.de>; Fri, 21 Feb 2025 19:13:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF0FA44251D
	for <lists+linux-man@lfdr.de>; Fri, 21 Feb 2025 18:11:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13B842512E1;
	Fri, 21 Feb 2025 18:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5xzhi8d"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D172512C9
	for <linux-man@vger.kernel.org>; Fri, 21 Feb 2025 18:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740161509; cv=none; b=OxRgqJwCtYpwHmK7adOqfTrRx3DRYrSJAVE+XF6GyMqFMgwCEG4G0fSr779tupTP2x+Nv30TKjISS963Q9eaGUFZ4lntS4gN51b4j3zjd7txwLHvrM2qCNLXJryXBjohD6EhnyRJtB1qkz0dFYkhHMQIZk4yoXWaELsZUfipY2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740161509; c=relaxed/simple;
	bh=AaHmjQ40596r/FRHRQgK7B86A93Q4wB11GvTYXEOOB8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TYNZvF5FziXRev/SHMJoOVTNTcfGYD9s0j0FjSmM7OK6mxt4KGKRrSDtYTFD8zeE7s7kLX3anRITFUzuQTF/MZFHPv7SOBCwCvd/c4/WqgZa2mFd4WTIne0hT/GqKPq9mV2/RObm9P0YTl50h1t5JdTzmbA48OxsAdbp40uglOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5xzhi8d; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 811FDC4CED6;
	Fri, 21 Feb 2025 18:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740161509;
	bh=AaHmjQ40596r/FRHRQgK7B86A93Q4wB11GvTYXEOOB8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y5xzhi8dxPbpGl+tadmc489llJQUEORxtgCHAaQES9biS0knVUcbpRmMWcIo2dQ1q
	 Xu97X0AUEv/runl28Jfs9/SqSYFuwWP2Whid0SpQRoDWr0725FEspDHNeSO4qWoj5L
	 Gj11cZOK+JNCmZFR62c5OlyshKjkVTkDMeccmbgRWQmvDz0594wQsM3N1DDhvRmvKn
	 YW9ullYY+/k2lv5z1DXpHYppm8qG7lpwu5amwL9xK5e6hNAyHWkTzzPADqReSg+GPn
	 HhrXFBda/heEAdQkXqUrJ/wXI8LTP0fy164hiLRtWT8+MWxck0O55iDWc7UsZ3hdYM
	 MRvGm+8fqYMhQ==
Date: Fri, 21 Feb 2025 19:11:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew Cassell <mcassell411@gmail.com>
Cc: linux-man@vger.kernel.org, dave.hansen@linux.intel.com
Subject: Re: [PATCH v1] man/man2/{mbind,set_mempolicy}.2: added mode argument
 MPOL_PREFERRED_MANY
Message-ID: <36pxpegcnyah5w4skvntcjeeb4rm6wmvwcq4lugslg65dtu4sq@5zkd2dmvbshu>
References: <20250220225232.2138-1-mcassell411@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7akg6xgahfkpshbx"
Content-Disposition: inline
In-Reply-To: <20250220225232.2138-1-mcassell411@gmail.com>


--7akg6xgahfkpshbx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Matthew Cassell <mcassell411@gmail.com>
Cc: linux-man@vger.kernel.org, dave.hansen@linux.intel.com
Subject: Re: [PATCH v1] man/man2/{mbind,set_mempolicy}.2: added mode argument
 MPOL_PREFERRED_MANY
References: <20250220225232.2138-1-mcassell411@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250220225232.2138-1-mcassell411@gmail.com>

Hi Matthew,

On Thu, Feb 20, 2025 at 04:52:32PM -0600, Matthew Cassell wrote:
> Browsing a header file in the kernel source and saw the memory policy
> enum used for mbind() and set_mempolicy() using an entry that I didn't
> recognize.  I man 2'd both system calls and didn't see an entry for
> MPOL_PREFERRED_MANY.  The commit on the enum entry:
>=20
> linux.git b27abaccf8e8 (2021-09-02; "mm/mempolicy: add
> MPOL_PREFERRED_MANY for multiple preferred nodes")
>=20
> The commit message gives the rationale as to why the
> MPOL_PREFERRED_MANY mode would be beneficial.  Giving the ability to set
> the memory policy to target different tiers of memory over various
> NUMA nodes.
>=20
> v0 -> v1
> - changed text width from 80 to 72 characters
> - added Cc tag for commit author
> - improved source readability with semantic newlines
> - changed mbind() to refer to set_mempolicy() to avoid unnecessary
>   duplication
>=20
> Cc: "Dave Hansen" <dave.hansen@linux.intel.com>
> Signed-off-by: Matthew Cassell <mcassell411@gmail.com>

Thanks!  I've applied the patch, and amended it with some minor tweaks
that the CI reminded me (see comments below).  Here's the final path
applied:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dfe7e094e78139a4ac5ee31b2321b77041c725794>

> ---
>  man/man2/mbind.2         |  6 ++++++
>  man/man2/set_mempolicy.2 | 14 ++++++++++++++
>  2 files changed, 20 insertions(+)
>=20
> diff --git a/man/man2/mbind.2 b/man/man2/mbind.2
> index fd1aca4ad..a060e1401 100644
> --- a/man/man2/mbind.2
> +++ b/man/man2/mbind.2
> @@ -107,6 +107,7 @@ argument must specify one of
>  .BR MPOL_INTERLEAVE ,
>  .BR MPOL_WEIGHTED_INTERLEAVE ,
>  .BR MPOL_PREFERRED ,
> +.BR MPOL_PREFERRED_MANY ,
>  or
>  .B MPOL_LOCAL
>  (which are described in detail below).
> @@ -277,6 +278,11 @@ and
>  arguments specify the empty set, then the memory is allocated on
>  the node of the CPU that triggered the allocation.
>  .TP
> +.BR MPOL_PREFERRED_MANY " (since Linux 5.15)"
> +.\" commit b27abaccf8e8b012f126da0c2a1ab32723ec8b9f
> +Specifies a set of nodes for allocation; see
> +.BR set_mempolicy(2)

You missed a space before the (2).

> +.TP
>  .BR MPOL_LOCAL " (since Linux 3.8)"
>  .\" commit 479e2802d09f1e18a97262c4c6f8f17ae5884bd8
>  .\" commit f2a07f40dbc603c15f8b06e6ec7f768af67b424f
> diff --git a/man/man2/set_mempolicy.2 b/man/man2/set_mempolicy.2
> index 2d0b1da19..32c360f22 100644
> --- a/man/man2/set_mempolicy.2
> +++ b/man/man2/set_mempolicy.2
> @@ -65,6 +65,7 @@ argument must specify one of
>  .BR MPOL_INTERLEAVE ,
>  .BR MPOL_WEIGHTED_INTERLEAVE ,
>  .BR MPOL_PREFERRED ,
> +.BR MPOL_PREFERRED_MANY ,
>  or
>  .B MPOL_LOCAL
>  (which are described in detail below).
> @@ -234,6 +235,19 @@ arguments specify the empty set, then the policy
>  specifies "local allocation"
>  (like the system default policy discussed above).
>  .TP
> +.BR MPOL_PREFERRED_MANY " (since Linux 5.15)"
> +.\" commit b27abaccf8e8b012f126da0c2a1ab32723ec8b9f
> +This mode specifies a preference for nodes
> +from which the kernel will try to allocate from.
> +This differs from
> +.BR MPOL_PREFERRED

This should be s/BR/B/


Have a lovely night!
Alex

> +in that it accepts a set of nodes
> +versus a single node.
> +This policy is intended to benefit page allocations
> +where specific memory types
> +(i.e. non-volatile, high-bandwidth, or accelerator memory)
> +are of greater importance than node location.
> +.TP
>  .BR MPOL_LOCAL " (since Linux 3.8)"
>  .\" commit 479e2802d09f1e18a97262c4c6f8f17ae5884bd8
>  .\" commit f2a07f40dbc603c15f8b06e6ec7f768af67b424f
> --=20
> 2.39.5 (Apple Git-154)
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--7akg6xgahfkpshbx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAme4wdcACgkQ64mZXMKQ
wqlEDxAAnl1IKYCJdfQCTuIK5X+g2WY0dfLsuK3qmhq+oGTyED6hGML2RCkTCwgI
+jTC+LNJS6wI+BvW2eqyMpOaUZ03X8avgv4bqEvk9A4bybLNLwH+yQD+1EjUcpxX
R3e2hFYHvHxPh6/m+v11BmWUdx1NwRy6/UeZQQcQDbzeWypWyyLNyDHnqs5I3MBi
X4gt2IYs/b/HQklUN4r7mH7gTwobxbZExzAJJcH21HD03e+Y+g6wgK9dv95EhV8Y
J3IBD8dWh8LlQR1TS6+bMjphL350/O/NZOozdy9ScEiCjAbDkfpNmPMpeZ36aKrU
K1YzNp+tqB94rkq5Ez7gLtyWHbDycw49THZYcZoU1CD/LPtAmc5JFaAayRbkqjQM
FJBPhMgmYydmp0Ni8B/MNGDWmG15wYBMGxDiO4kJGw+JxG+KcQyoGQuGALqW67U2
crxcCbIsAOEu6NPRAaIC87SUPWKfn6TI6VwuHAJ7e+FCDwKKdZnBoL0+8qTxJT05
3Jcwb6mMN+iNaxTyax3tE4GlXiCG1qBSNGVcJ0qQUWoZUlt1KtNaoCTO+S/vCNZ2
hh31Fz8VjjeWe64h9AWIiLIJpTZ3+5MBa3c+h7Q3bhOCk7aeDHFfwxqhhUvaW64w
9nxKQOQXioOVw7VuqhcoOQaxGem8WVRKJ1EN26BIAOgFKTmGmXg=
=f3Of
-----END PGP SIGNATURE-----

--7akg6xgahfkpshbx--

