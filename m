Return-Path: <linux-man+bounces-3519-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7AFB2E18F
	for <lists+linux-man@lfdr.de>; Wed, 20 Aug 2025 17:56:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BE8711BC1DEE
	for <lists+linux-man@lfdr.de>; Wed, 20 Aug 2025 15:53:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EB6E32274E;
	Wed, 20 Aug 2025 15:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9UUcVFF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E272C299AB3
	for <linux-man@vger.kernel.org>; Wed, 20 Aug 2025 15:52:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755705160; cv=none; b=H4RwZ4emZvIK9H5RIBpxc7G5qaA4n+z0ps2szvEvCUufm+3ynhFZhtlsAxcbgt7SY/FTc94zUeC6tezdspzoEb5J8pmt5QabXXU3czkHRTOKcGVsEtwAtPuTs2ltevSPuChG8J9AZbU7n+QYa3wRxxWwJMR1DQBgYYe2iC34BIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755705160; c=relaxed/simple;
	bh=VjTLdVlkRgtkt3NlYAaVAfTGdedDliCWle94BHNNYnw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F41911jCjtLVSJIbSyHUfRPX8VEBaRjoGBFFzpsI+I9ms33pmKO+Ztik/9kNwEQBS/qXg2qXq06EqyAk6o0gfpX0sIJ9NIY9EYFfnLdZrGs0zNIkYj4BmeOZR8cV5XsWUBfO72wLj78k+mrzy9YPBBDdrBO6yrXk+r1KbBduyeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9UUcVFF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40CDCC4CEE7;
	Wed, 20 Aug 2025 15:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755705159;
	bh=VjTLdVlkRgtkt3NlYAaVAfTGdedDliCWle94BHNNYnw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b9UUcVFFm6/ucOe+S1vc2e1m1R/rSUtw958Zw/eZZzkbeqD6nxYhXh8sJ0nfqMxAt
	 gp56cm355EG3mZblCxT32n9UlORcNEMhB14dtF8QMIsarzJb+9GzlcTy3eqGb4MahQ
	 EZT1MGxNv4suNLEZavAQeGppKdLhgaoWXsfwChuE9Sc8ApiREhZv47MGyQai0iATQi
	 AIXkelukCBeXj4tRGOIrRBdBZ/OBhNaItnXNzhAZNls9oGakIulYMFczj1xu5rk7fl
	 hzC6jFWqUxSBDxgEB9+7Hhgz2RcdqVuRpouhzpMqTe45bBaG/odJixWH/1fWitZ9oQ
	 ItNosxdpHFFSg==
Date: Wed, 20 Aug 2025 17:52:34 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Dr. David Alan Gilbert" <dave@treblig.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/pthread_attr_init.3: Replace errc
Message-ID: <opcd565lih2ibkdfbjgnou2nxbvl3slok6yqcxaw4ftuauynet@blvvmsixj2ge>
References: <20250820012725.440625-1-dave@treblig.org>
 <7r2bs3ccxjzex3atdkcutdn6rzqmjsczqucodyk3rgfsnevqun@i3szklptbqjf>
 <aKXXVO6VdrhXkidS@gallifrey>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zq7asptzmijce2zl"
Content-Disposition: inline
In-Reply-To: <aKXXVO6VdrhXkidS@gallifrey>


--zq7asptzmijce2zl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Dr. David Alan Gilbert" <dave@treblig.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/pthread_attr_init.3: Replace errc
References: <20250820012725.440625-1-dave@treblig.org>
 <7r2bs3ccxjzex3atdkcutdn6rzqmjsczqucodyk3rgfsnevqun@i3szklptbqjf>
 <aKXXVO6VdrhXkidS@gallifrey>
MIME-Version: 1.0
In-Reply-To: <aKXXVO6VdrhXkidS@gallifrey>

On Wed, Aug 20, 2025 at 02:10:28PM +0000, Dr. David Alan Gilbert wrote:
> * Alejandro Colomar (alx@kernel.org) wrote:
> > Hi Dave,
>=20
> Hi Alex,

