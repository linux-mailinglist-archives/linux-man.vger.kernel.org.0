Return-Path: <linux-man+bounces-1591-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE5994B896
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2024 10:08:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 528E4288978
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2024 08:07:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6A441898E0;
	Thu,  8 Aug 2024 08:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYnbSDul"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9310918950C
	for <linux-man@vger.kernel.org>; Thu,  8 Aug 2024 08:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723104458; cv=none; b=DsbrDPx2ESjYoQE8UT5GThuN5SneKz8NOR3uzlaY3y35puZ+sS4CfLJbf2zT53xAZCgEkPiFKobZrjylCYTxEgUTlk1z6fcvQShG88HYiJr2MtzWZXr6/LkoVxL6zIQr0JRqkcY9rgDs6bnNNLkPEf/quw5R0RhmG6NAneO412Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723104458; c=relaxed/simple;
	bh=O1O0m+hgpRTqQ2F+JslR1IiiaitppKtk6ypNMVePJGI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g9sc+AC7ai7xTIZW2RYUFnq/vp4jUvib7z1028EbhH0ZzSfS6AJbGy/womlT8UxmWxZxmDuUgIKknoqOFM4YsXg8Yd8jbScIysbzNjEF07UkmMKxDCTyK4a0Q6dIgSZaz7859HdV4CSMrri5MeA8VWB4+4JteBCpqiBvUEZhgGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYnbSDul; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EA1BC32782;
	Thu,  8 Aug 2024 08:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723104458;
	bh=O1O0m+hgpRTqQ2F+JslR1IiiaitppKtk6ypNMVePJGI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jYnbSDulRgHj7q2gR1M58Ye0vhDJ8u/EwyrtGLdy0ZUlt1rd7TRXe/hb1F4QWprYP
	 Uvk78T3FgKbhMyZpLhC7PWlmDc8qMGpdv+7LhnaGuewaHAeCeulJYvzlUJSORm7id6
	 Rl3JdaPv0lOzNN/RoYrIt2+kOO9HzRUDrrivg8wl5VAjDlypKKxwbEsGmVledXmDw5
	 rO8juh95cTcMrvYYcmMp7jr1XkoApN83zFOBHpZiHZvWUnEL1aXKABbSTVu/f3LhvE
	 /kdG9wiPs051LnzoPaoRlewzenJ6ej6Ru/28fJLt8eFgKMSb44ZlQyuyXNIWyP/t8r
	 II5Q2+T2KQS6Q==
Date: Thu, 8 Aug 2024 10:07:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] nextup.3: minor improvements
Message-ID: <wpkh52aryrsgp52qur6igf5uwidbhetszb4krfcfgfpyarv7yg@abea5srk4kuy>
References: <20240807105617.GH3221@qaa.vinc17.org>
 <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv>
 <20240808025636.GE3086@qaa.vinc17.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wmsvqehlqllllr4s"
Content-Disposition: inline
In-Reply-To: <20240808025636.GE3086@qaa.vinc17.org>


--wmsvqehlqllllr4s
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] nextup.3: minor improvements
References: <20240807105617.GH3221@qaa.vinc17.org>
 <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv>
 <20240808025636.GE3086@qaa.vinc17.org>
MIME-Version: 1.0
In-Reply-To: <20240808025636.GE3086@qaa.vinc17.org>

Hi Vincent,

On Thu, Aug 08, 2024 at 04:56:36AM GMT, Vincent Lefevre wrote:
> On 2024-08-07 23:19:56 +0200, Alejandro Colomar wrote:
> > Hi Vincent,
> >=20
> > On Wed, Aug 07, 2024 at 12:56:17PM GMT, Vincent Lefevre wrote:
> > > The current "If x is 0" is a bit misleading because "is" is not the
> > > equality test, while this condition should apply to both -0 and 0.
> > > Replace this condition by "If x is equal to 0".
> >=20
> > How does 'is' differ semantically from 'is equal to' in this case?
>=20
> "is" designates the value (it is a short for "has the value").
> For instance, in the same man page (with the typo fixed):
> "If x is NaN" (saying "is equal to" would be incorrect, because
> the equality comparison with NaN is always false).
>=20
> That's why the sqrt(3) man page has
>=20
>   If x is +0 (-0), +0 (-0) is returned.
>=20
> and the cbrt(3) man page has
>=20
>   If x is +0, -0, positive infinity, [...]
>=20
> "is equal to" corresponds to the usual equality, as written in
> a source code. (IEEE 754-2019 actually uses "equals".)
>=20
> For zero, one can also say "If x is =C2=B10" as in the IEEE 754 standard.
> The IEEE 754 standard also uses "zero" in the sense "=C2=B10" (but it
> never uses "0" in this sense when there may be an ambiguity, knowing
> that in practice, "0" has the same meaning as "+0"). In a condition,
> when it says something like "x =3D 0", this means that x is either +0
> or -0 because these values compare equal to each other.

