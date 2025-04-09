Return-Path: <linux-man+bounces-2762-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72504A832BB
	for <lists+linux-man@lfdr.de>; Wed,  9 Apr 2025 22:46:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9639464FD3
	for <lists+linux-man@lfdr.de>; Wed,  9 Apr 2025 20:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9AC821ABD3;
	Wed,  9 Apr 2025 20:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSnBUc2q"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F8021ABA4
	for <linux-man@vger.kernel.org>; Wed,  9 Apr 2025 20:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231296; cv=none; b=ssXBz/ZgIqkcUvyXJfZlmZ7neTAI/QQTQQdi/EOSbHmyVBmAOBx+DH08XUMo20Txj7KfhaKa6XOEgzXg2Wj7mHlzbfiRjuvpkx0PxlbREAYfcEfLrb/mQ8WSuPOkZxyG4sBeurJPSaiPHo9RW5BUp5DpG/N+ikhh02CcN57zhYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231296; c=relaxed/simple;
	bh=jXivwuavSOU3+rUAUb9IJLDEN9Sj9dovjGxSv6pGLZY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FLAMXBPa4qj7ONJxxR2ywqKrF4PaZNl/eTFlj0jAVAaNPkmGnM46+M4BmFda4Bt6M+32Vl26FNswMst5iRoU30GQsekcXY5RO6T3l5Ift/z4HIbUQL0/vzkGJQ8daZjYYoQHfPJNEqIB5wAAdXjWd3TvSbFp0RYgF5oV6UKeQHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSnBUc2q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7564AC4CEE2;
	Wed,  9 Apr 2025 20:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744231296;
	bh=jXivwuavSOU3+rUAUb9IJLDEN9Sj9dovjGxSv6pGLZY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SSnBUc2q8YgPo2Kxqw+Y6dMa3XRKzYxg46NPqTtJu5P2xDv2jDawgnhsPxZwAk27z
	 ZoQr3M29OQVx35/Yw/KrrOFnLJfrazgl93JRrC1xrKvj6IuxRnSoASOwDmajICzXox
	 1ZapWsYcnxW6Jt6GPyu5JhI1pLNvBtc0p5S1E3szV2KWppfF/Sic85Eia4NlscCI6c
	 OZbclNyFwIJqltS19/UMLznkWrsEHQrkOUX8YWIsK9AHyarbO0nQXu00u8HVIg52PT
	 tgmPPVSVLdb6RBXu0631GWq3i8yZ9XsE6uvcE3v5oFXVC4dlwHZAW7VUZWi9G+Qbtk
	 O8Oy759yMNHtw==
Date: Wed, 9 Apr 2025 22:41:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jann Horn <jannh@google.com>
Cc: linux-man@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
	Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org
Subject: Re: [PATCH man] mmap.2: Document danger of mappings larger than
 PTRDIFF_MAX
Message-ID: <eou3zcpvohbtr3ixeibqec4grb5jdf35ss7xi5fy5qjgpxysde@fenpacxwsnqb>
References: <20250409200316.1555164-1-jannh@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yusnn73qo2ipjwdy"
Content-Disposition: inline
In-Reply-To: <20250409200316.1555164-1-jannh@google.com>


--yusnn73qo2ipjwdy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jann Horn <jannh@google.com>
Cc: linux-man@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
	Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org
Subject: Re: [PATCH man] mmap.2: Document danger of mappings larger than
 PTRDIFF_MAX
References: <20250409200316.1555164-1-jannh@google.com>
MIME-Version: 1.0
In-Reply-To: <20250409200316.1555164-1-jannh@google.com>

Hi Jan,

On Wed, Apr 09, 2025 at 10:03:16PM +0200, Jann Horn wrote:
> References:
>  - C99 draft: https://www.open-std.org/jtc1/sc22/wg14/www/docs/n1124.pdf
>    section "6.5.6 Additive operators", paragraph 9
>  - object size restriction in GCC:
>    https://gcc.gnu.org/legacy-ml/gcc/2011-08/msg00221.html
>  - glibc malloc restricts object size to <=3DPTRDIFF_MAX in
>    checked_request2size()
> ---
> I'm not sure if we can reasonably do anything about this in the kernel,
> given that the kernel does not really have any idea of what userspace
> object sizes look like,

