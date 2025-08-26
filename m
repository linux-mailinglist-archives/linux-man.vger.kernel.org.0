Return-Path: <linux-man+bounces-3739-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A1AB373C8
	for <lists+linux-man@lfdr.de>; Tue, 26 Aug 2025 22:23:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6EAC316F6E8
	for <lists+linux-man@lfdr.de>; Tue, 26 Aug 2025 20:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4B1028D82A;
	Tue, 26 Aug 2025 20:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MSuZBtz4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D218F28151E
	for <linux-man@vger.kernel.org>; Tue, 26 Aug 2025 20:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756239795; cv=none; b=Vrv2NX8DAP/RJ3ovle4ZuwoFf2xXm8wVz8mkVWfe6GUdRCR7+xZXJqWJAlkP2vXdrOwLiHh8mq3nwENxBCmmNve2S6xvFjUGH4ZU7Mq6hHa2QS4IkXrLSbt56gPJH3b5t/Nwki1SHx5dGET9oJ6zKetbHdgyik7aZH0J7mJtA4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756239795; c=relaxed/simple;
	bh=NFHw/AD8GuiV23/OLncPoCz61ug+KEZ5RMpJcBwd89g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JCRBPNylTY+Hv76WGHFgsBI1FBMoLEXeiejwJABkJgJTDJj2H1nVNNb0G5TXgFd5i8ob1MUY78q5+Hojiw1eVodLdO6j7hk7TGCDeUZ4eSF0mpSixI2COk2/LoX+9aN+EyjWDCLJs4TgwN1h/psf/y/pvMNj5RR54kkZu3fb+wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MSuZBtz4; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-71d6083cc69so46981577b3.2
        for <linux-man@vger.kernel.org>; Tue, 26 Aug 2025 13:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756239793; x=1756844593; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2cqD2Ca4KCME/9Bz7SH3K8IXH/ICHM6m0vG/i+AF4GQ=;
        b=MSuZBtz4sEJRtVQhhQffWba+eq3npObdgXwaG9+n1ftpuuyVrWSBERpfeD9xNv82lq
         jLrTAqNsyVBm2N9jy0ci7hh/DONFwxI8j3C1lrFKQ4wsozuMmSV8uxPbsBjbA1pRPn7/
         yJvwLBmpHj1gtHGdkjt2181Mrz2c7p+Aiw/YcQY7d/AbyCxL+XJcymFUZkwpzm1j3Y5a
         VTmoi1afNPwdSmgfhQiD8iM1haIm/fB5eYdbrlGBSnC9h5gpQJxIj6kQ9lQD0PdSKiV/
         jXucUMESPxFas+4AFfn78hwPYEQl+/HF4FC7RVUuZHM5IQD3BldQGQTCUfQVJH0ZSQNF
         TYLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756239793; x=1756844593;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2cqD2Ca4KCME/9Bz7SH3K8IXH/ICHM6m0vG/i+AF4GQ=;
        b=i+9/deUQ8o0R0B7Y/s4Flw7S1k5be20Ub+pwCpyb1tqTDNjwb1bHj/tgdR5BJm0dhc
         cA+oP4IatDHrHezv1lttQ8HrneC9SxIrAsEJ7+IBDWdrMyBe0+HMsqLJWh5pYJmc/IWC
         aPPm23FP3UBsSDznrb1t9YahUYC+ZwClZmcnF8sabaIVt8//NJrAAbqms4yeWptcaSKa
         2bSVEp8NavZCtIvtK9If/f6fplUTXHryyQYilCgsxfgV7FPV+ANgj03tTNKCDc0DFJ9R
         3o9uXIQRT+sM0CY7t/B7WEWu36ELKAjmPDqkXy19PXknT0VdXa5yHhsejUOCwBpEakMF
         8Z4g==
