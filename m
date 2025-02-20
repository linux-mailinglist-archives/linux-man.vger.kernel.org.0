Return-Path: <linux-man+bounces-2494-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E477BA3DA2E
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 13:36:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EB6117AA27F
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 12:35:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C47F21F63F0;
	Thu, 20 Feb 2025 12:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgXRevTy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841A81E511
	for <linux-man@vger.kernel.org>; Thu, 20 Feb 2025 12:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740054956; cv=none; b=gJ5irMO4C1Ph1sRsswPdtWPdZg0dhUkF5w0hic7jp71vuTVd1o0kWoOpkCZUKVtAg3jdf9F3Rw8S8aik02pjifs5aXmJoKtgHE87+VTM5t6lMxV07Lykx1q7YrqHebKKLeVdkx9+WeGDkn1NtInf8DyrxFXTaH0dabOIcLOZ5oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740054956; c=relaxed/simple;
	bh=kJDtsSYxSwbfYptVHMX9O/cSUWRSYz4iPc4GvOfUs5U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p5LQrj+o2nHrQJeSDAg5HldBxKG9CO8ZmOCn1PO8eo8Q7rA7ebEFWBc9glf1uQucKkZKoXVAdzFYYwD7ZdSwgmeWK3Hs2l2XxKsUCV3ehaQCwKUS8h7Y15ZzMtYsa95zpNWJsbbPE5T/lH2yDiZhs3ebmL2Oo5AczanaQT9I6fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgXRevTy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5121DC4CED6;
	Thu, 20 Feb 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740054956;
	bh=kJDtsSYxSwbfYptVHMX9O/cSUWRSYz4iPc4GvOfUs5U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mgXRevTyfC/819G9yovQJEWvzBkPfeV4aIYoAAUC60HWxCv8iF/AH7XOC4OjhL+zU
	 qC6dPqyHm3t0L6b2iDA3yzLlhlbeZXI6zpwuxxtFbYFoRd8o1rQtdrakL1SXjiWlsA
	 aKUcLgpdoeip6B9mHl7IpR3/pGgBACkN08zLH2X84NlMvJIMShFOr+ufBVFcrLb8ES
	 wj+AgWAwfaLFbnGPHfKReeAlEicshTdL+4444x7S5Y0tBt/YIgNxkMNk6h7ft0xUpW
	 +2p6UaJAEMVoqMW8N7XDlXjJEz6kgfGFDjH3VcG73i3HvBY8DDuD4I6pK+ANglH2G2
	 QNdXbtGT8YstQ==
Date: Thu, 20 Feb 2025 13:35:50 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew Cassell <mcassell411@gmail.com>
Cc: linux-man@vger.kernel.org, dave.hansen@linux.intel.com
Subject: Re: [PATCH v0] man/man2/{mbind,set_mempolicy}.2: added mode argument
 MPOL_PREFERRED_MANY
Message-ID: <xpqtms6ebpacvwqitdzktanxvrjdjaxldxqfeybxu6ptqsskv5@g5prxncuni6g>
References: <20250218161939.1934-1-mcassell411@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4czia6o6wwheyt3f"
Content-Disposition: inline
In-Reply-To: <20250218161939.1934-1-mcassell411@gmail.com>


--4czia6o6wwheyt3f
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Matthew Cassell <mcassell411@gmail.com>
Cc: linux-man@vger.kernel.org, dave.hansen@linux.intel.com
Subject: Re: [PATCH v0] man/man2/{mbind,set_mempolicy}.2: added mode argument
 MPOL_PREFERRED_MANY
References: <20250218161939.1934-1-mcassell411@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250218161939.1934-1-mcassell411@gmail.com>

Hi Matthew,

> Cc: linux-man@vger.kernel.org, dave.hansen@linux.intel.com

Please add a Cc tag for Dave in the trailer of the commit message.

On Tue, Feb 18, 2025 at 10:19:39AM -0600, Matthew Cassell wrote:
> Browsing a header file in the kernel source and saw the memory policy enu=
m used
> for mbind() and set_mempolicy() using an entry that I didn't recognize. I=
 man 2'd

Please use 2 spaces as the inter-sentence separation in commit messages
(in man(7) source we always break the line after period).

$ cat CONTRIBUTING.d/patches/description | sed -n '/Style/,+5p'
    Style guide
	URIs should always be enclosed in <>.

	The correct inter-sentence space amount is two.  See some
	history about this:
	<https://web.archive.org/web/20171217060354/http://www.heracliteanriver.co=
m/?p=3D324>


