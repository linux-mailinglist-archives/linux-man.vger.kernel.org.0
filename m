Return-Path: <linux-man+bounces-2476-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BCCA38EEF
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 23:22:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F1F8416895B
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 22:22:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85C7B19F101;
	Mon, 17 Feb 2025 22:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G2uWuiRS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 840BA19D89E
	for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 22:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739830972; cv=none; b=HD2kjFrQNkmh1Y1vHcjgT29S+WqvsInivuixcAp/X3AYvsmhZB0MPRjzEID09TOhiEK6YWecxS5iMzKBs60yNEEVEcKN+fIfDmBTKPUG/zckLyobtKbNGh4tAd8uS6An3QJ0km0upLbI9TuUjzADE9ojvRwK89IddNjuCHdOvsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739830972; c=relaxed/simple;
	bh=39a1dL6zkIYTWmV+LHe8BJwRfcJ5cN0nIYFVwUzY5wY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bXCL/YP2CuHWq4p/3gaKlcBwutUTPxL753+Rka7Z2bGyyvXIK2lYCJNbIvlbxjf2kVLfJ/ZxL++9QXE1j5EmFfxPMFVTqFB5KPiaeADTxqHyO/7Y62gYhA6zdLzC/WTMDlCjniEqoEcM3wwU5SVNtJn2bDek1ug+M2/02r/kGSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G2uWuiRS; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-7271cc3d73eso972740a34.1
        for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 14:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739830969; x=1740435769; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LqdfHx66YBBLImoRhmqg8FRGix2o9zuTQx8m6KqnbgI=;
        b=G2uWuiRS74eGT2qz67mMa+RLrujnzIgzv8EA3wUVPbVhQUyeefmxiqhhgZcVVmJptS
         dl1+v12PzwcbiDlqoq03vDJuUminCC6InRLNmdRsZRULHOK5CvewCxQoYmcKSlbbLfUf
         UYK7kDPXG9s7rcSPzi05LzQ0XLC5jr54GA5+Lj17CVrqAaE91pu2hTH9t7gCThH/qtAt
         m/0YIx9GeSu7TMzb6mj+Hp157mtCd6+Nv/dXck20SQjyt9HcUTNgjcY9h1J1cezB8v7v
         dAfQTnaOBo4l1KXrijMTmO7VquxOenxZ9d1JaNjabZU4u85UkvWJJqnc7lgrrPcJhgKn
         qYlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739830969; x=1740435769;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LqdfHx66YBBLImoRhmqg8FRGix2o9zuTQx8m6KqnbgI=;
        b=aNmZHTsRQQVybcNdAMNj8QyqUSTNd1dkm2mjYjpQwK02tVJn6iTwp17U9f+Dyx9NNP
         CBo4kH4LqHxd1PhOGsNvYVjEFKRVv/I82dMdf453lnHh0OcICkMo6wqEgz2NYqcH7Bur
         JCfBRLstFv1PDrNg9YWYDKDMWiBx/eNTGF9hXJp1TkF3vZK+RaqiX8CyEE4ahnO7Yfq/
         Ko/Nm0XiApuuYBi9/TH3L3oIyA0n23b5p0wQJOe/mlINJPuELB+4njEQ8rinv1BqF8/4
         ILBfVp04YSpal9nAjA6x+7cpi4YvaCQP4pejkKnQeeyu7iyGjzsh6UaqVCxRZm6oPX/8
         GnWw==
X-Gm-Message-State: AOJu0Yx1aUIjL6NlI/JbmdFQBAWwgntzVAOxByEDfX+8DTCoExB7av2p
	JEpEoZ1r8dWR4QgSoAdf0Tcy8tc8/WvGvLMTGkJJzJcB50dXvtR5
X-Gm-Gg: ASbGnctCxGVJNzWsG+AHuYoLVCTi7LTDfayNVPU9bLvJ61D6gFJv+xUnQMFU8k+cJZP
	uz5Q3BxilLsJN1742eApenbzP3AsEXb1ZUAUXFYmBJCL49HE/CsP79PCT+bqYWQCvVKFtA9FUCq
	f0LWp1Rg8QlcJGRqUmW0SpSc0ro8/02twsx5TIeyh+SQ3BLa7f+3Xg8Fhe9zIu1eArEyqeDtNib
	t/wqzNAEYZwyuyyV0ctvOxp0FvtkH+V52/qyrZRCKa9PgPfMeKP29OYYxDkeS8a90aTkZiLQ7ok
	Nip4GQ==
X-Google-Smtp-Source: AGHT+IGrfHAoFWlTLfkBd8zSofbJB5fIHB31Ed/aG1GvsAXqJ5epu4aFm27eobEXd+aMMA6mJJPavw==
X-Received: by 2002:a9d:3e49:0:b0:727:25c6:1b60 with SMTP id 46e09a7af769-72725c61cbamr2740801a34.5.1739830969326;
        Mon, 17 Feb 2025 14:22:49 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-727001cdc13sm3477897a34.11.2025.02.17.14.22.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 14:22:48 -0800 (PST)
