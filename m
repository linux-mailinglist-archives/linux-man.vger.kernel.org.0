Return-Path: <linux-man+bounces-3220-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 364FFAEAD4E
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 05:30:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE71D1BC6ED5
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 03:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17476145348;
	Fri, 27 Jun 2025 03:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFT9rw1n"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9893234
	for <linux-man@vger.kernel.org>; Fri, 27 Jun 2025 03:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750995040; cv=none; b=UzCrY2Ne36qEMiUjhIt7WdmHMFk9+CYAO8R+xCRE7C14AKdbI4lbRoP+AkkBVPUKlhEuSqXEhvmElmuN85NrkYYlCb+ABlJQ8jctU2jfqanTAs5yC2cAwCIUbq0ck8XTnY7iur2bMhjwzydHdPax6/65foIO0viJVUEobCLOM9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750995040; c=relaxed/simple;
	bh=dxRdyvSoM+MGzDTI+wVHWQTZBddler/Jh+pE8shL7R8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JGb8GH+YR3EW849smhefKCRhjiPV78fSI2MeggHba01sxpJ6IpFkCrLdM7TUNhPplExaUFBhc9N2lyAl0oErizWwIHceIpGwVUFqwLS4Qfug2BbzWwKjMc/3Ver+jlePqdpi0Ptr/D5PLIzkD/BNbHnQ4Dd/MhDj0UpL5cAJkIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFT9rw1n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16A7AC4CEE3;
	Fri, 27 Jun 2025 03:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750995040;
	bh=dxRdyvSoM+MGzDTI+wVHWQTZBddler/Jh+pE8shL7R8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PFT9rw1nLK8EdVrBEWF6bdvg3oQW2LnxUtKZZE1vJOxLAEbw2GmIcIgcbk4cvpfZs
	 z4W+ABHlvyUWzqh4G/ac+NVFa3CWx7/7HZxFw3k9gkt61P2WXE+6qMjmil8vzCUthN
	 64DuC5dhmiq7RoWjn8pN18l1hYs3n/Y6ViKW9fI+b5rMrhXYP5FfzAz26QnCafvl5l
	 DXSdvSc8ry9jqcvl50OJbelQNAqfyVrqhmbX+yn52br4Fg4DejvzI4t38G7fP15jZn
	 EjeVtNUXRyrVR3YWG5pHFVXOE7ge3jrhP2YWDcvbQEBS2Mi5Ij6uwQsktBsXAzg2x6
	 r/NuzAsKJuy8Q==
Date: Fri, 27 Jun 2025 05:30:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Aaron Ballman <aaron@aaronballman.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man3attr/intro.3attr: Add intro page for this subsection
Message-ID: <afxoosrxvz5hqe4j5cxmlxhhhnbj5wxgy7ooqhng4226souiud@7r7d2vmgb3ma>
References: <7sl3u2alzj64sre5fxpmwnc2u3r2uhmszqmggo5qbng232fwnc@uoupwcqtwb7m>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p6x6wbp2cqxdcbgd"
Content-Disposition: inline
In-Reply-To: <7sl3u2alzj64sre5fxpmwnc2u3r2uhmszqmggo5qbng232fwnc@uoupwcqtwb7m>


--p6x6wbp2cqxdcbgd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Aaron Ballman <aaron@aaronballman.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man3attr/intro.3attr: Add intro page for this subsection
References: <7sl3u2alzj64sre5fxpmwnc2u3r2uhmszqmggo5qbng232fwnc@uoupwcqtwb7m>
MIME-Version: 1.0
In-Reply-To: <7sl3u2alzj64sre5fxpmwnc2u3r2uhmszqmggo5qbng232fwnc@uoupwcqtwb7m>

Hi Aaron,

