Return-Path: <linux-man+bounces-2529-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3FEA47AD1
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 11:54:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92B033AEA6B
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 10:53:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FB4722A7E8;
	Thu, 27 Feb 2025 10:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPNZsbkK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5667722A4F7
	for <linux-man@vger.kernel.org>; Thu, 27 Feb 2025 10:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740653636; cv=none; b=d7hQgmuux7S3xVy7qyVSeETb7qd04g8PaImB6TuwNlQjtbDiAev/OvG0/xN06HYpyhAqTji0dt5s/cne0fgb7Qf0asyZmNbjNYmWthGrMydJYIgefB6SF1bIn+i0d/GBwI+WscUlQ3vZBSZOspPJYYaUNHR1sj8ALTArcwkbIOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740653636; c=relaxed/simple;
	bh=HiH6Dq31u6BdfCch+idUNsQTrGJNWPEJ7U5Rw4Koh10=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sdugoLIFw0I7C457wHj30e2vjiO2xwkhNit58vblaGmxzWAqu3w+unanUfQgHDJhIevxl6R3jAlO1B3L/JpX8YYChQGFNkGFH/B/Y/FPPNxrk19bfDk0a/AQEs2kHUXxB3QxTelHVxbZFy59Pt7vP8LRH28TQUF8ZKrw5SrfdLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPNZsbkK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CD96C4CEE4;
	Thu, 27 Feb 2025 10:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740653635;
	bh=HiH6Dq31u6BdfCch+idUNsQTrGJNWPEJ7U5Rw4Koh10=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pPNZsbkKbDjxUN8DYNsn+Fhw1MtYOWEPVk2g3g6ZNBreN4QkhTgTULF9/JcnhL834
	 QiJXOBo3mxfo3iINFGlIzvScNHKI5tKGPB3fOa9o+aC3pY2eZi4OBjVruojAqo0uSC
	 ERAK0s7TKymDkaiqSPHHbw0JzzbjbJ9RbthHtgFpNWN/x7CjBPlAkn4WwOd0pK6uYK
	 4qRcltLOB1v8mi3aqV9v9MzWgUxcAB6XYOAr9xfj3FbOH/FMX2xk1vtM0zrHS3Y5vb
	 9ftlXuPc3ZgST/KM+Bpnr53+AvEFIIOjPRbtycZA38QwXkVM4Dxryj93/Dyq5e+U0T
	 a3tYeeRB7JTMw==
Date: Thu, 27 Feb 2025 11:53:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] add time64 copies of system calls
Message-ID: <2jk5nfkohlmp7i3pcn5dvgh4zk2qj2mgjehfvqzr63hq2bdeei@ti3gzj6hmoxm>
References: <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
 <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
 <20241118225148.fgrvxxg2p6on4nl3@devuan>
 <5778beee-a1c0-45cf-93fa-8d36501911f9@juszkiewicz.com.pl>
 <fb5d9a20-9937-4cf7-b8e0-99710d88f4bc@redhat.com>
 <e2496012-6e25-4e85-ad27-0104dad7463a@juszkiewicz.com.pl>
 <spyqfjxpxqpg5uotsadzacxsxwret4topf6nrmzcfakpujabbv@k5n3cjbo74qm>
 <31a9437f-3a30-410c-8456-10e19e0674f9@juszkiewicz.com.pl>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dvx6v7zy4yhojgjt"
Content-Disposition: inline
In-Reply-To: <31a9437f-3a30-410c-8456-10e19e0674f9@juszkiewicz.com.pl>


--dvx6v7zy4yhojgjt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] add time64 copies of system calls
References: <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
 <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
 <20241118225148.fgrvxxg2p6on4nl3@devuan>
 <5778beee-a1c0-45cf-93fa-8d36501911f9@juszkiewicz.com.pl>
 <fb5d9a20-9937-4cf7-b8e0-99710d88f4bc@redhat.com>
 <e2496012-6e25-4e85-ad27-0104dad7463a@juszkiewicz.com.pl>
 <spyqfjxpxqpg5uotsadzacxsxwret4topf6nrmzcfakpujabbv@k5n3cjbo74qm>
 <31a9437f-3a30-410c-8456-10e19e0674f9@juszkiewicz.com.pl>
MIME-Version: 1.0
In-Reply-To: <31a9437f-3a30-410c-8456-10e19e0674f9@juszkiewicz.com.pl>

Hi Marcin,

