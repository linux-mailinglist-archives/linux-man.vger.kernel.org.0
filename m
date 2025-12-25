Return-Path: <linux-man+bounces-4538-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 609ACCDDB63
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 12:36:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3851930019F3
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 11:36:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9702130BBB9;
	Thu, 25 Dec 2025 11:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rO4l8uJ8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54CC12E7165
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 11:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766662568; cv=none; b=Dxf0OLTMpqsZ4al6hJ2IJ3c9EWLZRAj44yCE5MFeMLaWixKwuttCJLlewUWluOP1+JefiLS8oT1TMiJsGMElC5oDlKxzRt1zYqOAIjcEXSpDtrgecwLTxxToI/8Flubu5kuf2SKi5g33MTcj5fdX1Or0g29DxEmi5Ow9Ft07Bf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766662568; c=relaxed/simple;
	bh=GdOjD7dV5LUmaw9MWK+iRmd8Ti8ov27sV8t69YJcT1I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rK6bt2QYqBwFozchk2C9ylbaqa26YLnrnVorp9YU7vhLPVpOU3rpvW3W4eqYy5GpanoC+GfXrol4CWT6n6his2n+WbHVywdImGeV2TZNrK6lg3jAV71DfOwh+eb6raVnEv9DQtEZ8J43rQXKQ5T1W2VnnPqkJjAjcllRqKI2VvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rO4l8uJ8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36AB5C116B1;
	Thu, 25 Dec 2025 11:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766662567;
	bh=GdOjD7dV5LUmaw9MWK+iRmd8Ti8ov27sV8t69YJcT1I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rO4l8uJ8xJBtwxrDKYOetbs4Rfb3bHv8o+IWduFn/PTmnLAydR81f/V7CQwlcn1sg
	 wMd0vfkm4d2ygUREKFm6tamuetjg7iUxByyHVMbkOGzoGhMWpVNeAzaissP6RM2EvB
	 9kXpvY7yirxkKCSdyHWAvTevxnNTmJIbJWedAttqS6e+gwnxXFwLvjZQHSEkJZhqm3
	 LHAnLEuFg3AlvFo9Wbq0zoJJ0dgdw+obhGUXWODr2WNI0Qrn2z1T7Uw9OP1yTLggZB
	 nuSiF1lQV7IUY8AoRB4VELdw+nmImby6PzjRbMEjBY4Sxp7iLR2FZnihL7cy2oCVSB
	 Y2G4BRlui29aQ==
Date: Thu, 25 Dec 2025 12:36:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 0/1] man/man2/semop.2: Fix VERSIONS and HISTORY mix-up
Message-ID: <aU0gVLxNMAtp6HYh@devuan>
References: <cover.1766641592.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dc3foea2v44rxelq"
Content-Disposition: inline
In-Reply-To: <cover.1766641592.git.sethmcmail@pm.me>


--dc3foea2v44rxelq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 0/1] man/man2/semop.2: Fix VERSIONS and HISTORY mix-up
Message-ID: <aU0gVLxNMAtp6HYh@devuan>
References: <cover.1766641592.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <cover.1766641592.git.sethmcmail@pm.me>

Hi Seth,

On Thu, Dec 25, 2025 at 07:26:02AM +0000, Seth McDonald wrote:
> Hi all,
>=20
> The man page for semop(2) and semtimedop(2) has a VERSIONS section, but
> not a HISTORY section.  However, the VERSIONS section describes what
> should instead be in a HISTORY section, and doesn't distinguish between
> the two functions' different history/versions.
>=20
> The reason for this seems to be a commit which removed text attributing
> the listed standards and versions to the corresponding function.  I've
> patched the page to make clear which function has what history.
>=20
> Do note that this my first attempt at using a git & email workflow.  So
> while I've attempted to follow the contribution guidelines, there may
> still be some errors I've missed, and which I'd be happy to correct.

Thanks for the fix!  I liked it very much, except that I've split it in
two commits.  I've pushed them already, so you can check what I did.

Regarding git & email, the patch was corrupt.  It has this:

	 Linux 2.5.52 (backported into Linux 2.4.22)
	,

which was breaking a line from the patch.  Thus, the patch didn't apply;
but I fixed the patch manually, since it was easy.  I guess protonmail
did something bad to the mail.  I wonder why it decided to break that
line and only that one.  :|


Have a lovely day!
Alex

>=20
> Seth McDonald (1):
>   man/man2/semop.2: Rebrand VERSIONS as HISTORY
>=20
>  man/man2/semop.2 | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>=20
> Range-diff against v0:
> -:  --------- > 1:  86b4c2ec9 man/man2/semop.2: Rebrand VERSIONS as HISTO=
RY
> --=20
> 2.47.3
>=20



--=20
<https://www.alejandro-colomar.es>

--dc3foea2v44rxelq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNIaQACgkQ64mZXMKQ
wqnQxg/+PtFGwSgeoFdLUR8Mm81Uc1RuvLLlaLOPwU2T77OP/tBUafAKaZmnBoT+
jGQyGNzA0tZEGuXmiirixxP158KjqCRL3RG2YWtM5LK8QNVBmfYfGjOrJNt0xd4m
cM8NgEqNdJuRTOsa0vGs+x3qzGVPpLS6fq3PRv1tkOj1yeYPC1WRl8SkUuhznBk6
WqotiDG7h6fNp9oaWLkDTIh/JUjuWIIvwZ8Jt9IozTmc+hF4U3d6kTKIaSjplbj4
yep6vMIGrDOjo1FOh/lo1kdCdt9WAVBEwdF7oXfymG8dPPGKWejENWnB94lJgKFZ
RH8wNcViZi+uKkhxeg4x5AJjmTfBE6qpDwHtsJQtSTadYok1svUyNKnMJIurR6DM
N4sd0lmM5eGCyov1t+Snzcl+7aCTMtUlBASZbssXsIcLAcvruUaZysexeuyNCaP7
uZnoPZnWtOf7G8ixCIIsj/KmBM+Kp7dLsO5dUH4BDyya+q1Nq9+mMg3SIrdl/TWM
Yd9HOjrgCKRVODbZcGkXxyub2IZ13I8J57QMocpNO/guJB/Hb2XmmQ1Vw0ToFN+h
JSMD/Ht8DK63s0nGzsTuHtXqP5d1eCKmwRlJJExCVFIIhpaGdralwVTkcm/QxTGI
hyb7D/TL5EVedX5B3+jhzeNoJ7Nl5AyYm6zKg+jHmPXYvZr+fTI=
=JKU5
-----END PGP SIGNATURE-----

--dc3foea2v44rxelq--

