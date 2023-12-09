Return-Path: <linux-man+bounces-238-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECED480B415
	for <lists+linux-man@lfdr.de>; Sat,  9 Dec 2023 13:00:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A815B1C208BE
	for <lists+linux-man@lfdr.de>; Sat,  9 Dec 2023 12:00:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F4AD14273;
	Sat,  9 Dec 2023 12:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxShfv/6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B72748C
	for <linux-man@vger.kernel.org>; Sat,  9 Dec 2023 12:00:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21FA0C433C7;
	Sat,  9 Dec 2023 12:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702123211;
	bh=uK4bSG0aztpXRrwICTWu7aQxRpyKDqFbVD2A/Q/F1F4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DxShfv/6gwA2DK0srecK5Q4BjNiSK2s1e7oXDBefPoIkz+UDkMzpfuh9tNu3uDlDK
	 ggHF59icA3q762Y4FCq/GWXjCYO5Cu/c2WkiLj6L4r5pGRezjtHimTuFal4XX72snl
	 bE+bju9CcNcKb48MZYhVTPJ6e21GTnN7+gi1YM8oarRr1bcAErW2AZ4PNsIy7mtH6W
	 7MOfmtFuNu0e0IivFOvp7iBhKoqp1fUDrrp5OkH7L+YQlXryKlB0DkYUv3W2cUdYD8
	 JCq8B72L5yOZB1WQDCKXSIchmkXuMt7a4mGB4Z0KpozPAMdzCPdrCG1y+MRqn1EnQ8
	 qcXIgOeYIHeBw==
Date: Sat, 9 Dec 2023 13:00:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Renzo Davoli <renzo@cs.unibo.it>
Cc: linux-man@vger.kernel.org
Subject: Re: utimensat(2) and faccessat(2): man pages do not mention
 AT_EMPTY_PATH flag
Message-ID: <ZXRWyMQh2_uV_U_1@debian>
References: <ZXBVJ5phq4tK1fWq@cs.unibo.it>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="epADeP5ZR7LYS5F9"
Content-Disposition: inline
In-Reply-To: <ZXBVJ5phq4tK1fWq@cs.unibo.it>


--epADeP5ZR7LYS5F9
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 9 Dec 2023 13:00:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Renzo Davoli <renzo@cs.unibo.it>
Cc: linux-man@vger.kernel.org
Subject: Re: utimensat(2) and faccessat(2): man pages do not mention
 AT_EMPTY_PATH flag

Dear Renzo,

On Wed, Dec 06, 2023 at 12:04:07PM +0100, Renzo Davoli wrote:
> Dear Alejandro,
>=20
> utimensat and faccessat support the flag AT_EMPTY_PATH since Linux 5.8 but
> this option is still missing in the man pages.
>=20
> (actually Linux 5.8 added faccessat2: glibc wrapper for faccessat
>  uses faccessat2, and faccessat2 does support AT_EMPTY_PATH).
>=20
> I think the standard text used in many other -at man page could fit
> for these system calls, too.
>=20
> AT_EMPTY_PATH (since Linux 5.8)
> 	If  pathname is an empty string, operate on the file referred to
> 	by dirfd (which may have been obtained using the open(2)  O_PATH
> 	flag).   In  this case, dirfd can refer to any type of file, not
> 	just a directory.  If dirfd is AT_FDCWD, the  call  operates  on
> 	the current working directory.  This flag is Linux-specific;
> 	define _GNU_SOURCE to obtain its definition.

Thanks for reporting that.  Would you mind preparing a patch updating
the page?  If you need any help, just ask for it.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--epADeP5ZR7LYS5F9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmV0VsgACgkQnowa+77/
2zKWDw//S6ch40w3Hsr94/hPyK7UDmv/SwYGeirhKoAyPx7eXmABq/m0CXtVev+d
QkQtzG/FYWmoa3nXWgSWnOHlqWzbzMpz879Pm086U/vynWLyHq5M5DY6VC+5+Esj
LiXfaM8DFXu5/od2YHzyP2i+YHUeVU2J1ilQE99jYWF4uvuEkzXvucu9PenVCASz
Dxaib4IPE9SSE1RA83E5tLgyEYV96jvqXgv3PNg2kRdQ+6IXPqsPp15/7GGWMFem
C3OQ1Krd6wZWyDunbhx5I+UGK2tnjeL7ik7N6d8kRqpnvoxH7U5ibZVoJJw18Gtf
WQOzckq4jdVCwefLf3WkBNT6pK53sHDofSQYp1OW0nQ811uFa9DKUOQUgYlu17a7
p6pu0bVwj9HHgnX/S2dAoWTNoB4+EhzfWF7vxMFXhpNrJ4d6oRnaOt/oVxVwTbFE
kJF3+fgMMUcLsfBu4NKPy3Rc+0AztPdxNG2O1U9hGRh69D7JCYf0Y3JitAW04BLe
iMgUhvz+gkgb/mVml3c7PDxMn6iym4FtgwSuEghECe94ht7snmhmEP8U9myeFFU+
sqlU6U8Qy3G8/BuicT1WjuuaCmBo2UySRrgrooOdBtyZgbspFXOEMM25g8DcFtMD
u/ZHYqsrVGQVYTmHwbUG+xJZ9BjRnBmv9XSVzcq5L5zchVHQDe0=
=GHpM
-----END PGP SIGNATURE-----

--epADeP5ZR7LYS5F9--

