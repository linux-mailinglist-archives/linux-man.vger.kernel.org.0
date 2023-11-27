Return-Path: <linux-man+bounces-173-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5F47FA76C
	for <lists+linux-man@lfdr.de>; Mon, 27 Nov 2023 18:01:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D7041C20A95
	for <lists+linux-man@lfdr.de>; Mon, 27 Nov 2023 17:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD16336AEB;
	Mon, 27 Nov 2023 17:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NpRtSmIv"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F97D86B1
	for <linux-man@vger.kernel.org>; Mon, 27 Nov 2023 08:59:40 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-3b86f3cdca0so762895b6e.3
        for <linux-man@vger.kernel.org>; Mon, 27 Nov 2023 08:59:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701104380; x=1701709180; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yfvjxmha3BJBm1CPy9uRbEp1cN3uRzOfAcWU2/GBhi0=;
        b=NpRtSmIvArEL3+wHacKHy9hOgWEQrtggAHS+3zptXyGZi42JiPreYDFOjpftkC0gbY
         gO2NPXbu4R4+HYi3vMVg/s8zw4RBOKeCfPar3u+IROEvZ8BidZDieWdsaP3L0r7jkzEi
         j5P3zyTWluuLGtJYTErmNvtxD/EEXLzdXAvZjmstrXamjzf2BPnyqthPIwP3sD7fq4FW
         SsDCiavBv2Q5UBvTOUbra3vCAT7B1dsj74j1OznE5pV66YRIKVCBDnaR4k1sqw4hJ+HM
         u1z35BYhk9ADoUCZOKCtkidVCFnNX2sVNoTbASYycazI/ddXDSqCK+eIuom5YRntLPt6
         5uWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701104380; x=1701709180;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yfvjxmha3BJBm1CPy9uRbEp1cN3uRzOfAcWU2/GBhi0=;
        b=QBDz4JLTfii0wSPYO/rzyzJp6khUbe+bTzaRBtmhXToonPA4l/Z0M9XKSTxdalED1D
         2AH1tJOi2ZfTRPEdzPrEgwniZrFpVIH9PHic7kibgs+p7p1lkbdQVIBShvJWoD9FUnXb
         7OACKzoHHvi6yPUYKDJMREWXLI2Zej4n2v2/J5AfxJPQK1aWSrHGyw97+0+m58rQ4FCC
         5qxvbS2wBZZNbHjCoSwZqg7XpBz107sc7MToCFQBX1qFZGOWEDc/EiMvxNjMAf/nLfan
         QNn4Lo42cUMbbm1Am9+r5kfeAj9P5kNiE0GTFxf/SGDu0FIePMnQGf3NOXZJuX2eNZ3s
         AElQ==
X-Gm-Message-State: AOJu0YyAfj2odN9J4Uh5H12X1zizCMJ6jBexz1KMAASWhq5yHKXDrVn9
	6Nb7zpEvASzZUo0Ts7D8TIo=
X-Google-Smtp-Source: AGHT+IF4BO4ZFXIKkZ6YxEeSOmwZafOJlQkTDuyPAvR+FehwzrB/m3M0HE3G//RChPc9hU4aoEFreQ==
X-Received: by 2002:a05:6808:3986:b0:3ae:3d0:d74a with SMTP id gq6-20020a056808398600b003ae03d0d74amr19819385oib.52.1701104379765;
        Mon, 27 Nov 2023 08:59:39 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id q40-20020a056808202800b003b2e7231faasm1528514oiw.28.2023.11.27.08.59.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 08:59:38 -0800 (PST)
Date: Mon, 27 Nov 2023 10:59:36 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Zack Weinberg <zack@owlfolio.org>, Jonny Grant <jg@jguk.org>,
	Paul Eggert <eggert@cs.ucla.edu>,
	Carlos O'Donell <carlos@redhat.com>,
	GNU libc development <libc-alpha@sourceware.org>,
	'linux-man' <linux-man@vger.kernel.org>
Subject: Re: catenate vs concatenate (was: strncpy clarify result may not be
 null terminated)
Message-ID: <20231127165936.ninh5gm6jvea76nj@illithid>
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
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ipgwdutgcn73p4kv"
Content-Disposition: inline
In-Reply-To: <ZWSw6gX2iqOv5xHN@debian>


--ipgwdutgcn73p4kv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2023-11-27T16:08:17+0100, Alejandro Colomar wrote:
> On Mon, Nov 27, 2023 at 09:33:56AM -0500, Zack Weinberg wrote:
> > [all attribution deleted because it was so tangled I couldn't make
> > sense of it]

This elision was pretty poor form, given that one of the people whose
attribution (and opinion) Zack discarded was a relevant authority: M.
Douglas McIlroy, an alum of the Bell Labs Computing Science Research
Center and editor of the Seventh Edition Unix Programmer's Manual.

> > > We began fighting this pomposity before v7. There has only been
> > > backsliding since. "Catenate" is crisper, means the same thing,
>=20
> The above was Doug McIlroy.
>=20
> > [English pedant mode on]
> >=20
> > "Concatenate" is the correct term; "catenate" means something
> > completely different, probably "hang between two posts like a
> > chain".  You can't chop prefixes off a Latinate word and have it
> > still mean the same thing.

In some cases, you can.  Witness the case of "flammable"/inflammable",
which are synonymous.  The former term arose because the prefix "in-"
alters meaning in multiple ways in English[1] (maybe Latin, too).  The
coinage of "flammable" later became important in the labeling and
transport of hazardous materials.  Some pedants must despair of this
linguistic innovation, perhaps viewing the prospect of handlers of such
materials burning to death as a just punishment for their lack of
morphological and etymological sophistication.  If you don't want to die
like a prole, get an English degree, eh?[2]

