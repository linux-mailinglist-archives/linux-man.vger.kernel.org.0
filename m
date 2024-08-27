Return-Path: <linux-man+bounces-1711-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B5190960423
	for <lists+linux-man@lfdr.de>; Tue, 27 Aug 2024 10:15:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C97E2835B7
	for <lists+linux-man@lfdr.de>; Tue, 27 Aug 2024 08:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26F32157468;
	Tue, 27 Aug 2024 08:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvYeLa9/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D675680027
	for <linux-man@vger.kernel.org>; Tue, 27 Aug 2024 08:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724746526; cv=none; b=eJRtPt3JWuRVHIhRr+LTejYLvILTHAAGFrYUeHGKCiR40i1Ccoy3gnh19sZ0IxCN7rQejeZQN/R/CON9WLMQ8OzXqJV2o3+yRTa1Z5tStix+3EDNHsCFbjbwcK9M5eBkzj5DDCxWnFIcKaYRqfxPgakHSCBiQJ58FjAm0+K1ex0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724746526; c=relaxed/simple;
	bh=bnglRTdyNkldlltDUfeM2Y9G62uKF53Nvqj4kzRpWd8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P23w0vncNw3Kbk4lK7+sIm/8tuvP/8A6T+EEacLpKtamjIX3YeTcIFQf7mO0G0qNG0mg9zs4i3gmgbH5KtEFNEyhgjRvG4cc9hsxdL0YHmcnnTGmQeSoVDdGmQR4STph2bKMVqLLar6+D1TqlcAx7I4VHZKfBBWCoafn3E4eLNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvYeLa9/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5E87C567F0;
	Tue, 27 Aug 2024 08:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724746526;
	bh=bnglRTdyNkldlltDUfeM2Y9G62uKF53Nvqj4kzRpWd8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FvYeLa9/Zbui5s3WfWTMhj9TpsA88csCRrbM+3NQzFa6/i1XQuRnDBRId1Bbxmc8x
	 2P6w6SHGILALGD+S/Nf79W3ulMmN/HcbUhsKZPj2x4YgDy3uU9NQuEqx+mFAVXc4q5
	 rablvYDtKMmJ3IFb9lIc+rG/bsTWOdotiXgeJSlL9fXJylivh1CHXtNVMfzqovWsMJ
	 AYntiLyNAdf4AwnhjxgfpqzzcO4kVbh0835RZ8DPyyTWEhT8YppiEe3sDMRChOkVNX
	 09OIoY2ObWTpLsFXrHNjjocQhwQkS8JgIr1yZgSgFMM+O73Qf7M/NPE7pQCA1DdzA4
	 xkOcN213oAQlQ==
Date: Tue, 27 Aug 2024 10:15:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Absee Seeab <doesnt.look.like.temp.mail@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Missing crucial information in splice(2) manpage
Message-ID: <4xw464u2munxbgujopgfggxvnvgxa2b5lh35eriaeziapaa4uq@z6jmdim6f5mo>
References: <CAHeAhPS-Z1zV_2TX3T-FPcgW9H8DLafas9-GGUpr-pk-5zEzXA@mail.gmail.com>
 <utbcwylyt4dsx7ikfhv2vwbqedxmxlfivjih6nxtm424zba7de@5ctrj6xvegxb>
 <CAHeAhPR+G5k2k+nF18TqfAsMtP_pf+Gr9RQDLbotzQnATb_TyA@mail.gmail.com>
 <mztcfeqtqhzmw2bng7sbs3h3ym4t63hrlolcj7uctdkxy37yox@7uqjzipgst4y>
 <CAHeAhPRcRaxryqc20-XQNo-KPs-=8ObyrfW35w8Kyux+fwBOAA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="34uljdywlhupcx2h"
Content-Disposition: inline
In-Reply-To: <CAHeAhPRcRaxryqc20-XQNo-KPs-=8ObyrfW35w8Kyux+fwBOAA@mail.gmail.com>


--34uljdywlhupcx2h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Absee Seeab <doesnt.look.like.temp.mail@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Missing crucial information in splice(2) manpage
References: <CAHeAhPS-Z1zV_2TX3T-FPcgW9H8DLafas9-GGUpr-pk-5zEzXA@mail.gmail.com>
 <utbcwylyt4dsx7ikfhv2vwbqedxmxlfivjih6nxtm424zba7de@5ctrj6xvegxb>
 <CAHeAhPR+G5k2k+nF18TqfAsMtP_pf+Gr9RQDLbotzQnATb_TyA@mail.gmail.com>
 <mztcfeqtqhzmw2bng7sbs3h3ym4t63hrlolcj7uctdkxy37yox@7uqjzipgst4y>
 <CAHeAhPRcRaxryqc20-XQNo-KPs-=8ObyrfW35w8Kyux+fwBOAA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHeAhPRcRaxryqc20-XQNo-KPs-=8ObyrfW35w8Kyux+fwBOAA@mail.gmail.com>