On Thu, Feb 27, 2025 at 10:52:16AM +0100, Marcin Juszkiewicz wrote:
> W dniu 26.02.2025 o=C2=A016:23, Alejandro Colomar pisze:
> > On Wed, Feb 26, 2025 at 03:48:19PM +0100, Marcin Juszkiewicz wrote:
>=20
> > > diff --git a/man/man2/adjtimex.2 b/man/man2/adjtimex.2
> > > index 7a87ac654..6dde493aa 100644
> > > --- a/man/man2/adjtimex.2
> > > +++ b/man/man2/adjtimex.2
> > > @@ -10,7 +10,7 @@
> > >   .\"
> > >   .TH adjtimex 2 (date) "Linux man-pages (unreleased)"
> > >   .SH NAME
> > > -adjtimex, clock_adjtime, ntp_adjtime \- tune kernel clock
> > > +adjtimex, clock_adjtime, clock_adjtime64, ntp_adjtime \- tune kernel=
 clock
> > >   .SH LIBRARY
> > >   Standard C library
> > >   .RI ( libc ,\~ \-lc )
> > > @@ -22,6 +22,8 @@ .SH SYNOPSIS
> > >   .P
> > >   .BI "int clock_adjtime(clockid_t " clk_id, " struct timex *" "buf" =
);
> > >   .P
> > > +.BI "int clock_adjtime64(clockid_t " clk_id, " struct timex *" "buf"=
 );
> > > +.P
> >=20
> > I'd move it to the bottom of the SYNOPSYS, and add a comment above
> > saying it's only available on 32-bit systems (if there are exact macros
> > that define those platforms, it would be interesting to use that):
>=20
> It is on all 32-bit architectures supported by Linux 5.1+ so probably the=
re
> is no point in listing them in man page.

Can we use something like #if (PLATFORM_BITS =3D=3D 32)?  I guess there's
some macro that will determine that a platform is 32-bit, right?

> Now they are: arm/armoabi, i386, powerpc, s390, arc, csky, hexagon, m68k,
> microblaze, mips64n32/mipso32, nios2, openrisc, parisc, riscv32, sh, sparc
> and xtensa.
>=20
> https://gpages.juszkiewicz.com.pl/syscalls-table/syscalls.html shows all
> system calls and allows to disable/reorder columns. Everything from 'avr3=
2'
> to the right is no longer present in Linux kernel.
>=20
> > 	// Only in 32-bit systems:
> > 	...;
> >=20
> > or
> >=20
> > 	#if (...)
> > 	...;
> > 	#endif
> >=20
> > >   .BI "int ntp_adjtime(struct timex *" buf );
> > >   .fi
> > >   .SH DESCRIPTION
> > > @@ -557,6 +559,10 @@ .SH STANDARDS
> > >   .P
> > >   The preferred API for the NTP daemon is
> > >   .BR ntp_adjtime ().
> > > +.SH HISTORY
> > > +Linux 5.1 added
> > > +.BR clock_adjtime64()
> > > +call on 32-bit architectures as part of handling Y2038 problem.
> >=20
> > For a start, this should be enough.  We can later add some more details
> > if needed.  I also don't want to waste much space in the manual pages
> > about these.  Maybe we could have a generic description for xxx64() APIs
> > elsewhere, which clarifies what all of these are.
>=20
> Thanks.
>=20
> > Maybe a new Y2038(7) manual page would be a good place for that.
>=20
> Good idea.

:)

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--dvx6v7zy4yhojgjt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfARDgACgkQ64mZXMKQ
wqkV7Q/8DE1qHijSVcmS3QkWf0yxeaEc2o3/dmzmWp5Jl5fRUptDZ5wum37Cy7xt
Mdg9Qbe6/iSiLVg4+QrPNIu7OboyHToRBWW18zvyUeMJSXPSvfAgHqbPMQXO302D
hE9TPIuoWPXDEMS10sBW4QQAcGOlKlE4Nz09XLeYx0NBVfMG9NMIJOVr8un4jUUp
zy+R16l8NPhSJPWrzTuex6cYjG/YfPrkH1aWj2LKmBKx1+UfDxIPG94mUBTAgaNS
eEcdVPLfQ5s+ekphNTaFwNRm7gXgNSTX45otMH9IjAJLMmIzvkFO5IRxwRHpg/6O
UyuzqtVTpqWTs3YCFBg25P7UKSCj+bgOpIZl/YdFU2MJUHfvXzotfvIiUdVH6zJx
Z0+7E+um+u3cIN1dykssFNsfomlccitDCmfdrkj3uNa1bnTsOmbnXYHXxM/6Cn8Z
u53pXMV4D4VFGbaKhI9s3ZuoieRh6kJirHVx87Ko/hcKFnMQBMzn66RGsbKIo5Gs
98oy7zuzqg7tlRSLPrpEei85Iu6SELqQm91b7IqCoQ8N66YdcyWSXkMMN6f9TAbU
Wkl0BfOTp2FE+AEbOdWSI3qq3lm4EfQAkIkdwGZ1ekkPaRFjQPZ18RFxcWMvcUed
KhuV2gGUERQGn8sI08i81RYRkQz7idl+JnURqeMNvfbdMnQLjB8=
=9V2l
-----END PGP SIGNATURE-----

--dvx6v7zy4yhojgjt--

