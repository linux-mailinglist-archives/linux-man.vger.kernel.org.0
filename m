Return-Path: <linux-man+bounces-4709-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 317B3D00032
	for <lists+linux-man@lfdr.de>; Wed, 07 Jan 2026 21:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C91033027A4F
	for <lists+linux-man@lfdr.de>; Wed,  7 Jan 2026 20:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC0101E5201;
	Wed,  7 Jan 2026 20:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b="Kzdij2lH"
X-Original-To: linux-man@vger.kernel.org
Received: from out-183.mta1.migadu.com (out-183.mta1.migadu.com [95.215.58.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6957E329E6D
	for <linux-man@vger.kernel.org>; Wed,  7 Jan 2026 20:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767817036; cv=none; b=oF31vo8eb7VApqtUFO5bSrCYnPIyy5ROmHFxhcj86HXxs/sBa0HTpfBqwBRhJoUYH2h+u2t3bMOWYA7kyezWi6ApOCvqVnmSCjQbpI8iYCRt42VeIQpx59fxc1Dw49oNdDrREHqAYK/TPPO5BAOpBcyhYT2E8m+q/jGJdBN4giE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767817036; c=relaxed/simple;
	bh=07n/DPpLfsVOQnqsq1zt3L2sQCCbMBtf1Pie/5/x2js=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l/aHC2SAOkn61KqFTooUMCa0yQxe/kHmPOVFdY2LTMwUq7aUc+G1Gdy8MTZndsFcWc+pdWHUjgEvlAWtT6haRf+GVfMgvt0Ja0KPm2N9FcDM7NMrsG7FoEMoytXd0IRb0rWNK8DniN+oLLPOhHCNJ0ip9RQZWzfPJmHW9ygnEc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es; spf=pass smtp.mailfrom=alejandro-colomar.es; dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b=Kzdij2lH; arc=none smtp.client-ip=95.215.58.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alejandro-colomar.es
Date: Wed, 7 Jan 2026 21:16:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alejandro-colomar.es;
	s=key1; t=1767817029;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=16pWyrkuc1X33Ptdg8hM18gMPvRpTPebwIBcfnybcpI=;
	b=Kzdij2lHrBCQyF9asn66fGhu5lhpnqzHyA5Zi81mhBtcy0n47hYMRZSfn2qSawM+vZcALS
	hPSZ4QWJFpEOdFumbOD2zK5AZNNxjOEc2UKCleTtc9LMd/e7fBp0oU7QZUvVGkH5iuQEf8
	0xEIVkL8pMHF9GRIrQfkIwZ38jAJ9Rve7LZerh44cFz56eiG4ij8t1rTiIIky/TEkbiwXD
	X/9nN3CvtN27do81M9YlU5GI9/sZTNAGJ6rzMWFqMSdO1kcOaI/tmLxjpbKi/IVxGTba/H
	SwjhSmJXIDJkFG3pPGxRVTIw0iwzFXoOKqOIO+Fo7cuoCxI6PYCFUaihCcgRWw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: David Svoboda <svoboda@cert.org>
Cc: Robert Seacord <rcseacord@gmail.com>, 
	"sc22wg14@open-std. org" <sc22wg14@open-std.org>, Florian Weimer <fweimer@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>, Aaron Ballman <aaron@aaronballman.com>, 
	"libc-alpha@sourceware.org" <libc-alpha@sourceware.org>, "musl@lists.openwall.com" <musl@lists.openwall.com>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [SC22WG14.34664] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
Message-ID: <aV69o8h0I3Px7ryV@devuan>
References: <20251223161139.196AB356CF9@www.open-std.org>
 <20251223164349.F0BC5356D1A@www.open-std.org>
 <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
 <20251223211529.6365A356CF9@www.open-std.org>
 <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
 <20260106210527.AA3FA356D3A@www.open-std.org>
 <20260106214930.A5C8E356D2B@www.open-std.org>
 <PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <aV4N-0egpfxhmnta@devuan>
 <PH1P110MB1636D74EDD4F3074AC98F12FCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qo4pmdvz556yatqa"
Content-Disposition: inline
In-Reply-To: <PH1P110MB1636D74EDD4F3074AC98F12FCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
X-Migadu-Flow: FLOW_OUT


--qo4pmdvz556yatqa
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: David Svoboda <svoboda@cert.org>
Cc: Robert Seacord <rcseacord@gmail.com>, 
	"sc22wg14@open-std. org" <sc22wg14@open-std.org>, Florian Weimer <fweimer@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>, Aaron Ballman <aaron@aaronballman.com>, 
	"libc-alpha@sourceware.org" <libc-alpha@sourceware.org>, "musl@lists.openwall.com" <musl@lists.openwall.com>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [SC22WG14.34664] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
Message-ID: <aV69o8h0I3Px7ryV@devuan>
References: <20251223161139.196AB356CF9@www.open-std.org>
 <20251223164349.F0BC5356D1A@www.open-std.org>
 <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
 <20251223211529.6365A356CF9@www.open-std.org>
 <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
 <20260106210527.AA3FA356D3A@www.open-std.org>
 <20260106214930.A5C8E356D2B@www.open-std.org>
 <PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <aV4N-0egpfxhmnta@devuan>
 <PH1P110MB1636D74EDD4F3074AC98F12FCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
MIME-Version: 1.0
In-Reply-To: <PH1P110MB1636D74EDD4F3074AC98F12FCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>

On Wed, Jan 07, 2026 at 01:38:19PM +0000, David Svoboda wrote:
> Hi, Alex!

Hi David!

> I'm just going to respond to your first point (about what precisely the U=
B is):
>=20
> The n3605 Annex J text says:
>=20
>     (157) A non-null pointer returned by a call to the calloc, malloc, re=
alloc, or aligned_alloc
>     function with a zero requested size is used to access an object (7.25=
=2E4).
>=20
> This suggests that working with a non-null pointer that has been returned=
 from realloc() is the UB, not invoking realloc(0).
>=20
> But 7.25.4.8 (realloc) text says:
>=20
>     Otherwise, if ptr does not match a pointer earlier returned by a memo=
ry management function, or
>     if the space has been deallocated by a call to the free or realloc fu=
nction, or if the size is zero, the
>     behavior is undefined.
>=20
> So you're right...UB comes from actually invoking realloc(), not working =
with whatever it returned.  The Annex J wording needs some cleanup.  Unless=
 your paper gets accepted, in which case this Annex J UB goes away (and it =
wouldn't hurt to mention this in your paper, as we have found lots of obsol=
ete UBs in Annex J).

Agree; UB 182 is already covered by the usual rules for NULL.

I thought you were talking about the UB introduced in C23, but that one
seems not documented in Annex J.  In fact, it's still documented
incorrectly as ID (J.3.13 entry 41, in N3220).

The UB we should be talking about is specified in 7.24.3.7p3:

	[...]  Otherwise, [...], or if the size is zero, the
	behavior is undefined.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--qo4pmdvz556yatqa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlevzQACgkQ64mZXMKQ
wqmyCA//c8pBP/fqPGt7HIAMOc1SfyL53AnW0DIJNKsBcXO+08jKxuGCBsBSioH0
7j1ywkQrTOv8kxOQF8zrFUSjevzbY6aobS4ZsaBLkZ1AyTsBQPYqIIsgbPPyQxZQ
8ndVN2GrCmiDmZNXYDYotaPY7DG6UkmYNUnAqPJ2yVUZ21i6kUa5ofEwfpNiyCrR
o84fWUwxmMBuS+LQot7gaW+DuZ4IIxw80eZ+S9LzdShFotskgayY3e9v49MGzoSF
Q5pZddMEn/Jrb7Tsbkifwk3y2D+ecWweWU4Q2x6vEssAN9ziyjVKcGad/thb70dX
9peaQIQgwcSvf5kCtc/TbrnNmHSeelbRtkpBIqUmefKuSLEk/E3ZX/YYzKfo9HvK
Fr9gb74zZH34SJJxRpM8AX3fmeO1lBKWvUwEFWfqDOg/z5o0rPSYhQkPNB+LreZH
r7OJQEVhh6WiwALtKS0oiMLKt3dVJ9ZHcJAb8qA1kzpSBmRqhGaCBLGofffKET6j
eAExiBGgXHyINVQKLsGO6TBmIOoYbFmdhieyle9nXCxRsVQun5S5TC+ZsX0vtrPl
6rEPuda+TYEGtAankWnnB0jeO2lTF5+EK8fHpZ0OLQs4jW+MYairtzyVDiS6mnbE
zBVASZ59065IzHne7/SyRQx6Xq64uciaMuKbWRkKCdb+bO3Nikk=
=hrTL
-----END PGP SIGNATURE-----

--qo4pmdvz556yatqa--