Hi Absee,

On Tue, Aug 27, 2024 at 06:09:33AM GMT, Absee Seeab wrote:
> I'm not sure that's a good way to construct documentation examples
> personally, but here is an example program demonstrating that my claim
> is correct, as I agree that's useful for you to have.
> Feel free to edit it as you see fit.

Thanks!

I've rewritten it to:


#define _GNU_SOURCE
#define _FILE_OFFSET_BITS 64
#include <err.h>
#include <fcntl.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int
main(void)
{
	int         fd;
	int         pfd[2];
	off_t       off;
	const char  s[12] =3D "Hello, world";

	fd =3D open("out", O_WRONLY | O_CREAT | O_EXCL, 0666);
	if (fd =3D=3D -1)
		err(EXIT_FAILURE, "open");

	if (pipe(pfd) =3D=3D -1)
		err(EXIT_FAILURE, "pipe");

	if (write(pfd[1], s, sizeof(s)) !=3D sizeof(s))
		err(EXIT_FAILURE, "write");
	if (close(pfd[1]) =3D=3D -1)
		err(EXIT_FAILURE, "close");

	off =3D 10;
	if (splice(pfd[0], NULL, fd, &off, sizeof(s), 0) !=3D sizeof(s))
		err(EXIT_FAILURE, "splice");
	if (close(pfd[0]) =3D=3D -1)
		err(EXIT_FAILURE, "close");

	printf("New offset is %jd\n", (intmax_t) off);

	if (close(fd) =3D=3D -1)
		err(EXIT_FAILURE, "close");
	exit(EXIT_SUCCESS);
}

And used it as

	$ gcc -Wall -Wextra splice.c=20
	$ ./a.out=20
	New offset is 22
	$ echo $?
	0
	$ hd out=20
	00000000  00 00 00 00 00 00 00 00  00 00 48 65 6c 6c 6f 2c  |..........Hel=
lo,|
	00000010  20 77 6f 72 6c 64                                 | world|
	00000016


I think this is interesting information to readers of the page.  (And we
didn't have an example, so this is better than nothing.)

I'll put it all together in a patch.

Have a lovely day!
Alex


--=20
<https://www.alejandro-colomar.es/>

--34uljdywlhupcx2h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbNixsACgkQnowa+77/
2zKzVA/+K/TwsGn5hVHeajEiQs1bfG4wOuMNZxKm4uuKLcU5kYWbkC+ukMIY+H1S
SvzZ6sYvednjlhIRK8QhsoLJ/UdE6wR8RZ/z/zZtbrArI5HI8m0ge6CN/FElwF4k
+Gdt5YR//dJyW5CBxnWzP17b7bAlQPOZEeJFwhA48HVlLGZEKRLET8y0hlhS/8fE
4KuVxHJUlOalc+99wX9W8+6FqN1coexzyvrZPQmo+pS91cXXmrArpRordq418D5R
tVAFZirIICEj6TdSITL41J3+0Hokekd8XtkrSvKwl3/EJPIWQ0D4QlPqRBQD0jWm
VEhcoiBzw5tX9d+W88FtPWrtnFjqniGafRg7UVeOgKmSi7HkOkuxVsBCkKcRVpu7
PoJS1UuTKy1aR9sx6GWMBmiw4BvM3PTM5mR3CufNlMCCPjT6GJyYwjk9jv2jEaKT
ZWZhHeCwBGuG0QJwJC1Lvgim1miydJhgOsGp6NQAv77IzI9+uc/YmzVo153FmMeb
BSwc3cLL0ZFM4gh4S19NMVzx3SomWnqUULhXWDPCS9QioKuQvKPk+r2h1dnl2S9b
lLGOITrzSKNXu9CtO0MdlIcyp893ycGoZl3agfJaV0dHWZW4qX12kT+wrnb2k1x7
7F018n27gUZ4zU38KzWZWdw+LNV6Gr0MBNQIiBhokhHIzpzFOfI=
=943l
-----END PGP SIGNATURE-----

--34uljdywlhupcx2h--

