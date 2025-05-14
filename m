Return-Path: <linux-man+bounces-2916-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B28AB6EC8
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 17:04:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C1DBC7A3849
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 15:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ECE6253958;
	Wed, 14 May 2025 15:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhnHHmq5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6A81C5D4C;
	Wed, 14 May 2025 15:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747234984; cv=none; b=pOrYD4BKmhQuwd0i79WGXl8QMYLAZQCfSgLPxXknBzZB+rey88mzA6J1vamS1HDqaqnKEVRAfRBCG8qizDGyd4G0XuIQi6EtN4WinfPM8+MqdTzFEaarWn4eUE8EYDr09i4WwovbNAg0HJbHqGoU5PLus54mzr4OqUDL7PrtsB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747234984; c=relaxed/simple;
	bh=NVTeZvfxf0TTJ63mEFLn3cG2cWZrBFw3VUAXHUbszm4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bp0mGUpIMy1YjGED5srYUe3WR2oH+btqOeTshZ9E/cOc5Bvzlh9dSGVtRLo/aqqL7p2t/XSa5HaA44XTRjf5bYNweTw9e21AyqMbXTBLaDIzQDObAR/bZGz4uXfisBOE0rJOJs8CTJg9eJuIffkN2562yRuRlZB8/Ei2GZ3p5Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhnHHmq5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25A6DC4CEE9;
	Wed, 14 May 2025 15:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747234983;
	bh=NVTeZvfxf0TTJ63mEFLn3cG2cWZrBFw3VUAXHUbszm4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AhnHHmq5MDDYmKUdS8eKOXml59H0suRwaGsL2hAi0Ck9P42Jik5n3hudxYgcSmyTY
	 qAWD/oAtR1TZh6f+ZohlCXlio6mU796xPt7bTCuxNRYOZY2X51SFCcGIG4ZBzoa8z2
	 T6NzxNzDs7I6gl6a5ADsfDseUKsHk/D4Cu7CeBCj6/NmDdtaIFhWm4wzbdAmJtDEOl
	 5bII2eQxMLWCNQcbM+48H+HpoahrpZjZxZw91ekhtK3y5INJuQYY6BhSPUcOiUFQY8
	 BvZGBFWTjIHptbPHhD+dlZuXbRuqMs8wOYs3tpYz2hFmgRBvRZtXirRfD9KZ50ZtXL
	 wZFYkh1aiD41w==
Date: Wed, 14 May 2025 17:02:57 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Peter Xu <peterx@redhat.com>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Andrea Arcangeli <aarcange@redhat.com>, Mike Rapoport <rppt@kernel.org>, 
	Axel Rasmussen <axelrasmussen@google.com>, Kyle Huey <me@kylehuey.com>, linux-mm@kvack.org, 
	Robert O'Callahan <robert@ocallahan.org>, Suren Baghdasaryan <surenb@google.com>
Subject: Re: [PATCH 2/2] UFFDIO_API.2const: Add an entry for UFFDIO_MOVE
Message-ID: <sxwdi5itwngdermj4w77ycwgyes4x7yyfl7v66mxj7co4xm6xm@27aqjwxvh4qk>
References: <20250512171922.356408-1-peterx@redhat.com>
 <20250512171922.356408-3-peterx@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nidofqj76swi3rsd"
Content-Disposition: inline
In-Reply-To: <20250512171922.356408-3-peterx@redhat.com>


--nidofqj76swi3rsd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Peter Xu <peterx@redhat.com>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Andrea Arcangeli <aarcange@redhat.com>, Mike Rapoport <rppt@kernel.org>, 
	Axel Rasmussen <axelrasmussen@google.com>, Kyle Huey <me@kylehuey.com>, linux-mm@kvack.org, 
	Robert O'Callahan <robert@ocallahan.org>, Suren Baghdasaryan <surenb@google.com>
Subject: Re: [PATCH 2/2] UFFDIO_API.2const: Add an entry for UFFDIO_MOVE
References: <20250512171922.356408-1-peterx@redhat.com>
 <20250512171922.356408-3-peterx@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20250512171922.356408-3-peterx@redhat.com>

Hi Peter,

On Mon, May 12, 2025 at 01:19:22PM -0400, Peter Xu wrote:
> Add the entry for UFFDIO_MOVE in UFFDIO_API.
>=20
> Signed-off-by: Peter Xu <peterx@redhat.com>

Should we add the following tag?

Fixes: d7dec35a3b19 (2025-05-01; "man/man2/ioctl_userfaultfd.2, man/man2con=
st/UFFDIO_MOVE.2const: Document UFFDIO_MOVE")

Also, I think the subject should mention UFFD_FEATURE_MOVE, or at least
somewhere in the commit message.


Have a lovely day!
Alex

> ---
>  man/man2const/UFFDIO_API.2const | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/man/man2const/UFFDIO_API.2const b/man/man2const/UFFDIO_API.2=
const
> index 1c554107a..17ea6f905 100644
> --- a/man/man2const/UFFDIO_API.2const
> +++ b/man/man2const/UFFDIO_API.2const
> @@ -204,6 +204,12 @@ ioctl.
>  If this feature bit is set,
>  the write protection faults would be asynchronously resolved
>  by the kernel.
> +.TP
> +.BR UFFD_FEATURE_MOVE " (since Linux 6.8)"
> +If this feature bit is set,
> +the kernel supports resolving faults with the
> +.B UFFDIO_MOVE
> +ioctl.
>  .P
>  The returned
>  .I argp->ioctls
> --=20
> 2.49.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--nidofqj76swi3rsd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgksJsACgkQ64mZXMKQ
wqncdRAAsZOy2KyMvMv5Z9/V2yr1nO8j9UP7z1ByyxhBVlcMzzyuXVSIR/AQK0QF
iaGFAhSowNgMIuN8opxzarC3m84s/zt4WsbnyNXcnJeVk/QgrZeIWO/79yfVd+mS
3zF8WZlGrGMDpqBYwpnuAMNV8LL/tqEXWmb6HnbVf0Wuby+dg7AIkb1hVqU0BWaE
cQdj8uV0Lp5I7mR0JCM/Sp8008XnxSINcvxRFd5QUhNX4qWiPFYV6eTYwAIpnIMG
L028Vp972eBRUwFzdUBin+jg3ssBsjLE7LmPllP+lNEjLLASWUd/GJTRNEv10hbI
16cqSMupIh824qW2LlyrQqvtLU9YOt5T2ky5XZ8ShLeUUYtubIChm91AkuJhDAJz
LCJV/NoPzJr+wFCWRvhZ8m1IBDE77/E85x0R255rcJXw6Hj+fEemNs0kZQTJYlhH
LgW3iWSpTvMod7HF/ZMP6qNHswR7iO+Nyv7sKs5QZbX7qMN12QpUcT1Rj0ryFsuF
/Q6NIj9/bHZ7BDw8TJDm76L7v67rD/7S509Wce7VeYPLQioDPQMBlBdcOggRN20X
Z2NloDd7cX/X2FKxihxpTTyXGa/cImCFxO9EPOTi9xNs5lsCAXzVsKVuEbHfomHb
I7kK4tiyFriLUScWrzqWlSH/6QoqGNfA00g9XRWkKPB/quVYyws=
=ooxR
-----END PGP SIGNATURE-----

--nidofqj76swi3rsd--