X-Forwarded-Encrypted: i=1; AJvYcCX+OF5FAqIuFQXz2KPsi+shAej85p64gMvCXiSZo3cY8Dql3SdzmnBtu5z6uChI5j2IJy+cEl8ZLmg=@vger.kernel.org
X-Gm-Message-State: AOJu0YxM7hx/Lf4Dx3ovN5lmGA111EroaxaPeCUZtPOsc9j3e9u2qZnr
	nFRxWyMuLZEmcCClkw4I+RAg6lrIlIKEFj8bcy61UD1xFL9+x0641XWn
X-Gm-Gg: ASbGncufpFCjakmBnOL3OWQYjVLyFV7G+MXU4IjJH/PHmnFs3mEGqtOI8+qNbnbKxKT
	zPUi0KsHdhsLoGj1zPxmkDMPTS2CpWghpeNpGEES07cJ7bPBZ9yTwE72hYzljNXITXx+1/AOfp7
	/gYHkb01nw9Rpr8IfdlbpgYQnmHvOXWo/e7OTQGfX7DHsB3SDowZewcR66PVAUIA9BvORcADtT2
	ITY63s/jSbf/vllYQPre/qTiPt7zq4kWrxikrKHgZGq7lYR2i6Axwc9rs9JV5fk4NB/zRKffkqi
	juy+/Wk7R5P8KnTelHzARrTF65JasPwqsVoCVH9h26daHSblF8aTHSSlvF13SwrV/tVmxvFXtrq
	DYBPybbFPEeYS8PK6vzlln30=
X-Google-Smtp-Source: AGHT+IG4DB8J/eTqpyjPpsro/aLZPRNgGWQFI/4tiJU9/eQxSm132dY17KxGwNYlELGW2HMroaP9UA==
X-Received: by 2002:a05:690c:38c:b0:71f:fe86:dfa4 with SMTP id 00721157ae682-71ffe877868mr119285467b3.29.1756239792489;
        Tue, 26 Aug 2025 13:23:12 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-71ff1703072sm26717887b3.12.2025.08.26.13.23.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 13:23:11 -0700 (PDT)
Date: Tue, 26 Aug 2025 15:23:09 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: groff@gnu.org, man-db-devel@nongnu.org
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	Helge Kreutzmann <debian@helgefjell.de>,
	mario.blaettermann@gmail.com
Subject: Re: URL visibility on terminal devices (was: Issue in man page
 pathname.7)
Message-ID: <20250826202309.ygpshcemn4tcv3nq@illithid>
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
 <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
 <aKy3oVSyXS8_Xj5l@meinfjell.helgefjelltest.de>
 <3vzgdnoegfdc7lflbincypzzjl3hitatj3oan5maejqng75kb3@e3enbnrxo4lx>
 <20250825230420.2dl2kkchtmkwjge7@illithid>
 <tal23nvlrjz4thsc4u2godehn25x6x4uiucky735te5ojsgygj@gga4etjwpo7n>
 <aK3v4_PHAtycO4qz@riva.ucam.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vbxfbaouesuvs32f"
Content-Disposition: inline
In-Reply-To: <aK3v4_PHAtycO4qz@riva.ucam.org>


--vbxfbaouesuvs32f
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: URL visibility on terminal devices (was: Issue in man page
 pathname.7)
MIME-Version: 1.0

Hi Colin,

At 2025-08-26T18:33:23+0100, Colin Watson wrote:
> On Tue, Aug 26, 2025 at 07:05:49AM +0200, Alejandro Colomar wrote:
> > Hmmmm, that sounds not good at all.  How about moving this to
> > man(1)?  That is, man(1) knows whether it is being piped or not, and
> > thus can tell groff(1) to do OSC8 or not.

This point rouses a grievance I've had for a couple of decades.  Those
not interested may prefer to skip down to "MANROFFOPT" below, or even to
"stopgap measure".

