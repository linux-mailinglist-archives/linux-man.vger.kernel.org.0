Return-Path: <linux-man+bounces-1967-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4809D0322
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:58:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B6051F220B7
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:58:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9689713212B;
	Sun, 17 Nov 2024 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GH1XAWQ5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575347E0FF
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731841133; cv=none; b=jQdro3lkmhh1ypR+Nmcfyg+eioLpk7fy9zeFKeOwY4COAU31bwcPhbx2P47UD/F8v1G8TMfVPqiEQ8mUwxqd4PQjPX9JxngCfiSKt5PcOPxxSOuapdjfdKNTrHYcKW5sNemmXEX44+pduIKvwioqRUrlTMv/+hOTCglkeJi5E0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731841133; c=relaxed/simple;
	bh=vHloZm2EBPLwdg4lifKfp4y5s4R6Q0FQePlACGyn0j0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cWDm4/Re7qCi6MXbokLKBXZFMp7fR9rqgYZw6TXMHeir8yRVONZVLocqvhedjqlXIhzqxVoHRQorBPR4nf6StxwykRCrxRog0E+lC8m5CkHNizvNr/FTcSIf/ZV3aGzwjmrNdH9xALTCMz5Of59BIIVkhYd/TZwCLBjuvcBsRH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GH1XAWQ5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2535C4CECD;
	Sun, 17 Nov 2024 10:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731841132;
	bh=vHloZm2EBPLwdg4lifKfp4y5s4R6Q0FQePlACGyn0j0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GH1XAWQ5FplrruGY5sady8r6IIPhr58D8YWLqjK5ByyiIIwJmRV3G7NGFl+iDq6Xp
	 W2V5jWh0tSxRhZ1QcVR2I49LZ3DQLfuTILhbKmGVMuQiQ8sqdSBau7vmP9zrKPd+VO
	 WUpcv/Cx7otPSAgKoULe48ul7VkS8syd67dTaTwL2IMESbMZeeFsS30G6re+B6dP2A
	 zU0iUJoo8sGcoqfdJeABBjRz8t2kg/PBIhatOoyM1lfjqHKkWPXtMCAhNYAOuhNnwg
	 ht4LJ9nRSL1LxQzS+jTH0GU/giCTrrxZQWOX0JYwg9UHO7+AdW2Ub5xWV9d2xRf1Hh
	 BXznMSQN+MJgQ==
Date: Sun, 17 Nov 2024 11:58:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page ldd.1
Message-ID: <t4j7h2rcbxduthfapldqyyxt2berqsbcc3njadg6clmgsqxng3@754bwjq5726e>
References: <ZznJfTPKVPkL2Oki@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="evlfv6xqo2a7urh6"
Content-Disposition: inline
In-Reply-To: <ZznJfTPKVPkL2Oki@meinfjell.helgefjelltest.de>


--evlfv6xqo2a7urh6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page ldd.1
References: <ZznJfTPKVPkL2Oki@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJfTPKVPkL2Oki@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:21AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    results =E2=86=92 result
>=20
> "B<ldd> does not work with some extremely old a.out programs which were b=
uilt "
> "before B<ldd> support was added to the compiler releases.  If you use B<=
ldd> "
> "on one of these programs, the program will attempt to run with I<argc> =
=3D 0 "
> "and the results will be unpredictable."

I think in this context either result or results are acceptable.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--evlfv6xqo2a7urh6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc5zGMACgkQnowa+77/
2zKr+g//Tjtxs0Ca4S3C4eBT36HQRi3OmkpxZAy0ZkMpG0uwzJ6nQzcxZDT73fE9
1c3uCVPW1/xbLMkoOvydSr0HaFtGsFfjGs+9YBeOnPtxJ+RB9GKjpJv6SriFaPQA
ZOSV5bYj1E5lEB7gyr0TlzJeXwWlR6MLH7zUFJi1R8oqtFpoMx2W1BfA5BFVHQTa
z1GJjby4t5FZj9G9TI19P1u48yqQ9eDD2vnHPUm2UpAFiKsZ6xIL33qPTHV7kLC7
a4iwhKSwsV5+zDauOKBPNYP/5RMU3TvVM/hLlrElQVhrBRmC4EPD2wDS7DC0xqEw
Rbu4KHBObOXd5CpQLv2GiPnu5skKJ/hkYFHbx2+EydYHEbF6aFzYFU/jb7Ujy18F
QjoYNdUjoTxZLyYCARhwjV7rGYOY5le5mXcTR/ACzk0smgCZQvSrkSdUAM4mAd6Y
vjz1lsyQk8Mug1rv+AVPKg1cGJTXZi0jgxIswDIybm05DxwqmWds+dVUfdx/fBq1
U5TA+LLTPgvbq54gM6FMq3kfdOZcQWkJDbi5qs+Gb8g6/Zten+QPMqbeLaJpYmfG
y19Efs4vRvEkYVZOHNrua12SqhxG30F30tlcJWzQU10nLqQ/2+UNgBZGhCs6Zonw
qr3U7G1anzyGbNi27VTjLyFKs6uBx73INu6nnOzhmZfUGrXP00s=
=xeV7
-----END PGP SIGNATURE-----

--evlfv6xqo2a7urh6--

