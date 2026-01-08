Return-Path: <linux-man+bounces-4725-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B5DD03711
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 15:44:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B1111306A08A
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 14:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 416BA461DD1;
	Thu,  8 Jan 2026 11:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b="eTdGiGhf"
X-Original-To: linux-man@vger.kernel.org
Received: from out-183.mta1.migadu.com (out-183.mta1.migadu.com [95.215.58.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1B1E4508F0
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 11:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767870506; cv=none; b=CSl19SPFEaY7BY40+4+IO5XosFX+SeVoRHPf5Q+tMoIbBizZxX20gn2vG1jckUT8z4O/DRst/01/6JzFw4mx+0fAQbD28VBMR1QDyLZXXfg1NfZRrgxJthUHazO9VNmQyKO15opeVyDbhCpWsgeKlkTk1LFV9ZpxT9y9dfhoxe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767870506; c=relaxed/simple;
	bh=8LUiIP1jfN8wpGDFuiLCvoD9hnMMF4ra7NM7tt1+LKI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Je/m6X5944qOQwxyxdOR4vNFDUYWOpe268Y+s1tqBRoWn2psMWej5L4jWm3gn8LShpsBQgWGGLBYiKa32nlPHki0Z/LmXRjraMWyPIP5/agAzeCxwUOgtLNJGajnainPhcDLtZPiXjW88dmJNb/6M0IRL0/472CNxuxNfh/BxoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es; spf=pass smtp.mailfrom=alejandro-colomar.es; dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b=eTdGiGhf; arc=none smtp.client-ip=95.215.58.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alejandro-colomar.es
Date: Thu, 8 Jan 2026 12:08:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alejandro-colomar.es;
	s=key1; t=1767870496;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CKmm+FOIo0oXUHJOMANmYMuvYbjMWHb8B0GoZYjzDyc=;
	b=eTdGiGhf+4V/kcPtzJbC7uf2QG/h8bLuMK9uVJIOhQvZCh9zfz/ZmyqA/2Zz3d/z67J79j
	seWZsuOcYWrpfoWm3IjwxKeWGpbVKEY5N9HknI4jDnGnLlyAMJx+kLTxjmzQHJFg/J/rNG
	hZOq76W3SNP7NsefOh8Yn8GNWT00ddCM2iH4erujAwjylAZZQ6cPw4DpIUlks7sZNQDFNM
	UciWauYgQFlRX4Bxsqw4ziIBOO9opHQoidk9E+b8WZaV4EdhWym03+7BwE+cSilveqkBJe
	JpBACvaEG2xTyyuOFDFom4mQR6GlWbmLIdElJMzUooeBXj3VsV+0b5Foa+5MAw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Nevin Liber <nevin@cplusplusguy.com>
Cc: David Svoboda <svoboda@cert.org>, Robert Seacord <rcseacord@gmail.com>, 
	"sc22wg14@open-std. org" <sc22wg14@open-std.org>, Florian Weimer <fweimer@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>, Aaron Ballman <aaron@aaronballman.com>, 
	"libc-alpha@sourceware.org" <libc-alpha@sourceware.org>, "musl@lists.openwall.com" <musl@lists.openwall.com>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [SC22WG14.34681] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
Message-ID: <aV-PNQgLP4MAxSI8@devuan>
References: <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
 <20251223211529.6365A356CF9@www.open-std.org>
 <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
 <20260106210527.AA3FA356D3A@www.open-std.org>
 <20260106214930.A5C8E356D2B@www.open-std.org>
 <PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <aV4N-0egpfxhmnta@devuan>
 <PH1P110MB1636D74EDD4F3074AC98F12FCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <PH1P110MB163601133BF0167C46C8CC9DCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <20260108023757.3C908356D01@www.open-std.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sk37kuvsgkf2cnem"
Content-Disposition: inline
In-Reply-To: <20260108023757.3C908356D01@www.open-std.org>
X-Migadu-Flow: FLOW_OUT


--sk37kuvsgkf2cnem
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Nevin Liber <nevin@cplusplusguy.com>
Cc: David Svoboda <svoboda@cert.org>, Robert Seacord <rcseacord@gmail.com>, 
	"sc22wg14@open-std. org" <sc22wg14@open-std.org>, Florian Weimer <fweimer@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>, Aaron Ballman <aaron@aaronballman.com>, 
	"libc-alpha@sourceware.org" <libc-alpha@sourceware.org>, "musl@lists.openwall.com" <musl@lists.openwall.com>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [SC22WG14.34681] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
Message-ID: <aV-PNQgLP4MAxSI8@devuan>
References: <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
 <20251223211529.6365A356CF9@www.open-std.org>
 <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
 <20260106210527.AA3FA356D3A@www.open-std.org>
 <20260106214930.A5C8E356D2B@www.open-std.org>
 <PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <aV4N-0egpfxhmnta@devuan>
 <PH1P110MB1636D74EDD4F3074AC98F12FCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <PH1P110MB163601133BF0167C46C8CC9DCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <20260108023757.3C908356D01@www.open-std.org>
MIME-Version: 1.0
In-Reply-To: <20260108023757.3C908356D01@www.open-std.org>

Hi Nevin,

On Wed, Jan 07, 2026 at 08:37:15PM -0600, Nevin Liber wrote:
> On Wed, Jan 7, 2026 at 8:31=E2=80=AFAM David Svoboda <svoboda@cert.org> w=
rote:
>=20
> > Here are some more thoughts on n3752
> > [...]
> > WRT this text:
> >
> >         Code written for platforms returning a null pointer can be
> > migrated to platforms returning non-null, without significant
> > issues.
> >
> > I am very skeptical that this is indeed true. But to be precise, this is
> > Glibc's problem rather than WG14's.  If they are willing to change glib=
c to
> > return non-null on realloc(0), then I am willing to agree to this chang=
e in
> > ISO C.
> >
> > Is there any evidence that changing this behavior breaks no code?  Any
> > test failures?  Any surveys?
> >
>=20
> And if it breaks no code, is that because this is a corner case that
> doesn't occur in practice?

It's not because of a corner case.  It's because if it would go wrong,
the worst that can happen is a memory leak of 0 bytes plus metadata
(~16 B, usually).

And yes, it's a corner case, so it's not like you'll be leaking those
16 B regularly.

> That in itself doesn't mean we shouldn't change it.

The reason to change it is that with the current specification and
implementation you can get serious vulnerabilities: remote code
execution.

Also, that programming will be much easier if all implementations behave
in the most simple way.

> > This paper ignores Windows other than to mention that it would need to
> > change too.  I doubt MS will update MSVC to accommodate this paper.   So
> > accepting this paper makes MSVC noncompliant.
> >
>=20
> This is the part that is troublesome to me.  What is the point of changing
> this behavior if two (or even just one) major implementations are going to
> ignore it?

Do you know anyone from MS in WG21?  It would be great to talk to them.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--sk37kuvsgkf2cnem
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlfkB0ACgkQ64mZXMKQ
wqm3kBAAt+B13kzCaa79Hd79yk4gNbedxqGYPMTr09kMOeKJuZHH0yDxMkR9i/An
9sEXDsFCC80usjrixAacqtL0VMF0tI6MKSpWAAB3zLOPqqWhxxrBmtS5ncb8I+Ji
es7aQdAS3Oez1hQC5El0C9+tN9ribpcAlyHdjIba/aBb9veo2LAZSUqHu2tP+siG
iQJ1dBiqM73v18gbjzblrTyDpPeGU+9RHOHG1H0AAvSqjc42kfGTuZvdWcZRm9om
bbKc6SHLm+MTwm8/QD/8t25P/EpQjlV75/u9awR9bQ0uI6b9TdvUG9oBMyi79ELZ
1/6iYR3MxQwMEXSJrWMX6RkIMcDDrqAhpb/sadsXhg6xiGuzUm5/vWNs8hC5sG87
kPqJQV65TVDgNNA5BpCl9uy31zFR+x9oLM0bfk5RS32GFN6w4jifNEUFidaXsDaV
K07SeV+SD73POexkWp8+Ir//YJRX0E+gDGtgZnIiZezPftS+CLl9cuwwHycRMLET
lkWyT+3MljJvxOYybV36BGOiG7fnjN9DcCHqePUO322jxj3SPmxaYT+KOxWsUdd+
Ru8M9/PQNQ2zi7F2CAJjdk+Qt6CyV62M34WWsJjSdHpUewMlQtXSYE1b4tgjARSp
80GeYKDMETNRvH3pr+v1616GPZws0y8fgHziXPI668COm9Nx7SU=
=oCQ+
-----END PGP SIGNATURE-----

--sk37kuvsgkf2cnem--

