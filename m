Return-Path: <linux-man+bounces-2980-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EACABBC6B
	for <lists+linux-man@lfdr.de>; Mon, 19 May 2025 13:32:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3E3717773B
	for <lists+linux-man@lfdr.de>; Mon, 19 May 2025 11:32:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FBCE274FE6;
	Mon, 19 May 2025 11:31:29 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28A226C39D
	for <linux-man@vger.kernel.org>; Mon, 19 May 2025 11:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747654289; cv=none; b=UXQlO7AWIO6lPZzevYvH7kUbT8fdPYRX8Fv0JQ7H8mJ5PU3dnvqt99TzuNQZ2KW+1W19lpwFmn2Hi3oEWF067IV15Rw4B0lKfkmMpMFDVxbA4JAIEbNh7G5P6QuIq2Aio59MxLpHlUUjeQz98KhAo5DwYQRV0VSkoobICmcQUGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747654289; c=relaxed/simple;
	bh=yp8hy5/e802ETUSfpkDCa1yRzccPJInlid/V/wu7/qI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=L31Oidv2MD0mpDfvJ+JapVBeRgSpICpbwSTEQ+9hed/ivsF6+6m1tmeOexAOVtUjCjgC9U5TmRScEMyhVBtGYcYli8VsC4lAuw3VywQCcFQ9qu6D9ENT+fKagWObwKmhpnBrjLZrVt+4c66pBTntp5KDT6HqmEje2CPvfs29x6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from kona.localnet (pc1012350290.uni-regensburg.de [132.199.97.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dilfridge)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 48879343123;
	Mon, 19 May 2025 11:31:26 +0000 (UTC)
From: "Andreas K. Huettel" <dilfridge@gentoo.org>
To: Collin Funk <collin.funk1@gmail.com>, Alejandro Colomar <alx@kernel.org>,
 libc-alpha@sourceware.org
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org,
 Mark Harris <mark.hsj@gmail.com>
Subject: Re: POSIX.1-2024 requires 64-bit time_t
Date: Mon, 19 May 2025 13:31:15 +0200
Message-ID: <6402036.DvuYhMxLoT@kona>
Organization: Gentoo Linux
In-Reply-To:
 <CAMdZqKFyc=cNh-aQVLZ6ovEZurzqSREhY1gx8L0m27f2uS=smw@mail.gmail.com>
References:
 <zagbrxifsyor6bxzkqi7b66ixw3q67vez2nng7aqjpykkohph3@plmaq4pfz3yf>
 <87plg5hnb4.fsf@gmail.com>
 <CAMdZqKFyc=cNh-aQVLZ6ovEZurzqSREhY1gx8L0m27f2uS=smw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6671391.lOV4Wx5bFT";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart6671391.lOV4Wx5bFT
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: "Andreas K. Huettel" <dilfridge@gentoo.org>
Subject: Re: POSIX.1-2024 requires 64-bit time_t
Date: Mon, 19 May 2025 13:31:15 +0200
Message-ID: <6402036.DvuYhMxLoT@kona>
Organization: Gentoo Linux
MIME-Version: 1.0

>=20
> For glibc, all 64-bit platforms, and the most recently added 32-bit
> platforms (arc, riscv32, or1k), use 64-bit time_t.  All older but
> still-supported 32-bit platforms (arm, csky, hppa, m68k, microblaze,
> mips, powerpc, s390, sh, sparc, x86) currently use 32-bit time_t by
> default but can use 64-bit time_t with -D_TIME_BITS=3D64.  For musl, all
> platforms use 64-bit time_t.
>=20

Yes.

Gentoo is one of the few places where this is still relevant, and where
the upgrade path is also tricky (since we're a source distribution).

We are still in the preparation phase of moving all 32bit architectures
to 64-bit time_t, but nearly all pieces are in place now.

We intend to change the ABI part of CHOST, from -gnu to -gnut64, to
clarify that this can subtly break sytemwide binary compatibility.

[Not of glibc itself, but of other libraries that include time_t in
their headers somehow.]
[[This is not an academic issue. It broke certificate validation of
openssl.]]

=46or more details (offtopic in this context) please contact me or Sam.

> POSIX.1-2024 requires that an implementation offer a conforming
> environment that supports 64-bit time_t, but it is also free to offer
> other non-conforming environments that use 32-bit time_t.
>=20
>  - Mark
>=20


=2D-=20
Andreas K. H=C3=BCttel
dilfridge@gentoo.org
Gentoo Linux developer
(council, toolchain, base-system, perl, libreoffice)
--nextPart6671391.lOV4Wx5bFT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQKTBAABCgB9FiEE/Rnm0xsZLuTcY+rT3CsWIV7VQSoFAmgrFoNfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldEZE
MTlFNkQzMUIxOTJFRTREQzYzRUFEM0RDMkIxNjIxNUVENTQxMkEACgkQ3CsWIV7V
QSqZKhAAm/r++MISv9pg3IOX5IoHMcx0OsIk5ANAQbY6qzG2vpiLWMOG+HMPBjWA
HsSKMndOTahVxEOjPxvGgKXKaO+wsaIAJ/mBhU/PYl4K6gyq014RSWAzIxUoGW/D
bJMRafyHUQD+GPAI7W9eWaIzeMj2WVNVopVPYplnje3pYbBQmcPfWDLFG6gSSKrr
TIZgT5AWws5FaXUbIRNuJH5DXlkG4+dSQVNL9MmT8Y1sPJkBHMPyc3IjI65lyhv4
/+EX6bnX8emr9nAWKzy2GatsvdJFFF65PCjCsRq+FLp+O4sp1JMf7vIUnAe8RFdf
opPdgIbjtP9wS0854P9G+piJyafJqHblRUUZOqdLMxumzhyyE1yymNFNtzkIioUg
IT24AfmOYEFHvZ/Kol4300KTI3w+UfWuI+JTPmaojVe9b/8DBbyOQ/BzY5MzUAhS
7K+2bYGg/ySo3O4MPhtR+QALEUzBp+MnyYcIfyYLaM84cPAicRBvq6JQ/qXFzv6k
1woYO0Q0SaJbPEao6Ue31MiGCe9XrxA/4b88nbrNScaIndCBxJ+CmDfWnlehurNL
Pa1x6BsJ/JAm6XvhZeFE7US9NELygVjgvYxRVeFKzjBJShGDotlkxM87s/LHhXmi
1YN9pARYg/STnNevx0ik1P6V0Ua9IIYILwGtp0r+spEs0diC3AI=
=HLNc
-----END PGP SIGNATURE-----

--nextPart6671391.lOV4Wx5bFT--




