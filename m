Return-Path: <linux-man+bounces-4820-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B31D390F7
	for <lists+linux-man@lfdr.de>; Sat, 17 Jan 2026 21:58:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 066733015EEE
	for <lists+linux-man@lfdr.de>; Sat, 17 Jan 2026 20:58:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C11382C21CC;
	Sat, 17 Jan 2026 20:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b="Z2qBvFOW"
X-Original-To: linux-man@vger.kernel.org
Received: from out-179.mta1.migadu.com (out-179.mta1.migadu.com [95.215.58.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AF32571A5
	for <linux-man@vger.kernel.org>; Sat, 17 Jan 2026 20:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768683487; cv=none; b=P233NZXouYjAeOdB2vMpq3967oODVg/Z2ScV4bTOBDuCUzwStqtwHvyRrPzlSAMCsEelDVpRmMfhYR862nk+u8T8otrWKmDrv4dEakWG0AcSqWUmXF5Nmt1KhuwlADI4A/EupZgn02ZjO5ucThR93S+Pt1TM9YmtzYd3bCZ0yjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768683487; c=relaxed/simple;
	bh=XhlinKFWaZ8hYs+WHA8XY3SkzABza+Zrkqva73Jaxq4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HriFZjDQOrqAey30xJoMZCUox3bSuJKw+rShYFk1FFYvz7Tdf5AJmn0FN4FiKIR6r3lQlKVyDzucYiHobA2KUHietuz9pBEH8YfeRvf/qi3CaGrqM+x4ijCZ2Eetzcb9ryJHOsyEK+DFJicruYt+9cyxSPNC0P0ZGTqpv7bf21M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es; spf=pass smtp.mailfrom=alejandro-colomar.es; dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b=Z2qBvFOW; arc=none smtp.client-ip=95.215.58.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alejandro-colomar.es
Date: Sat, 17 Jan 2026 21:57:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alejandro-colomar.es;
	s=key1; t=1768683483;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gnH2VIzinxL00nqeXCKO6YRM81M6fUG8rDOG/nRQe3A=;
	b=Z2qBvFOWWEoTBKreFrlrTu24GWoamPXNwK4/kCPq0GV+BfmXYFOY4Z7eDCvGgEdCq5FjMI
	bfndWGBqDx4dO+5Yys/pOPj38h/umo9S+FIt15NiHEHSFBsVOS3P/mTPheL4X7T3ZFy1Qt
	1T6zxH73ZpjiA3ahaoKqX4kV5ZqBL/e+0ESjWF0tdlRe3rPNc2Alm1ryAitprX9MMZwO3S
	HnWi4K6ZtOQzuGH33A8s8Jk9o8F1m5ywD4A7Lb3TRYNBYNn2sNuz6XNWVTVfVwUfmNTuY2
	DjbAy0qnDGMSoIrYXDi0eIdR6+a1sGwUJh0w+11rQbOsglLB2wsJnPrjwF/AlA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: C Committee <sc22wg14@open-std.org>
Cc: Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, 
	alx@kernel.org
Subject: Feedback for n3704 - Clean up frexp, ldexp, and scalbn prototypes
Message-ID: <aWv1Z8v3E3DAoBzW@devuan>
References: <20250714222434.4D926356820@www.open-std.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ypmxyfqrall4qvcx"
Content-Disposition: inline
In-Reply-To: <20250714222434.4D926356820@www.open-std.org>
X-Migadu-Flow: FLOW_OUT


--ypmxyfqrall4qvcx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: C Committee <sc22wg14@open-std.org>
Cc: Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, 
	alx@kernel.org
Subject: Feedback for n3704 - Clean up frexp, ldexp, and scalbn prototypes
Message-ID: <aWv1Z8v3E3DAoBzW@devuan>
References: <20250714222434.4D926356820@www.open-std.org>
MIME-Version: 1.0
In-Reply-To: <20250714222434.4D926356820@www.open-std.org>

Hi!


I see n3704 attempts to fix the issues reported by Vincent; that's good.
<https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3704.pdf>

However, the paper renames the pointer to 'p', which doesn't seem to
have good mnemonics nor relate to what it is.  'p' seems to just be
for 'pointer'?  We can and should do better.

I think alx-0051 was better, in using a parameter name that relates to
what the parameter means: 'e' for exponent.  Names matter.

I think we should discuss the name in the meeting.  Also, I think n3704
should have included a rationaly for the name; especially, when a better
name has been proposed, and for some reason the proposal decided to use
a different one; that should certainly have been discussed.

I think we can discuss the name in meeting without having to officially
present alx-0051 with an N-document number.  Please let me know if I
should formally present alx-0051 for the next meeting.


Have a lovely night!
Alex

On Tue, Jul 15, 2025 at 12:24:29AM +0200, Alejandro Colomar wrote:
> Hi!
>=20
> Vincent reported this issue to me in the Linux man-pages mailing list
> (as the manual pages also had the same issue, so he reported the issue
> in both the manual pages and the ISO C standard).  I think this can be
> fixed editorially without going through an official N-document.  Please
> find the proposal below.
>=20
>=20
> Have a lovely night!
> Alex
>=20
> ---
> Name
> 	alx-0051r0 - don't misuse reserved identifier 'exp'
>=20
> Category
> 	Editorial.
>=20
> Author
> 	Reported-by: Vincent Lefevre <vincent@vinc17.net>
> 	Signed-off-by: Alejandro Colomar <alx@kernel.org>
>=20
> History
> 	<https://www.alejandro-colomar.es/src/alx/alx/wg14/alx-0051.git/>
>=20
> 	r0 (2025-07-15):
> 	-  Initial draft.
>=20
> Rationale
> 	Since 'exp' is a library function, it is a reserved identifier,
> 	which should not be used as a variable / parameter name.
>=20
> 	7.1.3p1 says
>=20
> 		All potentially reserved identifiers (...) that are
> 		provided by an implementation with an external
> 		definition are reserved for any use.
>=20
> Proposed wording
> 	Based on N3550.
>=20
>     7.17.7.5  The atomic_compare_exchange generic functions
> 	@@ Description, p7 EXAMPLE
> 	-	exp =3D atomic_load(&cur);
> 	+	e =3D atomic_load(&cur);
> 		do {
> 	-		des =3D function(exp);
> 	+		des =3D function(e);
> 	-	} while (!atomic_compare_exchange_weak(&cur, &exp, des));
> 	+	} while (!atomic_compare_exchange_weak(&cur, &e, des));
>=20
>     B.11  Mathematics <math.h>
> 	@@
> 	...
> 	-_FloatN frexpfN(_FloatN value, int *exp);
> 	-_FloatNx frexpfNx(_FloatNx value, int *exp);
> 	-_DecimalN frexpdN(_DecimalN value, int *exp);
> 	-_DecimalNx frexpdNx(_DecimalNx value, int *exp);
> 	+_FloatN frexpfN(_FloatN value, int *e);
> 	+_FloatNx frexpfNx(_FloatNx value, int *e);
> 	+_DecimalN frexpdN(_DecimalN value, int *e);
> 	+_DecimalNx frexpdNx(_DecimalNx value, int *e);
> 	...
>=20
> 	@@
> 	...
> 	-_FloatN ldexpfN(_FloatN value, int *exp);
> 	-_FloatNx ldexpfNx(_FloatNx value, int *exp);
> 	-_DecimalN ldexpdN(_DecimalN value, int *exp);
> 	-_DecimalNx ldexpdNx(_DecimalNx value, int *exp);
> 	+_FloatN ldexpfN(_FloatN value, int *e);
> 	+_FloatNx ldexpfNx(_FloatNx value, int *e);
> 	+_DecimalN ldexpdN(_DecimalN value, int *e);
> 	+_DecimalNx ldexpdNx(_DecimalNx value, int *e);
> 	...
>=20
> 	@@
> 	...
> 	-_FloatN scalbnfN(_FloatN value, int *exp);
> 	-_FloatNx scalbnfNx(_FloatNx value, int *exp);
> 	-_DecimalN scalbndN(_DecimalN value, int *exp);
> 	-_DecimalNx scalbndNx(_DecimalNx value, int *exp);
> 	+_FloatN scalbnfN(_FloatN value, int *e);
> 	+_FloatNx scalbnfNx(_FloatNx value, int *e);
> 	+_DecimalN scalbndN(_DecimalN value, int *e);
> 	+_DecimalNx scalbndNx(_DecimalNx value, int *e);
> 	-_FloatN scalblnfN(_FloatN value, int *exp);
> 	-_FloatNx scalblnfNx(_FloatNx value, int *exp);
> 	-_DecimalN scalblndN(_DecimalN value, int *exp);
> 	-_DecimalNx scalblndNx(_DecimalNx value, int *exp);
> 	+_FloatN scalblnfN(_FloatN value, int *e);
> 	+_FloatNx scalblnfNx(_FloatNx value, int *e);
> 	+_DecimalN scalblndN(_DecimalN value, int *e);
> 	+_DecimalNx scalblndNx(_DecimalNx value, int *e);
> 	...
>=20
>     F.10.4.9  The ldexp functions
> 	@@ p1
> 	 On a binary system,
> 	-ldexp(x, exp)
> 	+ldexp(x, e)
> 	 is equivalent to
> 	-scalbn(x, exp).
> 	+scalbn(x, e).
>=20
> 	## And remove bold from 'exp' in the paragraph above.  This is
> 	## probably present due to exp being considered as a reserved
> 	## identifier by some script, which is part of the consequences
> 	## of undefined behavior: UB might format your standard!  :)
>=20
>     H.11.3  Functions
> 	@@ 7.12.7  Exponential and logarithmic functions
> 	## Apply same changes as in B.11 (see above).
>=20
> 	@@ F.10.14  Payload functions, p2
> 	...
> 	 the exponent is an integral power of 2 and,
> 	 when applicable,
> 	-value equals x =C3=97 2*exp.
> 	+value equals x =C3=97 2*e.
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es>

--ypmxyfqrall4qvcx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlr98gACgkQ64mZXMKQ
wqlg/g//W6sfcDA9TtkIqv8RCSZskmc22xXqEOnr/itWMq4y0VhUnpfvXCtGt0Ao
sDnOXHt5CgjT4sOCMp4hR68cW83steYIHyO6He+3fMqGGG0d8aKgJHDVzrKOY+hG
GZvZphWTOG1qq79ao69esA2NRvVrqfS0812oWuWztyw2x7a0m1yWqCkAqADRiW1b
0Wr9/aPTuFj0Gmo8ukmh83Xkof5uUcKOXuXnOnp+9JFkV/IofWFEzW3nrGW+i+zO
HxyzPg63jRFkq78Agwv/GBiC1BXYFVT9933ZtN1P+VOW8awjfOMgJ30hNDqax2Iz
wWL0Tr+y41f9ikjqtnT+8Mz6NSENCBagk9Ywt3SQwO7FKk4Pv5oDbziq+Q1NqIZ9
LB1Mg4ry8mnSjj2Ib2YC6XTlxmgLwcx9JjHNsdYWU7HDk6h5GHJI5py4UBCli1K8
26ONoWaeduNan+9yJvp7nlO+E3X5AHEl0CKZOOfnHncB8IprEowrBdqX3IbuRit0
LJaeFLlpPlC1p77YXgVPa2M0U45elfjf5KPvPTBXpJQiP/17nu/LG6WcpXCYnctr
THqZ/RSYJ+l2N62U3GbsayMkZULqqeb0PlxjsmJiRDhHr9BAnfQPd5fH7Ewa404J
hxeOvU/yjmUQftqva/AkCeUylyeYuvNpW1e9BWWMChq0yj5RtwA=
=GZJW
-----END PGP SIGNATURE-----

--ypmxyfqrall4qvcx--

