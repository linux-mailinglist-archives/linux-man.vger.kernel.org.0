Return-Path: <linux-man+bounces-2012-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 933919D0464
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:00:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5779F281CA8
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:00:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E45D1898FC;
	Sun, 17 Nov 2024 15:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyYp2ZeO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B75C12CDA5
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731855612; cv=none; b=O8G7cWxxFuP9mABbO4E4NsLlq8zoBsm2CJN5i1K81TfQCc9pSM7Bm0ixfJu4FuLhawofhDhU7UoDBav7BpsDL/P2nvPvkEh6yZdxsaV2ZuyGk+6Q37Nvk5kPAkmbXILGJDa1LWqii2F5HuAbxuj+T77ibb9ggdY+LQRXYDMvp6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731855612; c=relaxed/simple;
	bh=nYRsbcHpriuB2ts56FtSdz9fvAHj8LnyUD+vw2SD/WI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SwGRCC/rmBodJ4V0TqJvquhzTpeMPqThoAEcnzWQiVDZr+f+gGA4EQwczUshVSLLQFYeP4cpNQQITAg6u+PG/5B+gdQmf73xv5VYoDhM4gho6jfMc1MGISH7b5G3PBPRUALtE95DXGAQDCpZGOXL530WOLlgE1EaqAskjZVRMhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyYp2ZeO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F24E2C4CECD;
	Sun, 17 Nov 2024 15:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731855611;
	bh=nYRsbcHpriuB2ts56FtSdz9fvAHj8LnyUD+vw2SD/WI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NyYp2ZeOHF9dyB2sk2NZ06TG/PDcVyfExdNYr9/unLEaZat+FjVAUkviFGkrhrUpC
	 NXgpuey4rHC1Re2j57Xs6jZHP38PcJ8lQKbqqR0+bQ8aS9RxqX3keOWNLfB55omC8G
	 lalw30gY/KmZxnCWui6ZEg15STNg3VKtjjIUszQ0GR+pHnyG5PDJFp16S5tiIlDfk1
	 OfdvMMVa4ndU7J8Cn3Oen5n+V27ToZgoq67W/CvDrI13H11XGbdmS5G4SwBlZegDKJ
	 l1a+sJcdLoylaXcBKjJhnrmrgKwQlJV9B6RdWEcBDfC3wrAhehd1PB0MXmk7HGxSBG
	 B7yswOS7VYOkg==
Date: Sun, 17 Nov 2024 16:00:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page fmod.3
Message-ID: <zq7yk5hzycpaw5buxdoa5hikxxwh3nr4y7a6y5ekm577xdxbyc@q7pvwh5223jk>
References: <ZznJgeQZ-zy4v153@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3m3bxdhd4ri5mrff"
Content-Disposition: inline
In-Reply-To: <ZznJgeQZ-zy4v153@meinfjell.helgefjelltest.de>


--3m3bxdhd4ri5mrff
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page fmod.3
References: <ZznJgeQZ-zy4v153@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgeQZ-zy4v153@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:25AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    372/360=3D1.xxxx =3D> n=3D1 and thus as result 372-1*360=3D12 W=
hy is this 348? Running this in a minimalistic c programm confirms the resu=
lt to be 12
>=20
> "The call I<fmod(372, 360)> returns 348."

That was fixed in

	commit 346bb648cc963bd9f2c8b16d984cb49030faa05b
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Tue Jul 9 12:00:18 2024 +0200

	    fmod.3: EXAMPLES: Fix calculation
	   =20
	    Fixes: ce23e8188f8f ("fmod.3: Add example section")
	    Closes: <https://bugzilla.kernel.org/show_bug.cgi?id=3D219017>
	    Reported-by: Benjamin Otte <otte@gnome.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/fmod.3 b/man/man3/fmod.3
	index d6c76c7a3..13e0f2e8c 100644
	--- a/man/man3/fmod.3
	+++ b/man/man3/fmod.3
	@@ -170,7 +170,7 @@ .SH BUGS
	 .SH EXAMPLES
	 The call
	 .I fmod(372, 360)
	-returns 348.
	+returns 12.
	 .P
	 The call
	 .I fmod(-372, 360)

If there's anything still bad in the page, please let me know.  I hope
it's fixed in the master branch.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--3m3bxdhd4ri5mrff
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6BPgACgkQnowa+77/
2zIR4A//Xj6w4wn16kOksW6upqSfySY7L7mz4U//RcbYLaOv4phH3vdJHdsgZboE
hulIbBlH5c5Hesm9G3HvvmRahdBaJvqXxYDXNX19FzmV6NJFwgSpHTDm1UObxEbT
oVucwAo18Ru1Hqc9aSR4Vi0fz8ytFdx0sX2zWKXsIw7vgFw2zGld2WoScmAU8fcn
RE5UDqhIpUTcXtsCSvkxPvl6Jd4KRC2Liy2vyd49oq8XoJqfl+ahIv2fR69340M+
3DiqKNlwlMnYEmMwgY6KC302QhezsEEJdsT37Ji7Usjjp7owpA2onpophBaCS+Gz
lTSP8oN/5wQyjGzXoOtLB/t8qHnLYozrjZMTJitlFFK3IPpxexrHKNXcIu+3TyuM
jr+hC1pS0v4vuD4WGz6SwC8Cph7+3ZCbPtDI/pGOqaIT8NLdt/mslMoSFyzovEsQ
aX4ElWbHK2Exqs8aiMbVg7vUbzdi1w9WckVNyKgaxhGT8DEQxj+qBNnG0O3JxtOf
uAO4O9sq6AS+MB3fvWbymVXyHQXNbl2sQip60VZECeLdfHscbeuCdvNnEpWveGTk
0TF8cCMCKvxSTnYlWAZw6KVF3mFNfVmJP+fT+RtMO1t3FilrM0HMMikEViBXSVz6
fDnd05RH/3UrEYYMJ3ngrvXGXDp3B4ZpPJUDQ3FIjT6OQML94Ow=
=Z/Rs
-----END PGP SIGNATURE-----

--3m3bxdhd4ri5mrff--

