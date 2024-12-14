Return-Path: <linux-man+bounces-2142-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 425639F1FCD
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2024 16:47:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 95D781887B62
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2024 15:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E04642AB4;
	Sat, 14 Dec 2024 15:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cGNVDmZj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A383101DE
	for <linux-man@vger.kernel.org>; Sat, 14 Dec 2024 15:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734191240; cv=none; b=Y5ywkwtUAMi8Axfi9OJ1m9H+iMZJDQ8sI9rD+OfcmwBj6RU6bDzRh5LFo5Eg/A1c8szYwIBg7FaLCfXXhRt4apkUQu1RwCjSNOCicgHk18uVnKQ+oBu48yAA8rjdxFDtzFchQVwPfuZdyRRgkAItHY1DMTobbjpKhm5gNj07fN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734191240; c=relaxed/simple;
	bh=69Sbjk78htukA1jsOzaGXTvstO0MrSdbRkxLlZ0Keug=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DnsYJFoNHQcuDJetGf8Tor2lLJZRhTFqB97I9/IQW1LXjEz6idRWgk++fOILZ3aJcu5zw10Q4T0yGpviqExrwrPqCIii+409lQOgCV3q1TBK8eA5YuqtfqjTo9H3hvhJ9wZLtSU9AKT5WxJiriyN21MMmMSoYuERF+fkcpQFMCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cGNVDmZj; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-5f2e370bb3aso692363eaf.0
        for <linux-man@vger.kernel.org>; Sat, 14 Dec 2024 07:47:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734191237; x=1734796037; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y63obqWfNvhscYinS9xOQlqVwZOxIqJwCTLwiX27Nnk=;
        b=cGNVDmZjM5jpKo8c3AXbyGSPhTOdrCmvn7fgIESYbnNy0oAt8cToykMiYmpw8R9lGd
         /c+31IJGTDExbKcUAdCh7WAfBC/9hzfBRnrbPbVizJMoQCvu8OsjiFl9gJQr+84eydSn
         kJ8ycpaJWCaOf9qWsovU0Na12on7DT1JGoO/NAKJaJZBfHIi0nfbFSHoECP57ul3Zz7M
         4lIw++n2hTgwjkvS3lxMDlsbsz5sOnbdh43z6YOLlgIbfuyQ+NJwX2ZKoDLce23g+wmq
         aP065lFoBey3X1w+Vlu8yj/uL/qeYelu4tD043yrF7uBkXct61wG2OorOYdw0/B4OFMC
         RJ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734191237; x=1734796037;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y63obqWfNvhscYinS9xOQlqVwZOxIqJwCTLwiX27Nnk=;
        b=Oh9cGyeyWAsBfLXeufTeRETtIKgoU1311Ugi+4927OfVhoLN16UHhUU1NwIPwLHuew
         mFS7Ikw+1JajcqzowW+7hcriFACioR378yn9IoJ30a1xFQHmUhwxsSlu7JsuamnWR7cc
         nZhKj7zp2GJxpHmVZoThS3Yb6d61oEBXKjcQtvrxCzvE1OXBRxxrIwM26Z/WlqcWRAsQ
         yvzDi6MfCNO46a+Cbh8dskYyD1RuKIkEeybHdxdRzRRcXulcBMiwwcgWe2cOGtEO3p2d
         2e4oMQEYhGt0gUUkh19vM+M8OOsvao+1gXanOb+0YY5FxAJSbdw5GiZUjNydEUH430vt
         h47A==
X-Forwarded-Encrypted: i=1; AJvYcCXEFf/HDElatsgYgwM6Tt40n8ScUrllIQUQk+Gc0zroCyZ1Zam9N1qnSSeMjYlfjOe5dTur+5hARnc=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2Iedf3E+/Edv3Buu5ZQkHrrPIn6VFgtNfNX8SWePABpfK2Qln
	j1/49+rB6KHu7K+K6xdgcsq5HBqYJvDjr9cetHAtkgqfU3yyXThx
