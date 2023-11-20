Return-Path: <linux-man+bounces-117-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E807A7F2169
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 00:30:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7AAE6B2171C
	for <lists+linux-man@lfdr.de>; Mon, 20 Nov 2023 23:30:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E570B3B296;
	Mon, 20 Nov 2023 23:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNLaRSw0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAE543B28F
	for <linux-man@vger.kernel.org>; Mon, 20 Nov 2023 23:30:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F08A7C433C7;
	Mon, 20 Nov 2023 23:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700523021;
	bh=CZvqqcmCd5ymnGX0kfVlmvGt2NFF40Uhfjqh1AVo8IQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qNLaRSw07w3GpmtkWIu2oM05cBnKb4bJJoXf53sTGpw1l9M/Fmu+kVMPxTfb9g6Kn
	 S1qmMkOGz5Qia57lqaiJMtHexUGJHoCuvoSwdi3AMswN75oI7m8W0OtcjoGEFp8QEt
	 Yd9KCzV6Jo9yxjtVyXzmq1GL+dT4hjwcoU6/eCYDEmYiknAEkqpmnK7OszQuogfUVa
	 W0jr/6H7z+dSZRvsoh2TO4FrFuG+5vEnuKHnoqCHS36yEtHNWgWrBDOD1A9kXdOis+
	 MBc7jD5GTcU7V7Tl+5ZwB/oBSP8KFAivBSigxypnrkWPYsj1ABO2JTbdczl2pqrGsg
	 URTjj9UqLYfbg==
Date: Tue, 21 Nov 2023 00:33:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seamus de Mora <seamusdemora@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Add sub-topic on 'exFAT' in man mount
Message-ID: <ZVvs3fgkANj9BSYh@devuan>
References: <CAJ8C1XPdyVKuq=cL4CqOi2+ag-=tEbaC=0a3Zro9ZZU5Xw1cjw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Bvmx3flakKX5Sym3"
Content-Disposition: inline
In-Reply-To: <CAJ8C1XPdyVKuq=cL4CqOi2+ag-=tEbaC=0a3Zro9ZZU5Xw1cjw@mail.gmail.com>


--Bvmx3flakKX5Sym3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 21 Nov 2023 00:33:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seamus de Mora <seamusdemora@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Add sub-topic on 'exFAT' in man mount

Hello Seamus,

On Mon, Nov 20, 2023 at 04:55:18PM -0600, Seamus de Mora wrote:
> I'd like to volunteer to add some information to the mount manual.
>=20
> I'm told that exFAT was added to the kernel about 4 years ago, but
> last I checked, there was nothing about it in man mount.  I feel this
> could be addressed best by adding a sub-topic on exFAT under the topic
> `FILESYSTEM-SPECIFIC MOUNT OPTIONS`.
>=20
> If my application is of interest, please let me know what steps I need
> to take - or how to approach this task.

It is of interest.  Thanks!  :)

You could start by reading the ./CONTRIBUTING file.  If you have any
doubts, feel free to ask more specific questions.  You could also add
something to filesystems(5) about exFAT, BTW.

Cheers,
Alex

>=20
> Best Rgds,
> ~S
>=20

--=20
<https://www.alejandro-colomar.es/>

--Bvmx3flakKX5Sym3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVb7N0ACgkQnowa+77/
2zJU7hAAgbPFsD1lOdZWwzdwBy/NG/LCGOayDNcY29vMLLEB0+NMsBDYjSYhVAPS
p5nW1Xp5DxdQtRYWkGqq3FwTOebW7tV6Va2CtKKLSX44Rton5ZyGS5uSxJ7fIwN7
oOdArrdkZdava8nBHZPgsDD7BPnJToHofS3mbeIjGUMSlWxZvpFM4Bkg6VgoPhyM
L9CbjBD8G+lyr5hXXVWIqUzqh93msgeTTu7pBcWvrynCVHK4hCc7xSM7L+xOhfAA
CpKpsIJgI4eUZ8CadMoJ50AvEL+6tNzJwxD+t40wEUzhG7o8yL+bQVJQq6Ys1Xbx
XtGNQvFh4lwlkBydMMTGtjGV7hQ68yf/rP1SGEdMYxENR8jvQ++AGFwQaQCvTDFs
fH2X9wdEnqhsEiiJ7M7/5ymiDVojI2gJx4W8Sx8KSDAHaMpEXLiqMyU0ziSnuSN+
DVWwbJxJSQucK0UtJuQtidKP0aTGuHaLhnly0EmHKJlCyPJhY1erAfzLI2gLcQF/
h2xvY2m4529xZLqjog8xSdpqKJ7coajHJ/Xwp/DhvTAvwnkJw/5eE2ZUtStC8yWb
lENyt1Y9EoAlIWd2ZA6yu5Ijy3NTznJOHAf0y0wzScj0Sg4BJz1n23Y4r6LObBin
1E5j61ZoUHA6BWaLVKizDacBj7nEnyWrN3gyPGiY//HfeLs4zp0=
=9EGf
-----END PGP SIGNATURE-----

--Bvmx3flakKX5Sym3--

