Return-Path: <linux-man+bounces-4824-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F642D39160
	for <lists+linux-man@lfdr.de>; Sat, 17 Jan 2026 23:44:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C9A423015EF8
	for <lists+linux-man@lfdr.de>; Sat, 17 Jan 2026 22:44:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 707AE295511;
	Sat, 17 Jan 2026 22:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b="B69725Vj"
X-Original-To: linux-man@vger.kernel.org
Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com [91.218.175.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2E922259A
	for <linux-man@vger.kernel.org>; Sat, 17 Jan 2026 22:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768689897; cv=none; b=keNVJna8h08LKitEF4NlYOwv1RqVOHOh34P2VaZF6HiHuWA99X6TUkKuABlNbca5BOpUIPlS55x5SrsT0NyirHYLvjwwOSiRqrRbJtBAZS8TeWgvHN2kWj/gOZ2IFPp0Fp9ECZFw8QFuqfN/Y6e8g6YtHFxgWms7H3peDuEdMw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768689897; c=relaxed/simple;
	bh=tGa7iGU8I+K4T/GJMgL9X/xfArWBu5G6e30nuW4fVh8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gExJ1jGj+njMuXQ3Uxz3qV7jwEnFfpZKTZIvQ/DCkIvuZbEDpg9OWLb5xSn2wevIZmbfZV5JZUd0n5/3d3GUlC0MtQNkto5U3mbaB4SppPCuBYGO/YGl989HJy5HT2yRDqQcT/Ke6MXpBVe48TsMTJ9Hb74XrJdIosY+LKVZTPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es; spf=pass smtp.mailfrom=alejandro-colomar.es; dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b=B69725Vj; arc=none smtp.client-ip=91.218.175.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alejandro-colomar.es
Date: Sat, 17 Jan 2026 23:44:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alejandro-colomar.es;
	s=key1; t=1768689892;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sP4ZsoYfljBqRb0uyYuYBSVfT9bo8QblySOkGqVKK1Y=;
	b=B69725Vj+dIsQjDX7BZ8jQ5giIcC7mJ4F8HqiiUjf/32W3Y9/C65JtvTRkGU08rL/3D/Yr
	D89s/ZvqGY+djp0S66mXzLrfwN8Ur6sk/b0GNLplBvfRhT+BZ2S8i6U1EcphOceLzb14ws
	r8zAgxkR+yP3wAd0y5lTmd0eOOXnPDvFWb5Ecd6YgPBWyZkbPlGSEk8Ry3mIv3Eu0L/dat
	JcCWjVUo8fUO9YSFkQT1FSD55bhu1+ClDWPSPFhK6GjV2WvTsmlHaf3Y5e25gumFE9PJ1Z
	EAe4pS/ppWvmUcnpiN1DF0ZeLLra3E69vb4Km5E9T1oJBu/G8tBNoWj4qPvXOw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Mark Harris <mark.hsj@gmail.com>
Cc: C Committee <sc22wg14@open-std.org>, 
	Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: Feedback for n3704 - Clean up frexp, ldexp, and scalbn prototypes
Message-ID: <aWwQyS1_MKZPZfcj@devuan>
References: <20250714222434.4D926356820@www.open-std.org>
 <aWv1Z8v3E3DAoBzW@devuan>
 <CAMdZqKG+X=aobSocMuws0Hi0yYwLKYpckYpTrrG05MDQ3bdU4A@mail.gmail.com>
 <aWwO1siDJcQ7aUI-@devuan>
 <aWwQkGdkzseNNBiv@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="auydjyaehtmvsoe3"
Content-Disposition: inline
In-Reply-To: <aWwQkGdkzseNNBiv@devuan>
X-Migadu-Flow: FLOW_OUT


--auydjyaehtmvsoe3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Mark Harris <mark.hsj@gmail.com>
Cc: C Committee <sc22wg14@open-std.org>, 
	Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: Feedback for n3704 - Clean up frexp, ldexp, and scalbn prototypes
Message-ID: <aWwQyS1_MKZPZfcj@devuan>
References: <20250714222434.4D926356820@www.open-std.org>
 <aWv1Z8v3E3DAoBzW@devuan>
 <CAMdZqKG+X=aobSocMuws0Hi0yYwLKYpckYpTrrG05MDQ3bdU4A@mail.gmail.com>
 <aWwO1siDJcQ7aUI-@devuan>
 <aWwQkGdkzseNNBiv@devuan>
MIME-Version: 1.0
In-Reply-To: <aWwQkGdkzseNNBiv@devuan>

On Sat, Jan 17, 2026 at 11:44:20PM +0100, Alejandro Colomar wrote:
> On Sat, Jan 17, 2026 at 11:37:08PM +0100, Alejandro Colomar wrote:
> > Hi Mark,
> >=20
> > On Sat, Jan 17, 2026 at 02:23:39PM -0800, Mark Harris wrote:
> > > "e" seems like a particularly poor choice, given that it is used in
> > > documentation with the well-established meaning of the base of the
> > > natural logarithm (e.g., in exp(3)).
> >=20
> > I don't expect anyone to confuse a variable 'e' with the base of the
> > natural logarithm (M_E from <math.h>), since the base of the natural
> > logarithm is not something variable, and thus it wouldn't make sense to
> > pass it as a function argument.
> >=20
> > Maybe a second of wondering, and reading the documentation carefully,
> > but nothing important.  Once the base of the natural logarithm is
> > discarded the meaning is then clear.  On the other hand, I would
> > consistently wonder what 'p' is, as it has no mnemonics.
>=20
> One may argue that 'ex' might be even better than any of exp/e/p.

Actually, I see now that 'p' could stand for power.  Not too bad, then.

>=20
> >=20
> > >  - Mark
> >=20
> >=20
> > Have a lovely night!
> > Alex
> >=20
> > > Alejandro Colomar wrote:
> > > >
> > > > Hi!
> > > >
> > > >
> > > > I see n3704 attempts to fix the issues reported by Vincent; that's =
good.
> > > > <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3704.pdf>
> > > >
> > > > However, the paper renames the pointer to 'p', which doesn't seem to
> > > > have good mnemonics nor relate to what it is.  'p' seems to just be
> > > > for 'pointer'?  We can and should do better.
> > > >
> > > > I think alx-0051 was better, in using a parameter name that relates=
 to
> > > > what the parameter means: 'e' for exponent.  Names matter.
> > > >
> > > > I think we should discuss the name in the meeting.  Also, I think n=
3704
> > > > should have included a rationaly for the name; especially, when a b=
etter
> > > > name has been proposed, and for some reason the proposal decided to=
 use
> > > > a different one; that should certainly have been discussed.
> > > >
> > > > I think we can discuss the name in meeting without having to offici=
ally
> > > > present alx-0051 with an N-document number.  Please let me know if I
> > > > should formally present alx-0051 for the next meeting.
> > > >
> > > >
> > > > Have a lovely night!
> > > > Alex
> > > >
> > > > On Tue, Jul 15, 2025 at 12:24:29AM +0200, Alejandro Colomar wrote:
> > > > > Hi!
> > > > >
> > > > > Vincent reported this issue to me in the Linux man-pages mailing =
list
> > > > > (as the manual pages also had the same issue, so he reported the =
issue
> > > > > in both the manual pages and the ISO C standard).  I think this c=
an be
> > > > > fixed editorially without going through an official N-document.  =
Please
> > > > > find the proposal below.
> > > > >
> > > > >
> > > > > Have a lovely night!
> > > > > Alex
> > > > >
> > > > > ---
> > > > > Name
> > > > >       alx-0051r0 - don't misuse reserved identifier 'exp'
> > > > >
> > > > > Category
> > > > >       Editorial.
> > > > >
> > > > > Author
> > > > >       Reported-by: Vincent Lefevre <vincent@vinc17.net>
> > > > >       Signed-off-by: Alejandro Colomar <alx@kernel.org>
> > > > >
> > > > > History
> > > > >       <https://www.alejandro-colomar.es/src/alx/alx/wg14/alx-0051=
=2Egit/>
> > > > >
> > > > >       r0 (2025-07-15):
> > > > >       -  Initial draft.
> > > > >
> > > > > Rationale
> > > > >       Since 'exp' is a library function, it is a reserved identif=
ier,
> > > > >       which should not be used as a variable / parameter name.
> > > > >
> > > > >       7.1.3p1 says
> > > > >
> > > > >               All potentially reserved identifiers (...) that are
> > > > >               provided by an implementation with an external
> > > > >               definition are reserved for any use.
> > > > >
> > > > > Proposed wording
> > > > >       Based on N3550.
> > > > >
> > > > >     7.17.7.5  The atomic_compare_exchange generic functions
> > > > >       @@ Description, p7 EXAMPLE
> > > > >       -       exp =3D atomic_load(&cur);
> > > > >       +       e =3D atomic_load(&cur);
> > > > >               do {
> > > > >       -               des =3D function(exp);
> > > > >       +               des =3D function(e);
> > > > >       -       } while (!atomic_compare_exchange_weak(&cur, &exp, =
des));
> > > > >       +       } while (!atomic_compare_exchange_weak(&cur, &e, de=
s));
> > > > >
> > > > >     B.11  Mathematics <math.h>
> > > > >       @@
> > > > >       ...
> > > > >       -_FloatN frexpfN(_FloatN value, int *exp);
> > > > >       -_FloatNx frexpfNx(_FloatNx value, int *exp);
> > > > >       -_DecimalN frexpdN(_DecimalN value, int *exp);
> > > > >       -_DecimalNx frexpdNx(_DecimalNx value, int *exp);
> > > > >       +_FloatN frexpfN(_FloatN value, int *e);
> > > > >       +_FloatNx frexpfNx(_FloatNx value, int *e);
> > > > >       +_DecimalN frexpdN(_DecimalN value, int *e);
> > > > >       +_DecimalNx frexpdNx(_DecimalNx value, int *e);
> > > > >       ...
> > > > >
> > > > >       @@
> > > > >       ...
> > > > >       -_FloatN ldexpfN(_FloatN value, int *exp);
> > > > >       -_FloatNx ldexpfNx(_FloatNx value, int *exp);
> > > > >       -_DecimalN ldexpdN(_DecimalN value, int *exp);
> > > > >       -_DecimalNx ldexpdNx(_DecimalNx value, int *exp);
> > > > >       +_FloatN ldexpfN(_FloatN value, int *e);
> > > > >       +_FloatNx ldexpfNx(_FloatNx value, int *e);
> > > > >       +_DecimalN ldexpdN(_DecimalN value, int *e);
> > > > >       +_DecimalNx ldexpdNx(_DecimalNx value, int *e);
> > > > >       ...
> > > > >
> > > > >       @@
> > > > >       ...
> > > > >       -_FloatN scalbnfN(_FloatN value, int *exp);
> > > > >       -_FloatNx scalbnfNx(_FloatNx value, int *exp);
> > > > >       -_DecimalN scalbndN(_DecimalN value, int *exp);
> > > > >       -_DecimalNx scalbndNx(_DecimalNx value, int *exp);
> > > > >       +_FloatN scalbnfN(_FloatN value, int *e);
> > > > >       +_FloatNx scalbnfNx(_FloatNx value, int *e);
> > > > >       +_DecimalN scalbndN(_DecimalN value, int *e);
> > > > >       +_DecimalNx scalbndNx(_DecimalNx value, int *e);
> > > > >       -_FloatN scalblnfN(_FloatN value, int *exp);
> > > > >       -_FloatNx scalblnfNx(_FloatNx value, int *exp);
> > > > >       -_DecimalN scalblndN(_DecimalN value, int *exp);
> > > > >       -_DecimalNx scalblndNx(_DecimalNx value, int *exp);
> > > > >       +_FloatN scalblnfN(_FloatN value, int *e);
> > > > >       +_FloatNx scalblnfNx(_FloatNx value, int *e);
> > > > >       +_DecimalN scalblndN(_DecimalN value, int *e);
> > > > >       +_DecimalNx scalblndNx(_DecimalNx value, int *e);
> > > > >       ...
> > > > >
> > > > >     F.10.4.9  The ldexp functions
> > > > >       @@ p1
> > > > >        On a binary system,
> > > > >       -ldexp(x, exp)
> > > > >       +ldexp(x, e)
> > > > >        is equivalent to
> > > > >       -scalbn(x, exp).
> > > > >       +scalbn(x, e).
> > > > >
> > > > >       ## And remove bold from 'exp' in the paragraph above.  This=
 is
