Return-Path: <linux-man+bounces-3007-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B73AC30BE
	for <lists+linux-man@lfdr.de>; Sat, 24 May 2025 19:46:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DA523A3327
	for <lists+linux-man@lfdr.de>; Sat, 24 May 2025 17:46:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C4CB1AF0B6;
	Sat, 24 May 2025 17:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3zSeMI8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B64B13B293
	for <linux-man@vger.kernel.org>; Sat, 24 May 2025 17:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748108788; cv=none; b=ghrn+29Yr1XhSpaD8Pl5dMTgAD8kj1VX25pfy0o/eJxUZxe9PsEzX6XXtDdAqPzBY1ueBM9PRv4DtzTsa+l7GGunHUqWzqF9tj3nMd7Kxp0oUSDmckf25sD977msST4pHoEcK0Ja5/FqXWB1p9um4y8/14/1yMLQksYQLjiNJ3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748108788; c=relaxed/simple;
	bh=rRj7kco2zaOT4iT8Dy5tAZMcbfW496T+dMvFvNLO6J4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fNjvTjHaaqthDr2eQF6n9+thsixAqSrQppNsGrcUHkCw9RqWW1bhwSkDdHD+g/HTTEfunP7mgDhMv/B9gv/0ixEhXI1MdiHHAkqGobquOK4n0TkmFwVsS0Jx8lPTPChlpak12zSbZSzO1e2bELtJZBLo0WQ41OazxVVM+ima3eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3zSeMI8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 197A9C4CEE4;
	Sat, 24 May 2025 17:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748108787;
	bh=rRj7kco2zaOT4iT8Dy5tAZMcbfW496T+dMvFvNLO6J4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O3zSeMI8Ri+lxewYYQeQKo7cRPVz0RvdyOZy+O622YxlafsO8GIKWbsBqmsri/sCg
	 UGpucdoa63kqFCXLGCI0dn5mJ0fhSIMkXQOn3+UXFKlVOWd3FzXCSBvXoHnQzgAY/I
	 9bt9oHPGgX/OUblFtG6haimTKILV26aNC7ZijjRZwRy1hC+YOYvREmo4FwJXHsudxN
	 QGJB02vqvssZPRoDqrvXBtoVE4pejuR9zxzh5CKtTkY7X6KWFIcaTSOCVxqhaOJjnR
	 NlAzM1sHF9jgHs2xTVQkcBburCYcibT4wEcRVr5yNuwSRttJonAMshXKSM72qJS9YV
	 C3/RcgSClF7hQ==
Date: Sat, 24 May 2025 19:46:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man3/getenv.3: Mention secure_getenv was
 standardized in POSIX-1.2024
Message-ID: <6gn7aezjtxeyydu6wdawyr2utnipgzebrvyhtwperf5icweesv@366w73bfkuiu>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <f1cc4b34bb42b09ae9c0820df8fdece6fcebfcd8.1747515178.git.collin.funk1@gmail.com>
 <ationx4kn5f2d5b76ayyufnjakuy5q3pkgmgq7fagwgakfitar@5l6ty5ftdsrg>
 <87v7pznd4a.fsf@gmail.com>
 <aqq7gag27u7kwnltq4zumzjk2wvlsevbevm5lkgr3m2x5rhowf@hdufz4pmli3q>
 <87msbaop79.fsf@gmail.com>
 <cvljded6h7v7vqpu23hdx2f4wl5smsbqsvbkrxjg6nf5sikwhs@42plwr5rowkx>
 <87v7pskob9.fsf@gmail.com>
 <ydg3rotetynkavjxl4tg6piizlwgoohh75b3fghnkv24yrhnfe@s3fjptbq4gs7>
 <87sekvvx8m.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aff7ehovz63ghuuc"
Content-Disposition: inline
In-Reply-To: <87sekvvx8m.fsf@gmail.com>


--aff7ehovz63ghuuc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man3/getenv.3: Mention secure_getenv was
 standardized in POSIX-1.2024
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <f1cc4b34bb42b09ae9c0820df8fdece6fcebfcd8.1747515178.git.collin.funk1@gmail.com>
 <ationx4kn5f2d5b76ayyufnjakuy5q3pkgmgq7fagwgakfitar@5l6ty5ftdsrg>
 <87v7pznd4a.fsf@gmail.com>
 <aqq7gag27u7kwnltq4zumzjk2wvlsevbevm5lkgr3m2x5rhowf@hdufz4pmli3q>
 <87msbaop79.fsf@gmail.com>
 <cvljded6h7v7vqpu23hdx2f4wl5smsbqsvbkrxjg6nf5sikwhs@42plwr5rowkx>
 <87v7pskob9.fsf@gmail.com>
 <ydg3rotetynkavjxl4tg6piizlwgoohh75b3fghnkv24yrhnfe@s3fjptbq4gs7>
 <87sekvvx8m.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <87sekvvx8m.fsf@gmail.com>

Hi Collin,

On Fri, May 23, 2025 at 02:22:01PM -0700, Collin Funk wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > Hmmm, I applied some patches while traveling, so they're probably still
> > sitting on my laptop and I forgot to push.  I'll check this weekend and
> > push anything I have there.  Thanks for the reminder!
>=20
> No problem, just wanted to wanted to make sure my patches weren't going
> to be annoying to apply. :)

I've pushed a moment ago all of the patches I'm working on about
POSIX.1-2024.  Those include mine and yours.  They're in the branch
'posix24' in the kernel.org git repo.

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/?h=3Dposix=
24>


Have a lovely day!
Alex

>=20
> > Have a lovely day!
>=20
> You too!

:-)

>=20
> Collin



--=20
<https://www.alejandro-colomar.es/>

--aff7ehovz63ghuuc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgyBfAACgkQ64mZXMKQ
wqltwBAAqAVRnPaVZVqvwUWH1UWiT0kp0/gj8iBuEsSIwYEczmIWGEmAhVTfR/ci
x9LXhEfMx+EnBgtjuNUMEMkG6uau07U0LQPuAw6QtAk9DCkCEgxUv9rttdmJA/Qv
GLzvcFkbI6/Lhk5ckJcEX92FBBqMgN6h4XOlHqT/d0qKWak0W6brlwfJvO1F97TZ
+QC4BIhGTCKpjXDN6W1DJOKjLuf4cv65tRwWwcb0T4j1Sgh/YO85LO8bXYlKjTYN
Wcsmto24TqSkWPzmXRWN1Zg7dGcj6JtayPo+gTE/aZ+/Vr94INAzyeHYP7lD7hPa
TtpDQRB0r7y1I1yWhcGUmB7CpZ3U1AZWZcADoHm+X5N4qkgZqz5uvTE2V7qeYGrv
2HwPw4i4DX/qoyiZCFhXIB0QX6V8bK8IXdC302FUbTl5ELDI1mdMZzxShBitqhDU
Qh3wQ6vbIlyq/VlqH3AEH9ZGQA1HlVD7IOxwYYnB3UIl8PXY1ZMwnISbKHBq/rUV
a0WOJ3zZt47Ju6pAttK8TOhWeN6g3CMOHZqwF+ittCyNx+eM5XZ1/GwYDqhMBZHm
XYmn8Y9myiLz3OPz1BWyl0ZlsbMrdovHL9wivBbaT160Dv+iPjafH4HeOfgxKA8x
JnDuwkddvUcDR/oRirIwwzo9SLDzyAZQzJdbnShUkvBlasIPZHM=
=VWlN
-----END PGP SIGNATURE-----

--aff7ehovz63ghuuc--

