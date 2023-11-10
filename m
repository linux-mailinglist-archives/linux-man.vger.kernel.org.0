Return-Path: <linux-man+bounces-21-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CD27E8314
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 20:52:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 01B671C209D2
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 19:52:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F82E3AC3C;
	Fri, 10 Nov 2023 19:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pg7yUROd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DE93AC12
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 19:52:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 610E4C433C8;
	Fri, 10 Nov 2023 19:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699645965;
	bh=MdeUO6rPmvMhb8nbURLzWQtTQkG7y1kZUa8CA9tD79c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pg7yUROdKQofWIVniyguU0IbQsrYD3Kb3UC/kbvOGx24fy7YSUDwQA647oWGASvl5
	 RWcQd2dLvDY/hQ0wGkVMKanl4eSnzsMo/vwpZG5a/Wt5yLNIyRw3dLOeRa3j7NM3vq
	 tjkzdADNoTcl7d+ln7upXHwQvLlXEWiEj6CU3zKx1HMn3cIPIQ5OrXZCqfwT2p4pWj
	 slyeav/82m/Q+i5pBjPyuI6zNVE1WVs4ms4Lpggcd6ykxq78TBKJWGqnAXmI5PEUd9
	 lma8hWJH/eb2mxdBMWrVdwqhCtBIiUwF6FLk2rmJrb2MP54auivg2ytqUZcgLGrxCB
	 t4XJWLXHpFH7g==
Date: Fri, 10 Nov 2023 20:52:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZU6KCkN1-dgszJJy@debian>
References: <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org>
 <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu>
 <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
 <ZU4OgiVSyM98EHVN@debian>
 <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HWiOL3lvlxuPSgQF"
Content-Disposition: inline
In-Reply-To: <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu>


--HWiOL3lvlxuPSgQF
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Nov 2023 20:52:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated

On Fri, Nov 10, 2023 at 09:58:42AM -0800, Paul Eggert wrote:
> On 2023-11-10 03:05, Alejandro Colomar wrote:
> > Hopefully, it won't be so bad in terms of performance.
>=20
> It's significantly slower than strncpy for typical use (smallish fixed-si=
ze
> destination buffers). So just use strncpy for that. It may be bad, but it=
's

Do you have any numbers?  I'm curious to see strnlen+memcpy vs stpncpy
for buffers of some typical sizes (say 80 and BUFSIZ) under amd64 and
arm64 (two typical archs).  Are we talking of 1%, 10%, or 100%?

> better than the alternatives you've mentioned. You can package strncpy
> inside a [[nodiscard]] inline wrapper if you like.
>=20
> More importantly, the manual should not push strlcpy as being superior or
> being in any way a "fix" for strncpy's problems. strlcpy is worse than
> strncpy in important ways and besides - as mentioned in the glibc manual -
> neither function is a good choice for string processing.

--=20
<https://www.alejandro-colomar.es/>

--HWiOL3lvlxuPSgQF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVOigkACgkQnowa+77/
2zJfDw//elH6c1TsyYmYp3NOB3PicyzxUAyYS06vaKAqORWaWpTuG2gDR+Teseer
pHqc9ldjrPAJUiKNy7OiBsWf6Tiafq/PUeKmOjcHwWQYPFJ8R3lLs6YTxUNmuZEZ
YUQwK8HM5syL4lWEAR5Hp6xcsoCkWfe3IRdStJQaaeGGgFtK0+QkJCKFADriHHeb
bPVeEX+5+qVQlNY26tR7GiBxg7MLNiAdM8hM8gVEyvITwyaZMXQSskuHKS6qjHLR
L4yukPHv4daxlTasJlH6z2vPiFwM/tc0gp9uko7mTNR6qeAhggOFsWY/vSk/RR2Y
ylqoee1w47P1VzOaXTUtyLDKJ3v3FdOlnozHzzlau24YWdXVnP5bDINMRyXYPW5n
UtM/9WlGmodwUG6kGSx+Q09qNUTS90GIxKFCQ2gg30ftnEZJ499NO1/hbKUOBImg
gS24tTtArnnTNLyNjS7tEyMj5fATeKQ0noV+VnrIB1ZI1ekc529KcMBTBbhYS386
nJa1j9Tp7k8fGgt9cPHDrsMHmYDS0yBfHtlBkexNdZMIEsHXK9Hn7hNLPjS6Uh38
43tEOMZ5y5LVCOmqUrYYL7PwP3uvxwK5717K+9q4h9IRTBwpdPPtzLPk0ZQwEvg4
GZKEfijoFCOcDdWEku8mXug4GXm1FlAcaCxQwuBFSYWVdT91I/o=
=8PIb
-----END PGP SIGNATURE-----

--HWiOL3lvlxuPSgQF--

