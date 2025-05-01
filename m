Return-Path: <linux-man+bounces-2834-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2A1AA6186
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 18:43:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B0901BC3A06
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 16:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11E9A20297D;
	Thu,  1 May 2025 16:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjgHU3kH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A444C8E
	for <linux-man@vger.kernel.org>; Thu,  1 May 2025 16:43:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746117830; cv=none; b=J91x695mUBzS26G5Q/VTKcjpABPE3FnuxfE5g0mOmBKYVJm9DrTbRpYtQ5hT0nJ3FBe1EL8VhM6tkBloCoh/H099iUJqBFPY2GqkMFoI9fmKUkPM5pQgp6UQPuRkNe8dFdijDIFlW7xw7+s+Etw7BRP7Q+uorVUVU3uoEwXIiQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746117830; c=relaxed/simple;
	bh=fTnFvqoD19QWjp5YRJ7LenC5xq+P2K+xsVJpZXtnJko=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aDV3MvbLTQUvODO/g1ongV7i7pFzZQy1SgY9Y+FJ1mGavYHU9QVpxNVfVObdypjjJRGchCvG/G6qrqa7NHV8qBWpXuI6ZmVhUD35K4nHW8AH62qmXxcx4cFkAOZnIjD4qFfgFiEzHniPHr9hMK7cbq0DvrjR1CZ1E0ZJvDEOm38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjgHU3kH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D532C4CEE3;
	Thu,  1 May 2025 16:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746117830;
	bh=fTnFvqoD19QWjp5YRJ7LenC5xq+P2K+xsVJpZXtnJko=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KjgHU3kHFFY0eDf5B19bKtcw/jeLitnCzguYPeAQS2kro4oEHoOIA+cW7sJhEYnQi
	 QyavkBlWZ5yXcWKdfxO8wRS4Z8ULlgSlWUg6FHPViSQfBak70MIUOO8r09KbtbljC7
	 ssnWSsOGGIYHZ7QMJGIzxN9us0thsZWMvWdM+rpa3htI1HTqhhhckw2g1HnL7mOCdL
	 /p9r0qLhGH+vi1k8madlMYnpVlLbLggGnHHvKyF6sREwF7KuQ3Rf2XFQWVoyrP24vj
	 RVRdBy4P7Tgj0yhefG4CKOU+rkLhhahYsbnou7+58EcgDZ+ZjHTYVKwq1hZbLJnr3x
	 PBQOfLK2U0Y3A==
Date: Thu, 1 May 2025 18:43:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jann Horn <jannh@google.com>
Cc: linux-man@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
	Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org, Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH man v2] mmap.2: Document danger of mappings larger than
 PTRDIFF_MAX
Message-ID: <dgzjcjwdldjn7uzgeh6dfwsgkc4ju2zakugwrnpyj5mwbmrnk2@sqqnganfrdvh>
References: <20250429164359.2699330-1-jannh@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iyt3lqyd4gg7mybc"
Content-Disposition: inline
In-Reply-To: <20250429164359.2699330-1-jannh@google.com>


--iyt3lqyd4gg7mybc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jann Horn <jannh@google.com>
Cc: linux-man@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
	Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org, Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH man v2] mmap.2: Document danger of mappings larger than
 PTRDIFF_MAX
References: <20250429164359.2699330-1-jannh@google.com>
MIME-Version: 1.0
In-Reply-To: <20250429164359.2699330-1-jannh@google.com>

Hi Jann,

On Tue, Apr 29, 2025 at 06:43:59PM +0200, Jann Horn wrote:
> References:
>  - C99 draft: https://www.open-std.org/jtc1/sc22/wg14/www/docs/n1124.pdf
>    section "6.5.6 Additive operators", paragraph 9
>  - object size restriction in GCC:
>    https://gcc.gnu.org/legacy-ml/gcc/2011-08/msg00221.html
>  - glibc malloc restricts object size to <=3DPTRDIFF_MAX in
>    checked_request2size() since glibc v2.30 (released in 2019, as pointed
>    out by Jakub Wilk):
>    https://sourceware.org/cgit/glibc/commit/?id=3D9bf8e29ca136094f

Thanks!  I've applied the patch.  See some comments below.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D7e5756fdeba1a4729f817079c64f0d87fdcdadfa>


Have a lovely day!
Alex

> ---
>  man/man2/mmap.2 | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>=20
> diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
> index caf822103..4bb15699d 100644
> --- a/man/man2/mmap.2
> +++ b/man/man2/mmap.2
> @@ -785,6 +785,25 @@ correspond to added or removed regions of the file i=
s unspecified.
>  An application can determine which pages of a mapping are
>  currently resident in the buffer/page cache using
>  .BR mincore (2).
> +.P

I've moved the paragraph to a new CAVEATS section.

> +Unlike typical
> +.BR malloc (3)
> +implementations,
> +.BR mmap ()
> +does not prevent creating objects larger than
> +.BR PTRDIFF_MAX .
> +Objects that are larger than
> +.B PTRDIFF_MAX
> +only work in limited ways in standard C

I've removed 'standard', since in any C it is problematic.

Is it okay to you?  (We're still in time to amend if you prefer
something else.)

> +(in particular, pointer subtraction results in undefined behavior if the
> +result would be bigger than
> +.BR PTRDIFF_MAX ).
> +On top of that, GCC also assumes that no object is bigger than
> +.BR PTRDIFF_MAX .
> +.B PTRDIFF_MAX
> +is usually half of the address space size;
> +so for 32-bit processes,
> +it is usually 0x7fffffff (almost 2 GiB).
>  .\"
>  .SS Using MAP_FIXED safely
>  The only safe use for
>=20
> base-commit: 4c4d9f0f5148caf1271394018d0f7381c1b8b400
> --=20
> 2.49.0.901.g37484f566f-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--iyt3lqyd4gg7mybc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgTpMEACgkQ64mZXMKQ
wql1cBAAnpqS+pbdh64DlFg230JWHQKSu+jiEJiaZxwXSfcDR2flK9+yCvYtlNlh
QHszbZG6YiGA/tcrzT+1plR8ihF/Oh+LRK6AgmA3Jq4pve9hncnlxOEZpymeetKO
0g1qhsqKm8AM+baErc2/K7prN6LSvpmx/u7bOlw6zio8fmiXHiw8/oL14dhC3ejv
JR3y39sZ+fqjX/74y2CB3Jmqsu4TlfXStZiWvAtqKpAfBw83bGEBN9vOheDkXGNv
5lPzoNEk07Z8oWN1boxFChoVJH6a5BO8P2jIhWT8QJU9ZkJybiV4S9qUgqFZKRlT
nX3Y59PyVeUya8OaB9Pjq55KSuWIQMX6qyYm0u4UcY/1YboCkjg7dZUwPdtOsC72
iOI4tnzXszWghlia19Mlb9PZpH+oHoQnFTs/8fwliaZIrOBh22svLeBsqBWNsz5o
veXx+UBgQEvqj6RzlkBBFNGarLJfg0ysd9S2vdvuNX3POuSqVOndfoXLobxNWWBM
1e/BOLCRjZFIhNIdt9t4qpNGX9GSOOEiBUUPQpVNoTpp5GqBp4CeZIolS+ssdTSi
6cc+YX5uyC0G9o56yjMCfZdoqAM8E3bkOjplgaotdeRE2imAcKpQZKbuLCcHX7nz
PYz27b3m3ndw4zaZnsw/vJtBQuyiYUPMFyEGnUFA3l52qih22mE=
=fHlc
-----END PGP SIGNATURE-----

--iyt3lqyd4gg7mybc--

