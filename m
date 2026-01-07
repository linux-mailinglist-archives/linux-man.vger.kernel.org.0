Return-Path: <linux-man+bounces-4706-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D88CFC7AA
	for <lists+linux-man@lfdr.de>; Wed, 07 Jan 2026 09:00:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D7B003001EE4
	for <lists+linux-man@lfdr.de>; Wed,  7 Jan 2026 07:57:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECC4A27C162;
	Wed,  7 Jan 2026 07:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPez6lYZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB97C23372C
	for <linux-man@vger.kernel.org>; Wed,  7 Jan 2026 07:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767772662; cv=none; b=eZXc3sUp5oYSqC6O4MvxBz7JdKDH2ArkXpwKhs1o4LaRTC7qalNOzybTMW4zOZX7EdxbMIXwm5faSKTV/YOXxFZvR/CiAPIzEDiOD16kBZ5Rlvu4piThtxL8MA7sK5B1mjyGZbFqMAFzsGzjO9CKqkIi8ANp9vy/jphGqsSYFbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767772662; c=relaxed/simple;
	bh=qTWe8x6PMsQ7wajmYnbRKG7pIxU7ZdIEocrcb937190=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P6wJN8iCybCbU1UgFd4qrv3ES4dwOVb0ug03FbsBOhj+AaICGrT8xP87MfH+rmFR4ycUTIgIhSrA7C0r+FiQkJou8xt0/TXgGHhhRmTYvbrh1PxTazdTzKa+030/Oq8X3ASeM7O6P4plZ9FEvAVS9ywHWaZfnSlj6TqFPrNtb04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPez6lYZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3468C4CEF7;
	Wed,  7 Jan 2026 07:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767772662;
	bh=qTWe8x6PMsQ7wajmYnbRKG7pIxU7ZdIEocrcb937190=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uPez6lYZiYmIkYrlF7oQw3INP2Qzq2mglD/kBb6mDjUo+xAnGMKbaWGSJmRQJvKsi
	 QapSqyZLOhpBVMC1GlgwA0tiBY2TOCbFi8PIex6mzuPmxzN2rD1CSZDZWOptnZy2Da
	 fUddRvpqFZfl9zXW1yRry8OddkNJD2r3etUWCZ/4v8BKtuBBBgFu2DAMpHNb7WrJgD
	 rHojCYJcZGq6xO/RZXJd2E/n1YINlDJVaqmyALsmyuO8cTNOFxeHjRczcp66Fpxunk
	 xgl/4ATHxlAPhdDTxWfIXCEckVu1j9XmEvAP/sd6Ue7lZuJ6zLlpvUr6gu9xTKUWND
	 lExY6ZPOcsJ6g==
