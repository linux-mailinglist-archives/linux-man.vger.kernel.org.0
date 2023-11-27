Return-Path: <linux-man+bounces-176-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 749AA7FAE8E
	for <lists+linux-man@lfdr.de>; Tue, 28 Nov 2023 00:45:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C1635B210D8
	for <lists+linux-man@lfdr.de>; Mon, 27 Nov 2023 23:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA02B49F75;
	Mon, 27 Nov 2023 23:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IVdq7jQF"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F34C4187
	for <linux-man@vger.kernel.org>; Mon, 27 Nov 2023 15:45:11 -0800 (PST)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-1f03d9ad89fso2829441fac.1
        for <linux-man@vger.kernel.org>; Mon, 27 Nov 2023 15:45:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701128711; x=1701733511; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xgozJZtZNXBesn/tfdHzhczrUqpq5Ee4poQWNXx99OU=;
        b=IVdq7jQFpu/n04jdudC4mDPyGVZHIyMDzkdB3jisfJc+KEDZ+IKPG24uO9j9zlmS9d
         cMyfEP+kUr+mwPkT642KREtNhgew+aFVc0lAKXlA74w0mmMnt+zxHLvy3IBgQUN5njXf
         XkaYpzIxVshZilPqbaNbsnDEIk35SUuJcrxWRJe38wETNWk8OhUvnan7/oZZCr6zY+nc
         BC2tnBWVz4Mhb0qxzTqKrhDYVJ6GCmGs2JWtLB5YW62gETI5FI/URFPXw51nIzgJeUjK
         JulyJYaKJbrvNCks7ZRgH5mnaqbHbcsn5R5c+uY4Oe8mK3lJb7/zLATuVkmMgx/KZJ4/
         afvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701128711; x=1701733511;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xgozJZtZNXBesn/tfdHzhczrUqpq5Ee4poQWNXx99OU=;
        b=o2Z9vqCgMH3V4sZ+B68Z2WUypsODk5U++r0tz4hvb5llp5mA5R2v1waqNEXcUCLf0C
         vugMn80lsZliiLITIsGt5lMdvis9ufZvzE7gpgTZidyL1nE6HIc1hDPuZ1wU7LYVYKP5
         0s94AroDiXQPHAoHI2/P/QBamx/NP1DvFP72Co4TKcoUGr0VZbzd8ITD0/1IGJH9sB4N
         Sgusy+PDL2IGjyHPLn6jYbbUAyHjLiLVkTOMFqBeAsZADfICTs8cchPCQg+B1lnH2Tcw
         bhku4sG5YJQz1FBhD8mCbYMIXmroDhhLsJwVtYRoBFqUXQFtXKyeupJwFwjVBST0XCw4
         SrFA==
X-Gm-Message-State: AOJu0Yz+ilXRdLW5FGbBWXKmiieh/ZsHGNRsCPFeqn5EXnGEdLs+dj4A
	dYujn+tYY/crwD/xiAIMBc8=
X-Google-Smtp-Source: AGHT+IEfZY07Z6tU0Pnzhc9i/S/VCxI+sBbDDXkKAFvk9fBUYWiQajPEL2t5Kl4fMddaKkgJmfx1tQ==
X-Received: by 2002:a05:6871:528c:b0:1fa:261f:ac29 with SMTP id hu12-20020a056871528c00b001fa261fac29mr12342890oac.53.1701128711073;
        Mon, 27 Nov 2023 15:45:11 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id pi10-20020a0568704c8a00b001f9ec4edbfbsm2166225oab.50.2023.11.27.15.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 15:45:10 -0800 (PST)
Date: Mon, 27 Nov 2023 17:45:08 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Zack Weinberg <zack@owlfolio.org>
Cc: Alejandro Colomar <alx@kernel.org>, Jonny Grant <jg@jguk.org>,
	Paul Eggert <eggert@cs.ucla.edu>,
	Carlos O'Donell <carlos@redhat.com>,
	GNU libc development <libc-alpha@sourceware.org>,
	'linux-man' <linux-man@vger.kernel.org>
