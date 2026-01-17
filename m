Return-Path: <linux-man+bounces-4822-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EED78D3915C
	for <lists+linux-man@lfdr.de>; Sat, 17 Jan 2026 23:37:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8FB5F3011B2B
	for <lists+linux-man@lfdr.de>; Sat, 17 Jan 2026 22:37:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A62F229DB6C;
	Sat, 17 Jan 2026 22:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b="sEoTQnIZ"
X-Original-To: linux-man@vger.kernel.org
Received: from out-181.mta1.migadu.com (out-181.mta1.migadu.com [95.215.58.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4200229B18
	for <linux-man@vger.kernel.org>; Sat, 17 Jan 2026 22:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768689433; cv=none; b=ko13EJI8Z8sfD1HTrU2+6lEXZNAdYvpFvgvE7nWixAOk2nX7oEvLCOrczTO3/MPAMWG/XyplbGKAGCHrVSojjSo0pUy1gBxf3GJPBygz4SSEqeE+91UuAwRz5KkzDMpV/gkPKiaFlnuNnlAT8Lpr50+iFFkA8xPINSCetoo3xoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768689433; c=relaxed/simple;
	bh=l72dTuGcAnIQsbYw/OywDYTm2TCsRRSreMb1Zwce5UY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aCGmjIdzfu6VoGvCdV5arPIXd/ngWWeOgMFbJPASXSou4R5N3nAPVHX/lZt/62AfxkcODGZ8sRHNdBHEqFvJnzxkq7lYGnWKCMS/0sI5MhsHC1yWxtXTznBwBjmlcYP+NBTiVGgs3BpxvV530xk/5O6Lg1H8JPb6jY9VkN95HP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es; spf=pass smtp.mailfrom=alejandro-colomar.es; dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b=sEoTQnIZ; arc=none smtp.client-ip=95.215.58.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alejandro-colomar.es
Date: Sat, 17 Jan 2026 23:36:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alejandro-colomar.es;
	s=key1; t=1768689428;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=m/2veceT91wf9gjhiIUDMRjo4g6HQXEFhgkpF7p1ZzE=;
	b=sEoTQnIZqJzwtwy9kdsUl0waybAWlQLuAQt83UTEc9xyiGCTLpmP86lJtGJh4gY0mgd3H1
	308lcDMFC3ojkMOMSL6TavuyY+8HjHT2MKrC8MYrzXYHea3S+lXhZkYrvxe+RLU4vZmKDn
	h2UeW54/C+mDU4ImsNp6B7C08UYrBvXQNv6hVZQUg/a3KI4FJ6diMpZ+0q48h8G+00OvtS
	JFXPVwAvuSrh8zirQCgDMfgKD7PVrBWpDgVL+/GPscSrHUJgsTELxvW3XJmWNv7d3d7fk2
	oH6I2nJobFufmm25j7oay+797GRCAcYvAzW47LpyeNZqdq7SBP/BmmmxA43p1g==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Mark Harris <mark.hsj@gmail.com>
Cc: C Committee <sc22wg14@open-std.org>, 
	Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: Feedback for n3704 - Clean up frexp, ldexp, and scalbn prototypes
Message-ID: <aWwO1siDJcQ7aUI-@devuan>
References: <20250714222434.4D926356820@www.open-std.org>
 <aWv1Z8v3E3DAoBzW@devuan>
 <CAMdZqKG+X=aobSocMuws0Hi0yYwLKYpckYpTrrG05MDQ3bdU4A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7bbkwressvblrgp6"
Content-Disposition: inline
In-Reply-To: <CAMdZqKG+X=aobSocMuws0Hi0yYwLKYpckYpTrrG05MDQ3bdU4A@mail.gmail.com>
X-Migadu-Flow: FLOW_OUT


--7bbkwressvblrgp6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Mark Harris <mark.hsj@gmail.com>
Cc: C Committee <sc22wg14@open-std.org>, 
	Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: Feedback for n3704 - Clean up frexp, ldexp, and scalbn prototypes
Message-ID: <aWwO1siDJcQ7aUI-@devuan>
References: <20250714222434.4D926356820@www.open-std.org>
 <aWv1Z8v3E3DAoBzW@devuan>
 <CAMdZqKG+X=aobSocMuws0Hi0yYwLKYpckYpTrrG05MDQ3bdU4A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdZqKG+X=aobSocMuws0Hi0yYwLKYpckYpTrrG05MDQ3bdU4A@mail.gmail.com>

Hi Mark,

On Sat, Jan 17, 2026 at 02:23:39PM -0800, Mark Harris wrote:
> "e" seems like a particularly poor choice, given that it is used in
> documentation with the well-established meaning of the base of the
> natural logarithm (e.g., in exp(3)).

I don't expect anyone to confuse a variable 'e' with the base of the
natural logarithm (M_E from <math.h>), since the base of the natural
logarithm is not something variable, and thus it wouldn't make sense to
pass it as a function argument.

Maybe a second of wondering, and reading the documentation carefully,
but nothing important.  Once the base of the natural logarithm is
discarded the meaning is then clear.  On the other hand, I would
consistently wonder what 'p' is, as it has no mnemonics.

>  - Mark


Have a lovely night!
Alex

> Alejandro Colomar wrote:
> >
> > Hi!
> >
> >
> > I see n3704 attempts to fix the issues reported by Vincent; that's good.
> > <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3704.pdf>
> >
> > However, the paper renames the pointer to 'p', which doesn't seem to
> > have good mnemonics nor relate to what it is.  'p' seems to just be
> > for 'pointer'?  We can and should do better.
> >
> > I think alx-0051 was better, in using a parameter name that relates to
> > what the parameter means: 'e' for exponent.  Names matter.
> >
> > I think we should discuss the name in the meeting.  Also, I think n3704
> > should have included a rationaly for the name; especially, when a better
> > name has been proposed, and for some reason the proposal decided to use
> > a different one; that should certainly have been discussed.
> >
> > I think we can discuss the name in meeting without having to officially
> > present alx-0051 with an N-document number.  Please let me know if I
> > should formally present alx-0051 for the next meeting.
> >
> >
> > Have a lovely night!
> > Alex
> >
> > On Tue, Jul 15, 2025 at 12:24:29AM +0200, Alejandro Colomar wrote:
> > > Hi!
> > >
> > > Vincent reported this issue to me in the Linux man-pages mailing list
> > > (as the manual pages also had the same issue, so he reported the issue
> > > in both the manual pages and the ISO C standard).  I think this can be
> > > fixed editorially without going through an official N-document.  Plea=
se
> > > find the proposal below.
> > >
> > >
> > > Have a lovely night!
> > > Alex
> > >
> > > ---
> > > Name
> > >       alx-0051r0 - don't misuse reserved identifier 'exp'
> > >
> > > Category
> > >       Editorial.
> > >
> > > Author
> > >       Reported-by: Vincent Lefevre <vincent@vinc17.net>
> > >       Signed-off-by: Alejandro Colomar <alx@kernel.org>
> > >
> > > History
> > >       <https://www.alejandro-colomar.es/src/alx/alx/wg14/alx-0051.git=
/>
> > >
> > >       r0 (2025-07-15):
> > >       -  Initial draft.
> > >
> > > Rationale
> > >       Since 'exp' is a library function, it is a reserved identifier,
> > >       which should not be used as a variable / parameter name.
> > >
> > >       7.1.3p1 says
> > >
> > >               All potentially reserved identifiers (...) that are
> > >               provided by an implementation with an external
> > >               definition are reserved for any use.
> > >
> > > Proposed wording
> > >       Based on N3550.
> > >
> > >     7.17.7.5  The atomic_compare_exchange generic functions
> > >       @@ Description, p7 EXAMPLE
> > >       -       exp =3D atomic_load(&cur);
> > >       +       e =3D atomic_load(&cur);
> > >               do {
> > >       -               des =3D function(exp);
> > >       +               des =3D function(e);
> > >       -       } while (!atomic_compare_exchange_weak(&cur, &exp, des)=
);
> > >       +       } while (!atomic_compare_exchange_weak(&cur, &e, des));
> > >
> > >     B.11  Mathematics <math.h>
> > >       @@
> > >       ...
> > >       -_FloatN frexpfN(_FloatN value, int *exp);
> > >       -_FloatNx frexpfNx(_FloatNx value, int *exp);
> > >       -_DecimalN frexpdN(_DecimalN value, int *exp);
> > >       -_DecimalNx frexpdNx(_DecimalNx value, int *exp);
> > >       +_FloatN frexpfN(_FloatN value, int *e);
> > >       +_FloatNx frexpfNx(_FloatNx value, int *e);
> > >       +_DecimalN frexpdN(_DecimalN value, int *e);
> > >       +_DecimalNx frexpdNx(_DecimalNx value, int *e);
> > >       ...
> > >
> > >       @@
> > >       ...
> > >       -_FloatN ldexpfN(_FloatN value, int *exp);
> > >       -_FloatNx ldexpfNx(_FloatNx value, int *exp);
> > >       -_DecimalN ldexpdN(_DecimalN value, int *exp);
> > >       -_DecimalNx ldexpdNx(_DecimalNx value, int *exp);
> > >       +_FloatN ldexpfN(_FloatN value, int *e);
> > >       +_FloatNx ldexpfNx(_FloatNx value, int *e);
> > >       +_DecimalN ldexpdN(_DecimalN value, int *e);
> > >       +_DecimalNx ldexpdNx(_DecimalNx value, int *e);
> > >       ...
> > >
> > >       @@
> > >       ...
> > >       -_FloatN scalbnfN(_FloatN value, int *exp);
> > >       -_FloatNx scalbnfNx(_FloatNx value, int *exp);
> > >       -_DecimalN scalbndN(_DecimalN value, int *exp);
> > >       -_DecimalNx scalbndNx(_DecimalNx value, int *exp);
> > >       +_FloatN scalbnfN(_FloatN value, int *e);
> > >       +_FloatNx scalbnfNx(_FloatNx value, int *e);
> > >       +_DecimalN scalbndN(_DecimalN value, int *e);
> > >       +_DecimalNx scalbndNx(_DecimalNx value, int *e);
> > >       -_FloatN scalblnfN(_FloatN value, int *exp);
> > >       -_FloatNx scalblnfNx(_FloatNx value, int *exp);
> > >       -_DecimalN scalblndN(_DecimalN value, int *exp);
> > >       -_DecimalNx scalblndNx(_DecimalNx value, int *exp);
> > >       +_FloatN scalblnfN(_FloatN value, int *e);
> > >       +_FloatNx scalblnfNx(_FloatNx value, int *e);
> > >       +_DecimalN scalblndN(_DecimalN value, int *e);
> > >       +_DecimalNx scalblndNx(_DecimalNx value, int *e);
> > >       ...
> > >
> > >     F.10.4.9  The ldexp functions
> > >       @@ p1
> > >        On a binary system,
> > >       -ldexp(x, exp)
> > >       +ldexp(x, e)
> > >        is equivalent to
> > >       -scalbn(x, exp).
> > >       +scalbn(x, e).
> > >
> > >       ## And remove bold from 'exp' in the paragraph above.  This is
> > >       ## probably present due to exp being considered as a reserved
> > >       ## identifier by some script, which is part of the consequences
> > >       ## of undefined behavior: UB might format your standard!  :)
> > >
> > >     H.11.3  Functions
> > >       @@ 7.12.7  Exponential and logarithmic functions
> > >       ## Apply same changes as in B.11 (see above).
> > >
> > >       @@ F.10.14  Payload functions, p2
> > >       ...
> > >        the exponent is an integral power of 2 and,
> > >        when applicable,
> > >       -value equals x =C3=97 2*exp.
> > >       +value equals x =C3=97 2*e.
> > >
> > > --
> > > <https://www.alejandro-colomar.es/>
> >
> >
> >
> > --
> > <https://www.alejandro-colomar.es>

--=20
<https://www.alejandro-colomar.es>

--7bbkwressvblrgp6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlsDwIACgkQ64mZXMKQ
wqkOPBAAm2f/kwsnhJRQ7ajU8MjJ0s13U9sKNPnbd1SRAzZM0PAYEEiji/Dcx2p5
JOJcMyx0TB4IsQZftVhg1DUwbrXWD0HlgiQmZs4/zq4NaEpsBlqXRomNYevaMAz2
uDvFEQ4Uwf9vwxf2f6K1GeFJZPBYB/w6z9Z/mwTs/dhI4yt6OyQQztWLX4LEYVYT
LO8QMyyZ4bTvt0e9qPyumU8bodrXvYIDuLIR2fgd24KAbSlVbwgKrjnzENOM13+0
99Eo+sRs6vIJSiemQRPBJI2gmCZvUbDqhJdAV5B4fO2urriI8GgmThUkY8C8DIR2
x4VHt9lbFx83YJdAVav6VnZoF4BOYYqGGg0rPcImJV04k3zqoACMfNWe11i6ObKW
WatRlObciZEpTyvc1/McHALIEAVuh+yFziEg+D3zERbOA9i49Y29Y6V8frPyqeiX
ACCWVVXzx5p48UMH+2JniU6KmCTZW0ghJtaeDCa/5SuVTjCP22KZyUWW1LDWiNTs
b3qz0Vt5tF8ho2tiZv/bp9FHjxN5Z3BghNiWSab4PNwaD5mrv0gKFj3rgwpJWN1d
yxHSwCgovFweEoPKaZ0RdPdGWwntuUrhzDcvrWqcBwbozCJQaFJMqXK0SDaNY7g/
zey0mqz2jcxPmVR0ZZLJ4QDLiO0WqhGUhK3jp0rGcpwCY21wgBs=
=XrNZ
-----END PGP SIGNATURE-----

--7bbkwressvblrgp6--