Date: Mon, 17 Feb 2025 16:22:46 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
	groff@gnu.org
Subject: Re: Problem in prepare.pl (PDF book script) when handling Unix V10
 manual pages
Message-ID: <20250217222246.ibbqlp4erhghafjb@illithid>
References: <ydrwk436ykp6qbl7mc4huswr4sp2rolev6mzxo4j3ccwweesbd@sdogm3kxgxew>
 <144994063.NCV6AghAH5@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fc43mbpvs6kvvqr6"
Content-Disposition: inline
In-Reply-To: <144994063.NCV6AghAH5@pip>


--fc43mbpvs6kvvqr6
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Problem in prepare.pl (PDF book script) when handling Unix V10
 manual pages
MIME-Version: 1.0

[CCing groff@gnu list because some problems arise here that merit being
 findable by search of its list archives]

Hi Deri,

At 2025-02-17T18:52:46+0000, Deri wrote:
> > 	programs in constructed pipeline:
> >=20
> > 	GNU grops (groff) version 1.23.0.2695-49927
> > 	GNU troff (groff) version 1.23.0.2695-49927
[...]
> Since the v10 pages are intended to run on a version of troff with a
> two character name limit (I think). Code such as ".ne4" cause a
> problem for groff, which needs ".ne 4" to work (otherwise groff looks
> for a macro called "ne4" and fails. Many of these issues are now
> corrected.

We do have compatibility mode to support old-style AT&T troff input.

troff(1):
     -C       Enable AT&T troff compatibility mode; implies -c.  See
              groff_diff(7).

However...

[skipping ahead]
> but changing some "$" to "\[Do]" fixed the problem.

=2E..if you're doing that, you foreclose use of `\[Do]` for 2 reasons.

1.  That syntax is a groff extension (the AT&T troff form would be
    `\(Do`)...but worse...
2.  `Do` is not a special character identifier generally recognized by
    AT&T-family troffs.  And there's no way within the AT&T *roff
    language to define new ones.  Fortunately, in Kernighan troff, it's
    not hard to add them to font description files.  As long as you have
    superuser privileges.

> A strange issue is that if a page contained a "$" character it sent
> eqn into the stratosphere (thinking was dealing with an inline
> equation), I killed it when eqn chewed up over 24gb of memory. I have
> no idea why, and it is not triggered by a single page containing a
> "$", so it must be triggered by something in an earlier man page which
> triggers it, but changing some "$" to "\[Do]" fixed the problem.

I surmise that this book building system either runs groff with the `-e`
option, or pipes the pages through eqn(1) explicitly, so that every page
gets preprocessed by eqn.  That's not wrong--in fact it's probably the
sanest thing to do--but it does expose you to scenarios like this.

I'd bet a U.S. 50-cent piece that some page had this in it:

=2EEQ
=2E..
delim $$
=2E..
=2EEN

and then never did this later:

=2EEQ
=2E..
delim off
=2E..
=2EEN

=2E..because who ever formats more than one man page at a time?

So upon encountering a `$` in an eqnless man page later, the eqn
preprocessor would indeed then start gobbling up the entire remainder of
the input for attempted conversion to troff input.

GNU eqn added an option that strongly mitigates this and another
problem:

eqn(1):
     -N      Prohibit newlines within delimiters, allowing eqn to
             recover better from missing closing delimiters.

=2E..and the groff(1) front-end exposes it too, for convenience:

groff(1):
     -N       Prohibit newlines between eqn delimiters: pass -N to
              eqn(1).

=2E..however before reaching for this solution, the corpus of pages being
formatted needs to be audited to ensure that no multiline, inline use of
eqn is attempted.  If it is, the pages must be altered to either:

1.  stop doing that--maybe by joining lines--enabling use of `-N`;
2.  migrate the "inline" math to EQ/EN bracketing (groff man(7) doesn't
    define `EQ` and `EN` to set the math as a display, so this _should_
    work okay), also enabling use of `-N`; or
3.  find the spot where `delim off` should have been and add it.

> One page redefined the ".P" man macro, which then affects all
> following man pages.

Naughty, naughty!  I've wondered in the past about adding support for
"burning it all down and redefining all interface macros" in groff's
"an.tmac" (specifically when hitting a new `TH`).[1]  But I decided that
people wouldn't believe me that this was a practical hazard.  Thanks for
pointing me to a real-world case!  :D

> One page introduced a string register called "mc" which then masks the
> groff command ".mc" with very strange results .

That's not just a groff request name, but an AT&T one.  Hard to imagine
how that isn't a bug, or at least a deeply unwise practice.  People
might want to use {g,}diffmk(1) on man pages, and trashing the mechanism
for setting up the margin character defeats such usage.

Unfortunately man page authorship culture did not evolve in a direction
such that people making changes to the formatter's environment (in the
broad sense, not the *roff concept) put things back the way they found
them.  Approximately every man page is written in the expectation that
the formatter will exit once the last line of _this_ man page document
is read.

Just like how you don't need to bother to free heap-allocated memory in
your programs unless you think _you'll_ need it.  It's the free store!
Grab as much as you want and forget about it!  When your process dies
the OS will reclaim it all anyway, no harm, no foul.

