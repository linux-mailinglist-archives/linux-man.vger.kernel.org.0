Return-Path: <linux-man+bounces-332-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E14FB8213A8
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 13:03:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F31B1F2175F
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 12:03:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 063E520E8;
	Mon,  1 Jan 2024 12:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nxrxo8f/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C203C2F
	for <linux-man@vger.kernel.org>; Mon,  1 Jan 2024 12:03:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2381FC433C8;
	Mon,  1 Jan 2024 12:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704110593;
	bh=rvt6+CwAEyKFkYPi8bxgM33+i97xE6A2BDwqeiLp1BM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nxrxo8f/0TI8HL++6wLI9k2l4F1PcrVwZpOZXi6VrrQ/zBKVy9bmLgSMVySEWnR7U
	 ZnNpy61PRR3ESrl3ug/CwztSMV3QbWYUr8OQd12YtV2c/8HlpVsQG4UGXZabfbLX1i
	 M6JLpv6RyJs3CS9PALLAbOZmQ+SVvwmDNGDQfLlFnWA9CoswUVmDV1GrlnZT2WZoW9
	 WMgCgJCqUzxJwII5/fSVpRr3UMK7l7E63Muv3V57qg/24Z7XnIqFYCC0M5IUe1h7eQ
	 hZD6s6oYGAuiqoicDNI96Mu+gU3vLy3VbdjbJIOLuREoymy/vBqJStwCgoB/bUtQFg
	 CsaVKJU05PQjA==
Date: Mon, 1 Jan 2024 13:03:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Rajesh Pandian <r.pandian@gmail.com>, linux-man@vger.kernel.org,
	schwindl@posteo.de
Subject: Re: [PATCH] bugzilla_218018_v1
Message-ID: <ZZKp_dQPs5YsTm4e@debian>
References: <20231229031816.3345-1-r.pandian@gmail.com>
 <CACKs7VBsUmK9Vo-LK=OHPMQa7gAMYxj9eHVNRKGid9jHkiq1mg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5pnG8b1mGxDPnUC0"
Content-Disposition: inline
In-Reply-To: <CACKs7VBsUmK9Vo-LK=OHPMQa7gAMYxj9eHVNRKGid9jHkiq1mg@mail.gmail.com>


--5pnG8b1mGxDPnUC0
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 1 Jan 2024 13:03:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Rajesh Pandian <r.pandian@gmail.com>, linux-man@vger.kernel.org,
	schwindl@posteo.de
Subject: Re: [PATCH] bugzilla_218018_v1

Hi Stefan,

On Fri, Dec 29, 2023 at 03:14:15PM +0200, Stefan Puiu wrote:
> I think "is described by the Elf32_Phdr or Elf64_Phdr type,
> depending..." sounds better here.

+1

> > +The following is an example of the 32-bit architecture:
>=20
> How about "The following layout applies to 32-bit architectures:"?

+1

Have a lovely year,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--5pnG8b1mGxDPnUC0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWSqf0ACgkQnowa+77/
2zI0/xAAmft/a5lkVIoQh1/XU1L+7hhbG8kvbEHaF6UM2upozpTiIz5Bu4dYWg4C
HSUJlOJZfkWz0r+1SWr0gIag4o8Z+29dJYLxdHgFtnQJu50XgI1vQe51OVwC3Zli
hA5dMX+y5u58RL34fNgKrZ2rj6VUCXVbv7qKlxfTFrxajunM05ZYAIcVsA40tt8t
r8d3i6EZw4y3pR2Z3uXD9jdv8x7Z8u4ogm6px17MCNluYhKPdpdk6JvCvw6AEhq0
F0ppYykOpnT6o58CjbUFT12A82Lc7jGlcVCK7t3gKMBOyZP2Paz2XKWk8mFllUps
2NI8J+X6cCVE636wW297PrVKGz2noBTXoffymSsOzvAtRWOMMiX5OBOyA89AVN6z
CSpC8iQ9y0QO4TNovkHCywxysLmNCx9rODBL8sTQPwJHfTFR+0Qg/Vzm8fmgWRRn
lDCiiTTuf1FsLku3tOQeqS+bkCy903XHK0MRROohJY17aIWMPlAhUX+JZKvG2Xnf
FcW7dNCoHwVCvGUndxDgDCQGR/7F768akyc9YDEXPArmdbVo13QCmeX+fjnKKIL+
yEkgDxh3sE25WVXnn7BqDnLSf+JQ+3kXMXm1+S9LoiqO9Ad0FKvJGProaFCvkdJR
P8+Y+0RY8Yb9l3Z/M2ExJ2pkgZVG3ahvXNQ688NovqIMmEN2s6c=
=xsu+
-----END PGP SIGNATURE-----

--5pnG8b1mGxDPnUC0--