Date: Wed, 7 Jan 2026 08:57:39 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/15] man/man3type/*: Update history of types A-INTN
Message-ID: <aV4RopTS2yzgSJ5_@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <aVz_ZyQwZ796x4mV@devuan>
 <9ylwViWt_9qtIuypo8MHpRkyeiPJx82sJLmLbJMaygxKFfvxYx7RerFVo-aaBEl-66P-ySj_bP_rTL_eB1RFdrHtiNoXGL3c7PNj99lm2G0=@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h3oyepamwikzzwlq"
Content-Disposition: inline
In-Reply-To: <9ylwViWt_9qtIuypo8MHpRkyeiPJx82sJLmLbJMaygxKFfvxYx7RerFVo-aaBEl-66P-ySj_bP_rTL_eB1RFdrHtiNoXGL3c7PNj99lm2G0=@pm.me>


--h3oyepamwikzzwlq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/15] man/man3type/*: Update history of types A-INTN
Message-ID: <aV4RopTS2yzgSJ5_@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <aVz_ZyQwZ796x4mV@devuan>
 <9ylwViWt_9qtIuypo8MHpRkyeiPJx82sJLmLbJMaygxKFfvxYx7RerFVo-aaBEl-66P-ySj_bP_rTL_eB1RFdrHtiNoXGL3c7PNj99lm2G0=@pm.me>
MIME-Version: 1.0
In-Reply-To: <9ylwViWt_9qtIuypo8MHpRkyeiPJx82sJLmLbJMaygxKFfvxYx7RerFVo-aaBEl-66P-ySj_bP_rTL_eB1RFdrHtiNoXGL3c7PNj99lm2G0=@pm.me>

Hi Seth,

On Wed, Jan 07, 2026 at 03:33:17AM +0000, Seth McDonald wrote:
> On Tuesday, 6 January 2026 at 22:35, Alejandro Colomar <alx@kernel.org> w=
rote:
> > Hi Seth,
> >
> > On Tue, Jan 06, 2026 at 05:07:49PM +1000, Seth McDonald wrote:
> [...]
> > > Regarding the order of the listed standards in HISTORY sections, I've
> > > seen man pages with the same set of standards listed in different
> > > orders. But I have found a general ordering that a good number of pag=
es
> > > adhere to. That being:
> > >
> > > SVrX, X.XBSD, SUSvX, POSIX.1-YYYY, POSIX.2, Linux X.X, glibc X.X[.X],
> > > others (e.g. OpenBSD, Solaris, AIX).
> >
> > I think it would be better to use chronologic order. I leave it up to
> > you if you want to keep the patches as they are, and (optionally)
> > improve the order afterwards, or fix the patches to use chronologic
> > order. Since, as you say, there's no existing consistency, I'll accept
> > the patches in any order; just let me know what you prefer.
>=20
> In that case, I'd much prefer to focus on just adding/adjusting the
> listed POSIX/SUS standards before polishing their order.  I'm also
> currently not the most informed on the history of BSD and System V,
> which are both commonly listed in HISTORY sections.  So I'd have to
> first take some time to research on that front.
>=20
> However, a more efficient method could be someone more knowledgeable
> than me adjusting the order as I send in patches.  That is, I attempt to
> add POSIX/SUS standards in chronological order, then someone else can
> adjust the order taking into account the non-POSIX/SUS standards listed.
> If one is willing, of course.

Okay, I can do some adjustments; someone else can come later and improve
that further.

>=20
> [...]
> > > I also followed a few more guidelines when editing these lists that m=
ay
> > > be noteworthy:
> > > - Since POSIX and SUS merged into the same document in POSIX.1-2001/
> > > SUSv3, only POSIX.1-2001 is listed for functions in these standards
> > > (or later), but with XSI appended if the function was part of the XSI
> > > extension (e.g. POSIX.1-2008 XSI).
> >
> > LGTM
> >
> > > - Since SUSv1 is aligned with POSIX.1-1990,[2] if a function's first
> > > POSIX appearance was in POSIX.1-1988 or POSIX.1-1990, then it's first
> > > appearance in SUSv1 is not also listed due to being implied by its
> > > POSIX appearance.
> >
> > This should be documented in standards(7).
>=20
> Agreed.
>=20
> > > - Similarly, since SUSv2 is aligned with POSIX.1-1996,[3] the same is
> > > true for functions first appearing in POSIX.1-1996 and SUSv2.
> >
> > This should be documented in standards(7).
>=20
> Agreed.
>=20
> > > So in general, SUS is listed if the function (or constant/type) appea=
red
> > > in SUSv1 or SUSv2 before it appeared in POSIX.1.
> >
> > LGTM.
> >
> > > [1] https://www.kernel.org/doc/Documentation/process/submitting-patch=
es.rst
> > > [2] X/Open CAE Specification, System Interfaces and Headers Issue 4,
> > > Version 2, Chapter 1.6 "Relationship to Formal Standards", p. 10.
> >
> > Do you have a link?
>=20
> I don't believe SUSv1 has any online HTML resource.  However, its PDFs
> (one per XPG4v2 volume) are available online.  Here's the one for System
> Interfaces and Headers:
> <https://pubs.opengroup.org/onlinepubs/9695969499/toc.pdf>
>=20
> > > [3] CAE Specification, System Interfaces and Headers, Issue 5, Chapter
> > > 1.6 "Relationship to Formal Standards", p. 11.
> >
> > Do you have a link?
>=20
> SUSv2 does have an online HTML resource, but I couldn't find the
> relevant section on it.  Fortunately, it does also have PDF versions
> online.  Here's the one for System Interfaces and Headers:
> <https://pubs.opengroup.org/onlinepubs/009639399/toc.pdf>

Thanks!


Have a lovely day!
Alex

>=20
> ----
> Seth McDonald.
> sethmcmail at pm dot me (mailing lists)
> 2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369




--=20
<https://www.alejandro-colomar.es>

--h3oyepamwikzzwlq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmleEfMACgkQ64mZXMKQ
wqnsSA//WrzonfAqheRvq+3Er/u1+TANJaTCUTz8ktGQ39YLnSu5AnnHzQNim3VJ
G6hQYRpSgu77FaCchpM8ze83U24tCzLB3PVhqjR4AHllnRiIGEg6PmdQGwVXHFYy
rW9JTYmltTOXVkGRIzQZqvdticofLG2XRGLrw9LvpgiBc3qXPCjFJVtRa3bRchUG
7U8FlQSuyAEstfhcTdB0OIPQRP6XP76XvgQsIqc1zgiMidKevILwlbY1Y2sDbHAL
tJ7qFeBNSJth51y1AGOdIr2Ms7Fb4tp7Pk1ZWoqrOQL6DDNQAVKZw4pP1kqOi6Rl
yy2d6OGf7Pe7PgbvmMJOcWvPSDD0vKbZbSyeFzHXKoBTlBEV2cRJta+htk2Uxc0l
WPdELeBHbicf6fbaIR3kaiPWNM0ub+2UXq/4G9L0w23pE4+e11hVOI+CXYhkeaeC
mtWM/zTIWXSSVvyfvITvQ851e0W7+XYBfY0p5M6Xl55s9OeSaijhYI8B/y/CG5Jx
MPc5fSig5szAbzh/XCKkEma5YHpmkx8us5JePwhAHvOgy56VJIazC0mBQlGGu3AK
cJSnrQ/zzdqEgVU3khpmcho59onp1TbUPQIZ03Bbl7wIK2ZHXBaAtooYPH3xhCYH
j1YiB3fga3MrD1uk0jqki7bRXbG2H8e3RHxL9ZPZ4fX2S5iDG3o=
=VQhA
-----END PGP SIGNATURE-----

--h3oyepamwikzzwlq--

