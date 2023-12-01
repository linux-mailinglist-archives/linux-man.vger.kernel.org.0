Return-Path: <linux-man+bounces-198-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0859A800057
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 01:37:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16DE51C20E62
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 00:37:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F5C617CD;
	Fri,  1 Dec 2023 00:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pf7eFPKh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AC67FF
	for <linux-man@vger.kernel.org>; Fri,  1 Dec 2023 00:37:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B5B9C433C8;
	Fri,  1 Dec 2023 00:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701391075;
	bh=w3gn9Y8zZb46NawUTP/HlTsF/yzjcXx4DKTWybqzqWE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pf7eFPKheaJymljxhURjYwYLnQweef97UML4UydvxAt7MalSKAFfelE7ZOmEue2qw
	 tD+kJNI/3WcZGH72tVDlQ6BL2evNcpAKpt7/iGPB5gFqUQEz7KWO/+bUC7KWvSzdIo
	 SLGI9+jQIjHONTk9D/QzpZ+iqmsrgPxTh51rSPcKJU7tCHSKsaq5V2WqjHP2qDVsD8
	 3m9nIdfyTj5Lp54T5AHyGsDt43lt8nX32HAf5Zrb63KBAgVhuiGS5ilMhhc/SqVuCr
	 qzNb85obYSXYB5CP1biYMnyh6dcpBEA2J/SYjnEyNQ3QXqiYwxyJufQFb/2NPz2msZ
	 HB8vQ+uwfsT6A==
Date: Fri, 1 Dec 2023 01:37:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Re: Optimize script for generating LinuxManBook.pdf
Message-ID: <ZWkq4AMhPgMcezPn@debian>
References: <ZV4XNnNlv8OK1B1m@debian>
 <ZV_OXhw7V6Vk1HBR@debian>
 <ZWCNHM9qQnK96ksZ@debian>
 <17198161.Vt6cx1TxTY@pip>
 <ZWkO4qPC4BxkwBNm@debian>
 <ZWklguznkCz6pdr8@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n+44GDa4pnvzaiXC"
Content-Disposition: inline
In-Reply-To: <ZWklguznkCz6pdr8@debian>


--n+44GDa4pnvzaiXC
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 1 Dec 2023 01:37:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Re: Optimize script for generating LinuxManBook.pdf

On Fri, Dec 01, 2023 at 01:14:58AM +0100, Alejandro Colomar wrote:
> Hi Deri,
>=20
> On Thu, Nov 30, 2023 at 11:38:18PM +0100, Alejandro Colomar wrote:
> > > It replaces the complete LinuxManBook directory and the executable is=
 now=20
> > > called BuildLinuxMan2.pl.
> >=20
> > I'd prefer if the huge groff code would go in a separate file.  Would
> > that make sense?
>=20
> I've applied a few tweaks to the script you sent before committing it.
> The performance is similar, and it's less of a change to the current
> code.
>=20
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3D0e64299d4dd0df90ea52b3fe6777e5ebfb2484da>
>=20
> I think we should be able to cut half a second or so if we add a
> BuildSec() function so that we don't block the first page until the
> entire sort is done.  And it would be also more readable.  Please check.

I amended a bit more, to keep the old LMBfront and an.tmac files with
minimal changes.

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D1adc2425f771bdd4089b06646d21c9eecf73c69c>

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--n+44GDa4pnvzaiXC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVpKuAACgkQnowa+77/
2zLa2hAAnVgA2HBZ4N1sGHKUl1GH1Mu0wRFW/TD50d7laenOELiK+H2PYWHAzRTe
eWpy8kiAzL8Py583PRIRsnqYE8lTkIpnjE5TEJbtwS+9JfPMftUBGEExVctzYVxy
cFI+ngr1Lqt/skjK7jdjYwbuBMQaudg4eATaHdmVZ9Xjh8RqI2KHkyY8nkn17G5y
G7h1TWJaVp1HKRYHsXUWNNwuu7q/IJLbhLFB0aooCjgIyTVcKZzEtK0Z/a+8zbkC
gKv3If/eWEEq8aPkq+hDVuscFMn+YGUXH6LevbZvFCMtHWY5JIqGhHtsA572gd5T
kyPaiBwCD2CrlSPTxzRmmF0lOoRqKk5D+501l/2km9se3Db7Q9tdqmNRlrIrDR13
0RxLuUN1Plv7i+UvJ4Djj1W1dKOZwdGVIYGs9D2ZuubG6L0ViAegp5uJWckpYB0l
yEMA0KvhL7P2X3qIrSjExqfLlislNrnoq8YjfNF7DspYpf0pcmqVMet2kAemqOpc
81BnWJgXPANifxICVXqD8F3+UI1SBzNNhjnl6iNirP4Q1mS2z+CnYNMX5m1N/l9/
AXUSqLjszjDZKFyQQSXAXpBqXA6K7TRHamnhhRZ4bXBYJpSnq09gNT1x/6y+u2jh
JvpcTkqwyRxhD6h/ADCGcnHXXNOHR/iYYX4duHrx0L2dF3FaXBA=
=v29P
-----END PGP SIGNATURE-----

--n+44GDa4pnvzaiXC--

