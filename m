Return-Path: <linux-man+bounces-2098-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A68429E374B
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 11:13:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 82B5D165A01
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 10:13:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE8211A256C;
	Wed,  4 Dec 2024 10:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXZXOOh+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AFD51547CA
	for <linux-man@vger.kernel.org>; Wed,  4 Dec 2024 10:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733307228; cv=none; b=Tc1iwVvbAXPAyduDT1Ujan32xl6Abi/G9XWAgkdncgXNT0MnPo6dauKoF4J/mmtZfx7fX/vvICK2mJqiw7RMbpKcLMLNphy+3vEwmh3GsDOqftHqLqjOYoR5a/xbZehX09plXOhOLDYc22fHXc77KHHqmcxAnpttP/QGOcUJBms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733307228; c=relaxed/simple;
	bh=a4rjGovG2oZRt+S6Q1bF/dC5niQAfStyO4fQVwiKDJw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y2Gc2uxz4naROFsPyWiUpWTCS/pIACzIjZP+ClwxPa8oHxLnlaYO0bVeqKvZ1yKpx7ReJcgfqNUBiilK4oq/3g2s+5U5NuDMrEOe1qVHlMB1dpnfVoEuNYI1E/FL/XsvOBvoI6W2+8uWmapJMA9RrGvU8wk7FcmkfQgRdVaV6zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXZXOOh+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46107C4CED1;
	Wed,  4 Dec 2024 10:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733307227;
	bh=a4rjGovG2oZRt+S6Q1bF/dC5niQAfStyO4fQVwiKDJw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fXZXOOh+nLDLr2/Ml7hrm15OF0wwC0gzSvQkLDLJZZR19xrqVdQe7bVmgM+2B8Vlc
	 l8X+8RrCub62cKpy25fT7uxxFf9RELir46fC0ygYebxlxEmp6s41ELhKSX9JGZaqZs
	 iltQ0CIUvDYKPhu1+fLC+xWdFQsBI/hgvFwl0IMmyVu9L0gJBQp1lllRU/hy62BL3p
	 i09ucNMjQrt7SEPcGWfNsV665DGSiSN5Rb5FGJLtTaP2c5UPzY/SYk+LEbWoPLH+Cg
	 R8KN/Eaz66BZ9VhWEOkLZxHviwl8RvkKQjtlIMPvFoST0oGl8YjTkw7Hl0eum1osQq
	 eXhfgpOlBHgfQ==
Date: Wed, 4 Dec 2024 11:13:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
	"Liam R . Howlett" <Liam.Howlett@oracle.com>,
	Matthew Wilcox <willy@infradead.org>,
	Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
	linux-mm@kvack.org
Subject: Re: [PATCH man-pages v2] process_madvise.2: describe 6.13 behaviour
 permitting all madvise flags
Message-ID: <20241204101344.ont4gjc3ewltiec6@devuan>
References: <20241129164422.89837-1-lorenzo.stoakes@oracle.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yzeiafhh2ae6q4gu"
Content-Disposition: inline
In-Reply-To: <20241129164422.89837-1-lorenzo.stoakes@oracle.com>


--yzeiafhh2ae6q4gu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH man-pages v2] process_madvise.2: describe 6.13 behaviour
 permitting all madvise flags
MIME-Version: 1.0

Hi Lorenzo, David,

On Fri, Nov 29, 2024 at 04:44:22PM +0000, Lorenzo Stoakes wrote:
> Since Linux 6.13 it has become possible to use all madvise flags when tar=
geting
> the calling process. Update the man page to reflect this change.
>=20
> Reviewed-by: David Hildenbrand <david@redhat.com>
> Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>

Thanks for the patch and the review!  I've applied it, with minor
tweaks.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D7148a8cca8d693731d98c09bb7bf9d585a36e695>

> ---
>=20
> v2:
> * Use semantic newlines as suggested by Alejandro.
> v1:
> https://lore.kernel.org/all/20241129095507.11001-1-lorenzo.stoakes@oracle=
=2Ecom/
>=20
>  man/man2/process_madvise.2 | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/process_madvise.2 b/man/man2/process_madvise.2
> index b78a61553..2ebbfea44 100644
> --- a/man/man2/process_madvise.2
> +++ b/man/man2/process_madvise.2
> @@ -54,7 +54,9 @@ This value must be less than or equal to
>  or accessible via the call
>  .IR sysconf(_SC_IOV_MAX) ).
>  .P
> -The
> +If manipulating another process,
> +or before Linux 6.13,
> +the
>  .I advice
>  argument is one of the following values:
>  .TP
> @@ -74,6 +76,10 @@ See
>  See
>  .BR madvise (2).
>  .P
> +Starting in Linux 6.13,

We use consistently "Since Linux ..." for saying this.  That allows
grepping for a consistent phrase.  I've applied a fix for all pages that
still had this old wording:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Db159e0d6770a860f0d0ae1693dddb3b6116e7d9b>

Have a lovely day!
Alex

> +when manipulating the calling process,
> +any advice flag is permitted.
> +.P
>  The
>  .I flags
>  argument is reserved for future use; currently, this argument must be
> --
> 2.47.1

--=20
<https://www.alejandro-colomar.es/>

--yzeiafhh2ae6q4gu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdQK1cACgkQnowa+77/
2zJE0w/+K2wM1P+1rKP0Vmh7UWcz4A/illqT93QQKuXz8+kJaFDh6Sk0Cab9Vhsr
7g4lhQViiCYVzFMgtM2ZG6k7h+Bpks/ro9H16gGDf+PhMF5f4HHl49sx1KL6m3JH
ZeJmHxPoJDRgbmjilZ7HmbIwdyl2isKjZ6oweD1ZWZy4OaC3IYJUZyz4hXH6AZzC
4G6cJVywJrL45sGfql8eLw6c/NcBrn47gbUpjLea9IpPQaP3VQJM70G5BbMiIsFR
cMRuTSuPCPRUnxS3C7jf4vlfQOHbkMi9ZPDkd+S5YoxzICd4ZuBL4vSA7Ypni5j2
OauRZNCglINsV/rH3uTU0l0tK0iGAc1TX46FGhO26Ea2MnIdNeDk6B+6bntJa8EF
cSyYvy/6N+xJraG8xz8OEd39g2tbQ/8F6t6RnnYo0jj9EbF9q9ICEXcAr31YWshC
GJ1ZmpwWH1ufJQBmorSxhwbtCUv4C2vY8TsFxXa13fmFYEfGzuYj6NP2CwWKwD85
fOsnhK1YE8MaQ5SFSe23Ew11WOVh8ik9D3eVydZDhv7sNsrdXZewMJH9QNF08acZ
vfMaZPc6cuxUi7ztNkXZZLOyFOpQfrgGk/xhiHI6PkvihF+xJrswP+wx7ZLROyQD
apDV8XDNA1qMwJ9+q1czBhwhgB28XCV38/JDlGUM1Qiv5/vWlo4=
=1+6w
-----END PGP SIGNATURE-----

--yzeiafhh2ae6q4gu--