Whether man(1) is involved in a pipeline need not have an impact on the
matter.  (The only reason for it to is the feebleness of pager programs,
whose authors conveniently forget that the purpose of their utility is
to _intercept the data stream a host transmits to a video terminal and
paginate it_, as soon as competently doing so requires more than minimal
interpretation of said data stream.  The Teletype Model 37 was
simple,[0] so pager authors decided that it was all they should have to
mess with.  That languor is what led to Debian's `GROFF_SGR`...episode
in the first place.  Pagers' Theodosian walls show a lot of damage these
days, but have not yet crumbled.  You still have to tell less(1) `-R`.

I think GNU coreutils (then known as fileutils, textutils, and
shellutils) took a wrong turn in the 1990s when GNU ls(1) started
almost-blindly blasting SGR escape sequences to the standard output, and
compounded the error by inviting the user to customize the feature using
the original ANSI X3.64 numeric indexing regime.  That decision gave a
hostage to fortune in the event terminals (or their emulators) ever
developed a greater color depth, which was definitely foreseeable, and
definitely happened, as an entire cottage industry grew up around the
"skinning" of desktop environments.  Why endure the angry fruit salad of
a 3- or 4-bit RGB(I) color space when your video card and monitor could
pump out 16- or 24-bit color and you could survey your domain in
modestly differentiated shades of salmon, chartreuse, and cerulean?

To clarify, why should an ls(1) user have to know that "35" means
"magenta foreground" and "47" means "white background"?  Why is this
implementation detail exposed to the user?  Can I play the tech bro's
"layering violation" card here?

Apparently I can blame Ulrich Drepper for this.

[coreutils Git]
commit c65e1fe89f81eaf82ecbff92efbc924cdca541cf
Author:     Jim Meyering <jim@meyering.net>
AuthorDate: Mon Nov 28 04:25:31 1994 +0000
Commit:     Jim Meyering <jim@meyering.net>
CommitDate: Mon Nov 28 04:25:31 1994 +0000

    `colorize' patch from Drepper.
=2E..
+/* Nonzero means use colors to mark types.  Also define the different
+   colors as well as the stuff for the LS_COLORS environment variable.
+   The LS_COLORS variable is now in a termcap-like format.  -o or
+   --color-if-tty. */
=2E..
+/* Parse the LS_COLORS/LS_COLOURS variable */
+
+static void
+parse_ls_color ()
+{
+  register char *p;           /* Pointer to character being parsed */
+  char *whichvar;             /* LS_COLORS or LS_COLOURS? */
+  int state;                  /* State of parser */
+  int ind_no;                 /* Indicator number */
+  int ccount;                 /* Character count */
+  int num;                    /* Escape char numeral */
+  char label[3] =3D "??";               /* Indicator label */
+
+  if ( (p =3D getenv(whichvar =3D "LS_COLORS")) ||
+       (p =3D getenv(whichvar =3D "LS_COLOURS")) )

Good to know.  Aware of his reputation, if I ever need to get into a war
of invective over this blunder, I can expect him to join the battle
adequately armed.

Anyway, this feature established a precedent in GNU tools and a herd of
other programs thundered through it.  I'm glad groff didn't!

> > And even for the case of the terminal, it is in a better position to
> > pass the information to groff(1); we'd still need points 1 (modified
> > for man(1)) and 2, but not 3, which is very ugly.
>=20
> Doesn't man(1) have most of the same problem?  It needs to know
> whether the terminal emulator supports OSC 8, and I'm not aware of a
> way that it could discover that at the moment; it's not just a
> question of whether it's piped.  I don't think that "put it in
> man-db's configuration file" or "require a command-line option" would
> be particularly friendly solutions to that problem.

I agree, and the environment variable MANROFFOPT already exists anyway.

I've quoted Anton Shepelev before.

"`grotty' is not an appendix to a pager, but a program for printing
direct to the terminal.  Most terminals support those basic ANSI
control sequences, and many console programs freely use them.  If a
pager cannot transparently forward them to the terminal, it is a
problem of the pager, not of `grotty', and having a broken -man
configuration by default to just to appease `less' is stupid."

> If points 1 and 2 were handled in groff, then I wouldn't be
> necessarily opposed to having man(1) tell the formatter that rendered
> hyperlinks are acceptable, but it's not an area I'm all that familiar
> with.  I'd be happy to review patches provided that they retain
> compatibility with reasonably old groff versions (man-db currently
> supports groff >=3D 1.21).

Frustratingly, I think point 3 is the _easiest_ to do.  Point 1 is next,
it being a Simple Matter of Feature Addition with Autoconfery and
Extensive Writing of Regression Tests.

Point 2 is the hardest because it depends on other people, starting with
Thomas Dickey--who finds OSC 8 a dubious idea in the first place--
agreeing on a nomenclature.

Further points occur to me regarding the terminfo side of things:
calling the capability `o8` or `O8` may not be the best idea.  The
semantic of a terminal capability is the availability of a feature or
behavior of interest, not the mechanism by which it is obtained (or
avoided, as with the "glitch" capabilities).  terminfo's "sgr" is not
ill-chosen in this respect--it actually does stand for "select graphic
rendition(s)", even if almost no one remembers this fact.  So the
capability name should reflect what it's _for_: embedding a hyperlink.

Further, terminfo's string capability parameterization syntax _might_
not be powerful enough to support OSC 8 in the first place.  (I'll have
to spend time digesting a description of it[1] to decide.)  If true,
then there is no point selecting a short, termcap-compatible capability
name for it in the first place.  We can call the thing `url` or `hlink`
or `hyplk` or `hotsp` (PDF: "hotspot") or whatever.

> I could of course have man(1) unconditionally pass -rU0 to groff until
> the problem is resolved properly, which would at least preserve
> existing behaviour for users of unreleased groff 1.24.  I'm not sure
> whether that would be considered as playing Core War with the manual
> page system ...

A better stopgap measure can probably happen in "an.tmac" and "doc.tmac"
themselves.

groff has the `\V` escape sequence to interpolate an environment
variable's contents.  The packages could whitelist a set of `TERM`
terminal type names as commodious of OSC 8 hyperlinking.

Here's a sketch, interpolated into some existing logic.

=2E\" For most purposes, we treat the nroff devices equivalently.
=2Enr an*is-output-terminal 0
=2Eif '\*(.T'ascii'  .nr an*is-output-terminal 1
=2Eif '\*(.T'latin1' .nr an*is-output-terminal 1
=2Eif '\*(.T'utf8'   .nr an*is-output-terminal 1
=2E
=2Enr an*can-hyperlink 0
=2Eif \n[an*is-output-html] \
=2E  nr an*can-hyperlink 1
=2E
=2Eif \n[an*is-output-terminal]) \{\
=2E  if '\?\V[TERM]\?'gnome-terminal'       .nr an*can-hyperlink 1
=2E  if '\?\V[TERM]\?'some-other-terminal'  .nr an*can-hyperlink 1
=2E  if '\?\V[TERM]\?'yet-another-terminal' .nr an*can-hyperlink 1
=2E\}
=2E
=2Eif '\*[.T]'pdf' \
=2E  nr an*can-hyperlink 1
=2E
=2E \" Later...
=2E\" hyperlinked text desired
=2Eif !r U \
=2E  nr U 1
=2E
=2Enr an*do-hyperlink 0
=2Eif (\n[U] & \n[an*can-hyperlink]) .nr an*do-hyperlink 1