> > > > >       ## probably present due to exp being considered as a reserv=
ed
> > > > >       ## identifier by some script, which is part of the conseque=
nces
> > > > >       ## of undefined behavior: UB might format your standard!  :)
> > > > >
> > > > >     H.11.3  Functions
> > > > >       @@ 7.12.7  Exponential and logarithmic functions
> > > > >       ## Apply same changes as in B.11 (see above).
> > > > >
> > > > >       @@ F.10.14  Payload functions, p2
> > > > >       ...
> > > > >        the exponent is an integral power of 2 and,
> > > > >        when applicable,
> > > > >       -value equals x =C3=97 2*exp.
> > > > >       +value equals x =C3=97 2*e.
> > > > >
> > > > > --
> > > > > <https://www.alejandro-colomar.es/>
> > > >
> > > >
> > > >
> > > > --
> > > > <https://www.alejandro-colomar.es>
> >=20
> > --=20
> > <https://www.alejandro-colomar.es>
>=20
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--auydjyaehtmvsoe3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlsEOIACgkQ64mZXMKQ
wqnBOhAAlRUr0Hx/qNlpA6qoco5L5pmo8AQQrxX1SgO2Rp0Jb/kqGrpd0bOm7upC
vN9Xw6AOienx25LrYZ5mO9I3SwKUrxta6vh+1iYpfedgKxciW2+ofzwn+Z7T1nZq
KDo0pP/SAyJ7zlz1lpTUYOKCcJXQqHqOKDRazbP/dc3VubP/hKfSMWg4DAYcuTu3
LHLdL0tzjebQjJ/P5AXvb5Nsnuae0hX7VDYAzea8duyYhGfAbYLgAzm9SHl5I8Gl
nBuhPOOUGNEuG11B8bS4ugmDRceThLr+d5gsfH2jInwRg2Q15mvPASVavNjxiaLs
bIawtVWVx3WgC5ABZDfsQn/3YqpNiKN0MXmSLDKuNXJ4YHFjNvl66SUvwLIk2lYB
5aRSdIRIQ4C870Ik/FZz/hEIpA4xyeSEwumWycUx9+2g5cDBv3hbENSU3yL0+g9U
MN5TB6jcCQICbc+wxDwuoy2YrR1/q5pM1uNd0kQiuCM6bB1IIjscLzCr04Gedxv5
Zjvm5I0f/6mmZprslgHAIbQWMCSIzu+EO0hDkVbHOnf2jENkblgpPLPceN4oc203
nao+PRAx2XJUVhGD38IE4g6Afur3/AdYxOxCspUiN31lmniRvPSSY9kSWKyM9VVi
3Ci7+5QVsL23uo5Wkc/vy1wLs1FBOODB09rnetIOJgktkKIhmbk=
=UudL
-----END PGP SIGNATURE-----

--auydjyaehtmvsoe3--

