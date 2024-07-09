Return-Path: <linux-man+bounces-1421-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0211792C392
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 21:00:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2CC8B1C22894
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 19:00:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BF2912C801;
	Tue,  9 Jul 2024 19:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJf0MFdL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E20E81B86D8
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 19:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720551622; cv=none; b=cHFyS4XOUt/aTQFG1/7uj4A93vvuB704jF5dA8WMSwEYuIT13XzOapQjTAEbbbOX2rFuP8WtGUHKcTlgBdBsCB/CqR0IXSOPPJDxO8X8tt7aLiyJolUUHcXWOXRO8Oy64bhOP6d4GAjfkbxTZUP4EtpBjcdD630vqr32i8GRPOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720551622; c=relaxed/simple;
	bh=SQzogwN3yqL9lPT/TzhqG877CQ01/NIngAYd8MknEy0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pn6pumfZ2mAuGR9nOPVOMvQ0up41busxqfwZL2+JVFQe7a+aRF24YchxKgIfxFYq6gSnQGxCC+/LVplHosEjXlhZefUU1MwF5ij4dWNG69HmTmpsBFQZvmDS5mxxyq2B7YDL/Nch1522x5CLGILT0Opyq4U/mWanGvOe6sM2JGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJf0MFdL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17400C3277B;
	Tue,  9 Jul 2024 19:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720551621;
	bh=SQzogwN3yqL9lPT/TzhqG877CQ01/NIngAYd8MknEy0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MJf0MFdLXi6sVrKqGUR9h3ZTgqWE4kx6xVGklVjaAK+/31jQObM2k8Eagk8Zkzxe7
	 aBI65a9i5psKdwWf6iOF5N1P1aQHUNrIdeQwqoLa63a4vgSDu+ApDpoRjCmyBrWqQY
	 5cVTB9ikrXT30YBKe+wzVm/XSDr2CyFyShe2kEUOvlnmG/BEWwXMauWKTYoARyjB5j
	 0rhK9fS5fE1n+wPvZvU4f97LXCPPkE26Rt/0PRYIroOBefRjOti0bcwSCSfSc3aLKt
	 EXkXgOvQCnVaqYnZ/Rs2bPppCax1xvDaePtVAHcveEpigcSISivC9f+zMqeF4O4R1h
	 /zy1eB+qNkZpQ==
Date: Tue, 9 Jul 2024 21:00:16 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Daniel Plakosh <dplakosh@sei.cmu.edu>
Cc: "dplakosh@cert.org" <dplakosh@cert.org>, 
	Martin Uecker <muecker@gwdg.de>, Jonathan Wakely <jwakely.gcc@gmail.com>, 
	Xi Ruoyao <xry111@xry111.site>, Jakub Jelinek <jakub@redhat.com>, 
	"libc-alpha@sourceware.org" <libc-alpha@sourceware.org>, "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>, 
	Paul Eggert <eggert@cs.ucla.edu>, "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, 
	LIU Hao <lh_mouse@126.com>, Richard Earnshaw <Richard.Earnshaw@arm.com>, 
	Sam James <sam@gentoo.org>
Subject: Re: [WG14] Request for document number; strtol restrictness
Message-ID: <7x6vekxoocdtogh2pwpji5wrsoxkmz3f5mp65otcldp43zvozv@pb56k6tlywbj>
References: <20240705130249.14116-2-alx@kernel.org>
 <as2a3sc6di56zlbroi35lmpodwyyshyueqao2qa2c7cxoz5pes@brotew6b3534>
 <BN0P110MB13395AA2A20DF96A611111B88CD9A@BN0P110MB1339.NAMP110.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mxobp7yssjkdbgim"
Content-Disposition: inline
In-Reply-To: <BN0P110MB13395AA2A20DF96A611111B88CD9A@BN0P110MB1339.NAMP110.PROD.OUTLOOK.COM>


--mxobp7yssjkdbgim
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Daniel Plakosh <dplakosh@sei.cmu.edu>
Cc: "dplakosh@cert.org" <dplakosh@cert.org>, 
	Martin Uecker <muecker@gwdg.de>, Jonathan Wakely <jwakely.gcc@gmail.com>, 
	Xi Ruoyao <xry111@xry111.site>, Jakub Jelinek <jakub@redhat.com>, 
	"libc-alpha@sourceware.org" <libc-alpha@sourceware.org>, "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>, 
	Paul Eggert <eggert@cs.ucla.edu>, "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, 
	LIU Hao <lh_mouse@126.com>, Richard Earnshaw <Richard.Earnshaw@arm.com>, 
	Sam James <sam@gentoo.org>
