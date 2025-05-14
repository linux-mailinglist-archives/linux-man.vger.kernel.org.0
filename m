Return-Path: <linux-man+bounces-2917-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C91E5AB70A7
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 18:03:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2A6E18915A7
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 16:00:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6B53277017;
	Wed, 14 May 2025 15:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWE8onug"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6227E27B4E7;
	Wed, 14 May 2025 15:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747238395; cv=none; b=K70gHFN8mnYqk0P6ORS+qFKz8jvsvlInAo7pnm01QRcbFeznFQuFBKdBcVnqYVmmCQOMghFy+t+ifOwRtAZq9OiTomVfXXf32QA3YbRA5gROxA9JP35GwfIpUUbp/8FAyIDot6x6CS+6wgI4YwmUe8Cz8UKUlk0KuEQgbo1TmPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747238395; c=relaxed/simple;
	bh=HkxsrrlsqcfaJiY7c022L88luHQzOWwXnQC741NGka0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XwPU/gWnvbXNh15VmAUVySO6b6JNXGzvhNUkHjJIglQIXT87QQIlT/E0mum0DmVPfO+mb5qhmOkxz9fF6gToGuHLmK5ZIU8qfaZlu+wGL6Ihdl1RVEWsYJKQHm47mq7O4Dz+RoeXtkWx/SAJhyzziQDRLzgG+vxYOktOQDtSnEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWE8onug; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 778E9C4CEED;
	Wed, 14 May 2025 15:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747238394;
	bh=HkxsrrlsqcfaJiY7c022L88luHQzOWwXnQC741NGka0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TWE8onugcbz50Ao7weI2Aqv17taPoevUO9o2DpBgp7cfoTXTLPEcWGJI/OVIVNXdQ
	 +BT8fRwbXNkqoHU1Va+F32270loFzEq+mjoZZNKeTgshVX294jUthnZNXLtEfbmFz3
	 mtJ11/F4CNIqmnmzslIZQ/wBHEiPnSku+CZd9FJ42SUA/S8D2WVk9dJTH83znp2szj
	 X+tYvga5mL7PMxVuhdZ4qRTnhdoie2R9RQK1IXdcRREnZmOg3JmB7BMqM3KjQkVkXS
	 1c3RZQdYe2ct2OWFR40DjT/mYohPKTIywowMCOQ062RSveZb4p8qrlCnV30yrFhcG1
	 tE9hDXcYABSzw==
Date: Wed, 14 May 2025 17:59:48 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Peter Xu <peterx@redhat.com>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Andrea Arcangeli <aarcange@redhat.com>, Mike Rapoport <rppt@kernel.org>, 
	Axel Rasmussen <axelrasmussen@google.com>, Kyle Huey <me@kylehuey.com>, linux-mm@kvack.org, 
	Robert O'Callahan <robert@ocallahan.org>, Suren Baghdasaryan <surenb@google.com>
Subject: Re: [PATCH 1/2] UFFDIO_API.2const: Update userfaultfd handshake and
 feature probe
Message-ID: <6eobuzkwm6xhpis4s52dtit55fws37elv5d7zygaf64czcjag6@brz2nrc6qptu>
References: <20250512171922.356408-1-peterx@redhat.com>
 <20250512171922.356408-2-peterx@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yrfjxuitfb5sxxwb"
Content-Disposition: inline
In-Reply-To: <20250512171922.356408-2-peterx@redhat.com>


--yrfjxuitfb5sxxwb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Peter Xu <peterx@redhat.com>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Andrea Arcangeli <aarcange@redhat.com>, Mike Rapoport <rppt@kernel.org>, 
	Axel Rasmussen <axelrasmussen@google.com>, Kyle Huey <me@kylehuey.com>, linux-mm@kvack.org, 
	Robert O'Callahan <robert@ocallahan.org>, Suren Baghdasaryan <surenb@google.com>
Subject: Re: [PATCH 1/2] UFFDIO_API.2const: Update userfaultfd handshake and
 feature probe
References: <20250512171922.356408-1-peterx@redhat.com>
 <20250512171922.356408-2-peterx@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20250512171922.356408-2-peterx@redhat.com>

Hi Peter,