(I don't, off the top of my head, actually know of any terminal
emulators that implement OSC 8 besides gnome-terminal(1).[2])

I think the foregoing would relieve man-db of having to make any changes
to accommodate the groff 1.24 news item quoted earlier.[3]  (I _think_
that's the correct link, but lists.gnu.org is down. :-/ )

I'm not in love with this; I think it solves the wrong problem--a
terminal's _type name_ is not what determines whether it has a given
capability.  It's terminfo's (and the dead-but-unburied termcap's) job
to maintain knowledge of each terminal type's capability repertoire.

But for getting over a hump while the community sorts out its direction
on this matter, it's good enough.

Do you agree?  Am I missing something?

Regards,
Branden

[0]

$ infocmp tty37
#       Reconstructed via infocmp from file: /home/branden/ncurses-HEAD/sha=
re/terminfo.db
tty37|model 37 teletype,
        hc, os, xon,
        bel=3D^G, cr=3D\r, cub1=3D^H, cud1=3D\n, cuu1=3D\E7, hd=3D\E9, hu=
=3D\E8,
        ind=3D\n,

The Model 37 was not a video terminal at all, but a teletypewriter.
But, it seems, supporting it looked easy whereas supporting ANSI X3.64
(and later ECMA-48) looked hard, so pager developers decided, initially
at least, that terminals and their emulators really should just be
"glass TTYs".  We've all paid in frustration for this recalcitrance.
Naturally, these same pager programs sprouted options and features in an
arms race with each other, doubtless surpassing the virtual memory
requirements that would have been required to implement the 1979 version
of ANSI X3.64 in the first pace.

The people at the Bell Labs CSRC were shrewd.  They looked at the
problem of support for the then-vast variety of hardware terminals in
existence, perceived the mine field of irregular conformance with ANSI
X3.64 or any other standard, and noped directly to the Jerq/Blit/DMD
5620, which integrated the pager with the terminal emulator itself.

The rest is nearly forgotten history.[4]

[1] https://www.gnu.org/software/termutils/manual/termcap-1.3/html_mono/ter=
mcap.html#SEC19

[2] John Gardner keeps track of them, if someone would like to submit a
    patch.  :)

    https://github.com/Alhadis/OSC8-Adoption

[3] https://lists.gnu.org/archive/html/groff/2025-08/msg00051.html
[4] https://en.wikipedia.org/wiki/AT%26T_Computer_Systems

--vbxfbaouesuvs32f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmiuF6MACgkQ0Z6cfXEm
bc6EXA//UF1vBRQJU28MCxDOU9SQCtbm0LcSsHSDRZD/9srYP9Fc7V3JZFwEA1ns
7lcLkr9JrmtV5w3GDKWcSD9us+zCdUuHOQTCQ4/unV86ybTJu6HOi95xdRribozl
rxWcbXYTye2Vi5nIdfSNezaq5SLxJV+XaDhuprXs7xiWfIM1kERdfNuBnFhPGbcH
nwmc3cZXsugs2pbKWMO/2+2UYIWwBoJch9I+nVLCSQ4BtktH7FPW9c/ULfN1uAJJ
pekBojpVsJZV9JwJEmxhCR9snV65w+AwJ47+pdz4Tf9y51gfbo5ZY7jHTpck2JaS
o9xgSoMLSdcWYHs7VKnIO8UtcrJmKUnzFHjBFyRVC8vDrD4GphgGEH8uGRoMHGwM
iO16U9OFDhKXsnRk7SdvhvX2IjGI57R+zeyFCpc0zRoj6I5N8CXCdfFXxamuehmf
8gD0uJ5aCsf3r6sCfD+JfnrKaEl3AH6jeoEjswL024VfiRKMyley9MnrEEe/MvQP
CH82/vILAg/Kr/Y+O1qd+8dISh3RgqLWQZoWkojNmiJxqqUiO0Yopt/5kfQEa6Na
IzUCsjIBsl8C1KTw4Ra/GU1wXzfPIzGUyIrufffHaJRdf24Qphrn+2Mwf6tsXZPv
iCd0OKRmw+nvelFsOFQsKOOPta3apLdpSiPLW9Fyzfi5VtrNGPY=
=q+lc
-----END PGP SIGNATURE-----

--vbxfbaouesuvs32f--

