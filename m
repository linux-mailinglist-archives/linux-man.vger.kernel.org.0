Return-Path: <linux-man+bounces-425-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C56850B78
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 21:37:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6DFBE1F21A3C
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 20:37:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38FA73DBBB;
	Sun, 11 Feb 2024 20:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CciXhUNC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED21B1E887
	for <linux-man@vger.kernel.org>; Sun, 11 Feb 2024 20:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707683839; cv=none; b=AQZDzGTytuwNavJ+gerfmKU7HvAjNF6qIHEfzWfBg5qcfAgDPjJ+pskhM4CAORqw0lllp0qTXbweLXV6N3yuPuSscW4l+H5HL8yddY9W8Y8QOgMGd03qO8vcx0QSRYUGMRE1aKFWcQ+w87B7/8UHXPXQEr1rwm0937mkbCDa4A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707683839; c=relaxed/simple;
	bh=WWtU1aU8lo35pTWy+3fcrFYRsjozE8F/b1Y9t2fizus=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B73YRwUd9xjfu5Lo+b0mXnUuBalpt1t1KRiD8GI75s9hnm5Dbdw6ry22vAqjbdgJzJpxpcT/95LYn95B5PLuE2lGrAzc5JmYm/iwUBRSOQV0Bhnyo8PEqrYW4fYm8dxABP0fS3om5tX0WIX/mxdpKGHiCSvg/MviCofgY20hEpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CciXhUNC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5452C433C7;
	Sun, 11 Feb 2024 20:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707683838;
	bh=WWtU1aU8lo35pTWy+3fcrFYRsjozE8F/b1Y9t2fizus=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CciXhUNCZUYfKgydAJBTZb7ObWtOgH2diZDGt3U4odVg7vz/xQAt1YSXTEvD1QAKr
	 hMVxZYd+KI7asoU44V/WTqMUNrG2mCC4Exg15tPzABXPBlJHjn71QG8XYbhVjnrXni
	 9mZbN/MU9FSBfb5nL0C6KIQg3KOni2D2RNO4XKkuGWIWIT53L8y2vFgrkWr58JPyQ5
	 QzrcvsbClF4Y0EN4JXUCUKOU2Y9YCsr6DVWAlefj/RGMneh4F2QovCvg460gwexNHG
	 h8eHoAXXyaIyJJfTyimlcnvbDIryRcDDZsDd4IHPsK/FxB9Yog6VyChsSkcNX0oh4P
	 XmkKvTpM0cy3A==
Date: Sun, 11 Feb 2024 21:37:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] pthread_create.3: re-do the architecture/default stack
 size mapping
Message-ID: <Zckv-93zIsXvmc3G@debian>
References: <4wwe76cvuczjn57bzw7wd4derfaufcgrxr5skvlu25wvwecmmh@tarta.nabijaczleweli.xyz>
 <ZckYZ2q0PQIWFqrq@debian>
 <47dmavi2ewo6pyxfoydqv5ztl35nuixe5z5wydqixozognii3v@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0B41tZAPW0prdOZr"
Content-Disposition: inline
In-Reply-To: <47dmavi2ewo6pyxfoydqv5ztl35nuixe5z5wydqixozognii3v@tarta.nabijaczleweli.xyz>


--0B41tZAPW0prdOZr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 11 Feb 2024 21:37:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] pthread_create.3: re-do the architecture/default stack
 size mapping

Hi!,

On Sun, Feb 11, 2024 at 09:00:04PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> Hi!
>=20
> On Sun, Feb 11, 2024 at 07:56:39PM +0100, Alejandro Colomar wrote:
> > On Thu, Feb 08, 2024 at 09:43:21PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> > > +a per-architecture value is used for the stack size:
> > > +2 MB on most architectures; 4 MB on POWER and Sparc-64.
> > Why capitalize POWER and omit PC?  Other than that, LGTM.
> This is what the official nomenclature seems to be:
>   https://wiki.debian.org/ppc64el says
>   > News
>   >=20
>   > The IBM POWER platform, code name ppc64el, is an official architectur=
e since
>   > DebianJessie.
>   >=20
>   > Required Hardware
>   >=20
>   > Debian/ppc64el requires, at minimum, a POWER8 processor machine. Alth=
ough
>   > Debian was initially bootstrapped on a POWER7 set of servers, this cl=
ass of
>   > server is not supported anymore, and you are not able to run Debian/p=
pc64el
>   > on a POWER 7 processor without hitting an illegal instruction fault.
>   >=20
>   > There are, at this moment, a plenty of POWER8 machines being sold by
>   > different companies.=20
>=20
> All the branding I've ever seen in the modern world calls it POWER,
> and AIUI the PowerPC branding was abandoned like 15 years ago.
>=20
> The debian wiki page even says
>   > The ppc64el port is not aimed for old Powerpc Macintosh machines,
>   > and, at the moment, there is no way to install it on this class of
>   > machines.
> but wikipedia tells me the last product from this line came out in 2006,
> which is pushing two decades by now. Even then, apparently
> "PowerPC is largely based on the earlier IBM POWER architecture"
> so it's the same thing.
>=20
> Maybe when Apple had a choke-hold on the millennial mind a calling it
> "PowerPC" could've made sense, but through a modern lens PowerPC,
> to the extent it exists at all, is just a derivative of POWER I think
>=20
> Best,

Hmmm, thanks!  Could you include this (or an excerpt if you prefer) in
the commit message, since we're changing the nomenclature?

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--0B41tZAPW0prdOZr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXJL/sACgkQnowa+77/
2zI1WBAAiJTti7tjolPwiQ5oxya0SlMHplMIj9OVBtj1xo+wsw41fHdk7YznK2Rh
eOfH/bBP/iXhw6VgVJSrmdxg0GN93ZHRb4lFCNX2NlEl6eo9Mc090Ont/TdKEjzU
yaS+fQsq0/DOp4Q4X9Suj7HC/VIB+p/ZLCfH+ksrFVtpXP/EMNECUo0hrY6cYql2
bl7O9xI/5S5fdmwwYlWGeg+kNnHtjTRANrozHkOrf4OuDIWHZGrcoJ9omsUd/Qaf
MU/UuLu/puDRwHicKmd9z5/lOM6NlN4RijGkN1z6nP6jgN1OqOd8+8Y1yoz8blQ+
VgsryrceNTQeJBmP+ZxgaWkqexwcgId3SvdBzskCGDQmx4PTAaXhT/OCE/KzTRlr
mXQxn7NFqd8l5CpH5JAvR+e3pUTkZME6WaFM7bRBxYYzn6gqTNfHanKjjCa4G9fH
bTRQe+Gp+bg3bBTx3uDxrZD3i2lDPmZHAQ7m2iirzVeHwn9/G1G8zLb3bJcbqVb5
+b2PSqhtgqiJR+nZmzbP1l8XQ3NdgTeWuVTMD1tzevZL+ztvm5p1d4zUpFUzUs9P
LY5dvFLnv+Wc2WJwWCCiol4VTsGBZeFEGsB1R2IU+7OjKSvoSiqS2OUWtOZGJcxt
G4zagojx2KUwDK5Op0gdoVgVcPixfYgJ+2JylUf7fB5npMi1Azk=
=cZ/G
-----END PGP SIGNATURE-----

--0B41tZAPW0prdOZr--