Subject: Re: catenate vs concatenate (was: strncpy clarify result may not be
 null terminated)
Message-ID: <20231127234508.sgu5upvte7vudla3@illithid>
References: <d213e504-9b2a-1526-ded8-2d283a226b4d@redhat.com>
 <ZUwHr2-l1WADR57b@debian>
 <8ebee0fc-1e77-41d9-8feb-8c1083a30a93@cs.ucla.edu>
 <ZUwn82bp6wHceMS1@debian>
 <bc621e0c-2e00-4cda-b888-637fd48ec32b@jguk.org>
 <ZUy9qNSzok2Dtf_N@debian>
 <4a9a3209-ad1f-44be-b0bf-bba23a9cb085@app.fastmail.com>
 <ZWSw6gX2iqOv5xHN@debian>
 <20231127165936.ninh5gm6jvea76nj@illithid>
 <fb98e033-0bed-4f8c-b33e-e22961e81132@app.fastmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kfiqww4m577jguzl"
Content-Disposition: inline
In-Reply-To: <fb98e033-0bed-4f8c-b33e-e22961e81132@app.fastmail.com>


--kfiqww4m577jguzl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Zack,

At 2023-11-27T13:35:01-0500, Zack Weinberg wrote:
> On Mon, Nov 27, 2023, at 11:59 AM, G. Branden Robinson wrote:
> > At 2023-11-27T16:08:17+0100, Alejandro Colomar wrote:
> >> On Mon, Nov 27, 2023 at 09:33:56AM -0500, Zack Weinberg wrote:
> >> > [English pedant mode on]
> >> >
> >> > "Concatenate" is the correct term; "catenate" means something
> >> > completely different, probably "hang between two posts like a
> >> > chain".  You can't chop prefixes off a Latinate word and have it
> >> > still mean the same thing.
> >
> > In some cases, you can.  Witness the case of
> > "flammable"/inflammable", which are synonymous.
>=20
> Yeah, and (after seeing Alejandro's reply) I did look up both
> "concatenate" and "catenate" and find that they are synonymous in
> English and both are attested from the 1600s.
>=20
> **But I had to look that up.**

That's not a bug.  When we stop learning, our brains die.

> I cannot recall ever encountering the word "catenate" prior to this
> thread, and my knee-jerk reaction was "typo."

The patellar reflex is not a reliable guide to purposeful development.

> Based on actual experience trying, and mostly failing, to teach
> college undergraduates to read man pages,

I empathize with you here.  I have a bit of background in teaching and a
bit more in man page composition.  Over the years my emotional response
to being frustrated that I have to quote a man page to other software
professionals in an email or message board has evolved into relief that
I have material of reasonable quality to quote to people...when that
happens.  Sometimes a person raises an issue and my internal Gilbert
Gottfried yells, "you FOOL![1]  That's plainly documented in--wait, uh,
give me a second.  Uh...sh*t, I need to write a patch to this man page."

> I believe someone new to English technical documentation would have a
> different, much more troublesome knee-jerk reaction: "There must be
> some subtle reason why this documentation is using an unfamiliar term
> 'catenate', instead of 'concatenate' that I already know." Followed by
> wasting a bunch of time trying to research that unfamiliar term, and
> when they find it's an exact synonym, adding another tick mark to
> their mental tally for "manpages are badly written and hard to
> understand."

I think your hypothesis is sorely in need of testing.  My own feeling is
that unfamiliarity with standard English vocabulary is well down the
list of things that people find frustrating about man pages, if we take
the product of annoyance level times the number of people perceiving a
defect.

> > Man pages are specialized technical literature demanding a bespoke
> > vocabulary.  Some employment of jargon is inescapable, even
> > necessary.  In any case, "catenate" has ~50 years of attestation in
> > this domain alone, which constitutes approximately the entire
> > history of Unix discourse.
>=20
> This is no excuse.  Specialized technical jargon is only appropriate
> when there is an actual difference in meaning.  (Thus, your "open
> source" vs "free software" counterpoint is bogus.)

I offered them in a tongue-in-cheek effort at humor.  I don't regard
"Emacs" and "vi" as synonymous, either.  Also I know they'll take away
your GNU card if you claim "open source" and "free software"
equivalence.[2]

Analogously, "disenfranchise" and "disfranchise" are also synonymous,
and I prefer the latter to the former for the same reason, popularity be
damned.

> > Before undertaking to reach for dictionaries (online or otherwise),
> > many readers morphophonemically analyze them to see if they can
> > infer their meanings from familiar components.
>=20
> In grappling with general literature, yes.  In grappling with
> technical writing, *no*, and again I am speaking from direct
> experience as an educator.  Readers who encounter an unfamiliar word
> in technical documents will most probably assume that the word has a
> precise meaning that they must learn, and that they *cannot* deduce
> that meaning from context.

If that's the case, then our field is doing a crap job at terminology
selection.  (Stop the presses, right?)

> If they can't find a definition -- and they might not even try looking
> in a general dictionary, since they may assume that the relevant
> definition is too specialized to appear there; also it seems to me
> that schoolchildren are not being taught how to use dictionaries
> anymore

Enough of them seem to be using urbandictionary.com that the concept
remains familiar.

> -- *they will give up on the entire document*.
>=20
> Yes, this is bad.  It's an instance of learned helplessness, and it's
> going to take decades and major educational reform at the grade-school
> level to fix.  But there's one thing we, authors of technical
> documents, can do about it right now, and that is embrace plain talk.
> For example, whenever there really is no difference of meaning, the
> most common word in general usage is the word that should be used.

Again I'm going to have to disagree with you.  Where we can
morphologically simplify without loss of meaning, I think that fits a
meaning of "plain talk" that is reasonably robust across the many
cultural contexts in which English is used.  Your popularity metric is
vulnerable to sampling biases, particularly of the geographical sort.
And the plainer the talk, the more it is exposed to confounding regional
factors.  When I moved to Australia, I had a frustrating experience at
the grocery store.  I need to replace a light bulb.  No sign anywhere in
the store helped me.  While searching fruitlessly, I vaguely noted a
sign for "globes", and a thought that didn't quite reach the top of my
brain observed that globes are a damned weird thing to sell in a
grocery--but hey, it's Australia, maybe they need a _reminder_ that
they're hanging from the Earth's underbelly.[9]  After a few more
minutes, these two threads joined.

Q:  How many seppos does it take to screw in a light bulb?
A:  What's gardening got to do with it?

> > In Unix culture, one will need to remain conversant with the term
> > "catenate" to know why cat(1) is not named "concat(1)".  ;-)
>=20
> This is how I would teach it: 'concat' is too long for Kernighan and
> Ritchie's 1970s (or more precisely ASR33) tastes; 'con' was already in
> use as an abbreviation for 'console' (not in Unix itself, but in other
> contemporary OSes); and 'cat' is the next three letters of
> "concatenate".  So that's what they picked.

Please don't teach that.  There's a lot about it I find dubious.

1.  Thompson was the primary human force for extreme terseness in Unix
    culture, as far as I can tell from my readings in CSRC history.
    (There were other technical and ergonomic forces driving it, like
    low line speeds and the Fortran linker on the PDP-11--which C
    initially re-used--being limited to six significant characters in
    external identifiers.)  Kernighan's own writings suggest that he
    preferred clear labels over cryptic ones (see his _The Elements of
    Programming Style_, with Plauger; _Software Tools_, also with
    Plauger; and _The Unix Programming Environment_, with Pike).  I
    speculate that Thompson reasoned that he'd never need more than
    26*26 commands anyway, so there was no reason to use an encoding
    space larger than that to denote them.[3]

2.  "ASR33" is a misleading misnomer in a couple of respects.  You're
    referring to a Western Electric Teletype Model 33.  "ASR" is neither
    a manufacturer nor a model, but a configuration option.
    Specifically, "ASR" devices didn't have keyboards--just a paper tape
    punch and reader--so they were not much used for Unix development.
    "KSR" (keyboard send and receive) was the relevant configuration.

3.  The Bell Labs CSRC didn't use Model 33s anyway.  Western Electric
    was also part of the Bell monopoly, and by late 1972 at the latest,
    Labs personnel got to drive Cadillacs--the Model 37, and moreover
    the ones used to produce Unix had the "Greek" character set
    extension.[4]  You will find references to both devices in the
    Seventh Edition man pages, but the terminal driver was "tuned for
    Teletype Model 37's"[5], and troff(1) named it as a supported
    terminal device rather than the 33.[6] That said, Model 33s were
    supported, and widely used at Unix installations outside the Labs.

4.  Your deployment of "CON" to refer to the console device may be
    anachronistic.  I can't find any evidence that Multics used this
    name for it.  I'm not familiar enough with IBM's OS offerings over
    the decades to be able to navigate online material about it.  Many
    people likely know that MS-DOS called its console device that, but
    cat(1) is about a decade older than that product.[7][8]

Regards
Branden

[1] https://www.youtube.com/watch?v=3D2NpTmKmWdzk
[2] https://www.gnu.org/philosophy/open-source-misses-the-point.en.html

[3] I base this surmise on more than an attempt at mind reading.  See
    the first footnote on page 6 of McIlroy's "A Research Unix Reader".
    https://www.cs.dartmouth.edu/~doug/reader.pdf

[4] https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DV3/man/man7/greek.7
[5] https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DV7/usr/man/man4/tty.4
[6] https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DV7/usr/man/man1/troff.1
[7] https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DV1/man/man1/cat.1
[8] https://www.os2museum.com/wp/dos/dos-1-0-and-1-1/

[9] I'm teasing.  I'd have loved an "upside-down" globe, not least as a
    reminder that the melting of the Antarctic ice sheets will pour
    inundating destruction down on most of us thanks to the superior
    qualities of billionaires.  I already had a counter-clockwise clock,
    but didn't take it with me to Oz.  Also the moon is wrong there.

--kfiqww4m577jguzl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmVlKfwACgkQ0Z6cfXEm
bc42ng//XSZ2jBSSMxDrcj5Dv/Vw8U9no27DZ0VFKVFKgrD+k1MACbCa48j0O7l+
YeLmU7smnqxWU3zVNIQV+vz8GLXdtpeYocLrRhQQOQjr1iElr/rRaSD/FgA6tRkv
Tm9pBikN5Ke1gf1BXMPCl/cvNbW641fxXc/+Y16IQZtVyw2/K+cDgd1QS/dH6+I9
50WFtO/Jtg/6BHiIKBdltBWSGjspLAh/Lp+Wj3qPkimlKOjxRQG2oucg1R4z68S9
tEVajAsuduFJqimeh3OJDp6RMnMCiXhU5krhFjYHi+zPKpqRqZIsWdCFhlS+UqGw
41EoBf7yaQm4lQlCGWKZ2+Xb01b9F3cUro9npuUesyMXj0as9ck/E/4bjhavx9wg
Gafgr0wJ7tCCsP/ayrACeUlntF8I0nn+lsgcpcL18IawdcRQeHedIqd+BxH+I2CF
iHAnVrZM+9VC5aiV2JpkCQKbrdvDL4OjmXhBkU6sRDFNCAUDno5eplEFk2HmWwK/
dkntqVghbVzoU0VpqLU4VN1hwP84a8e/zm4M7UdVS3PB/WVXPpbJH0Ue7MLcMXol
6dFVOl9Y44VeqKUOYO7x0xmDNrP28WDdwvIYCTRh63vUuKn8Pa1ssbj1q7kGWr4w
vVJAPOolOqx5dgDFq1B2lYoAKb6dvelFL9lFSEeqrFUNZad1y/4=
=AkIQ
-----END PGP SIGNATURE-----

--kfiqww4m577jguzl--

