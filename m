Return-Path: <linux-man+bounces-4823-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C7DD3915F
	for <lists+linux-man@lfdr.de>; Sat, 17 Jan 2026 23:44:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 513E43016366
	for <lists+linux-man@lfdr.de>; Sat, 17 Jan 2026 22:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B222F2DB7B2;
	Sat, 17 Jan 2026 22:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b="qnuJq/Jf"
X-Original-To: linux-man@vger.kernel.org
Received: from out-176.mta1.migadu.com (out-176.mta1.migadu.com [95.215.58.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C6322259A
	for <linux-man@vger.kernel.org>; Sat, 17 Jan 2026 22:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768689864; cv=none; b=U1zVbJyJY2Sx3v2gR6Io8wX3Gr9RUViieyNjUlM22EXboRPp0qk4lT4AYtjnOIhTztO2OHUVAPrQAVOrOrTAzXjHjVQ4vPWsbqNLZipzxNuBIKSPqhWBeLbuuEIgsd6gnwl539kZgoYXv6GDO3Cbp9cp/KH1D0l+CZ7niJcv7vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768689864; c=relaxed/simple;
	bh=5pv+5ThbrcXOWAyp8UD7pjwr7018Pi1CdETxViAI6dg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M9cg1VgAMyrjk8m22eFLyODVH4c9EJVgtOgCjkCtjeYlj2SZPmxcLCA6sOB2ETj/dthSIVyrkDyP3eBgRLeQHLm2wW1m4iZEjtaQUVe0UIZqxB5XP4O7mf4ayUjsVHW+0kSNr7Et8YtQrPPcNXvFj8ZRbBgGvaGmP+Nkls5ZA1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es; spf=pass smtp.mailfrom=alejandro-colomar.es; dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b=qnuJq/Jf; arc=none smtp.client-ip=95.215.58.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alejandro-colomar.es
Date: Sat, 17 Jan 2026 23:43:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alejandro-colomar.es;
	s=key1; t=1768689860;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=QTYb0iQt6us11O+sThMVAbpneNl7pK+0cd2BoH48URE=;
	b=qnuJq/JfQmwGIHW5kECmoAZpKbDEzUGNxW84vTCus4i0Ma6qIigyweAjBpHrvCsZvCaenK
	Vl8erTwCFcOJUIf7xlziTe2bpnHUsBX+9eHG2pYOYmjuhEsc6L+ZQvCIhfGwgyQqkvPe7v
	LEt1i46P/pvdi9u4OPz9NcaZQ4rReVt5uwDnWizwzkHPTWCMJWYZu9inNHEkkF983mxh4F
	75DiAsqAS2yuM1RtBNTqaUZv/eKuhY00ffpLY4Sday1zDCUfVNYXlE3AuMq9DMi93X7jcM
	1e95IpKpDosBnbq04umxzCtpo68GuvWX1+ASyCTFHzYNxm3IODsTHp2BbqXqTg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Mark Harris <mark.hsj@gmail.com>
Cc: C Committee <sc22wg14@open-std.org>, 
	Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: Feedback for n3704 - Clean up frexp, ldexp, and scalbn prototypes
Message-ID: <aWwQkGdkzseNNBiv@devuan>
References: <20250714222434.4D926356820@www.open-std.org>
 <aWv1Z8v3E3DAoBzW@devuan>
 <CAMdZqKG+X=aobSocMuws0Hi0yYwLKYpckYpTrrG05MDQ3bdU4A@mail.gmail.com>
 <aWwO1siDJcQ7aUI-@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qwgciqjtrunmpeh2"
Content-Disposition: inline
In-Reply-To: <aWwO1siDJcQ7aUI-@devuan>
X-Migadu-Flow: FLOW_OUT


--qwgciqjtrunmpeh2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Mark Harris <mark.hsj@gmail.com>
Cc: C Committee <sc22wg14@open-std.org>, 
	Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: Feedback for n3704 - Clean up frexp, ldexp, and scalbn prototypes
Message-ID: <aWwQkGdkzseNNBiv@devuan>
References: <20250714222434.4D926356820@www.open-std.org>
 <aWv1Z8v3E3DAoBzW@devuan>
 <CAMdZqKG+X=aobSocMuws0Hi0yYwLKYpckYpTrrG05MDQ3bdU4A@mail.gmail.com>
 <aWwO1siDJcQ7aUI-@devuan>
MIME-Version: 1.0
In-Reply-To: <aWwO1siDJcQ7aUI-@devuan>

On Sat, Jan 17, 2026 at 11:37:08PM +0100, Alejandro Colomar wrote:
> Hi Mark,
>=20
> On Sat, Jan 17, 2026 at 02:23:39PM -0800, Mark Harris wrote:
> > "e" seems like a particularly poor choice, given that it is used in
> > documentation with the well-established meaning of the base of the
> > natural logarithm (e.g., in exp(3)).
>=20
> I don't expect anyone to confuse a variable 'e' with the base of the
> natural logarithm (M_E from <math.h>), since the base of the natural
> logarithm is not something variable, and thus it wouldn't make sense to
> pass it as a function argument.
>=20
> Maybe a second of wondering, and reading the documentation carefully,
> but nothing important.  Once the base of the natural logarithm is
> discarded the meaning is then clear.  On the other hand, I would
> consistently wonder what 'p' is, as it has no mnemonics.

One may argue that 'ex' might be even better than any of exp/e/p.

>=20
> >  - Mark
>=20
>=20
> Have a lovely night!
> Alex
>=20
> > Alejandro Colomar wrote:
> > >
> > > Hi!
> > >
> > >
> > > I see n3704 attempts to fix the issues reported by Vincent; that's go=
od.
> > > <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3704.pdf>
> > >
> > > However, the paper renames the pointer to 'p', which doesn't seem to
> > > have good mnemonics nor relate to what it is.  'p' seems to just be
> > > for 'pointer'?  We can and should do better.
> > >
> > > I think alx-0051 was better, in using a parameter name that relates to
> > > what the parameter means: 'e' for exponent.  Names matter.
> > >
> > > I think we should discuss the name in the meeting.  Also, I think n37=
04
> > > should have included a rationaly for the name; especially, when a bet=
ter
> > > name has been proposed, and for some reason the proposal decided to u=
se
> > > a different one; that should certainly have been discussed.
> > >
> > > I think we can discuss the name in meeting without having to official=
ly
> > > present alx-0051 with an N-document number.  Please let me know if I
> > > should formally present alx-0051 for the next meeting.
> > >
> > >
> > > Have a lovely night!
> > > Alex
> > >
> > > On Tue, Jul 15, 2025 at 12:24:29AM +0200, Alejandro Colomar wrote:
> > > > Hi!
> > > >
> > > > Vincent reported this issue to me in the Linux man-pages mailing li=
st
> > > > (as the manual pages also had the same issue, so he reported the is=
sue
> > > > in both the manual pages and the ISO C standard).  I think this can=
 be
> > > > fixed editorially without going through an official N-document.  Pl=
ease
> > > > find the proposal below.
> > > >
> > > >
> > > > Have a lovely night!
> > > > Alex
> > > >
> > > > ---
> > > > Name
> > > >       alx-0051r0 - don't misuse reserved identifier 'exp'
> > > >
> > > > Category
> > > >       Editorial.
> > > >
> > > > Author
> > > >       Reported-by: Vincent Lefevre <vincent@vinc17.net>
> > > >       Signed-off-by: Alejandro Colomar <alx@kernel.org>
> > > >
> > > > History
> > > >       <https://www.alejandro-colomar.es/src/alx/alx/wg14/alx-0051.g=
it/>
> > > >
> > > >       r0 (2025-07-15):
> > > >       -  Initial draft.
> > > >
> > > > Rationale
> > > >       Since 'exp' is a library function, it is a reserved identifie=
r,
> > > >       which should not be used as a variable / parameter name.
> > > >
> > > >       7.1.3p1 says
> > > >
> > > >               All potentially reserved identifiers (...) that are
> > > >               provided by an implementation with an external
> > > >               definition are reserved for any use.
> > > >
> > > > Proposed wording
> > > >       Based on N3550.
> > > >
> > > >     7.17.7.5  The atomic_compare_exchange generic functions
> > > >       @@ Description, p7 EXAMPLE
> > > >       -       exp =3D atomic_load(&cur);
> > > >       +       e =3D atomic_load(&cur);
> > > >               do {
> > > >       -               des =3D function(exp);
> > > >       +               des =3D function(e);
> > > >       -       } while (!atomic_compare_exchange_weak(&cur, &exp, de=
s));
> > > >       +       } while (!atomic_compare_exchange_weak(&cur, &e, des)=
);
> > > >
> > > >     B.11  Mathematics <math.h>
> > > >       @@
> > > >       ...
> > > >       -_FloatN frexpfN(_FloatN value, int *exp);
> > > >       -_FloatNx frexpfNx(_FloatNx value, int *exp);
> > > >       -_DecimalN frexpdN(_DecimalN value, int *exp);
> > > >       -_DecimalNx frexpdNx(_DecimalNx value, int *exp);
> > > >       +_FloatN frexpfN(_FloatN value, int *e);
> > > >       +_FloatNx frexpfNx(_FloatNx value, int *e);
> > > >       +_DecimalN frexpdN(_DecimalN value, int *e);
> > > >       +_DecimalNx frexpdNx(_DecimalNx value, int *e);
> > > >       ...
> > > >
> > > >       @@
> > > >       ...
> > > >       -_FloatN ldexpfN(_FloatN value, int *exp);
> > > >       -_FloatNx ldexpfNx(_FloatNx value, int *exp);
> > > >       -_DecimalN ldexpdN(_DecimalN value, int *exp);
> > > >       -_DecimalNx ldexpdNx(_DecimalNx value, int *exp);
> > > >       +_FloatN ldexpfN(_FloatN value, int *e);
> > > >       +_FloatNx ldexpfNx(_FloatNx value, int *e);
> > > >       +_DecimalN ldexpdN(_DecimalN value, int *e);
> > > >       +_DecimalNx ldexpdNx(_DecimalNx value, int *e);
> > > >       ...
> > > >
> > > >       @@
> > > >       ...
> > > >       -_FloatN scalbnfN(_FloatN value, int *exp);
> > > >       -_FloatNx scalbnfNx(_FloatNx value, int *exp);
> > > >       -_DecimalN scalbndN(_DecimalN value, int *exp);
> > > >       -_DecimalNx scalbndNx(_DecimalNx value, int *exp);
> > > >       +_FloatN scalbnfN(_FloatN value, int *e);
> > > >       +_FloatNx scalbnfNx(_FloatNx value, int *e);
> > > >       +_DecimalN scalbndN(_DecimalN value, int *e);
> > > >       +_DecimalNx scalbndNx(_DecimalNx value, int *e);
> > > >       -_FloatN scalblnfN(_FloatN value, int *exp);
> > > >       -_FloatNx scalblnfNx(_FloatNx value, int *exp);
> > > >       -_DecimalN scalblndN(_DecimalN value, int *exp);
> > > >       -_DecimalNx scalblndNx(_DecimalNx value, int *exp);
> > > >       +_FloatN scalblnfN(_FloatN value, int *e);
> > > >       +_FloatNx scalblnfNx(_FloatNx value, int *e);
> > > >       +_DecimalN scalblndN(_DecimalN value, int *e);
> > > >       +_DecimalNx scalblndNx(_DecimalNx value, int *e);
> > > >       ...
> > > >
> > > >     F.10.4.9  The ldexp functions
> > > >       @@ p1
> > > >        On a binary system,
> > > >       -ldexp(x, exp)
> > > >       +ldexp(x, e)
> > > >        is equivalent to
> > > >       -scalbn(x, exp).
> > > >       +scalbn(x, e).
> > > >
> > > >       ## And remove bold from 'exp' in the paragraph above.  This is
> > > >       ## probably present due to exp being considered as a reserved
> > > >       ## identifier by some script, which is part of the consequenc=
es
> > > >       ## of undefined behavior: UB might format your standard!  :)
> > > >
> > > >     H.11.3  Functions
> > > >       @@ 7.12.7  Exponential and logarithmic functions
> > > >       ## Apply same changes as in B.11 (see above).
> > > >
> > > >       @@ F.10.14  Payload functions, p2
> > > >       ...
> > > >        the exponent is an integral power of 2 and,
> > > >        when applicable,
> > > >       -value equals x =C3=97 2*exp.
> > > >       +value equals x =C3=97 2*e.
> > > >
> > > > --
> > > > <https://www.alejandro-colomar.es/>
> > >
> > >
> > >
> > > --
> > > <https://www.alejandro-colomar.es>
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--qwgciqjtrunmpeh2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlsEKkACgkQ64mZXMKQ
wqlDkg/8DvSAYk5KKjyE5DV56h7Gk2yA4eCOzEjl7nhFBge337V01werY/J7BM4I
C3mXT8521X8H0Barc4xNZ7csBqnLwqeg7Qc/UcfSFgxZAI30+KqOokaRU7tEwA78
OxId4gyYUKB0lovKnm6UDSQA7Vycf3+iT2375/OEe9IFVlOELb18LnQm/n14Q2Pb
jHYpSqYoQtVsfzDgEo8QNrQG+iiovlwnY672oh9DNWfuvt4KmwsacXes5KHmejOe
vd8EXDZWi+AnQTevbKZYhfZSq6AjDR5DgmxGDkyiXuuI9tCXbItE2uSGCta+tPqH
0cMUFXJFn+zneGs23MYXGCUHDD4yIn6dqi8U0EzwT+ogDVaWXWnQ2VF0L0y08wNG
Qr1VX7/zWQ1nRFLzO50ZinTJ3EDsoofXyC32k1G4D5tMDf8SmQv/sIXfvHVrm07v
YO+CgCTKEepiAHozjANeU2rasrz+0TRfNq9BS41iGybe5sWa4s9wXAG1V9WLgkVZ
WXQG1oCJuL0IyjQtrrgOY3YijQFGwBP193AOuv6J9doWDsbNtngAGzxnW8EKNllL
ZyMmdA3XqNoyu46o+NUCP9+SLlsOFsCyz2R/1/H7UFt73cypkgMdV78zR7qnxmFt
4pU4xXTUdVfGkF/vRk0K3LHEKVFciibwYLxjUIqs4YJdGOVXvZk=
=Fg9f
-----END PGP SIGNATURE-----

--qwgciqjtrunmpeh2--