Hi Dave,

> > On Wed, Aug 20, 2025 at 02:27:25AM +0100, dave@treblig.org wrote:
> > > From: "Dr. David Alan Gilbert" <dave@treblig.org>
> > >=20
> > > The pthread_attr_init.3 example uses 'errc' to exit on an error
> > > printing the error code.  However, 'errc' is a BSDism that Linux
> > > doesn't (and has never?) have.
>=20
> > Libbsd provides a compatbility layer to provide errc(3bsd) on Linux (and
> > many POSIX systems).  libbsd is available in many distros (in Debian,
> > you should install libbsd-dev).  BTW, it would be nice if glibc decided
> > to pick this API eventually.
>=20
> To use that we'd still need to change to:
>        #include <bsd/err.h>

With `pkgconf --cflags libbsd-overlay` you get it as <err.h>.

	alx@debian:~$ pkgconf --list-package-names | grep libbsd
	libbsd-overlay
	libbsd-ctor
	libbsd
	alx@debian:~$ pkgconf --cflags libbsd-overlay
	-isystem /usr/include/x86_64-linux-gnu/bsd -DLIBBSD_OVERLAY=20

It uses some #include_next magic for that.

We could include <bsd/err.h>, although then the examples would
ironically not be portable to the BSDs.  :-)

> and tell people to link with -lbsd

Yup, we could show the command for compiling the example, which needs
`pkgconf --cflags --libs libbsd-overlay`.

Maybe...  We could include <bsd/err.h>.  BSD people will know to remove
that, hopefully.  And for the rest, compilation will be as simple as
-lbsd, instead of the pkgconf(1) command.

Feel free to send patches in any of those directions for errc(3).

> TBH using BSD only things in a Linux manpage with a _GNU_SOURCE define
> seems odd.  The err()/errc()/errx() family of calls seems to be pretty
> obscure, most [linux] people I checked with had never used them.

It's sad that these function aren't more known.  They're quite handy.

> But at least err/errx are in normal glibc.

Yup, that's a good thing.  I wish glibc added errc(3) too.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--zq7asptzmijce2zl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmil7zwACgkQ64mZXMKQ
wqnDNQ/7B9QPhShFEOu3fJCcQl9AnleDVrW9CvDuxeoEDuplojL2LGG/pcY+dvO2
BXEfqaDe0B/zWCpxPuZx3i/H9KhU9YFAHxmJCznv6mMqlXataBCRM8jdH5kA7ulu
GDG0TqD4zc1ohoWVx5IIXf27B8iXoeM2FY0pYtQNBt2MB2ftF0gz8YmC9qXCflXB
cyWUB6ZwY5Os704JubpXuSHVsWdcrdObTSmCdypXkinbSvu29cWXpkPOj6FrXybg
gSxo86Zo3z6B1as3mL6Gif2Ku51d1eMWi+l4LSzud65EWwO40m8/CcMPJvuSZb1s
Prastppz6zT5stfCSttO8YinAW3jIKqZqV0IvCPiDwtfLZvyUD+wTlIFSnmbeNZr
hFdOSB3zHA/ZBL4lhSueeWJVUiE1t7wkozoHWwMNf1JPuAxGYX6xGHAn1Vyk0TTO
n454ROd1nKDrOAJom6VU6d69iaTVZfK/B+6XnNaeWDUS+Re3KPNyKWBg2fW5Ki9+
QaYBzfrd9Mz5ioBfevHWx9UlJSCR721Gf0Fx++i52W0XAqQiiDT3CuQXCOZW2rcf
+/9vI65uaFojAztTI/IKwa1QU0X+oWUSPpOKT0W9QBizzU4TbQwGiP+zwSLxfc5G
PtzqSk29FvtsXuzxuuWXZLigtej3dizdAuBB59QDw2a79yeBGjk=
=hQzL
-----END PGP SIGNATURE-----

--zq7asptzmijce2zl--

