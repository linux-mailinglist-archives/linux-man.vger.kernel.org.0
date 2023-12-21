Return-Path: <linux-man+bounces-276-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ACB81B8CF
	for <lists+linux-man@lfdr.de>; Thu, 21 Dec 2023 14:54:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E945028832B
	for <lists+linux-man@lfdr.de>; Thu, 21 Dec 2023 13:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A936B7D8AB;
	Thu, 21 Dec 2023 13:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJq7IRF3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74ADE7D8A4
	for <linux-man@vger.kernel.org>; Thu, 21 Dec 2023 13:41:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C53FC433C7;
	Thu, 21 Dec 2023 13:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703166090;
	bh=FN3Iq6Qk0Czv0YeCxCcu2qsyOUjnsUNPdqQGRmMTk3A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fJq7IRF3PNOKqeq/JryCqu/uvIyFpvAckZCXK+wOtmxdw/t+2O68VLjY+ETNR+ZFI
	 VvAuw3slP5vALmWixFpshn1QsKS0Jv07v527hYSEkX+UM8W/9g2F/mbWeLupK5HL3O
	 5kuXgO0VFC/X7aw5nfKce3gpGGDk0e/LbhihP6cOVmHjervTowf8sgONkUaFWZ0E/V
	 BSPFtX0w2egqv9tR4BazS/OfnD79t2K4lx9s2+ZKW78MtN03l1E95YHYo1K6iJcrWc
	 OyYexsGBXO9mbZrxKXBxI8L/qKkrwX8BFin9Ck0n7cw+bMSf3kcuswyM27imo+CIYp
	 KRUXeJLTHdkLg==
Date: Thu, 21 Dec 2023 14:41:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sendfile.2: pull in_fd type requirements up to 6.7
Message-ID: <ZYRAh0HeLQUdgYBR@debian>
References: <tovce255glwqzbrwuwk3ijzzrww3si4q3jdoh4sdw5zgah7ki7@tarta.nabijaczleweli.xyz>
 <ZYQctE0y1UTy6VvK@debian>
 <cbxsscnmiajzvd54im6ayk7molxyt5mtr5idwpfobpfftbr6h3@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GVPUIsDBqtn4ftCq"
Content-Disposition: inline
In-Reply-To: <cbxsscnmiajzvd54im6ayk7molxyt5mtr5idwpfobpfftbr6h3@tarta.nabijaczleweli.xyz>


--GVPUIsDBqtn4ftCq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 Dec 2023 14:41:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sendfile.2: pull in_fd type requirements up to 6.7

On Thu, Dec 21, 2023 at 02:29:17PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> On Thu, Dec 21, 2023 at 12:08:30PM +0100, Alejandro Colomar wrote:
> > On Thu, Dec 21, 2023 at 02:31:35AM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> > > But this does mean that since 5.12 supports
> > Did you mean "since 5.12, _it_ supports"?
> yes

Thanks!  Patch applied and amended.

Have a lovely day,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--GVPUIsDBqtn4ftCq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWEQIYACgkQnowa+77/
2zJHjg//VzQJFkWbh9+pGxmjttG5J4KQrDMJ82xa2bK/fqrsZEinUCLndGHb5rOD
MOz2lk4CoGrgbVx/zJcMr2D1IoEYKWZeXdKneciwQjHcrytYc/bpWDbSWMCoaucq
EkumsO9Tl90hWP4A5/HF+vnKfctIwyWCA9oqihDCPZ+QRhH4y6EKB68jcUHj1qOn
VZgSCCtnqpFr5pY7Jx1ipz0RECgi/eQPECi5OGclTNAYptim2VCDsSMJB1JhjImU
1ko9Sjm4AAG6JJz+lJCL3BgIDB2ivZJFqPHFJvU4baUdgM3B7DCRgqsbZArgKELX
A5KL94/hwLfmVC1M5hRS4/G7cB+mHrv+Sh69pC6ScTu7QNZPsoplTB5xy/1jNTBg
qsJN2CHDO8POEdjou6hBoceaNruFyEaU4OUNcYy4uSA32uDnlYGrBE2e3j6iZ1JK
Mrpv8JD9M2H23UEuotHzKosRz2226w8ODW244q54GRYNXt2SV7umGrPxLgtoIZTR
kBHMFghX1gN08FwYzsPx/w12tCEzujEFnSkiprtpca475HRtV6J4oUNhKp6MgM+d
U1RROoi2E7JmlyDSyMQq+bQjv3n2/+nQk9yWfho7FqlQKi2zSyaMUIh2qJbTwRBH
yjDz96QDRYx9qqXYHhXIn3peKpO6THt24G5YOayRMny/9J+GZ18=
=CBjF
-----END PGP SIGNATURE-----

--GVPUIsDBqtn4ftCq--

