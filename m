Return-Path: <linux-man+bounces-403-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9ED83F9DC
	for <lists+linux-man@lfdr.de>; Sun, 28 Jan 2024 21:23:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A77431F2196D
	for <lists+linux-man@lfdr.de>; Sun, 28 Jan 2024 20:23:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE37737166;
	Sun, 28 Jan 2024 20:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLTB3qmM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B4B633CE7
	for <linux-man@vger.kernel.org>; Sun, 28 Jan 2024 20:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706473378; cv=none; b=FweJDSIPcATEw8SkTMKxJjpXwz57hWKX8xA401xLp+d5Gzp1xUbqgBN8fmASChi9EgdyWMRlyvYwawBnzkoxikzaypWH246nchAiyvFcWjwm/+ijIe6EzW4SWf0WEclugZQQIDqpAHS1DCO5+asnVzPpLRHahcdB/eE3cLoDf10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706473378; c=relaxed/simple;
	bh=YVhVUxwGw3QiN7CNOVSNyqYCKibEw/RDpPKllpNi/4Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XdObPsZRs17jN+M6/eLg+aqLFe+grEs3EyNCiXVr4fCVMxVyrVQlsggBFryyffovG76zlOj96PyOx94J9K8BII7kqcpUESm0R+L44MEidPAaWOq6vjHUUyoGfw66UvFMoYsUzBasYlke3fcv+LO8XS7YTIJMH+JsF6vm1bkK5xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLTB3qmM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1FA4C433C7;
	Sun, 28 Jan 2024 20:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706473378;
	bh=YVhVUxwGw3QiN7CNOVSNyqYCKibEw/RDpPKllpNi/4Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TLTB3qmM2BlBstzrKrF+X33kDvokUjqU3++Cg1GJIfVfYQD17t1xX4YICHL5DKeFZ
	 fhENongP0r44Pv6v+rvOq4+GdZlLAUX0227u56NK2Ne4R09Yr78IzdwO5htJYo9IFd
	 z2lFgRhKb4mxCUki3X0FUGcZGfuPpx5+rojGPKfvOhtQhWNPsFrwvXBC06Cxjaa/gX
	 o5qcoJCvKpFG5gR0auKGRY7xo4TXyDgOtTuACOByQ8U9vNGdG1Aw7+P0Om1H4PQgXW
	 uBF+I9KJGNYpO41mgCzROyQ2aOFuhyAwXi2a6nRGkknQfS2AGAD5erySWk2gBiCVJc
	 K0pegsfRM6oKA==
Date: Sun, 28 Jan 2024 21:22:54 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: alx.manpages@gmail.com, mario.blaettermann@gmail.com,
	linux-man@vger.kernel.org
Subject: Re: Issue in man page charsets.7
Message-ID: <Zba3ngoZKI494iXB@debian>
References: <ZUJaZXoT9HQxRY1r@meinfjell.helgefjelltest.de>
 <ZU_YU1RKZa1SR6Qo@debian>
 <ZU_ZvgyEddvKasYd@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="w63JJrny4HWiwLui"
Content-Disposition: inline
In-Reply-To: <ZU_ZvgyEddvKasYd@meinfjell.helgefjelltest.de>


--w63JJrny4HWiwLui
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Jan 2024 21:22:54 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: alx.manpages@gmail.com, mario.blaettermann@gmail.com,
	linux-man@vger.kernel.org
Subject: Re: Issue in man page charsets.7

On Sat, Nov 11, 2023 at 07:45:02PM +0000, Helge Kreutzmann wrote:
> Am Sat, Nov 11, 2023 at 08:38:59PM +0100 schrieb Alejandro Colomar:
> > Hi Helge,
> >=20
> > On Wed, Nov 01, 2023 at 02:02:13PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    ISO 4873 =E2=86=92 ISO/IEC 4873
> >=20
> > For all the reports about ISO -> ISO/IEC, I'd appreciate if you could
> > add a link to an official document that shows that it's the correct
> > name.  I'd include that in the commit message.
>=20
> Simply go to=20
> https://www.iso.org
>=20
> and enter the number in the search field.
>=20
> For this one you will get:
> https://www.iso.org/standard/10859.html
>=20
> Is this sufficient?

Hi Helge!

Yes (but a bit tedious; thus the delay).  I've finally done the change.
I hope you'll enjoy the improved consistency.  :)

You can find the changes in this branch:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D76fcba21723fcb1f1281babee2fa5308bbc5ef2b>

In a few days, I'll merge to master.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--w63JJrny4HWiwLui
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmW2t54ACgkQnowa+77/
2zLkjg//UyhSNSgwtDUJU2qN3fK1YT5SWRiBP7Kf896Arz8LsrDwHf9gApBqonWD
8+15srZmxzPqcb5s2FsS6UOpkxG5mk/zh0gDEo5Y9qSdWup956Q3f3vtXFd4WGPF
3hsotwTLz6fp+qIhMkfABufxfM4+M3whhiXFXPBvyK+shH36D6yID4jX6RmZZUnJ
pILNOjWh3krX+7a24F9gW18UKrUty5x5hlC0zvUH9PDLutPpmeLfkNGPqzlHhzgJ
IKhtBoF0GtswrizOcVsCYDZvCEy4fmFA8NrNq1ZGF9xur/7UuLboYwrwDZQhH3zB
pkNYKoW8r71sbRp005hcCo21LJEj4ax5LUmcL5ZMnQFuNLrDcGcj8Khs2mbAWxhi
81Xi1ozUKi7YHvHXohZ1PtCm7BySFtmLJN+ZVdDrB3nfpP0b8aFRn9R+VAAVzMny
h0TiyC8K0MoRyjxPmNGYw2bus1v4wKS/Yoas+P2gdAWbYt/2TCc1NUlR3xv1AkT9
9fQL5yCz9ipodMGWXSYJDb3crN35lfw5CvKqY2h5TT+nnTJZZCWHGixUc8Z8mYKz
jQPsSJ2hL2c7nxCz6QuPFiXi0MULzJqF+Fkn57zgGB6VhQofFyMOzI4Gnt0xvgWz
kszRRP31dscg8H7bgI8XZVOhlHyLM1PLZ09ShthsOnWQj/azRAk=
=aKYi
-----END PGP SIGNATURE-----

--w63JJrny4HWiwLui--

