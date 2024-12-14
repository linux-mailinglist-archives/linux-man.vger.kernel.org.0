Return-Path: <linux-man+bounces-2143-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB499F201A
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2024 18:29:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB826166AAF
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2024 17:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA6F01B4F24;
	Sat, 14 Dec 2024 17:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVHOUN1P"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A741B4F1E
	for <linux-man@vger.kernel.org>; Sat, 14 Dec 2024 17:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734197238; cv=none; b=OSYJr0a0YSoC9Klxizj1GaApXW/ucw9b/Or9Iu+8m5Fi2qr9bjMjErev2Uv4Iu9cpgCHNc8v/ff+dDmZgM0b3kIQOXqJXNqpWXQRvh+Fr0ryumkYeN1nsk7f5ajpVtsVx+ciQPrQjUgT/fAEsN9jwjIPqxY2kyqHysG+fTZzYdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734197238; c=relaxed/simple;
	bh=Zon8Nm49ENImlSJaTbIyVzbBhRkaE4tYBkvnNzkMCwU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n50y2tEtCH8MMmG1OP+KYuNziOOiL6jcHykKS8A7rtK/7c9GwS8pZWtMiFOycQQ51QoDFPmAat2jtaok/vFJE1gW3IkFecl5I3KXwsLUCxey8G25G70I4UuqlPY5RpgiuSH3T/4N0OPgCzkYsLOFUM6GOPRovGXvtRia3QF1TV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVHOUN1P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C779FC4CED1;
	Sat, 14 Dec 2024 17:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734197237;
	bh=Zon8Nm49ENImlSJaTbIyVzbBhRkaE4tYBkvnNzkMCwU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NVHOUN1PmJBG0eXJrLlTCXbKS+ODpXkTyXvpicNe40RUJoDLRPOAk+FtWjpb7g0Me
	 gjAc8HVG7+HybPPZ0o7R4v2H0+A/UuOY4Ql966sPyE4IEtcqc/EVq/6oYz+C9bQEIM
	 psDg/oa448Wpp7iOzoC/EUk35kqUswJzBvBwsmP0lq/+sx0x2irbnJhNTNa3hjeu95
	 Xybp2cLx2vk9j+iDfxbjHzVpT2uxheWhSS5gguFIoE7JaeYigODOIcVLnlOLMcem7b
	 7Ya2E7ou5MtXXm1S60261kEIPrV6BBizLtu1zqzULrguzBDeqweDSluYhQd1lVtsma
	 CJs27Xw3elI3g==
Date: Sat, 14 Dec 2024 18:27:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, Bruno Haible <bruno@clisp.org>,
	linux-man@vger.kernel.org,
	Mario Blaettermann <mario.blaettermann@gmail.com>
Subject: Re: names of ISO 8859 encodings
Message-ID: <20241214172714.bostrlr6v3fxvmta@devuan>
References: <3678665.hdfAi7Kttb@nimes>
 <20241214003716.gnockyne6qh7jpml@devuan>
 <20241214005654.vhpp4c46p7sw4zjr@illithid>
 <Z10hv4ogO2TzgJ6D@meinfjell.helgefjelltest.de>
 <20241214154713.njpgwqgm4vycuiiq@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fxeorl6gn4hkcz72"
Content-Disposition: inline
In-Reply-To: <20241214154713.njpgwqgm4vycuiiq@illithid>


--fxeorl6gn4hkcz72
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: names of ISO 8859 encodings
MIME-Version: 1.0

Hi Branden,

On Sat, Dec 14, 2024 at 09:47:13AM -0600, G. Branden Robinson wrote:
> At 2024-12-14T06:12:15+0000, Helge Kreutzmann wrote:
> > Am Fri, Dec 13, 2024 at 06:56:54PM -0600 schrieb G. Branden Robinson:
> > > Oy vey.  Helge Kreutzmann submitted a similar bug report to groff
> > > and I was planning to make the ISO -> ISO/IEC change to its man
> > > pages.
> >=20
> > I'm not going into the business of valuating which standards should be
> > adhered to. But when referrring to the proper document the correct
> > name should be given IMHO.

I agree.

>=20
> Possibly the "use/mention" distinction of linguistics would be helpful
> here.[1]  In some technical discussion contexts, we merely _mention_ a
> character encoding standard.  For instance, "This program is capable of
> transliterating any document using an ISO/IEC 8859 character encoding to
> valid UTF-8.".
>=20
> In other contexts, we _use_ the identifier itself, perhaps as an input
> argument to a program.  For example:
>=20
>    $ iconv -f iso-8859-1 -t utf-8 NEWS
>=20
> In this shell command, we must spell the character encoding specifiers
> exactly as such,[2] and when documenting the foregoing in an example in
> a man page, we are well advised to spell the hyphen-minus signs with
> leading backslashes.
>=20
> .RS
> .EX
> $ \c
> .B "iconv \-f iso\-8859\-1 \-t utf\-8 NEWS"
> .EE
> .RE
>=20
> Alex, do you think this issue is enough of a trip hazard to warrant
> presentation in man-pages(7)?

