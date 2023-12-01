Return-Path: <linux-man+bounces-201-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 137D1800B4A
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 13:54:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 895A5B2116E
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 12:54:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5EDD25543;
	Fri,  1 Dec 2023 12:54:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S455FoSG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AC796FAE;
	Fri,  1 Dec 2023 12:54:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F842C433C7;
	Fri,  1 Dec 2023 12:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701435289;
	bh=P2FL1X4NYqxVthjCO0D7cIJ1azpBuuilQifHoY07bP0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S455FoSG61mKUZ0is+keMFfTLXDjVj5qHdJSdCDuJtnfdhFd59umsj0Qraz5QUSwf
	 O6xLSMIAtj/keM3GF1GIivC/TU6Dz1lhO8uvti4aWfevRwetDFrKS4L6WfnITjiY9r
	 5Ywc47VF4aDh6p9t83rUERypvudy9l81ny9AVYEDVdMiFv1TPr83s+a34e2CIVgW/m
	 bhMDCWTGCjh5W6nJ6d+ldXEhFKWdFXKw71z3QSw2VnU7dkhSm3yuloFGvlgKfJCReq
	 blm3J23UZ3MDH/elWzVMsT+uEi0kbNHkePaQdeaWVWZyFhXN+IFcUbBzjkRznvbY4y
	 UTMCDmQhwORMA==
Date: Fri, 1 Dec 2023 13:54:39 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alexey Tikhonov <atikhono@redhat.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org,
	netdev@vger.kernel.org
Subject: Re: UNIX(7)
Message-ID: <ZWnXlcsVJfPO1Qsb@debian>
References: <CABPeg3a9L0142gmdZZ+0hoD+Q3Vgv0BQ21g8Z+gf2kznWouErA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iLiW9yrc7Uo/hPBs"
Content-Disposition: inline
In-Reply-To: <CABPeg3a9L0142gmdZZ+0hoD+Q3Vgv0BQ21g8Z+gf2kznWouErA@mail.gmail.com>


--iLiW9yrc7Uo/hPBs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 1 Dec 2023 13:54:39 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alexey Tikhonov <atikhono@redhat.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org,
	netdev@vger.kernel.org
Subject: Re: UNIX(7)

Hello Alexey,

On Fri, Dec 01, 2023 at 01:16:27PM +0100, Alexey Tikhonov wrote:
> Hello.
>=20
> There is a discrepancy between the man page description of
> 'SO_PEERCRED' and real behavior.
>=20
> `man 7 unix` states:
> ```
>        SO_PEERCRED
>               This read-only socket option returns the credentials of
>               the peer process connected to this socket.  The returned
>               credentials are those that were in effect at the time of
>               the call to connect(2) or socketpair(2).
> ```
>=20
> This doesn't match real behavior in following situation (just an example):
>  - process starts with uid=3D0, gid=3D0
>  - process creates UNIX socket, binds it, listens on it
>  - process changes to uid=3Duid1, git=3Dgid1 (using `setresuid()`, `setre=
sgid()`)
>  - another process connects to the listening socket and requests
> peer's credentials using `getsockopt(... SOL_SOCKET, SO_PEERCRED ...)`
>=20
> According to the man page: SO_PEERCRED should report (uid1, gid1),
> because peer process was running under (uid1, gid1) "at the time of
> the call to connect(2)"
> In reality SO_PEERCRED reports (0, 0)
> Reproducing code is available in
> https://bugzilla.redhat.com/show_bug.cgi?id=3D2247682
>=20
> I'm not entirely sure if this is a real bug or rather a  poor
> description in the man page, but I tend to think that it's the latter.

I've CCed netdev@, since they probably know better.

Thanks,
Alex

--
<https://www.alejandro-colomar.es/>

--iLiW9yrc7Uo/hPBs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVp148ACgkQnowa+77/
2zJQ2RAAqk/Ru/IR6r6G21jdLgAsbPRMR4TDQcFdPq1oci+Hgzzcn+K6QATiPW/W
D9a7UKSJHaYaZeaxLFZS/QO5Wwp+SeP0PmKFqFcTnJLfKKnRnP8sfwSI1zCp/X8i
uzzeVbEfZMbED70uKoLioJ/dZQbLyG9M6u8wLRQVWTIJv641wuYWfKJQI74dU4Rv
6ymu9EB6rrqwcZwctyK5c88Ldu4vYLux2JmNPDSIyi34c5R6a4GWJuVldem7yHDm
YJ38K1U2YnrThRy9PXsw7CRkgaegwYqYK4838710vleLFcmMC5pIDGlmBfX+PJ0B
g9F21OICYBFNqMzEXNANEO2vM8wRN+dUagnUCp27S8kmtVeJoO1JCLN3VsS58yWR
vTUqZuLG9i0mo2gGjaWFdeSF9J7wpvymVfXQJ41ehWi+XnYpqmbyOlzyA5lbX+ej
hPI0Z7IrClOePKXOPHNFdXI0egkhHDJEtmCDlNQzl/CO52Ef7qm3cbMZ8v+gRRrF
rPR3v7N4eOfbUvLZIw+6P2W+JAV4tvBXhDWDP1jw4qoVW/Bzmm+gMk2136W2Vq8N
5WH4u1oPuRH9hNkhtOCWbL6RSgDNvHZBoK1H5PM0tvm+AaD1G+mfg444NcMnSRDY
YdQNew3UNIuyEa5BnGYu7NmFFPmsivu/koXbHdhppSmHk+igWWM=
=77os
-----END PGP SIGNATURE-----

--iLiW9yrc7Uo/hPBs--