X-Gm-Gg: ASbGncuKQGb2fP496jpeeWraOoIqgtmL+9y6vpTKlB4Hlt2J2IIDWgI5q2pC9lizg8g
	XyQaCNK6W39P2ppWJeK6opzzy7LNNTMXxIdnb8WnXvOTicJWIZkgmxUTudHXTz/YtfwTKgEzW9k
	oQ7prRUoaSfA38GrjvonYaicZyNlc4mMppYBg81qNubjC+Sz6ju3xms4jUNxdkwkfILjT8RWJB2
	43yvKCyKEGOpDQ55nbUYqsquZ9RQROeh65x0tiEoAwN9t0=
X-Google-Smtp-Source: AGHT+IE4gjnHi+GHN1MooevSYq4IEd6KYCDV1e1lKq+LWomtJ3IXsj4QHMzIkLKyG1AhWxezfL7k+g==
X-Received: by 2002:a05:6820:1793:b0:5f2:a054:9e65 with SMTP id 006d021491bc7-5f3299b9b59mr3262142eaf.8.1734191237211;
        Sat, 14 Dec 2024 07:47:17 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71e4830846fsm421148a34.3.2024.12.14.07.47.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Dec 2024 07:47:15 -0800 (PST)
Date: Sat, 14 Dec 2024 09:47:13 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: Bruno Haible <bruno@clisp.org>, Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org,
	Mario Blaettermann <mario.blaettermann@gmail.com>
Subject: Re: names of ISO 8859 encodings
Message-ID: <20241214154713.njpgwqgm4vycuiiq@illithid>
References: <3678665.hdfAi7Kttb@nimes>
 <20241214003716.gnockyne6qh7jpml@devuan>
 <20241214005654.vhpp4c46p7sw4zjr@illithid>
 <Z10hv4ogO2TzgJ6D@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s2ocbh7sbs3wc7ob"
Content-Disposition: inline
In-Reply-To: <Z10hv4ogO2TzgJ6D@meinfjell.helgefjelltest.de>


--s2ocbh7sbs3wc7ob
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: names of ISO 8859 encodings
MIME-Version: 1.0

Hi Helge,

At 2024-12-14T06:12:15+0000, Helge Kreutzmann wrote:
> Am Fri, Dec 13, 2024 at 06:56:54PM -0600 schrieb G. Branden Robinson:
> > Oy vey.  Helge Kreutzmann submitted a similar bug report to groff
> > and I was planning to make the ISO -> ISO/IEC change to its man
> > pages.
>=20
> I'm not going into the business of valuating which standards should be
> adhered to. But when referrring to the proper document the correct
> name should be given IMHO.

Possibly the "use/mention" distinction of linguistics would be helpful
here.[1]  In some technical discussion contexts, we merely _mention_ a
character encoding standard.  For instance, "This program is capable of
transliterating any document using an ISO/IEC 8859 character encoding to
valid UTF-8.".

In other contexts, we _use_ the identifier itself, perhaps as an input
argument to a program.  For example:

   $ iconv -f iso-8859-1 -t utf-8 NEWS

In this shell command, we must spell the character encoding specifiers
exactly as such,[2] and when documenting the foregoing in an example in
a man page, we are well advised to spell the hyphen-minus signs with
leading backslashes.

=2ERS
=2EEX
$ \c
=2EB "iconv \-f iso\-8859\-1 \-t utf\-8 NEWS"
=2EEE
=2ERE

Alex, do you think this issue is enough of a trip hazard to warrant
presentation in man-pages(7)?

> My personal opinion is that correct typography is important, but on
> quick reading I probably would not spot the differences amongs the
> various dashes for example. So for me, having all the correct letters
> is important and of course, to copy and paste text (e.g. code) where
> necessary, even if that violates typography standards.

I think we can avoid violating standards of typography; more precisely,
the process of rendering to an output device of limited capability will
violate those standards for us.[3]  For example, a character-cell
terminal device generally can't (1) render arbitrary glyphs sequences
superscripted or subscripted[4]; (2) change the type size;[5] or (3)
change the font family (to use letterforms with or without serifs) for
only part of the rendered text (as opposed to the entire display,
including scrollback buffer) at once.

