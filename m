Return-Path: <linux-man+bounces-171-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1157FA417
	for <lists+linux-man@lfdr.de>; Mon, 27 Nov 2023 16:08:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 488F428171B
	for <lists+linux-man@lfdr.de>; Mon, 27 Nov 2023 15:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D17CE31755;
	Mon, 27 Nov 2023 15:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="km/q5vAQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8981B1A28A
	for <linux-man@vger.kernel.org>; Mon, 27 Nov 2023 15:08:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 955D7C433C7;
	Mon, 27 Nov 2023 15:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701097710;
	bh=+XMEo0uUb00xZ5sl57FJKNt3NGZs/1KrrH7Fth/hbtQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=km/q5vAQ9ynPhOT4cOG/ZIPi811kpn0i4HTPzyH0FsfgLNaWogzJ+7RsBVTnQctSm
	 HCvfFvzSRtrZEbB/czMSG9p+/8wxQbKObnPeUYKo19VVGEwiGtGbM+jEeDSIyMnu6c
	 Z9/VCEB2ISy2VfI2gt6LW1XyTKukZNR9p+t2pkF8+L5QQgFpbvW3x8vUNyD2PoXtX0
	 MzJhjS2Sim6Cn8g+35R9/sy7XxEbSigC4fL6zYMiPB67Ma2zfTNuAf4meJsmynWu91
	 loGg2CYbC0L5x0kG6ppLanj44un+HlgmOAXo2/lO5B3+gGjZO5WgWpfYOEqZpW1aDO
	 i8SQki/iLHGTg==
Date: Mon, 27 Nov 2023 16:08:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Zack Weinberg <zack@owlfolio.org>
Cc: Jonny Grant <jg@jguk.org>, Paul Eggert <eggert@cs.ucla.edu>,
	Carlos O'Donell <carlos@redhat.com>,
	GNU libc development <libc-alpha@sourceware.org>,
	'linux-man' <linux-man@vger.kernel.org>
Subject: Re: catenate vs concatenate (was: strncpy clarify result may not be
 null terminated)
Message-ID: <ZWSw6gX2iqOv5xHN@debian>
References: <ZUtaH35V3koxTSL0@debian>
 <16cc15a4-cfc0-49f4-9ebf-ecf0901700ce@app.fastmail.com>
 <ZUukRqsFNr7v_2q7@debian>
 <d213e504-9b2a-1526-ded8-2d283a226b4d@redhat.com>
 <ZUwHr2-l1WADR57b@debian>
 <8ebee0fc-1e77-41d9-8feb-8c1083a30a93@cs.ucla.edu>
 <ZUwn82bp6wHceMS1@debian>
 <bc621e0c-2e00-4cda-b888-637fd48ec32b@jguk.org>
 <ZUy9qNSzok2Dtf_N@debian>
 <4a9a3209-ad1f-44be-b0bf-bba23a9cb085@app.fastmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AlmLHWOdid9DBXoa"
Content-Disposition: inline
In-Reply-To: <4a9a3209-ad1f-44be-b0bf-bba23a9cb085@app.fastmail.com>


--AlmLHWOdid9DBXoa
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Nov 2023 16:08:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Zack Weinberg <zack@owlfolio.org>
Cc: Jonny Grant <jg@jguk.org>, Paul Eggert <eggert@cs.ucla.edu>,
	Carlos O'Donell <carlos@redhat.com>,
	GNU libc development <libc-alpha@sourceware.org>,
	'linux-man' <linux-man@vger.kernel.org>
Subject: Re: catenate vs concatenate (was: strncpy clarify result may not be
 null terminated)

Hi Zack,

On Mon, Nov 27, 2023 at 09:33:56AM -0500, Zack Weinberg wrote:
> [all attribution deleted because it was so tangled I couldn't make
> sense of it]
>=20
> >> Rather than "catenation", in my experience "concatenation" is the
> >> common term

The above was Jonny Grant.

> > We began fighting this pomposity before v7. There has only been
> > backsliding since. "Catenate" is crisper, means the same thing,

The above was Doug McIlroy.

> [English pedant mode on]
>=20
> "Concatenate" is the correct term; "catenate" means something completely
> different, probably "hang between two posts like a chain".  You can't
> chop prefixes off a Latinate word and have it still mean the same thing.

[Latin pedant mode on]

contatenate comes from the Latin concatenare.  The prefix "con-" means
"join", "together", and "catena" means "chain".
<https://en.wiktionary.org/wiki/concatenate>

catenate comes from the Latin catenare, which AFAICS, seems a synonym.
It just drops the redundant "con-" prefix, since "catena" already
implies it.
<https://en.wiktionary.org/wiki/catenate>

English isn't as propense as other Latin languages to have such synonyms
where one of them simply adds a redundant prefix or suffix, but Catalan
or Spanish for example have several such cases.

[Latin pedant mode off]

> [English pedant mode off]
>=20
> Also, and much more importantly, "concatenate" is used at least 100x
> more often than "catenate" in modern English, and that means it's the
> word that a randomly selected reader of the manpages is more likely to
> know, and, therefore, the word that the manpages should be using.
>=20
> https://books.google.com/ngrams/graph?content=3Dconcatenate%2Ccatenate&ye=
ar_start=3D1800&year_end=3D2019&corpus=3Den-2019&smoothing=3D3

Heh, Paul sent a patch for changing it to append, which I applied, since
it reads better, even if it removes the mnemonics of cat for catenate.  :)

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--AlmLHWOdid9DBXoa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVksOEACgkQnowa+77/
2zKVNg/+PYsPg/zcYy32/qa0Yqa3QE7sLNVKHkifsyGTmTduxfKn/b65OuwO+cJj
/5rMndIAmyRiLDZLzEFb5hXCS1StaATwuuScKltgwtVo7qVUNv0rjPz1E8uq6CEs
NM6Vy6d6iIarecXDYPf5h1Ek9ySS7Q34wVW5TCg+91mEWkR0xMIgqjkQK9pZyshO
L7St6e6YvAy3xa1DNFNKIkNhK6XL4I+Hc4IkdKvb87MSF9qZKDxNGxmE7zzYELpY
aipBRHwNFiBoyVmYYyJg6bfSVGkwiUq5DeUXNfEn6cosBWEPVYZc2k+Cyrqi/gi/
XJTHmKqrZ+poeSooB3SRC8cnypomYsQdUHvu2VSXjsUMSWJXlq9y78Rl5wM/U19z
+Epk2QthN4fWcR68TpwYCXmKS7w/zJhQWWeoWpFfqYP+09Y4FbEwJWXt4I1gxujf
juamVorHSJYoaXN2Wtpz+sUW2+y0v7QepgmukYkC6KBEKc203ThjfeXXdTazAjlW
ZjG4BM7cU1vF0BABOkycMOol/IPclsaPnvAHu7eoMhk03d6iMnO3jkrHMTbMbXLU
1A/VbFEh+oMy+c68sJ9wixB1+0LavXVViI4PVHxqGRpybxrvj/YFaTZAZt2R5JK5
3wAuylrA+QPaRU24VjZ/LhJ4OYBiZUsY79cL7ZZaT+OEkYSmBok=
=s0BC
-----END PGP SIGNATURE-----

--AlmLHWOdid9DBXoa--

