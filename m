Return-Path: <linux-man+bounces-28-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D76367E8C58
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 20:39:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E43C01C2048F
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 19:39:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90C601CFA7;
	Sat, 11 Nov 2023 19:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p07vjRMs"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2FB1CF9A
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 19:39:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84C19C433C7;
	Sat, 11 Nov 2023 19:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699731542;
	bh=kLQUklHZBY+k/rcJZCO8wGaAGHxarl1B2/SApj8JLDI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p07vjRMstfGva6PHRuJMwDBPVzEPvvMZ/DoPIse+jw3VTRIfKzychq+ZgrZLZj81x
	 DXxYWs+aMWhjWmxDFsUjLxsUAAHuFv2JjAJN3Odz7crXH5IVgnj4raeJgkrusvF2L5
	 7oH7xTp5wHnCv+n3Kg/XFIlcLOPbMI5EoWQ1rfdx6KBzgy1jdZ9t1LXCi5/s5dICHe
	 BhqCLdbLUJg4w48eov/az6+/41OyVTBzPigpCzlx4PW9uGbPr9BW0sAQmx5QtGm34P
	 s359kvotFua6REvfA6QZAsE49kl8xx2DYVZEwHfAcu3LTcSYEfDnfoTTLBTnhb0lKE
	 HYshaoHCvVVng==
Date: Sat, 11 Nov 2023 20:38:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: alx.manpages@gmail.com, mario.blaettermann@gmail.com,
	linux-man@vger.kernel.org
Subject: Re: Issue in man page charsets.7
Message-ID: <ZU_YU1RKZa1SR6Qo@debian>
References: <ZUJaZXoT9HQxRY1r@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MkYXxgy31MA81ZYX"
Content-Disposition: inline
In-Reply-To: <ZUJaZXoT9HQxRY1r@meinfjell.helgefjelltest.de>


--MkYXxgy31MA81ZYX
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Nov 2023 20:38:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: alx.manpages@gmail.com, mario.blaettermann@gmail.com,
	linux-man@vger.kernel.org
Subject: Re: Issue in man page charsets.7

Hi Helge,

On Wed, Nov 01, 2023 at 02:02:13PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    ISO 4873 =E2=86=92 ISO/IEC 4873

For all the reports about ISO -> ISO/IEC, I'd appreciate if you could
add a link to an official document that shows that it's the correct
name.  I'd include that in the commit message.

Thanks!
Alex

>=20
> "ISO 4873 stipulates a narrower use of character sets, where G0 is fixed "
> "(always ASCII), so that G1, G2, and G3 can be invoked only for codes wit=
h "
> "the high order bit set.  In particular, B<\\[ha]N> and B<\\[ha]O> are no=
t "
> "used anymore, ESC ( xx can be used only with xx=3DB, and ESC ) xx, ESC *=
 xx, "
> "ESC + xx are equivalent to ESC - xx, ESC . xx, ESC / xx, respectively."

--=20
<https://www.alejandro-colomar.es/>

--MkYXxgy31MA81ZYX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVP2FMACgkQnowa+77/
2zI0xg/+NAEL5RbKdHzx1qoKGDgIkqjbFTclL6ggIX6ynPnAeHsaZZm8wHtQz+0S
LRtfZse5wb7ShFt6rEtpxermN2nhdgj2AEzaBHxInRO17DNfp3tKLXww5kIWv2Bp
h7CojgJv8Xiw2s5d1G4Rdr2unuahEJJgoT9Q+LlTPQuzEUWbEzku29Ma8TxB2KUM
nTE7upG8SOxb9VU/wu+tmf070cBluz87e/DZqS09j5xO4rfoWqHc6IVQA6omS/+U
Rpozyjintt2UJkXSbDuRTIrM6CxtUAXVzDGoWrsV/5gE4B2K5V4aECzLlkkQRDS4
XOxytGN9xzWjKiMiyhtrdFKIEWxwYxtc/nVu2p09Nvl1lIxyOdiStIvAfD+JUF52
G1t4dyXwRWNJEakxdiKyc4wxfLLhf3CJEcR+gN8hCfWcpuyszpQnxSNTMOiZO56J
Bj5QOLOc8SHSQQhc03+pd3+fwvobGVyzkCihloNP7Ikf+N2iaayMBEHarn1+472U
ARrpD0LDBK/e3p2Ge28WcQdOFBRaJYPvorzshaQ+ZJhcwPk8/hkCy2HouVdeRxO+
xABGXYykmrx1vttaO8GeJot8cNA7Rvs0W7Nq59jk07m5hBw0s9OTvyA3TPC3lHx8
wMfOqs1TLk0o8taOtZvBIFAPzCcLp2ETVMRo2h3Qmk6YoAZLmjo=
=y54z
-----END PGP SIGNATURE-----

--MkYXxgy31MA81ZYX--