On Fri, Jun 27, 2025 at 05:18:22AM +0200, Alejandro Colomar wrote:
> Hi Aaron,
>=20
> I've added an intro(3attr) page introducing C/C++ attributes:
>=20
> 	$ MANWIDTH=3D64 man 3attr intro | cat;
> 	intro(3attr)                                       intro(3attr)
>=20
> 	NAME
> 	       intro - C/C++ attributes
>=20
> 	SYNOPSIS
> 	       [[attr]]
> 	       [[vendor::attr]]
>=20
> 	DESCRIPTION
> 	       Attributes  modify the properties of a source construct,
> 	       such as a type, a variable, or a function.
>=20
> 	       The standard syntax allows specifying a vendor for  non=E2=80=90
> 	       standard attributes.
>=20
> 	VERSIONS
> 	       C  and  C++  dialects have provided various forms of at=E2=80=90
> 	       tributes before standardization.
>=20
> 	       __attribute__((attr))
> 		      This is the GNU syntax  for  attributes.   It  is
> 		      supported by both GCC and Clang.
>=20
> 	       __declspec(attr)
> 		      This  is  the  MSVC syntax for attributes.  It is
> 		      supported by Clang.
>=20
> 	STANDARDS
> 	       C23, C++23.
>=20
> 	HISTORY
> 	       C23, C++11.

I'm expanding the HISTORY to document the compiler versions where the
different syntaxes were added:

	--- HEAD:man/man3attr/intro.3attr
	+++ ./man/man3attr/intro.3attr
	@@ -25,6 +25,18 @@
		C23, C++23.
	=20
	 HISTORY
	-       C23, C++11.
	+       [[attr]]
	+       [[vendor::attr]]
	+              C23, C++11.
	+
	+       [[attr]]
	+       [[gnu::attr]]
	+              gcc 10, g++ 9, clang 9, clang++ 9.
	+
	+       __attribute__((attr))
	+              gcc, g++, clang, clang++.
	+
	+       __declspec(attr)
	+              clang, clang++.
=20

Cheers,
Alex

>=20
> 	Linux man=E2=80=90pages 6.14=E2=80=9084... 2025=E2=80=9006=E2=80=9027   =
           intro(3attr)
>=20
> This page will go as the first one in the 3attr section in the PDF book
> of the manual.
>=20
> Please let me know if you find any imprecissions in it.
>=20
>=20
> Have a lovely day!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--p6x6wbp2cqxdcbgd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmheEFgACgkQ64mZXMKQ
wqmXZw/8CAQGkk0rLArHgmfKpOC8RgpVB4QaHpPVOjqYwZlvSZ8DdjGt4Vch1FZt
QWACHS+r7LS7VCYGoLBCA1p8tqJDnEoXqzE7jPukKf+llGS7XE1Gw/m3tf5GOeqO
BtJP7u21OyCbg+fMQu7LV2W93LbZlBBNdWQyp2+SWYsIkYmhHIdQriS1w+Fg3OEC
hN1KdpzBi3dpvUGXCE+mPMZ8fnB4WgercFOXuJAzDezEzGXfKyr/MSxo8jbCb+TX
VvMP0ZhPekbSwTbQCA+LOebWT/BMJrkEdFzvVEBZEqF21eGTTJdfCrcNiIlZ6xE1
3jK8Ck9J0NqgWzMzyAF9TRtP5BIsIeolr8pguvavoGe9Al/dP/mCcy685F8dpSi5
WqlCkukxi/fJyKxUdCOLXgyUUw4m9lPjDZ8mBAtfs13vTVEGzTHg6VNofLEKGJQ+
nBS7yadktExj+RnJzE9ab+X3bweYrl4iCo93nn04WtsgqSFzX/eoQnIA+VH6fGPO
IMlxU/FPY+vNT2bNmInKR26N1WNiIiaTe92p3k6FAdAOmYMFOC049urq2DipHuUt
BJWlNLmNBx0hEBEdn5td2UmYs73jEYxTptKOx923+pNzafHShtHLjh3ogD1lNl85
DJaxkbZi+GEmgCVY64w5kDg4zXeEksVeft6yXk6oY+en2stDBDU=
=iTi/
-----END PGP SIGNATURE-----

--p6x6wbp2cqxdcbgd--