Hmmm.  Maybe it could reject PTRDIFF_MAX within the kernel, which would
at least work for cases where user-space ptrdiff_t matches the kernel's
ptrdiff_t?  Then only users where they don't match would be unprotected,
but those are hopefully extra careful.

> or whether userspace even wants C semantics.

I guess any language will have to link to C at some point, or have
inherent limitations similar to those of C.

> But we can at least document it...

Yep.  Most people are unaware of this, and believe they can get
SIZE_MAX.

>=20
> @man-pages maintainer: Please wait a few days before applying this;
> I imagine there might be some discussion about this.

Okay; see some minor comments below.

>=20
>  man/man2/mmap.2 | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>=20
> diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
> index caf822103..9cb7dacf3 100644
> --- a/man/man2/mmap.2
> +++ b/man/man2/mmap.2
> @@ -785,6 +785,23 @@ correspond to added or removed regions of the file i=
s unspecified.
>  An application can determine which pages of a mapping are
>  currently resident in the buffer/page cache using
>  .BR mincore (2).
> +.P
> +Unlike typical
> +.BR malloc (3)
> +implementations,
> +.BR mmap ()
> +does not prevent creating objects larger than
> +.B PTRDIFF_MAX.

=2EBR PTRDIFF_MAX .

(since you want the '.' not bold, but roman)

> +Objects that are larger than
> +.B PTRDIFF_MAX
> +only work in limited ways in standard C (in particular, pointer subtract=
ion

Please break the line also before the '('.

> +results in undefined behavior if the result would be bigger than
> +.B PTRDIFF_MAX).

=2EBR PTRDIFF_MAX ).

(same reasons)

> +On top of that, GCC also assumes that no object is bigger than
> +.B PTRDIFF_MAX.

=2EBR PTRDIFF_MAX .

> +.B PTRDIFF_MAX
> +is usually half of the address space size; so for 32-bit processes, it is

Please break the line after ';' and after ',' (and not after 'is').

See also man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.


Have a lovely night!
Alex

> +usually 0x7fffffff (almost 2 GiB).
>  .\"
>  .SS Using MAP_FIXED safely
>  The only safe use for
>=20
> base-commit: 4c4d9f0f5148caf1271394018d0f7381c1b8b400
> --=20
> 2.49.0.504.g3bcea36a83-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--yusnn73qo2ipjwdy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmf223UACgkQ64mZXMKQ
wqn/Xg//bmmBgN4nFWRHGZDffDb5bEZG7Za3ET26J/jtj6Xlfqt+VvOK8eJd+oyu
S6wfew6hA2IDEEa8cZ7paVNjZ+iXkNw8g2X9SXRdwiAy9j4np1ZdkhJoNnosFKjj
OqFocG8E/m4l9RiPjqhXITkbz6j+450VNnhf7KJpNWUU+SvZrGV6GvfxCTpIXp4V
VWpw1uOsgSJg4vVrPWbgOPvSip3wLJjoyEou2aR8k+noQ3p+YZwbZNqk1URbCBlq
aVswI5qGc7kpY2H7MOCaAoTtYAKGsb5hGEE78x5jPpE7LOJDt8qDAxhM2QEiZtWi
LALPqXjWDiRo1xjW0uUhFnLgGSKyK2V4CltQJ/8tsdsiXhVTiNUovxlsZsIU7Rvj
km9BA05lXRS8WHEynUNOs3/Pr06Irm0SEOTKKBAEOVbSlS32N7alqlA94iOTovSi
0YyuUl3iEpxle0ORnfA01pm+dpUp7dB2NuiQ/G+jKej8CWClfNIlWg7RCMOGDLX5
ceiIOUC3/kcFcdfnl5Y166fPY2ZLNeClC6hIkACffrKmhhlGEn0jY9un/FwbbuIF
pGj+Txc3qFG4M7szfY8o6ZmCpjARnqR8Sv7bR6DQeSikuA0GFs5noxuWYyCUHkDg
tf5C1eA3u6z37cv9jetwKMiw60gGlW591lIBuO7M3/f1iKIiuKQ=
=FW8P
-----END PGP SIGNATURE-----

--yusnn73qo2ipjwdy--