On Mon, May 12, 2025 at 01:19:21PM -0400, Peter Xu wrote:
> There's a confusing paragraph in the man page on two-steps handshake for
> userfaultfd UFFDIO_API ioctl.  In reality, after a successful UFFDIO_API
> ioctl, the userfaultfd will be locked up on the features and any further
> UFFDIO_API on top of an initialized userfaultfd would fail.
>=20
> Modify the UFFDIO_API(2const) man page to reflect the reality.  Instead,
> add a paragraph explaining the right way to probe userfaultfd features.
> Add that only after the "Before Linux 4.11" paragraph, as the old kernel
> doesn't support any feature anyway.
>=20
> Signed-off-by: Peter Xu <peterx@redhat.com>
> ---
>  man/man2const/UFFDIO_API.2const | 43 ++++++++++++++++++---------------
>  1 file changed, 24 insertions(+), 19 deletions(-)
>=20
> diff --git a/man/man2const/UFFDIO_API.2const b/man/man2const/UFFDIO_API.2=
const
> index 54b34a1bc..1c554107a 100644
> --- a/man/man2const/UFFDIO_API.2const
> +++ b/man/man2const/UFFDIO_API.2const
> @@ -42,25 +42,6 @@ fields to bit masks representing all the available fea=
tures and the generic
>  .BR ioctl (2)
>  operations available.
>  .P
> -Since Linux 4.11,
> -applications should use the
> -.I features
> -field to perform a two-step handshake.
> -First,
> -.B UFFDIO_API
> -is called with the
> -.I features
> -field set to zero.
> -The kernel responds by setting all supported feature bits.
> -.P
> -Applications which do not require any specific features
> -can begin using the userfaultfd immediately.
> -Applications which do need specific features
> -should call
> -.B UFFDIO_API
> -again with a subset of the reported feature bits set
> -to enable those features.
> -.P
>  Before Linux 4.11, the
>  .I features
>  field must be initialized to zero before the call to
> @@ -70,6 +51,30 @@ and zero (i.e., no feature bits) is placed in the
>  field by the kernel upon return from
>  .BR ioctl (2).
>  .P
> +Since Linux 4.11,
> +userfaultfd supports features that need to be enabled explicitly.
> +To enable any of the features,
> +one needs to set the corresponding feature bits in
> +.I features
> +when issuing the
> +.B UFFDIO_API
> +ioctl.
> +.P
> +For historical reasons,
> +a temporary userfaultfd is needed to probe
> +what userfaultfd features the kernel supports.
> +The application needs to create a temporary userfaultfd,
> +issue an
> +.B UFFDIO_API
> +ioctl with
> +.I features
> +set to 0. After the

Please use semantic newlines.  Break the line after the '.'.

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
       In the source of a manual page, new sentences should be  started
       on  new  lines,  long  sentences  should  be split into lines at
       clause breaks (commas, semicolons, colons, and so on), and  long
       clauses  should be split at phrase boundaries.  This convention,
       sometimes known as "semantic newlines", makes it easier  to  see
       the effect of patches, which often operate at the level of indi=E2=
=80=90
       vidual sentences, clauses, or phrases.

Also, please say "zero" instead of "0", as was in the old paragraph.
That will allow git-diff(1) --color-moved to detect some movement of
text.

> +.B UFFDIO_API
> +ioctl returns successfully,
> +.I features
> +should contain all the userfaultfd features that the kernel supports.
> +The temporary userfaultfd can be safely closed after the probe.
> +.P

Thanks!


Have a lovely day!
Alex

>  If the application sets unsupported feature bits,
>  the kernel will zero out the returned
>  .I uffdio_api
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--yrfjxuitfb5sxxwb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgkve0ACgkQ64mZXMKQ
wqnL3RAArQyQl/1PS8j90oq72WHMTyButnCaNkBW3UnDNQbeIxW0tpDeJgSCjQ7i
koP6uSRiI+OQxwS8k/O60cxRlL2uoLLMV0HMi/2yFI+9xqqmR4EVe2UYc1xIMId7
tg28KGCKJmrV9l1aK+KlNSxnS0aTeP8uSOPrIDk2Ucr4/00ssZNHOzO9cqh4p/9D
iZSuK6G5oDPw0tuuh3yXSbzQILy9MGEO2H4V4RD6RM2F+4Okmz1OKPULBFA1JpzL
4V4zID7sYfADRV2JyMEj4JHr4ULWJVdY9lZoL7JNfkBd+b4ii1lAzsGPr4w+CASo
xfBpE76BIuLyaJGfdjOP4U5m1TdiynUXNmWlcBkgRbvr/35aHFyD/ipAruGGf3cD
8Mw3c86k+QJe0/ZWKrK/CwKIq7u6Ol2vRb0rGuBORaIdS5DaTPcI+3Ss/QBMQfxX
LFQ0mAsxNGxwy+JzajxBaTYd4nSZ9V+UpEdB9MO1bbo0SXiYBcDtCPU56aOKHYag
GC6BKzZILWxdgMFwEaDPp+LkRAt4MD7WA+dfymnLdTl/I6Gdae97CdjeVnQokeJF
IOa8lazizcfwt55fLQoNKcxov9oxnPNy7sE4EOjkPw1AMBbWXW4h/ABzm2ut0bub
PDgVetkCBGTlWAxJZhvlt7dsDdh3CMPTnrOITTvLxnbq4cDgNYM=
=o9YP
-----END PGP SIGNATURE-----

--yrfjxuitfb5sxxwb--