Hmmm, I see.  Thanks!  I think "If x is =C2=B10" is the clearest way to say
it.  I'm not sure if that glyph is available everywhere, though.  How
about "If x is 0 or -0"?

>=20
> So one could also say "If x is zero".
>=20
> > I don't think 'is equal to' does anything different to mean also -0.
>=20
> Note that the glibc manual in info format says for nextup:
>=20
>   If X =3D =E2=80=980=E2=80=99 the function returns the smallest positive=
 subnormal
>   number in the type of X.
>=20
> and for nextdown:
>=20
>   If X =3D =E2=80=980=E2=80=99 the function returns the smallest negative=
 subnormal
>   number in the type of X.
>=20
> > >  If
> > >  .I x
> > > -is 0, the returned value is the smallest representable positive numb=
er
> > > -of the corresponding type.
> > > +is equal to 0, the returned value is the smallest representable posi=
tive
> > > +number of the corresponding type.
> >=20
> > Please keep semantic newlines.  See man-pages(7).
>=20
> I suppose that the issue is here "long clauses should be split at
> phrase boundaries", so that you would like to avoid a split between
> "positive" and "number".

Yes.

> Perhaps better between "is" and "the".

LGTM.

> BTW, it seems that this is often not honored, including in new text
> (see e.g. commit c86bb39a117fb593f1ff7b7e729d70166d942446 two months
> ago, with a split between "undefined" and "behavior").

Hmmm, that's an oversight from my part; sorry.  But I would say it's
rather not often.  That's by far the most repeated issue in incoming
patches, and I try to always require contributors to fix them.  :)

I'll fix that one, with a 'Reported-by:' you.

> And should I introduce a newline after the comma, though it is
> currently not present? But this will not eliminate the need for
> another line break.

Sure, thanks!

Have a lovely day!
Alex


--=20
<https://www.alejandro-colomar.es/>

--wmsvqehlqllllr4s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAma0fMYACgkQnowa+77/
2zIWDw/+OS13uY/4AbrvNf+98DW6kVjCwgoYo7JVvlsysesOqDKlXLwFVMZe3Kml
4AH4/msz9Q7nDKUjfdcMh6pz+AXQnKATSGpWLZTfQ7dyAOFhLCozMcqrT8TQP5dM
FVmUq6AlEGdtH4pRsZ2HZDhVlSaWPiWGT81Q60PfTx+Ht+oSDALP8VsOijKcv97i
oeB0KYxJIB3dcwTEJjaZN/FxTTdP7DR4+O/0h8RRJLkd64j33L0+Ay/08bH56Ogg
DTLOCLLjRUoSmpFwJvgQKRWRlX0Urx2+xzQ24hnxIEvX/chMpwgknAiqdvbxEiT0
3hY83Vl4rv6AakU5b7gFjSNfWHpgBCZpiaMxAQZGMkA5bM6+VYZG/lJ6Hi/Uc/xl
e1O+Xn/qfptl6F/HoDVftd5yezzsT9gp4hHfmdeyP+qz6nOw8/YcU8Gqi5hxFS90
ezVLRbrVPjDmzY/VK75dohsDxXtKZdA9Aobz3XdG4DWM5HDjrxkfGIB11uZdev+Q
A7wwQGdaKcC7+8BiWM11a+Owylqyfk5U/m6NDqq91fWiEey7wjldHcz46WDbUX52
xAEwECPHIweDyXcFOLqoWFd5I9GKKqbjsb08BB44+5RewV/EJDpVoNvDdZuiqwCU
MnHzg4/tHLHfQd/yEaS/LHt9OboZZd2OV3g2qLiNzJaMag7wZpo=
=RA/e
-----END PGP SIGNATURE-----

--wmsvqehlqllllr4s--