What's the issue?  I think it's simple:

When referring to a standard, use the pedantically correct name for it.
When showing a command line, use text that is pedantically correct to
the command interpreter.

Am I missing anything?

Cheers,
Alex

>=20
> > My personal opinion is that correct typography is important, but on
> > quick reading I probably would not spot the differences amongs the
> > various dashes for example. So for me, having all the correct letters
> > is important and of course, to copy and paste text (e.g. code) where
> > necessary, even if that violates typography standards.
>=20
> I think we can avoid violating standards of typography; more precisely,
> the process of rendering to an output device of limited capability will
> violate those standards for us.[3]  For example, a character-cell
> terminal device generally can't (1) render arbitrary glyphs sequences
> superscripted or subscripted[4]; (2) change the type size;[5] or (3)
> change the font family (to use letterforms with or without serifs) for
> only part of the rendered text (as opposed to the entire display,
> including scrollback buffer) at once.
>=20
> > And yes, I'm well aware that Branden and Donald Knuth (and successors)
> > strive for well printed documents, and I'm glad for this.
>=20
> That's pretty august company to be paired with.  Lest anyone get any
> inflated notions of my role in groff, Joe Ossanna of Bell Labs wrote
> troff in the mid-1970s.  After his untimely death, Brian Kernighan
> refactored troff circa 1980 into "device-independent troff".  These were
> proprietary to AT&T (and commercial products for a while), so the FSF
> hired James Clark to write a clean reimplementation of AT&T troff,
> called groff, in about 1989.  Werner Lemberg later became groff
> maintainer and added many features to it such that it became a viable
> alternative to TeX in many more applications (partisan preferences
> aside).  Then Bertrand Garrigues did some mostly unsung but badly needed
> work on groff's build system, making it more pleasant to work with.  My
> role has largely been (1) fixing bugs; (2) writing automated tests to
> (try to) ensure that dead bugs stay dead; (3) revising and correcting
> documentation; and (4) making modest extensions and reforms to the *roff
> language and some of the macro packages, provoking heated arguments
> and/or revealing formerly unspecified behavior, around which some people
> of course poured fast-drying cement in fits of delirium years ago.
>=20
> In software as in religion, the commandments held most sacrosanct are
> those that no one thought to write down in the first place.
>=20
> ("Of _course_ I can interchange pointers and ints.  No one ever said I
> can't!"  Eventually, they did say so.  To much gnashing of teeth.)
>=20
> Regards,
> Branden
>=20
> And now the footnotes, where we play free-association rambling bingo.
>=20
> [1]  https://en.wikipedia.org/wiki/Use%E2%80%93mention_distinction
>=20
> [2]  a given system's iconv(1) command may recognize alternative names
>      for some encodings
>=20
> [3]  For example, the bash(1) man page contains this:
>=20
> .if n Bash is Copyright (C) 1989-2024 by the Free Software Foundation, In=
c.
> .if t Bash is Copyright \(co 1989-2024 by the Free Software Foundation, I=
nc.
>=20
>      In principle, this shouldn't be necessary.  Chet should just write
>      the second line without the ".if t" conditional and delete the
>      first.  The output device should know how to gracefully map the
>      special character "\(co" to a copyright sign, and itself do the job
>      of translating it to "(C)" if it has only an ASCII repertoire.
>      Presumably, at some point in the past Chet (or the initial Bash
>      maintainer, Brian Fox) used an nroff program that was defective,
>      and also labored under the no-longer-correct misconception that
>      omitting a copyright symbol from one's notice was a fatal defect
>      that effectively placed the work in the public domain.  That
>      stopped being true as of 1 March 1989.[7]  Further, prior to
>      guidance issued by the U.S. Copyright Office in the decades since,
>      the use of "(C)" as a substitute for a copyright sign _may not have
>      sufficed_ to prevent the copyright notice from being regarded as
>      defective.  The Copyright Office, then and now, prefers the
>      abbreviation "copr." when =C2=A9 is typographically unavailable.[7]
>      Nowadays, its advice is that "c" (note lowercase) is an "acceptable
>      variant", that _may_ retain the efficacy of the copyright notice.
>      However, it is not the U.S. Copyright Office but the courts that
>      ultimately arbitrate such things.  Moreover, given recent
>      developments, the Office's guidance to authors need not carry any
>      weight to a federal judge.  Between the U.S. Supreme Court's repeal
>      of "Chevron Deference"[8] and the availability of a federal
>      district court in Western Texas offering itself as a venue to any
>      right-wing plaintiff in the country and pursuing a crusade of
>      maximalist Federalist [read: monarchist] Society doctrine with a
>      penchant for issuing nationwide permanent injunctions,[9][10] the
>      status of any federal statute, executive agency guidance, or even
>      constitutional provision[11] is uncertain for the next few years at
>      least.  But rest assured--we term this sort of radical disruption
>      of American jurisprudence a "conservative" judicial philosophy.  =F0=
=9F=91=8D
>=20
> [4]  Often, the decimal digits 0-9 are available as superscripts.  This
>      selection is too meager for general typography, let alone
>      mathematical typesetting where arbitrary, complex expressions may
>      occur in exponents, for instance.  Occasionally you need an
>      integral up there.
>=20
> [5]  The DEC VT100 and its successors could do double-width and
>      double-size type.[6]  Try this in your preferred terminal emulator.
>=20
>      $ printf "$(tput bold)\e#3See also\n\e#4See also$(tput sgr0)\n\
>           $(tput sitm)xterm$(tput ritm)(1)\n\n\e#6Patch #395    2024-09-1=
1\
>           $(tput sitm)xterm$(tput ritm)(1)\e#5\n"
>=20
>      Anyone think these are worth supporting in grotty(1)?  ;-)
>=20
> [6]  https://vt100.net/docs/vt510-rm/DECDHL.html
>      https://vt100.net/docs/vt510-rm/DECDWL.html
>=20
> [7]  https://www.copyright.gov/circs/circ03.pdf
> [8]  https://www.scotusblog.com/2024/06/supreme-court-strikes-down-chevro=
n-curtailing-power-of-federal-agencies/
> [9]  https://www.americanprogress.org/article/the-5th-circuit-court-of-ap=
peals-is-spearheading-a-judicial-power-grab/
>=20
> [10] I would not personally wager that copyright holders have much to
>      fear under the current regime; revenues consequent to copyrights
>      are a form of monopoly rent and therefore a worldwide tent pole of
>      conservative political economy.  But, if a poweful stakeholder has
>      a prospect of a sufficiently large windfall from a radical change
>      to copyright protections, and is willing to spend lavishly enough
>      on political campaigns and super PACs, who knows what might happen?
>=20
>      Here's some model statutory language.  "Any work under copyright by
>      any entity other than the Walt Disney Company, its subsidiaries, or
>      affiliates, enters the public domain as of January 1 of the year
>      subsequent to its fixation in tangible form."
>=20
>      I mean, that's just "common sense", right?[12]  Only Disney has any
>      business adapting anything into a feature film, or exercising
>      merchandising rights.  Duh.
>=20
> [11] https://www.cbsnews.com/news/what-is-birthright-citizenship/
>=20
> [12] another term debased by conservative/centrist political rhetoric
>=20
>      I offer my own definition, in the spirit of Ambrose Bierce.
>=20
>      "Commonsense solution": a course of action I want to take for
>      reasons I will not share with you.



--=20
<https://www.alejandro-colomar.es/>

--fxeorl6gn4hkcz72
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmddv+sACgkQnowa+77/
2zJVZQ//ZdGw5m4vzdrZqTFwovMbcAAT3sNztIyYfDI5fPyQ7DzcZefrsu8gnzJm
DjY3GVqt/lZ4JzS79UrBHkdhvABTednkYjnPxFTs/ZgV5H3e3VJia0USkUDuRayG
gQwZRQw0F1xw3106sUG+cf2cmR/y4vt9s9REkCgEYx6CNTiQPlFfsOOQtcTaoQV3
OXWRImknkZHQSbkNTNg9KexyZMO2Yl5BMcLj0FN19FWLnSkYjxFZy1q/2saL0+2V
QtAriaNz/I9EwT1QD0dd0qclMXr6A5LSujW0cLnHc8Y+jhMRz0MqdPfrYDmSaoGl
7n8CTD+oe9llMGrgnsOccO1hwTXAkO/jJLROB1fTSKm+5gJf5T/j48JBBHax5/J3
GJqmCtxc5sE2AFNq1nLFadVLdJQa9BevUXoX1IaO2qhUg0Z05mxZttLrjYG0NE6q
Q08BT09fK0G6l6RM4w5mplrVAhLvy//QKM4YUHeIK2vqDpLKmmDODowXWxtcjy/p
rkRaYVWOHCg2R9/YhXgu9nel+ZhICJ5J25Pdu7P8to1C2ZOYS85fMYSzTfSu8VkX
vW73AGNBTMvlseTLehL4xf/sSEiR8pXehs5SG9AspilJbtErSBMZwp6ZcS3T6vbE
qx8Iceb0Fh3oehrs5Lor5v4zSUBx2XYQL/jPycqVPfsshgYqk1E=
=LMqo
-----END PGP SIGNATURE-----

--fxeorl6gn4hkcz72--

