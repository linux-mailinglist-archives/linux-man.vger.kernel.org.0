Return-Path: <linux-man+bounces-1674-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BD295D00B
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 16:36:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E2C8C1F21BCF
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 14:36:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03B961922C9;
	Fri, 23 Aug 2024 14:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrmXf7J/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89DF1885AF
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 14:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724423162; cv=none; b=Vg6etJgGUpDm6Jb1lr4SEWShjSRpUlwyd6wWHdwKVJJccEhgcFS99uTKzKTxu1jmw62kepo3KfwvrgMcmZb+QcAatVFj+ukZZzSdpANltPFWqySOo66pls11eboa/X6fWKYbpzPpBtdA4GnSvWUpXU1+8jhsOT5s3Mr/XZ5W+K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724423162; c=relaxed/simple;
	bh=vusu779ysG9bbHd4fy/YgV3rLklFbwmLBiOLZWXi5jo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h5moB+VthtqONue3lJ0uQ6dI0afmcMBMTsDtT9ywXYyX8jaWTL0XLgsc265zEDVaFs5Bl74Q8x/FxVIBOVAk5GznobJA9Q0/a/sXZex4atQihxFeY8ZMtOffkj56AC579I53Cna3LFAqVTTletMFaCQTq9PnX49xy6VvXntOPhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrmXf7J/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3078C32786;
	Fri, 23 Aug 2024 14:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724423162;
	bh=vusu779ysG9bbHd4fy/YgV3rLklFbwmLBiOLZWXi5jo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MrmXf7J/VoxhUKe8jthsWReTlWrJu30Av2rKDrUhjWL90WMAcvppy51/I3/pzcbk/
	 Pj/IKdUSXXzmEmOWkLf5pJVmCduiEQ+Y4uaTVQk5U/bITkWH9DNsaRbHSTRBaOX3nU
	 1qssaoQt8Kzy9efYFt3BTHorCyC4aUTTR3rupzi4IUU3BUWi5T88ISIdRaCyEep3v0
	 sVm4zUoacNpUWGzOAB5JjPxX/gV2tHg2azTEI0PzpPFHvpR117fFkQ02Wqvl+OKfx0
	 GvXELHhZ8D1OG6Tg+RVI13CXXmpNJSo1IiJ0qA3nCdEKhpzFEfHS1BYyQ3Vyn0FGB+
	 yLTk6Y7fg6/UQ==
Date: Fri, 23 Aug 2024 16:25:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: carlos@redhat.com, dj@redhat.com, eggert@cs.ucla.edu, 
	jens.gustedt@inria.fr, libc-alpha@sourceware.org, rcseacord@gmail.com, 
	vincent@vinc17.net, xry111@xry111.site
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
Message-ID: <jqdmfoxuecuevujyv66eyzg3xsvfhou4hhvvi5bachy4dujnhu@gwcgwegj7qml>
References: <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
 <331b41ea-dce5-414d-8588-9e4e2a59dedd@SystematicSW.ab.ca>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="quknpt4277egivyv"
Content-Disposition: inline
In-Reply-To: <331b41ea-dce5-414d-8588-9e4e2a59dedd@SystematicSW.ab.ca>


--quknpt4277egivyv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: carlos@redhat.com, dj@redhat.com, eggert@cs.ucla.edu, 
	jens.gustedt@inria.fr, libc-alpha@sourceware.org, rcseacord@gmail.com, 
	vincent@vinc17.net, xry111@xry111.site
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
References: <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
 <331b41ea-dce5-414d-8588-9e4e2a59dedd@SystematicSW.ab.ca>
MIME-Version: 1.0
In-Reply-To: <331b41ea-dce5-414d-8588-9e4e2a59dedd@SystematicSW.ab.ca>

Hi Brian,

On Fri, Aug 23, 2024 at 08:04:20AM GMT, Brian Inglis wrote:
> AFAICS from 9899 1998 Draft to 2023, the *mktime* wording has been essent=
ially:

I find the above confusing.  What is 9899 1998?  The draft is for
ISO/IEC 9899:2024.  There's no 1998 in the name.

>=20
> "The original values of the tm_wday and tm_yday components of the structu=
re
> are ignored, and the original values of the other components are not
> restricted to the ranges indicated above. On successful completion, the
> values of the tm_wday and tm_yday components of the structure are set
> appropriately,"

The text you've quoted is there since ISO C89.
<https://port70.net/~nsz/c/c89/c89-draft.html#4.12.2.3>

And that is not guarantee enough.  It says that wday and yday are
ignored (for the purposes of determining the return value).  And it says
that on success it modifies them.  But that text is silent about what
happens on error.

It is C23 in 7.19.2.3p3 which provides a novel guarantee, that those
fields won't be modified on a failed call.

>=20
> so the recommendation has been to do something like (pointless example):
>=20
> 	time_t tt =3D time(&tt);
> 	struct tm *tm =3D localtime(&tt);
> 	tm->tm_wday =3D tm->tm_yday =3D -1;
> 	if ((tt =3D mktime(tm)) =3D=3D -1 && tm->tm_wday =3D=3D -1 && tm->tm_yda=
y =3D=3D -1)

This conditional, just like the one in the POSIX 2024 standard, is
redundant.  Reading tm_wday is enough for determining a failure.

Otherwise, what would you expect if tm_yday is 4 but tm_wday is -1?
Half an error?  :)

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--quknpt4277egivyv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbIm/YACgkQnowa+77/
2zL74hAAlTG0MRwDGCSByaHd9qZLVBQvTtNWrqUzaM0+MFVyhFkxrTqKuU5KIDr0
DVvwSCPXsoR3LyyshadyulByOPwHkK9QCzF5dJX5FgknLJGEnmlE5K6XWHanPcIu
33kfkyF2Xf5u5992AOC0snbGy19pMkNKttFDCqtlU9jjdZzEI+JWgo77PXRUC0DG
C1hSO8Eb+kGXhKmHw96m7ZNP5FWjQSvH22jlwV153i0baCDZAlzVFmxFFLz2OaVm
PUBC8C9+oNX2+jtb/9saTTE3iiabE3Rylp8CZcRRxcU/OgFWzua3PJy9lMcKMjsJ
Gb+WQ8xuQMP0y0LjKTg6akycb55QQ/h9OQgdgcEkZJfLfmIPr5O2f5rOiEgZYnO7
ZyiUlUXhnWVMJlfW22dvN9nsmVRkst1DvdIQ/Vdu7YgfQI5cboaqkRIm0Ve1D2P7
eTJv2I0oQKSHf/2+tGNIN70dvAJD6GcIWfpBGbJ/4fkRdTyTbizine3CF8N0FzjS
CpldWq5YOGV1IYDxU7kA4O5p9WiN1J7tsxpknZ0Njjry0HQwyvBHunLLnKQyCbpX
+YBlyaxLOCS2Btfxig/xCxrDFkNJYBIIiKYplMThzi15AKgL9ZIzTA1f26xCigH2
eqGfYBAG5Lg9WXvXrd6oTpbS7yQxoYKM2KF80kYRpOcwsetXWYY=
=BsSZ
-----END PGP SIGNATURE-----

--quknpt4277egivyv--