Here, the "con-" prefix is duplicative.  It doesn't pay its freight.

> > [English pedant mode off]

When one discards all other authorities, all that remains is one's own.
I trust we can recognize the parallels here with Dunning-Krugeresque
self-regard.

> > Also, and much more importantly, "concatenate" is used at least 100x
> > more often than "catenate" in modern English, and that means it's
> > the word that a randomly selected reader of the manpages is more
> > likely to know, and, therefore, the word that the manpages should be
> > using.

Man pages are specialized technical literature demanding a bespoke
vocabulary.  Some employment of jargon is inescapable, even necessary.
In any case, "catenate" has ~50 years of attestation in this domain
alone, which constitutes approximately the entire history of Unix
discourse.

If you apply this sort of frequency analysis to contrast man page and
general English corpora more broadly, I predict that you'll find many
candidates for terminological replacement that you would _not_ embrace.

For instance...[3]

https://books.google.com/ngrams/graph?content=3Dopen+source%2Cfree+software=
&year_start=3D1980&year_end=3D2019&corpus=3Den-2019&smoothing=3D3
https://books.google.com/ngrams/graph?content=3Demacs%2Cvi&year_start=3D198=
0&year_end=3D2019&corpus=3Den-2019&smoothing=3D3

Zack also overlooks the process by which speakers and readers of a
language grapple with unfamiliar words that they encounter unexpectedly.
Before undertaking to reach for dictionaries (online or otherwise), many
readers morphophonemically analyze them to see if they can infer their
meanings from familiar components.[4]

> > https://books.google.com/ngrams/graph?content=3Dconcatenate%2Ccatenate&=
year_start=3D1800&year_end=3D2019&corpus=3Den-2019&smoothing=3D3
>=20
> Heh, Paul sent a patch for changing it to append, which I applied,
> since it reads better, even if it removes the mnemonics of cat for
> catenate.  :)

In Unix culture, one will need to remain conversant with the term
"catenate" to know why cat(1) is not named "concat(1)".  ;-)

"Concatenate" may end up prevailing even in *nix man pages; languages do
not necessarily evolve in directions that maximize lexical economy.[5]

But to change one's usage based on the break room reasoning put on offer
in this thread is a terrible idea.

Regards,
Branden

[1] https://www.saturdayeveningpost.com/2023/02/in-a-word-flammable-inflamm=
able-and-nonflammable/

[2] ...where the first-order factor in determining your academic merit
    will be your facility with the ideas of 20th-century French
    political philosophers.

[3] One can complain that the second example suffers from a confounding
    effect given one of the terms' appearance as a roman numeral.
    Precisely.  Google Ngram Viewer is not sensitive to context.  Zack's
    use of it is a makeweight recourse to cloak an opinion grounded on
    personal preference in a shroud of false objectivity.

[4] I see this practice offered as advice in numerous resources, and it
    reflects my own approach as a native English speaker who acquired
    language before the availability of computerized (let alone
    hyperlinked) dictionaries in the home, but in a perfunctory search I
    couldn't turn up any _studies_ of what readers _actually do_.  One
    technique that could arise from Zack's approach would be to obtain
    an English word list sorted by frequency, strike off known words
    until encountering an unfamiliar one, learn it, then resume the
    process until the unfamiliar word that actually came up is reached.
    (This way you can be more confident in your own writing and speech
    that you don't use an obscure word where a more common one
    suffices.)  How well do we suppose such a process might work?

[5] certainly not if _my_ emails play any part in that evolution <drum fill>

--ipgwdutgcn73p4kv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmVkyu4ACgkQ0Z6cfXEm
bc6thBAAjaWaYvYQyw6RlLZhYG8hpzT9nbbbIfUaph9ukvG6lKqjaZSfOvDNEvdf
/nwakvCB9IBHWhGb45I9JktNlFQViFwBp1cK+rW3qinkFOBM8tFfLpcLtKkU7HSt
e6FT9tfGfmdHZN2Co67c7hDXz/82hMqA7xaIa7zbektQoO5AoyAKPDEHmJ7lmjDf
CIIeXZNctn9NqCgetcxF//7dZp6MkPNGQl0p4jqGEI9Qi5OuCItHNEdLCb4U19MP
Y3NYbkWPbt8F83bKg2Sdz65MrpxwCMrsJ0ZfwT2jeftHCXNc5NfX5mCVubo0MfSB
BjPyC+MqO3WwVVmdf41NpCfWnVjfksZXAm8RxahB5FHlA8b68+CycrVjaRR2oKHl
eEgnz0ktKSHK5tLJFPmzeW+xnZt8IITQFjP099t98dzVQEQeTff9X9B+BtqohCTo
KgI9Mx42WpvgmXWmpWXcJEebY9UWhFG4QXPw6hK6BXWuZyZXfzqx0Bj60ytrAitG
rp/h3ihmBq7/gH5jX54ZSUn4nyA0V/QG0m+GD5dP7W45arifTvNxZ6OnG1yREEcw
6PKKL2Eh8IECUaW/238EBaizjsKdXMpJiB+9H8xXuXyat0UH6pbsxJnWtCt4mFAQ
WSqkWgn+14q4WW44IvhomWw69WFDvJbC58yhyUtTEQaqhAC7T9o=
=Z//G
-----END PGP SIGNATURE-----

--ipgwdutgcn73p4kv--

