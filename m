Return-Path: <linux-man+bounces-4710-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E350AD00059
	for <lists+linux-man@lfdr.de>; Wed, 07 Jan 2026 21:35:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84D0C303FE2C
	for <lists+linux-man@lfdr.de>; Wed,  7 Jan 2026 20:28:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C905F335081;
	Wed,  7 Jan 2026 20:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b="lMNkcgoQ"
X-Original-To: linux-man@vger.kernel.org
Received: from out-188.mta1.migadu.com (out-188.mta1.migadu.com [95.215.58.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A3B2DEA7A
	for <linux-man@vger.kernel.org>; Wed,  7 Jan 2026 20:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767817720; cv=none; b=frEJu44RrQVxQV1yXJu5FDqp3DhHCb5Q1SACzG1/8SWSVHq1hEa2SMKOkUS0YXh6OgJi0os/O1VImJTtrpAAgf6Dsg3PGt75C/egSY0u5AcBlAjvkn+CaMuH0KU7EskatiTw6PARAJwBHt3XSRmc23BMhZKdCFSZCgEm2LIsOpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767817720; c=relaxed/simple;
	bh=R9LPqotALiOwGB5RBmCgud3ViOjL9X7nquLDZPpa8xY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LMWAV3gcvBLH1cNdaVli885Ii3ZFpFmaMJT2145+cqNCNtMn/x7CoroStJ5KYzKyK+FomUOu0fTYkfFdvDttGa5GuQG21RmPPSVLi3DCTwb8O9+PMtx5SBYtIzHSsXFUpMGFzpXZulFSgIFIN4N943uRKU0udnMGvm/JFUv2LuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es; spf=pass smtp.mailfrom=alejandro-colomar.es; dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b=lMNkcgoQ; arc=none smtp.client-ip=95.215.58.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alejandro-colomar.es
Date: Wed, 7 Jan 2026 21:28:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alejandro-colomar.es;
	s=key1; t=1767817715;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sTyDA0YsrDTDV72cycb/qK/rVB0SBJoXUeDSI/WqAl8=;
	b=lMNkcgoQ6kYOCyTlesElJBwlw4nTGRXdDcylFiRlxBYupwgUcMJ8Ae7NuakUGAdp7VbP6e
	z1nPWWyju1GjMoVqIEfGKPgJeWF7w5Ck6QVrZZRLd2HQPRPKdCFmJ8siSGBLhRWCyITSFe
	M6nbNWGmItOlzIqQsfevW4WMc8zI3lPzunzVihU6j7g6kAq3oYuVij2U2otGJKpl1pxYw/
	N8u437upNRZnMOcjPPpd4sJ931kQIRh3NX86sOtzFwMC5e1G36ij6QMVGHBrxcdpbh1sTt
	5D0AnJS8OToufhwciU1JZijjy/3GHP7lLArY3AldeL0iCNbayVz+rhFNFiaEGQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Florian Weimer <fweimer@redhat.com>
Cc: David Svoboda <svoboda@cert.org>, Robert Seacord <rcseacord@gmail.com>, 
	"sc22wg14@open-std. org" <sc22wg14@open-std.org>, Carlos O'Donell <carlos@redhat.com>, 
	Aaron Ballman <aaron@aaronballman.com>, "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>, 
	"musl@lists.openwall.com" <musl@lists.openwall.com>, "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, 
	Paul Eggert <eggert@cs.ucla.edu>
Subject: Re: [SC22WG14.34664] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
Message-ID: <aV6_UHBxHrOsL3qD@devuan>
References: <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
 <20251223211529.6365A356CF9@www.open-std.org>
 <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
 <20260106210527.AA3FA356D3A@www.open-std.org>
 <20260106214930.A5C8E356D2B@www.open-std.org>
 <PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <aV4N-0egpfxhmnta@devuan>
 <PH1P110MB1636D74EDD4F3074AC98F12FCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <PH1P110MB163601133BF0167C46C8CC9DCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <lhuqzs1uy7s.fsf@oldenburg.str.redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3l2ugbyk5n37kf5k"
Content-Disposition: inline
In-Reply-To: <lhuqzs1uy7s.fsf@oldenburg.str.redhat.com>
X-Migadu-Flow: FLOW_OUT


--3l2ugbyk5n37kf5k
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Florian Weimer <fweimer@redhat.com>
Cc: David Svoboda <svoboda@cert.org>, Robert Seacord <rcseacord@gmail.com>, 
	"sc22wg14@open-std. org" <sc22wg14@open-std.org>, Carlos O'Donell <carlos@redhat.com>, 
	Aaron Ballman <aaron@aaronballman.com>, "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>, 
	"musl@lists.openwall.com" <musl@lists.openwall.com>, "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, 
	Paul Eggert <eggert@cs.ucla.edu>
Subject: Re: [SC22WG14.34664] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
Message-ID: <aV6_UHBxHrOsL3qD@devuan>
References: <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
 <20251223211529.6365A356CF9@www.open-std.org>
 <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
 <20260106210527.AA3FA356D3A@www.open-std.org>
 <20260106214930.A5C8E356D2B@www.open-std.org>
 <PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <aV4N-0egpfxhmnta@devuan>
 <PH1P110MB1636D74EDD4F3074AC98F12FCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <PH1P110MB163601133BF0167C46C8CC9DCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <lhuqzs1uy7s.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
In-Reply-To: <lhuqzs1uy7s.fsf@oldenburg.str.redhat.com>

Hi Florian, David,

On Wed, Jan 07, 2026 at 06:30:47PM +0100, Florian Weimer wrote:
> * David Svoboda:
>=20
> > WRT this text:
> >
> >         Code written for platforms returning a null pointer can be
> > =E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82migrated to platf=
orms returning non-null, without significant
> > =E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82issues.
> >
> > I am very skeptical that this is indeed true. But to be precise, this
> > is Glibc's problem rather than WG14's.  If they are willing to change
> > glibc to return non-null on realloc(0), then I am willing to agree to
> > this change in ISO C.

A major implementation, gnulib, has done the switch in 2024 after this
proposal.  No regressions are known.  We would have certainly noticed
if something important had happened.

> If glibc makes the change, it becomes the problem of our users (and
> developers who interpose glibc's malloc).  I'm not sure that's a helpful
> approach.

A reminder: glibc's realloc(p,0) already can return non-null
(if p=3D=3DNULL before the call).  This means that correct glibc code must
be able to handle the possibility of realloc(p,0) returning a non-null
pointer.

> Someone needs to take responsibility.

What do you mean exactly by this?

> For glibc, we would have to do some analysis to figure out the impact.

I have done some theoretical analysis in the paper.

gnulib has done some experimental analysis, to the extent that it has
done the change in 2024, and we're already in 2026 and we've seen zero
regression reports so far.  This is used in GNU coreutils, which is
certainly something essential enough that if it had any important
issues, we would have noticed by now.

You could do some more, but with the resources we have, this should be
quite convincing.

> I don't think the glibc team at Red Hat will be able to work on this in
> the foreseeable future.  I don't we should make such changes upstream
> without such an analysis.
>=20
> What's Microsoft's position on this entire topic?  I thought they use
> the glibc behavior, too?

Microsoft doesn't seem to have representation in the committee.  At
least, they haven't showed up to talk about this.


Cheers,
Alex

>=20
> Thanks,
> Florian
>=20

--=20
<https://www.alejandro-colomar.es>

--3l2ugbyk5n37kf5k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlewecACgkQ64mZXMKQ
wqlunw//ZLjzO1NaG8WgmaWF+BvvK0PACmemMVK6sYqA6Fc7rX1Bcqx1/PkvgxWJ
/N6YwUL+IQYKoMRGuevJmE6SmOuOG2GF5cbk22z3U8NjsvHRBHGljcO4t9SX3taE
3+iBWsgai+qX6tNDJMEJk+6APeWXiOPABWpHk7RGALYMxXlnZrno/lcCVf7FcyZJ
hMmRJD4SSF6XuTGAM5v4cVmds2ZVz/7NsoBciWWp+ApH5PoymC/Q9YEQmNUUUlQA
pjhp+MGTdXdea17b1niNYAhbPoFWah0devRPJ/WUGKK+IbaduGGmg/J5c2hptfGE
8bAdewSXbCEoMJgKu8xY8nyij4aJcOcOlB/gLHwQFtMHWEYjhV1twy24VYkojUDH
mrp2MBjxiOKevL+ZsKz4lytqYiDuJrAuS7OPftzuM2PsKsb2UCYe6we9QM6OQVfy
BqE0GJtSZFE9c4EDd1+tA8nItKhrjxmok/9UsJHt+RG0NTuOt8Wxt13q3UkBymg9
C5Mzw1svyvTjNpMOh6d833WQ0L9tAEbEjYPKA2s5vzEVjXIbwY1R66FoymATQsD8
1pRSdMsuOX3RfWsQRXzLvpzpNxpjm0zahUrPPg5CbKcy4XjbW9KnQnC9bgEISRwh
WQWLG+In2GmYDhwrUjWmYgvZh6k3zaCIOE5Z2F9roF1SPkgJTdk=
=B74D
-----END PGP SIGNATURE-----

--3l2ugbyk5n37kf5k--