It's no wonder Unix culture produced so many code cowboys.

> Font L is used in many entries, no clue what font this is, but I
> convert to font CB. Please change to taste (see lines 130 onwards).

Good call.  `L` (presumably abbreviating "literal") was a latter-day
Research Unix convention for font and macro names that I have not seen
in materials originating outside the 1980s CSRC.  AT&T Documenter's
Workbench (~1984-~1994), for example, did not appear to embrace it.

> Several pages use lower case macro names, i.e. ".th" rather than
> ".TH".

Wow.  Those could be hangovers from pre-Seventh Edition Unix "man".
But I thought Doug McIlroy got all of those ported/rewritten for Seventh
Edition.

Nevertheless, at least System III,[2] v8, and v10 retained support for
Sixth Edition style man pages.  For example:

$ head -n 5 v8/usr/lib/macros/an
'''\"   PWB Manual Entry Macros - 1.36 of 11/11/80
'''\"   Nroff/Troff Version     @(#)1.36
=2Edeth
=2Etmwrong version of man entry macros - use -man6
=2Eab

So be careful out there if you don't want Dave Mustaine to snarl at you!

> I have "fixed" a lot of the problems but there are still many warnings
> when running groff. I have attached two parthes, one for the V10 man
> pages, and one for prepare.pl. You should be able to produce a
> "useful" book after applying these.
>=20
> If you wish to see the fruits of my labour as a pdf, it is here:-
>=20
> http://chuzzlewit.co.uk/UnixV10.pdf

This looks really good!  It's wonderful to see a working, useful
navigation pane, and at least some internal hyperlinks are working.
Some aren't, and at a glance it's not obvious to me why.  (It's not the
first argument to `TH` being in shouting capitals that hoses things, and
that's not practiced with 100% reliability anyway--see as80(1) and
ld80(1), for example.)

In fact those two pages are a weird in a few respects.  Obvious spelling
errors on the one hand ("moduals"?), and the latter uses a really old
Unix manual convention, identifying the section numbers with roman
numerals.

Where modernization for PDF rendering purposes stops and the Research
Tenth Edition Programmer's Manual, Volume 1 editorial effort begins anew
may prove a difficult boundary to draw.

Regards,
Branden

[1] One bad approach, IMO, would be to define all interface macros
    except `TH` _inside_ its own definition.  Apart from being
    super-disruptive for change tracking purposes, since it would touch
    nearly every line in the macro file, I would expect this to be
    harder to understand and maintain.  Nested macro definitions are
    fully countenanced by the *roff language but not, I think, a widely
    mastered technique.

    Better, I think, would be to define all interface macros using "long
    names", like `an*SH`, and then have `TH` redeclare the public names
    as aliases, as in `.als SH an*SH`.

    Care and testing would be required, as "andoc.tmac" uses the same
    technique to permit switching between man(7) and mdoc(7) input.  I
    am therefore not in a hurry to pick up this task, even though we do
    already have automated tests to detect failure of such switching.

[2] But not, interestingly, System V.
    https://github.com/ryanwoodsmall/oldsysv/

--fc43mbpvs6kvvqr6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmeztq4ACgkQ0Z6cfXEm
bc7UiRAAkUCkYPeaFLQtNkkp5DuCT+BsfIkZ88N4FVKsTZP5HMn1ZX3BaE07tI84
0gCOFWfAB2jTGlVwqg0GwlwS/rjVo+bjoSLJcQK1HsWyNzmGY2dgk5fO1l0svynd
lJUuJnYQCz7tRJGMS2e/4wqeemHzLbx65cMP36gbJ+4gUREv9MW2hNXd/mNlVs/L
D9ApsF9USOLSln0/TtH8EKnWfnv+4KgPGH3yCgjo2RNrIF+SZKid7FRs8YbPiMvY
+A3NvOpmjoVo1Gbgp/lUdvT2WvF5cu65y8d5dIzofq7wZhkTQI0Hb+qciiRiMW65
HccqDsObqLgXIjFHcYa2kMVlpbHh+TtPHxHBtx6E3cqJQlPeVXeZKOU9A1pVBHxm
rAx7R4ojNKEhCEaCUXfawXabehvNmxAken5PIfoDj4FXamHLN/hVoVSmO43n88WZ
RE9jKH+7G+MNcdJ270pijIowqmYC9uPV3ejvP+1QBf4DdZ9oBJA9C/LyOx40du8P
NsdWmwAP4y8q5Sy/Y/lK9WJQ/AqoRYL5yPVfAMtSzOqca7zPS0cvjOJ9USQ8QMmQ
340Sx4iFWT7E71WxPgGrEQcLR+X3jaXREWsSz9h23ziq1ie6SrcMgSG3p0cJ15q3
XtHSbJ9hpHy/f82rIvmMtg+42F0FREV5bmPNkPDauGJaoeTcAgA=
=Gq0y
-----END PGP SIGNATURE-----

--fc43mbpvs6kvvqr6--