Subject: Re: [WG14] Request for document number; strtol restrictness
References: <20240705130249.14116-2-alx@kernel.org>
 <as2a3sc6di56zlbroi35lmpodwyyshyueqao2qa2c7cxoz5pes@brotew6b3534>
 <BN0P110MB13395AA2A20DF96A611111B88CD9A@BN0P110MB1339.NAMP110.PROD.OUTLOOK.COM>
MIME-Version: 1.0
In-Reply-To: <BN0P110MB13395AA2A20DF96A611111B88CD9A@BN0P110MB1339.NAMP110.PROD.OUTLOOK.COM>

Hi Daniel,

On Sun, Jul 07, 2024 at 03:46:48PM GMT, Daniel Plakosh wrote:
> Alex,
>=20
> Your document number is below:
>=20
> n3294 - strtol(3) et al. shouldn't have a restricted first parameter
>=20
> Please return the updated document with this number

Am I allowed to retitle the paper?

  n3294 - [[noalias()]] function attribute as a replacement of restrict

Sorry for any inconveniences.

Thanks,
Alex

>=20
> Best regards,
>=20
> Dan
>=20
> Technical Director - Enabling Mission Capability at Scale
> Principal Member of the Technical Staff
> Software Engineering Institute
> Carnegie Mellon University
> 4500 Fifth Avenue
> Pittsburgh, PA 15213
> WORK: 412-268-7197
> CELL: 412-427-4606
>=20
> -----Original Message-----
> From: Alejandro Colomar <alx@kernel.org>=20
> Sent: Friday, July 5, 2024 3:42 PM
> To: dplakosh@cert.org
> Cc: Martin Uecker <muecker@gwdg.de>; Jonathan Wakely <jwakely.gcc@gmail.c=
om>; Xi Ruoyao <xry111@xry111.site>; Jakub Jelinek <jakub@redhat.com>; libc=
-alpha@sourceware.org; gcc@gcc.gnu.org; Paul Eggert <eggert@cs.ucla.edu>; l=
inux-man@vger.kernel.org; LIU Hao <lh_mouse@126.com>; Richard Earnshaw <Ric=
hard.Earnshaw@arm.com>; Sam James <sam@gentoo.org>
> Subject: [WG14] Request for document number; strtol restrictness
>=20
> Hi,
>=20
> I have a paper for removing restrict from the first parameter of
> strtol(3) et al.  The title is
>=20
> 	strtol(3) et al. should=E2=80=99t have a restricted first parameter.
>=20
> If it helps, I already have a draft of the paper, which I attach (both th=
e PDF, and the man(7) source).
>=20
> Cheers,
> Alex
>=20
> --
> <https://www.alejandro-colomar.es/>

--=20
<https://www.alejandro-colomar.es/>

--mxobp7yssjkdbgim
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNiMAACgkQnowa+77/
2zKj8BAAg5YliQPC9RCsu0lAgwHPDqXhh7D3e8QcJq7h5cWBO3HdJa/oHiio3JLx
TAS7obCXsyNBBCw7ZfzGA+gP3HY3ixvn2ZA8dPveUR3vva5VhNYcnxlgWsZaipOt
2S2u9CiS033kbaZ6rEzDXcO0YCUwGEYGygQMevOEjJKz3pJLDjKi/Jl0aU+1f7JA
2DLhHkw2AfymdSC8TrRHS8bMjgFjBp/3hclL0ZVmHwk+S5tCpYNU0XOPG4aX18W0
QkdcFVIVaJwAdQ5ARukQQWx7me6mLBJmBKki1/7vRjmS1Cc9d5TIh99EY+urVQPt
RvMpWP2f/cgkkulI4yAFSONnmDFBoKzSkMRUQzFtBadvzLG+52m0+ahty9bb24sb
3uwYPT9z+9ntV5zMZIlIJOiw6GMrw+orTXdtk1n96yyNZUDjIf42O/pZ62n0nabP
RrRTMdUmgrY6SEH1wB8HsM4TJvWazyXxFeK1oD3xcnOlFFbdDD+EpzUjqU7hWbKR
CswXYkluvZkX0JmoTJLzFvvTO0wc7H6Er4BptETImuIst0g6YHPs+Gl4HESo5cK1
Hxj2Y/5lydheoiTFfmEil6sVstUjtF4Hgc/7jpl2GA76/gWJ29WRGdgjjznWPbPf
8Vni+X77Ezu8xFsEcWFObaXaPuO3bk357WL6BBDY6bt5ty19Ees=
=98Wv
-----END PGP SIGNATURE-----

--mxobp7yssjkdbgim--