> both system calls and didn't see an entry for MPOL_PREFERRED_MANY. The co=
mmit on
> the enum entry:
>=20
> Commit b27abaccf8e8 ("mm/mempolicy: added MPOL_PREFERRED_MANY for multiple

Let's remove 'Commit'; it's already obvious from what follows.  Instead
it would be useful to say which repository the commit is in (and the
commit date):

linux.git b27abaccf8e8 (2021-09-03; "mm/mempolicy: add MPOL_PREFERRED_MANY =
for multiple preferred nodes")

Also, while in general I use a 72-column right margin for commit
messages, I think I prefer if we don't break this reference.

> preferred nodes")
>=20
> The commit message gives the rationale as to why the MPOL_PREFERRED_MANY =
mode
> would be beneficial. Giving the ability to set the memory policy to target
> different tiers of memory over different NUMA nodes.
>=20
> Signed-off-by: Matthew Cassell <mcassell411@gmail.com>
> ---
>  man/man2/mbind.2         | 11 +++++++++++
>  man/man2/set_mempolicy.2 | 11 +++++++++++
>  2 files changed, 22 insertions(+)
>=20
> diff --git a/man/man2/mbind.2 b/man/man2/mbind.2
> index fd1aca4ad..a5a7f4bdc 100644
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
> @@ -277,6 +278,16 @@ and
>  arguments specify the empty set, then the memory is allocated on
>  the node of the CPU that triggered the allocation.
>  .TP
> +.BR MPOL_PREFERRED_MANY " (since Linux 5.15)"
> +.\" commit b27abaccf8e8b012f126da0c2a1ab32723ec8b9f
> +This mode specifies a preference for nodes from which the kernel will
> +try to allocate from. This differs from

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
       In  the source of a manual page, new sentences should be started
       on new lines, long sentences  should  be  split  into  lines  at
       clause  breaks (commas, semicolons, colons, and so on), and long
       clauses should be split at phrase boundaries.  This  convention,
       sometimes  known  as "semantic newlines", makes it easier to see
       the effect of patches, which often operate at the level of indi-
       vidual sentences, clauses, or phrases.

> +.BR MPOL_PREFERRED
> +in that it accepts a set of nodes versus a single node. This policy
> +is intended to benefit page allocations where specific memory types
> +(i.e. non-volatile, high-bandwidth, or accelerator memory) are of
> +greater importance than node location.
> +.TP
>  .BR MPOL_LOCAL " (since Linux 3.8)"
>  .\" commit 479e2802d09f1e18a97262c4c6f8f17ae5884bd8
>  .\" commit f2a07f40dbc603c15f8b06e6ec7f768af67b424f
> diff --git a/man/man2/set_mempolicy.2 b/man/man2/set_mempolicy.2
> index 2d0b1da19..f4651ccd3 100644
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
> @@ -234,6 +235,16 @@ arguments specify the empty set, then the policy
>  specifies "local allocation"
>  (like the system default policy discussed above).
>  .TP
> +.BR MPOL_PREFERRED_MANY " (since Linux 5.15)"
> +.\" commit b27abaccf8e8b012f126da0c2a1ab32723ec8b9f
> +This mode specifies a preference for nodes from which the kernel will
> +try to allocate from. This differs from
> +.BR MPOL_PREFERRED
> +in that it accepts a set of nodes versus a single node. This policy
> +is intended to benefit page allocations where specific memory types
> +(i.e. non-volatile, high-bandwidth, or accelerator memory) are of
> +greater importance than node location.

Should we refer from one page to the other?  It's hard to keep in sync
two manual pages with the same text.


Have a lovely day!
Alex

> +.TP
>  .BR MPOL_LOCAL " (since Linux 3.8)"
>  .\" commit 479e2802d09f1e18a97262c4c6f8f17ae5884bd8
>  .\" commit f2a07f40dbc603c15f8b06e6ec7f768af67b424f
> --=20
> 2.39.5 (Apple Git-154)
>=20

--=20
<https://www.alejandro-colomar.es/>

--4czia6o6wwheyt3f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAme3IaAACgkQ64mZXMKQ
wqlUTQ//SOJZIZlAsOU31gX7B4ocMYzgos5LT+nvHaN4JZIKmHQYqGEcQCovFWXY
yGYxl03nzJPtGlMU0Xu/aR1iH56TvGVxjC+n2fGs0hqAkpEmBMzbaRHUlcI0TpBZ
/uhmfdXWZc2K9Mv9ORJDxBBSFS+cTSDZ5slXbnasemQuOSIcFMA+ucIFIGWqQp6w
BQdzmgiLhI2WfYGVk7+EFt/71vCtia85GQQxlob2Ev4Wur7PV/WHJIOIPaowlmpt
f/2IpU+krCtcEoCef6u/I6MomE5oGABP1ZxTIwd67JNXXlHEB8ulVbH6O/WgHD65
1AkbjExcjEKn0CCXYhkKGBpVO3qHlSvlUV991As/TNlTwg4wlvXQ8lzC8T4jK7Hn
NTdP/i0RweN0M2zLaxJtGYFldAg0i9MSr13D058mgrk8H+oIEZdfUMRK328Qd4YE
0ZZdati7s3wXRo0NVw6UzS5zHp7HJG/GFMq2UHvz0hwDIwquoxgtQUUnnDok/y+v
9GaGhwLEXMp/eGDWw0U3eMCY5BqbX/nggGyoHo7rS+nag5RgJk2t4F5NSau1UzXa
YblDb+hRtkl/Br966h5ZchJNvDldnZw5YkC7jgfqZvpFtjRtS+bMmrGY5inT5tw9
IH7VpyDn4WbeXVT2THg5M1+RL/WXnWTem6WfTUNa+tkLFXFr9wk=
=qpUP
-----END PGP SIGNATURE-----

--4czia6o6wwheyt3f--

