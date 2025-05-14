Return-Path: <linux-man+bounces-2924-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D86AB7471
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 20:36:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4FF61755DE
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 18:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD56A286D50;
	Wed, 14 May 2025 18:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFEyPEPy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 794E92868AC;
	Wed, 14 May 2025 18:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747247763; cv=none; b=S17kghtk7RpugArzYKHOExKJlPCtNIFHtExT8r/0ZlmzxGkbZ+GjGHzAeYW7Yyx2dUl+N0hRe2b81TXhPA9WGfIIZ5/NclKGMU7drvzT4dgAAlpKdefaPUJkXkI3QTc8iP8EjVI+R42P/Br5G4UM4YWJ0+sykW7LgEX1Oa8EjaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747247763; c=relaxed/simple;
	bh=GI6GV8zDIzVOjtLbHyquzeknCcpj5W9CpPsYjq4PvkU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HrIB1na04J92ItdPTdDj2LGKueeZ9pmH83tYrmj3WS+IYEfWrcSw1RQS/Kc3bo/8qQtCMKRhGeICN7cslzru9en5IXYSrl7ZicUL77yErzoBiwimICN0i4nXTXEJbSyfrYi1hNz9oNMr8u8Pp1Mr4Y+HTwB54sS8S76jAcKlvuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFEyPEPy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 082F6C4CEE3;
	Wed, 14 May 2025 18:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747247763;
	bh=GI6GV8zDIzVOjtLbHyquzeknCcpj5W9CpPsYjq4PvkU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RFEyPEPyPQShQEyw7OO65b7wRiCkFyPD4qO5J8476xB+ZF0W8QcKubvwS8mlCXBA1
	 nym/QsVGIx6lSZJ+cfzCdtBIULFlX1MxgFiynWX3+CiRY5D08w9WEhS5a/6vhnkH22
	 1JEm8Zdl3werjDFztltg+n/5Uc5xZPZa7ueA6F23db7KK4Pq5KlIi/61Qutf7zkJ3S
	 I0dmaSeswWLd7QjUg236A/nrPoyTaSld8gzTCVTrcz4jHg4NtuwLoRV835fbFyKSfa
	 vpVx/RQikuLb5ASnnmm70sXM9E9x4cWWBot4f8gfykVoUoLx+F/rElm62yIEeo9aTk
	 SwN1OJz73t3Hg==
Date: Wed, 14 May 2025 20:35:57 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Peter Xu <peterx@redhat.com>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Andrea Arcangeli <aarcange@redhat.com>, Mike Rapoport <rppt@kernel.org>, 
	Axel Rasmussen <axelrasmussen@google.com>, Kyle Huey <me@kylehuey.com>, linux-mm@kvack.org, 
	Robert O'Callahan <robert@ocallahan.org>, Suren Baghdasaryan <surenb@google.com>
Subject: Re: [PATCH 2/2] UFFDIO_API.2const: Add an entry for UFFDIO_MOVE
Message-ID: <vieccowqkugkj3zmeamlcwzbw6k4ezektgvpwinnc3cok3wjch@e6xx2momytki>
References: <20250512171922.356408-1-peterx@redhat.com>
 <20250512171922.356408-3-peterx@redhat.com>
 <sxwdi5itwngdermj4w77ycwgyes4x7yyfl7v66mxj7co4xm6xm@27aqjwxvh4qk>
 <aCTRaebpHZjVJHut@x1.local>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7aocn3ddjkiyj4pl"
Content-Disposition: inline
In-Reply-To: <aCTRaebpHZjVJHut@x1.local>


--7aocn3ddjkiyj4pl
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
 <sxwdi5itwngdermj4w77ycwgyes4x7yyfl7v66mxj7co4xm6xm@27aqjwxvh4qk>
 <aCTRaebpHZjVJHut@x1.local>
MIME-Version: 1.0
In-Reply-To: <aCTRaebpHZjVJHut@x1.local>

Hi Peter,

On Wed, May 14, 2025 at 01:22:49PM -0400, Peter Xu wrote:
> On Wed, May 14, 2025 at 05:02:57PM +0200, Alejandro Colomar wrote:
> > Hi Peter,
> >=20
> > On Mon, May 12, 2025 at 01:19:22PM -0400, Peter Xu wrote:
> > > Add the entry for UFFDIO_MOVE in UFFDIO_API.
> > >=20
> > > Signed-off-by: Peter Xu <peterx@redhat.com>
> >=20
> > Should we add the following tag?
> >=20
> > Fixes: d7dec35a3b19 (2025-05-01; "man/man2/ioctl_userfaultfd.2, man/man=
2const/UFFDIO_MOVE.2const: Document UFFDIO_MOVE")
>=20
> Sure.
>=20
> >=20
> > Also, I think the subject should mention UFFD_FEATURE_MOVE, or at least
> > somewhere in the commit message.
>=20
> I'll rename the subject to:
>=20
>   UFFDIO_API.2const: Add an entry for UFFDIO_FEATURE_MOVE
>=20
> I didn't know we need Fixes for man pages.

We don't *need* it (as you don't technically need it in any projects),
but it's nice to have.  :)

>  I'll also attach a fixes for
> the first patch for commit a252b3345 ("ioctl_userfaultfd.2: Describe
> two-step feature handshake").

Thanks!


Cheers,
Alex

>=20
> Thanks,
>=20
> --=20
> Peter Xu
>=20

--=20
<https://www.alejandro-colomar.es/>

--7aocn3ddjkiyj4pl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgk4owACgkQ64mZXMKQ
wql+Ug/9GTYACgiGC27vbkTq4/4Q6Kz/RK3llG4BN7VYlq/YvIYRyY7zyP5JV3H2
EtTF7EQrzUFUvLeJvTnOmOjUvevApLL9t9uBRoWLpnLnW/YfERgaXNymQmAVdDIb
ZM/09aw4w/cStT1OkjJtcoHhVKhTDkYiF7kvhYHeHhUB+HcvcsRoET3eoPG6k5cd
Xhe3r8LeHVbfyo2IAg4Ivhum9aPFcC2EN5vqLj8S2xLzWGEEoACYm4pnx3MMzRZL
SDTjtgfcjv+zo72C8l6Iyci7J9TZyG7KG/pRHEOtmX9BIKD2GYdVjpRe8Y+WJVgU
Tcz3ZQ3dl7/KzWnmPqZnoReYabK45hrkNtUA5cGlqttcqlUg8WmEgHo/x1aZUxuY
BEFzkC1bkHneD62uttkEBcyOfCqussJE9QbhgOqk2qgmgJ47VrJfqugRRL8V0yMD
5rTgexJ6awlt424LqP9yYFAPIm2SCoCLIzFuPwqdxiIS6RCjS+9yEKcgVlKkSFIz
8LiJPaS5HOxTiTX6WPeJ5UpiwXZeBL+881qphqWs5Gxj9k3G7DS5N6D4B/Ln+us5
qHdowcT8muY4eHY5JY3+4P/JXM68L3i33YFZUYegnUdEhsG+FMl9HUlaG2c4Hh2z
GpXhV8X7USFJX7ZHRJYRRer2YnynRa8m3Y5clFcZ9W1bBKW0OtU=
=StKk
-----END PGP SIGNATURE-----

--7aocn3ddjkiyj4pl--