> And yes, I'm well aware that Branden and Donald Knuth (and successors)
> strive for well printed documents, and I'm glad for this.

That's pretty august company to be paired with.  Lest anyone get any
inflated notions of my role in groff, Joe Ossanna of Bell Labs wrote
troff in the mid-1970s.  After his untimely death, Brian Kernighan
refactored troff circa 1980 into "device-independent troff".  These were
proprietary to AT&T (and commercial products for a while), so the FSF
hired James Clark to write a clean reimplementation of AT&T troff,
called groff, in about 1989.  Werner Lemberg later became groff
maintainer and added many features to it such that it became a viable
alternative to TeX in many more applications (partisan preferences
aside).  Then Bertrand Garrigues did some mostly unsung but badly needed
work on groff's build system, making it more pleasant to work with.  My
role has largely been (1) fixing bugs; (2) writing automated tests to
(try to) ensure that dead bugs stay dead; (3) revising and correcting
documentation; and (4) making modest extensions and reforms to the *roff
language and some of the macro packages, provoking heated arguments
and/or revealing formerly unspecified behavior, around which some people
of course poured fast-drying cement in fits of delirium years ago.

In software as in religion, the commandments held most sacrosanct are
those that no one thought to write down in the first place.

("Of _course_ I can interchange pointers and ints.  No one ever said I
can't!"  Eventually, they did say so.  To much gnashing of teeth.)

Regards,
Branden

And now the footnotes, where we play free-association rambling bingo.

[1]  https://en.wikipedia.org/wiki/Use%E2%80%93mention_distinction

[2]  a given system's iconv(1) command may recognize alternative names
     for some encodings

[3]  For example, the bash(1) man page contains this:

=2Eif n Bash is Copyright (C) 1989-2024 by the Free Software Foundation, In=
c.
=2Eif t Bash is Copyright \(co 1989-2024 by the Free Software Foundation, I=
nc.

     In principle, this shouldn't be necessary.  Chet should just write
     the second line without the ".if t" conditional and delete the
     first.  The output device should know how to gracefully map the
     special character "\(co" to a copyright sign, and itself do the job
     of translating it to "(C)" if it has only an ASCII repertoire.
     Presumably, at some point in the past Chet (or the initial Bash
     maintainer, Brian Fox) used an nroff program that was defective,
     and also labored under the no-longer-correct misconception that
     omitting a copyright symbol from one's notice was a fatal defect
     that effectively placed the work in the public domain.  That
     stopped being true as of 1 March 1989.[7]  Further, prior to
     guidance issued by the U.S. Copyright Office in the decades since,
     the use of "(C)" as a substitute for a copyright sign _may not have
     sufficed_ to prevent the copyright notice from being regarded as
     defective.  The Copyright Office, then and now, prefers the
     abbreviation "copr." when =C2=A9 is typographically unavailable.[7]
     Nowadays, its advice is that "c" (note lowercase) is an "acceptable
     variant", that _may_ retain the efficacy of the copyright notice.
     However, it is not the U.S. Copyright Office but the courts that
     ultimately arbitrate such things.  Moreover, given recent
     developments, the Office's guidance to authors need not carry any
     weight to a federal judge.  Between the U.S. Supreme Court's repeal
     of "Chevron Deference"[8] and the availability of a federal
     district court in Western Texas offering itself as a venue to any
     right-wing plaintiff in the country and pursuing a crusade of
     maximalist Federalist [read: monarchist] Society doctrine with a
     penchant for issuing nationwide permanent injunctions,[9][10] the
     status of any federal statute, executive agency guidance, or even
     constitutional provision[11] is uncertain for the next few years at
     least.  But rest assured--we term this sort of radical disruption
     of American jurisprudence a "conservative" judicial philosophy.  =F0=
=9F=91=8D

[4]  Often, the decimal digits 0-9 are available as superscripts.  This
     selection is too meager for general typography, let alone
     mathematical typesetting where arbitrary, complex expressions may
     occur in exponents, for instance.  Occasionally you need an
     integral up there.

[5]  The DEC VT100 and its successors could do double-width and
     double-size type.[6]  Try this in your preferred terminal emulator.

     $ printf "$(tput bold)\e#3See also\n\e#4See also$(tput sgr0)\n\
          $(tput sitm)xterm$(tput ritm)(1)\n\n\e#6Patch #395    2024-09-11\
          $(tput sitm)xterm$(tput ritm)(1)\e#5\n"

     Anyone think these are worth supporting in grotty(1)?  ;-)

[6]  https://vt100.net/docs/vt510-rm/DECDHL.html
     https://vt100.net/docs/vt510-rm/DECDWL.html

[7]  https://www.copyright.gov/circs/circ03.pdf
[8]  https://www.scotusblog.com/2024/06/supreme-court-strikes-down-chevron-=
curtailing-power-of-federal-agencies/
[9]  https://www.americanprogress.org/article/the-5th-circuit-court-of-appe=
als-is-spearheading-a-judicial-power-grab/

[10] I would not personally wager that copyright holders have much to
     fear under the current regime; revenues consequent to copyrights
     are a form of monopoly rent and therefore a worldwide tent pole of
     conservative political economy.  But, if a poweful stakeholder has
     a prospect of a sufficiently large windfall from a radical change
     to copyright protections, and is willing to spend lavishly enough
     on political campaigns and super PACs, who knows what might happen?

     Here's some model statutory language.  "Any work under copyright by
     any entity other than the Walt Disney Company, its subsidiaries, or
     affiliates, enters the public domain as of January 1 of the year
     subsequent to its fixation in tangible form."

     I mean, that's just "common sense", right?[12]  Only Disney has any
     business adapting anything into a feature film, or exercising
     merchandising rights.  Duh.

[11] https://www.cbsnews.com/news/what-is-birthright-citizenship/

[12] another term debased by conservative/centrist political rhetoric

     I offer my own definition, in the spirit of Ambrose Bierce.

     "Commonsense solution": a course of action I want to take for
     reasons I will not share with you.

--s2ocbh7sbs3wc7ob
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmddqHoACgkQ0Z6cfXEm
bc5VJBAApmUFOCWrbNRWqKhDYYsrbfA5MTCbYrHA7ICoSXA5h+Ce1Iu4A2F8izoi
1/D+B3jEMYjElEndEjVlbNhOOkuuYDgPsVrnsJGaJV3ekJN2UVTBaeR6BOR0vqhn
r/i0Fjd+fUzbavPler42ljMp/vywKQX0EZB3ftVlF3BIJeNL5paco0eTpALX6Qvs
aWcpJRPqXOVfNCv4gw61dSYnfFyYbAQ9uxsUn2dGm/jZixEsFhtDRHvmG1tUiJdJ
GAyjFy/f/gnX266ILCTTdU/4PzEMqSvE40z5ZtZ4ajptzZsdNihGNhVp+bWxoq6C
krpgQbeTI5f9+BLS8KHa+LUY12cWcI3Hw/DVnfM3L4AEHCM/rVGqdwI3qfdmLLIn
qL8vC+OIP9ITQmE6jP9vEUS33hkww3l1GUqo3q1L65sA2VdnNpDS8+MfSP6gsLVS
0/Aa9XO2krQhCpP0apSrOo6sc6tyhnszoIZDeoth4jah2z7uuA8SRm4USyy6fBaV
c2OhjW1PFFXRh3aXzDxXbOI5V/Tq1QsdGQaOWgAw2hLVlD9Ekvt8k4wlyicrbzKR
uz0bq7DJPvcbuPrjd/ASBZQ/N8Ppwl8ydGvt/inLyj2gXFpCJpM94R+FPOGCAqTE
5K2O8fLVR7frrKevkos+JTIY4kaBNJA+sBfUiIo1rpxZjHBox/U=
=yKkE
-----END PGP SIGNATURE-----

--s2ocbh7sbs3wc7ob--

