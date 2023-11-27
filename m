Return-Path: <linux-man+bounces-172-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 661A57FA433
	for <lists+linux-man@lfdr.de>; Mon, 27 Nov 2023 16:13:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 98FB41C209C0
	for <lists+linux-man@lfdr.de>; Mon, 27 Nov 2023 15:13:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB5D431A69;
	Mon, 27 Nov 2023 15:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z94g+mJH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CB8E31A66
	for <linux-man@vger.kernel.org>; Mon, 27 Nov 2023 15:13:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0971C2BCFE;
	Mon, 27 Nov 2023 15:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701098003;
	bh=gGkMZzmthMKR9AMR3siFMbwinhvsbh6Egm6gmRokfnk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z94g+mJHGVYUl1jCckMZ9S+4kFu0FcdenpyZkbZKpEdO5zaJSm5mZNL09PjmrRYEb
	 JAmCK662H1RTr/X13lv7SY52iURG0fPoautRm+y8xxTNQPjKj09Inzi3lOQ7ilrfYe
	 36SZ/U3m/BsdEECiW43sUbsIvZGxeVz783k8cVjyyqWIuncUzWVEE8nudbjWThvQ4h
	 YY9uYfKRBXHWl0rnDWvEdKmkvjGSHxhOmszxkZO9u7HtUTBwLYxMtJcs6QJ7i4+Phw
	 A1lRu5AKF+JW3C/jkMIfBs2aFx6xQf89Oxl7zsBaYJU57zVOe4h+PVCEB32u2Z1tNV
	 kuDgkQrWlRMWg==
Date: Mon, 27 Nov 2023 16:13:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Zack Weinberg <zack@owlfolio.org>
Cc: Jonny Grant <jg@jguk.org>, Paul Eggert <eggert@cs.ucla.edu>,
	Carlos O'Donell <carlos@redhat.com>,
	GNU libc development <libc-alpha@sourceware.org>,
	'linux-man' <linux-man@vger.kernel.org>
Subject: Re: catenate vs concatenate (was: strncpy clarify result may not be
 null terminated)
Message-ID: <ZWSyD8DVmyqw9O3i@debian>
References: <16cc15a4-cfc0-49f4-9ebf-ecf0901700ce@app.fastmail.com>
 <ZUukRqsFNr7v_2q7@debian>
 <d213e504-9b2a-1526-ded8-2d283a226b4d@redhat.com>
 <ZUwHr2-l1WADR57b@debian>
 <8ebee0fc-1e77-41d9-8feb-8c1083a30a93@cs.ucla.edu>
 <ZUwn82bp6wHceMS1@debian>
 <bc621e0c-2e00-4cda-b888-637fd48ec32b@jguk.org>
 <ZUy9qNSzok2Dtf_N@debian>
 <4a9a3209-ad1f-44be-b0bf-bba23a9cb085@app.fastmail.com>
 <ZWSw6gX2iqOv5xHN@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="34X8lL5pPPhbGldX"
Content-Disposition: inline
In-Reply-To: <ZWSw6gX2iqOv5xHN@debian>


--34X8lL5pPPhbGldX
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Nov 2023 16:13:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Zack Weinberg <zack@owlfolio.org>
Cc: Jonny Grant <jg@jguk.org>, Paul Eggert <eggert@cs.ucla.edu>,
	Carlos O'Donell <carlos@redhat.com>,
	GNU libc development <libc-alpha@sourceware.org>,
	'linux-man' <linux-man@vger.kernel.org>
Subject: Re: catenate vs concatenate (was: strncpy clarify result may not be
 null terminated)

On Mon, Nov 27, 2023 at 04:08:17PM +0100, Alejandro Colomar wrote:
> Hi Zack,
>=20
> On Mon, Nov 27, 2023 at 09:33:56AM -0500, Zack Weinberg wrote:
> > [all attribution deleted because it was so tangled I couldn't make
> > sense of it]
> >=20
> > >> Rather than "catenation", in my experience "concatenation" is the
> > >> common term
>=20
> The above was Jonny Grant.
>=20
> > > We began fighting this pomposity before v7. There has only been
> > > backsliding since. "Catenate" is crisper, means the same thing,
>=20
> The above was Doug McIlroy.
>=20
> > [English pedant mode on]
> >=20
> > "Concatenate" is the correct term; "catenate" means something completely
> > different, probably "hang between two posts like a chain".  You can't
> > chop prefixes off a Latinate word and have it still mean the same thing.
>=20
> [Latin pedant mode on]
>=20
> contatenate comes from the Latin concatenare.  The prefix "con-" means
> "join", "together", and "catena" means "chain".
> <https://en.wiktionary.org/wiki/concatenate>
>=20
> catenate comes from the Latin catenare, which AFAICS, seems a synonym.
> It just drops the redundant "con-" prefix, since "catena" already
> implies it.
> <https://en.wiktionary.org/wiki/catenate>
>=20
> English isn't as propense as other Latin languages to have such synonyms

s/other//

> where one of them simply adds a redundant prefix or suffix, but Catalan
> or Spanish for example have several such cases.
>=20
> [Latin pedant mode off]
>=20
> > [English pedant mode off]
> >=20
> > Also, and much more importantly, "concatenate" is used at least 100x
> > more often than "catenate" in modern English, and that means it's the
> > word that a randomly selected reader of the manpages is more likely to
> > know, and, therefore, the word that the manpages should be using.
> >=20
> > https://books.google.com/ngrams/graph?content=3Dconcatenate%2Ccatenate&=
year_start=3D1800&year_end=3D2019&corpus=3Den-2019&smoothing=3D3
>=20
> Heh, Paul sent a patch for changing it to append, which I applied, since
> it reads better, even if it removes the mnemonics of cat for catenate.  :)
>=20
> Cheers,
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--34X8lL5pPPhbGldX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVksg8ACgkQnowa+77/
2zLJiA/9ESQjPMQ+wmHzsHoZ91vDX6ERsb73xw1gDY8LRTBMyrPWpLbrLran60Vt
4JnPIj26Lu8aPaEwT5KUxLKJz0DlEsnf3jnzG2ULzWNwRqelM8/bMJv3pks1f5Rf
BJaCriwrhlxxezOIo15OvgP7JvnnqbXGvk6YSx9ziVjti11JMV7S3lDHZtdqt6wC
x/kOzrmIxjul8+BUGIFOqMyCuQZoigsxPTRM3LnJo+aSwEHfCTDmaX9pACw5exZO
I6/H1IWAzo8gDIy7ijvGP7df0nnLvg6Fwtw/N0vA8M5wjcXpEWlrHNWrrj00oPeu
zayJWPTEJWomQd0Bbh6YJfWBHyl1WmZl60hOQmYOr3+zYD9rb3vIghtwmr6MHQb0
wgkKbLtPpxNvtH6AqJAloFw+hr48WkviPdmwf9JUSBjYAdihm75byRyj2AOIQV6F
f2AlCsfBxILaxgTMARNJQDloF+dsv2xp7ayEVFdKIMjWhGc8Rc+C+q/AlKAQbqLX
2g9fn1qD7WSoo7IwAJe8lhjjlKv4YRA3Trmn/Is8oVZiLYBtJtBQvte74uV/J01R
KlwdwyOZtb7SXo4CqTfBH6xWZRpPVjOx0lZCi3hiETDT9BMcq/sZriba109MbJ1w
jzZCw+f5MfsyKFQg1zDLmQfydFdqtDY4PZKrsehNfW+g3SamXoY=
=5jsW
-----END PGP SIGNATURE-----

--34X8lL5pPPhbGldX--

