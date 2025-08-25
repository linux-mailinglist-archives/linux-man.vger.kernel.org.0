Return-Path: <linux-man+bounces-3731-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 934E6B34F7D
	for <lists+linux-man@lfdr.de>; Tue, 26 Aug 2025 01:04:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5BDEF1B2672E
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 23:04:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2329629B233;
	Mon, 25 Aug 2025 23:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SVo13ktY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF702571CD
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 23:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756163067; cv=none; b=DG7xq0UdisciXmMAsFEFAVMVh+GbhuRWzR9B+Y5KKk3KARaqItoglpgrylYrv3CRfTJ6H6OOTk11IRlUdFg3dfky46a6CR9mq0BSlECaptDAjza5DBtW86+vj1u+y6iyOhWvgcyHtP4/r6HBCmuR7oJu+b/R64447hMKAH3MxAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756163067; c=relaxed/simple;
	bh=lcJnGmaEdmm4WSd8+LGZDoDCMieOcxC6h4oSQTRn/Jc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ubm5pyhoLTV182gEkJ54jZE+/BVRpRK2pwkcEj5tveCKejstA4IhYoQu/eKBk87daQNgwlsFGrKKUvvvlgZ5HVx7l50JF0BEiwBsjCz4EYuATnn7/RIXYFPHIhqx3pZF1AMnK+zGuguqhAZlQS8kV5H7dR7GK1RzcyN1ch0Ibpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SVo13ktY; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-e9530e59512so2058376276.0
        for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 16:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756163064; x=1756767864; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hTbgVUWEg0RVk3mOu/TPiRoK8B8wq8nA1dQ+hwP0vUc=;
        b=SVo13ktYzpVCpuGPrCNK+jHr/OELot7rNVj4S8Bqb8Ywhw1pAFWIaSXTCDLuxwfUiu
         UHf0bUiTOShqawZsk7nDkG1Weh8nU3NMqigY+2AzfXDC6baIt0uPQCdCyfh5S+ewr0sm
         TgLRmmOOChL3M0le1hUBZffIPxMy3H2fon8RoJOmxVed2iy0mBeZFybOQQ8JmeJh2xpn
         zglkuaimupCC7CRHZrqGYPI1WxubJNFNh8Q33arTVt8sNWyv5djpUc556vy9PSEoUWaW
         ZFBHHFKlp0plHGIcMdaSSEEz2D8hcv80WXeuIh90FAvx/rxt2SJyG26gBfGbDw3WZhE3
         K9MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756163064; x=1756767864;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hTbgVUWEg0RVk3mOu/TPiRoK8B8wq8nA1dQ+hwP0vUc=;
        b=kw9Vz8hN1t7hniOwtUWqYOnAn8kdoCwxnmaTIFScecJuqTuPiluz5zcWnsLNJ5GM32
         Pf1JzPXN4tzVrbpk15wNiqBzj64FrkRg8746q1uG1F3GMbeiGlCGJquBQuM6XcawLoE8
         /fN/KhyixGJfhau7QKp/a/3cJvIHEDC1wtgkzJV1FJ2g9M02ydcMsMRZdkL4SNAne1tK
         2FnelB6DAFYZjfWmex6Z1Ticsp5Hxm8yvPJaIZRTnXuLcCScwdsdxsVF8Jmg3VW5Xxm+
         CR0Ugz/vfZ06Azu25aVols/20WLJ4qvXtkpHXIsvCwDss5UaJgT9Qu6Anh3fUppgcHYj
         //Yw==
X-Gm-Message-State: AOJu0YwJVikLHInE/Ldks9pF5J47819pEqp4EOTZjwR/WIsodBHHiOV5
	j/8fhlkkTfhIx3zV5e66czqo4DeQTZd6DP4DGnPkQ5R38x1bEr9WcB0itxbTzA==
X-Gm-Gg: ASbGncuu3v3FvQOfnoyv0PVdo2fyzKUPf1S1iLkydT0KN2JNKFjahxrAOmvZ4FDY1g9
	zYRDbMGb9xCYhJSiNmxT7QIEHIM9INIyn+JLbGr3DBWTr+Otwb0yHOsS90I4Jx88fjareJTkWma
	47nZKUmfLrN6He2FkiCSnAY4DxGYCL4VhylR4bdu80z2YtRnDaY0yiufpecNhwpzjVb4fBTdMIB
	zSHvaAwk9Wre5CkHU25wm6m4WWYqVDZriSoEkMWsBHdVV5g4Fhvc3WFbJFtzKdYLeIa0RSqayZz
	ITDH/mUG2ybCD7qJ2//0SwivpuNBxJrw7GUL+KePKjtkBj+K2aVYAyhPMCdGRppRqua3+sfcQft
	rJDMQrOSBqT+1
X-Google-Smtp-Source: AGHT+IGDthfeNMso7jiWOxBgGd10EQT7nRR0YJKoeWN/RNAVi7fjAd01ri5YmknBFJ1ovpkH57k3jA==
X-Received: by 2002:a05:6902:1691:b0:e96:dca8:cc32 with SMTP id 3f1490d57ef6-e96dca8cd52mr1345791276.1.1756163063618;
        Mon, 25 Aug 2025 16:04:23 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e952c354b2esm2761700276.17.2025.08.25.16.04.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 16:04:22 -0700 (PDT)
Date: Mon, 25 Aug 2025 18:04:20 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org, groff@gnu.org
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com,
	Alejandro Colomar <alx@kernel.org>
Subject: URL visibility on terminal devices (was: Issue in man page
 pathname.7)
Message-ID: <20250825230420.2dl2kkchtmkwjge7@illithid>
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
 <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
 <aKy3oVSyXS8_Xj5l@meinfjell.helgefjelltest.de>
 <3vzgdnoegfdc7lflbincypzzjl3hitatj3oan5maejqng75kb3@e3enbnrxo4lx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sicfotzjydftvoao"
Content-Disposition: inline
In-Reply-To: <3vzgdnoegfdc7lflbincypzzjl3hitatj3oan5maejqng75kb3@e3enbnrxo4lx>


--sicfotzjydftvoao
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="ayd4q3gvtzu6uy6j"
Content-Disposition: inline
Subject: URL visibility on terminal devices (was: Issue in man page
 pathname.7)
MIME-Version: 1.0


--ayd4q3gvtzu6uy6j
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex & Helge,

tl;dr: Learn and use the "-rU0" option when your terminal device doesn't
support OSC 8 hyperlinks.

groff_man(7):
     -rU0     Disable generation of URI hyperlinks in output drivers
              capable of them, making the arguments to MT and UR calls
              visible as formatted text.  grohtml(1), gropdf(1), and
              grotty(1) enable hyperlinks by default (the last only if
              not in its legacy output mode).

If you _never_ use a terminal device that supports hyperlinking...

groff_man(7):
     /.../share/groff/site-tmac/man.local
            Put site=E2=80=90local changes and customizations into this fil=
e.

Thus, Helge might add

=2Eif n .nr U 0 \" Format URLs on terminal devices.

to his system's "man.local" file.

At 2025-08-25T21:55:28+0200, Alejandro Colomar wrote:
> > > > > That URI has '\\:' in it, which is correct in roff(7) (and in
> > > > > man(7)) source code.  That is removed by troff(1) when
> > > > > formatting the page.  If you read the formatted page that's
> > > > > not there.
> > > >=20
> > > > Yes, then no URL is there :))
> > >=20
> > > Hmmm, that depends on your terminal.  If there's no URL or
> > > hyperlink, this might be an issue in either the terminal or
> > > groff(1).
> >=20
> > I use the Linux console.
>=20
> I can confirm.  Branden, is this a bug?  I think the Linux console
> should print the URI as in the old days.

I can't reproduce that behavior with groff 1.23.0 but I can with Git.

And that's due to a deliberate change.

NEWS[1]:
*  Hyperlink support is now enabled by default on PDF and terminal
   devices for an (man) and doc (mdoc) documents.  Instructions and
   commented code for disabling it are in the "man.local" and
   "mdoc.local" files.

For the moment, groff's hands are kind of tied.  To get this feature to
Just Work(TM) with no user involvement requires three things to happen.

1.  grotty(1) needs to become a terminfo application.  Lennart Jablonka
    provided a nice proof of concept some 2 years ago,[2] and when I
    started down the road of implementing it to fit the glorious visions
    in my head, I discovered that I didn't know nearly enough about
    terminfo or curses.  I tried learning the system from its man pages
    and books by Dan Gookin and Berny Goodheart.  As you might guess, I
    swiftly found myself dissatisfied with the currency and completeness
    of (n)curses documentation, so I got involved with the project and
    have submitted literally hundreds of patches to it, nearly all of
    which Thomas Dickey has kindly accepted.

2.  Once we have a tricked-out, terminfo-aware grotty, we meet another
    problem:

    There is no terminfo capability advertising OSC 8 hyperlink support.

    That means that a terminal (emulator) can't _tell_ a terminfo
    application whether it has the feature, and so grotty doesn't know
    whether it should be emitting OSC 8 escape sequences or not.

    I'll attach the bleeding edge version of the ncurses user_caps.5
    page (which I recently revised to be more intelligible to knuckle
    draggers like myself), because it provides essential background.

    The community will need to select a (probably termcap-compatible,
    and thus two-character) name for this extension capability.  I
    observe that "o8" is not taken.  But neither are "ur" or "UR".

    $ cd ncurses-snapshots
    $ git grep -Eiw '(o8|ur)' include/Caps* || echo NO MATCH
    NO MATCH

3.  Even once we have a grotty(1) that knows whether the terminal device
    can render hyperlinks or not, we have yet another problem:

    Whether the output device supports hyperlinks has consequences on
    the formatted content of the rendered document, because we don't
    splat the URL into the output as formatted text unless (a) the
    document author directs us to (by supplying empty link text for
    groff man(7)'s `UR` and `UE` macros, for example), or (b) we have no
    choice because we know the output device doesn't support hyperlinks.
    Whether you format a URL or not can have significant consequences on
    your page layout; they can change where your output lines break or
    even change where the page breaks occur.  Translation of device-
    independent output to device-specific output is too late to be
    making decisions that require re-laying out the page.

    Thus, the formatted content of a document can depend on
    properties of the output device in a new way, one more, uh,
    "exciting" than the ~1972 binary choice of "is this an nroff device
    [~terminal/typewriter]?" or "is this a troff device [typesetter]?",
    or the ~1980 parameter "what is the name of the output device?"
    (such as [Kernighan troff] "post", "l202", or [groff] "ps", "pdf",
    "utf8").

    The good news is that we already have a place for this information,
    and the formatter already reads it when it initializes: the "DESC"
    file.  What I want is a _general_ interface for communicating any
    information _via the groff language_ from that "DESC" file to a
    document.  While I haven't tried to implement this yet, it _seems_
    like it shouldn't be too hard; the "DESC" file is a text file, and
    the parameters (or "directives") it expresses are either Boolean-
    valued (they are present or not) or string-valued.[3]  Booleans can
    be mapped to interpolations of "0" or "1", and strings can be
    interpolated as-is (probably with newline elision [or space-
    substitution thereof] for the quirky "fonts" and "sizes"
    directives).

    There aren't many mechanisms of adding something to the groff
    language, so I reckon we'd end up with a new escape sequence (maybe
    `\T`?) and, possibly, a corresponding request because previous groff
    maintainers seem to have pursued parity between these syntactical
    features.  (For example, Clark added `device` and `brp` requests
    corresponding to `\X` and `\p`.)

    (However, I can't see what purpose a request would serve here
    besides interpolating the property value into the document, which
    could already be achieved with the escape sequence.)

    Thus, assuming we added a "can-hyperlink" directive to the "DESC"
    file format specification, and a `\T` escape sequence for exposing
    it (and other properties) to the formatter, we could do something
    like this in "tmac/an.tmac"...

    .nr U \T'can-hyperlink'

    ...still respecting an overriding user specification, of course.

This stuff is going to take a while to land, even assuming no one finds
a fatal flaw in it, thus my advice above regarding user/site
configuration of groff man(7)'s `U` register.

Regards,
Branden

[1] https://cgit.git.savannah.gnu.org/cgit/groff.git/tree/NEWS?id=3Dc903a95=
f0a63607e336e431bb5cd07d2be6c6273#n355
[2] https://savannah.gnu.org/bugs/?63583

[3] There's an exception: the "charset" directive, specified and used by
    Kernighan troff, but groff has neglected it for 35 years (see
    groff_font(5)), and I don't propose to stop.  In groff, the
    "charset" property is coupled to a font, not the device per se.

--ayd4q3gvtzu6uy6j
Content-Type: text/plain; charset=us-ascii
Content-Description: user_caps.5
Content-Disposition: attachment; filename="user_caps.5"
Content-Transfer-Encoding: quoted-printable

'\" t
=2E\"**********************************************************************=
*****
=2E\" Copyright 2018-2024,2025 Thomas E. Dickey                            =
    *
=2E\" Copyright 2017 Free Software Foundation, Inc.                        =
    *
=2E\"                                                                      =
    *
=2E\" Permission is hereby granted, free of charge, to any person obtaining=
 a  *
=2E\" copy of this software and associated documentation files (the        =
    *
=2E\" "Software"), to deal in the Software without restriction, including  =
    *
=2E\" without limitation the rights to use, copy, modify, merge, publish,  =
    *
=2E\" distribute, distribute with modifications, sublicense, and/or sell   =
    *
=2E\" copies of the Software, and to permit persons to whom the Software is=
    *
=2E\" furnished to do so, subject to the following conditions:             =
    *
=2E\"                                                                      =
    *
=2E\" The above copyright notice and this permission notice shall be includ=
ed  *
=2E\" in all copies or substantial portions of the Software.               =
    *
=2E\"                                                                      =
    *
=2E\" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS  *
=2E\" OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF           =
    *
=2E\" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT=
=2E   *
=2E\" IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM=
,   *
=2E\" DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR=
    *
=2E\" OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR=
    *
=2E\" THE USE OR OTHER DEALINGS IN THE SOFTWARE.                           =
    *
=2E\"                                                                      =
    *
=2E\" Except as contained in this notice, the name(s) of the above copyrigh=
t   *
=2E\" holders shall not be used in advertising or otherwise to promote the =
    *
=2E\" sale, use or other dealings in this Software without prior written   =
    *
=2E\" authorization.                                                       =
    *
=2E\"**********************************************************************=
*****
=2E\"
=2E\" $Id: user_caps.5,v 1.58 2025/08/16 19:36:29 tom Exp $
=2ETH user_caps 5 2025-08-16 "ncurses 6.5" "File formats"
=2Eie \n(.g \{\
=2Eds `` \(lq
=2Eds '' \(rq
=2E\}
=2Eel \{\
=2Eie t .ds `` ``
=2Eel   .ds `` ""
=2Eie t .ds '' ''
=2Eel   .ds '' ""
=2E\}
=2E
=2Ede bP
=2Eie n  .IP \(bu 4
=2Eel    .IP \(bu 2
=2E.
=2ESH NAME
user_caps \-
user-defined \%\fIterm\%info\fP capability format
=2ESH SYNOPSIS
=2EB infocmp \-x
=2EPP
=2EB tic \-x
=2ESH DESCRIPTION
=2ESS Background
Prior to
=2EI \%ncurses
5.0 (1999),
=2EI \%term\%info
databases used a
=2EI "fixed repertoire"
of terminal capabilities designed
for the SVr2 terminal database in 1984,
added to in stages through SVr4 (1989),
and standardized in X/Open Curses starting in 1995.
=2E\" That date is a surmise based on the capability list appearing in
=2E\" Issue 4, Version 2 (1996).  That list is not in man page format in
=2E\" the standard, so lacks a "HISTORY" section.  However, `tigetstr()`
=2E\" and `tputs()` are identified in the same document as new to Issue 4,
=2E\" so GBR conjectures that the list came in at the same time.
=2E\"
=2E\" TED: the list is reflected in term.h, seen in examples from AIX 3 and=
 4,
=2E\" HP-UX 9, OSF/1, Solaris 2.4, dating from 1992-1994 -- all before 1996.
=2E\" The AIX 4 file has copyright dates starting in 1984;
=2E\" the Solaris file cites 1988 (the others have no copyright comments).
=2E\" Those term.h files note in a comment that it is generated by a script=
 with
=2E\" a data file, i.e.,
=2E\"	term.h - this file is automatically made from caps and maketerm.ex.
=2E\" illumos-gate has related source, with a "caps" file having AT&T copyr=
ight
=2E\" for 1988, and UCB copyright for 1982, 1986, 1988.  That 1982 is inter=
esting
=2E\" (hinting that something may have been in the initial releases of Syst=
em V)
=2E\" but the first release with tic appears to be SVr2 in 1984.
=2EPP
Most such additions to this fixed repertoire
suppelmented the tables of Boolean,
numeric,
and string capabilities.
Rather than changing the meaning of an existing capability,
a new name was added.
The
=2EI \%term\%info
database uses a binary format;
binary compatibility was ensured
by using a header
that counted the number of items in the tables
for each type of capability.
Because each
=2EI curses
vendor extended the standard capability lists in distinct ways,
a library could be programmed to recognize only compiled
=2EI \%term\%info
entries that it was prepared to interpret.
Standardization was incomplete.
=2EbP
X/Open Curses describes only the
=2EI source
format,
not its
=2EI binary
representation on disk.
=2EIP
Library developers rely upon SVr4 documentation
and reverse engineering of compiled
=2EI \%term\%info
files to match the binary format.
=2EbP
Lacking a standard for the binary format,
most implementations copy the SVr2 binary format,
which uses 16-bit signed integers,
and is limited to 4096-byte entries.
=2EIP
The SVr2 format cannot represent very large numeric capability values,
nor can it represent large numbers of key definitions,
as are required to distinguish multiple modifier keys used
in combination with a function key.
=2EbP
The tables of capability names differ between implementations.
=2EIP
Although they
=2EI may
provide all of the standard capability names,
each arranges its table entries differently
because some features were added as needed,
while others were added
\(em out of order \(em
for X/Open Curses conformance.
=2EIP
While
=2EIR ncurses 's
capability repertoire is closest to that of Solaris,
the set of capabilities supported by
each vendor's
=2EI \%term\%info
database differs
=66rom the list published by X/Open Curses.
=2EI \%ncurses
can be configured
with tables that match the terminal databases
for AIX,
HP-UX,
or OSF/1,
rather than the default Solaris-like configuration.
=2EbP
In SVr4
=2EI curses
and
=2EIR \%ncurses ","
the terminal database is defined at compile time
by interpolating a text file
that lists the different terminal capabilities.
=2EIP
In principle,
the text file can be extended,
but doing so requires recompiling and reinstalling the library.
The text file used by
=2EI \%ncurses
for terminal capabilities includes details of extensions
to X/Open Curses
made by various systems.
For example,
=2EI \%ncurses
supports the following nonstandard capabilities in each configuration.
=2ERS 8
=2ETP 5
=2EB memory_lock
=2ERB ( meml )
lock memory above cursor
=2ETP 5
=2EB memory_unlock
=2ERB ( memu )
unlock memory
=2ETP 5
=2EB box_chars_1
=2ERB ( box1 )
box characters primary set
=2ERE
=2EIP
The memory lock/unlock capabilities were included because they were used
in the X11R6 terminal description for \fIxterm\fP(1).
=2EB \%tic
uses the
=2EB box1
capability to cope with terminal descriptions written for AIX.
=2EPP
During the 1990s,
some application developers were reluctant to use
=2EI \%term\%info
in spite of its performance
(and other)
advantages over
=2EIR termcap "."
=2EbP
The fixed repertoire prevented users from adding support
for terminal features unanticipated by X/Open Curses
(or required them to reuse existing capabilities as a workaround).
=2EbP
The limitation to 16-bit signed integers was also mentioned.
Because
=2EI termcap
stores everything as a string,
it could represent larger numbers.
=2EPP
Although
=2EIR termcap 's
extensibility was rarely used
\(em the claimant was never an implementor
who had actually exercised it \(em
the criticism had a point.
=2EI \%ncurses
5.0 provided a way to detect nonstandard capabilities,
to determine their type,
and to optionally store and retrieve them
in a way that did not interfere with other applications.
=2EI ncurses
terms these
=2EI "user-defined capabilities"
because no modifications
to the standard capability list are needed.
=2EPP
The
=2EI \%ncurses
utilities
=2EB \%tic
and
=2EB \%infocmp
have a command-line option \*(``\-x\*(''
to control whether the nonstandard capabilities
are stored or retrieved.
=2EI \%ncurses
provides \fBuse_extended_names\fP(3NCURSES) to programs for the same purpos=
e.
=2EPP
When compiling a terminal database, if \*(``\-x\*('' is used,
=2EB \%tic
stores a user-defined capability
if the capability name is not standard.
=2EPP
Because
=2EI \%ncurses
provides a
=2EI termcap
library interface,
these user-defined capabilities may be visible to
=2EI termcap
applications.
=2EbP
The
=2EI termcap
interface
(like all implementations of
=2EIR termcap )
restricts capability names to two characters.
=2EIP
When the capability is simple enough for use in a
=2EI termcap
application,
it is provided as a two-character name.
=2EbP
Other user-defined capabilities employ features not usable in
=2EIR termcap ","
such as parameterized strings that use more than two parameters
or require more powerful expressions than
=2EI termcap
supports.
Such capabilities should,
in the
=2EI \%term\%info
database,
have names at least three characters in length.
=2EbP
Some terminals can send distinct strings for special keys (cursor-,
keypad- or function-keys) depending on modifier keys (shift, control, etc.).
While
=2EI \%term\%info
and
=2EI termcap
define a set of sixty function key names,
to which a series of keys can be assigned,
that is insufficient for more than a dozen keys multiplied by more than
a couple of modifier combinations.
The
=2EI \%ncurses
database uses a convention based on \fIxterm\fP(1)
to provide extended special-key names.
=2EIP
Fitting that into
=2EIR termcap 's
limitation of 2-character names
would be pointless.
These extended keys are available only with
=2EIR \%term\%info "."
=2ESS "Recognized Capabilities"
The
=2EI \%ncurses
library employs user-definable capabilities.
While the
=2EI \%term\%info
database may have other extensions,
=2EI \%ncurses
makes explicit checks for the following.
=2ERS 3
=2ETP 3
=2EB AX
(Boolean)
asserts that the terminal interprets SGR 39 and SGR 49
by resetting the foreground and background colors,
respectively,
to the default.
=2EIP
\fBscreen\fP(1)
recognizes this capability as well.
=2ETP 3
=2EB E3
(string)
tells an application how to clear the terminal's scrollback buffer.
When present,
the \fBclear\fP(1) program sends this before clearing the terminal.
=2EIP
The command
=2ERB \*(`` "tput clear" \*(''
does the same thing.
=2ETP 3
=2EB NQ
(Boolean)
suppresses a consistency check in
=2EB \%tic
for the
=2EI \%ncurses
string capabilities
=2EB user6
=2ERB ( u6 )
through
=2EB user9
=2ERB ( u9 ),
which tell an application how to query the terminal's cursor position
and its device attributes.
=2ETP 3
=2EB RGB
(Boolean,
numeric,
or
string)
asserts that the
=2EB \%set_a_foreground
=2ERB ( setaf )
and
=2EB \%set_a_background
=2ERB ( setab )
capabilities employ
=2EIR "direct colors" ","
using an RGB (red/green/blue) convention.
This capability allows \fBcolor_content\fP(3NCURSES)
to return appropriate values
without requiring the application
to initialize colors using \fBinit_color\fP(3NCURSES).
=2EIP
The capability type determines the values
=2EI \%ncurses
sees.
=2ERS 3
=2ETP 3
Boolean
implies that the number of bits for red,
green,
and blue are the same.
Starting with the value of the capability
=2EB max_colors
=2ERB \%( colors ;
=2EI termcap:
=2EBR co ),
=2EI \%ncurses
adds two,
divides the sum by three,
and assigns the result to red,
green,
and blue,
in that order.
=2EIP
If the number of bits needed for the number of colors
is not a multiple of three,
the blue (and green) color channels lose in comparison to red.
=2ETP 3
numeric
tells
=2EI \%ncurses
what result to add to red,
green,
and blue.
If
=2EI \%ncurses
runs out of bits,
blue (and green) lose just as in the Boolean case.
=2ETP 3
string
specify the quantity of bits used for
red,
green,
and blue color channels
as a slash-separated list of decimal integers.
=2ERE
=2EIP
Because there are several RGB encodings in use,
applications that make assumptions
about the number of bits per color channel
are unlikely to work reliably.
As a trivial case,
one could define
=2EB RGB#1
to represent the standard eight ANSI\ X3.64/ECMA-48/ISO\ 6429 colors
using one bit per color channel.
=2ETP 3
=2EB U8
(numeric)
asserts whether
=2EI \%ncurses
must use Unicode values for line-drawing characters,
and that it should ignore the alternate character set (ACS) capabilities
when the locale uses UTF-8 encoding.
See the discussion of
=2EB \%NCURSES_NO_UTF8_ACS
in section \*(``ENVIRONMENT\*('' of \fB\%ncurses\fP(3NCURSES).
=2EIP
Set this capability to a nonzero value to enable it.
=2ETP 3
=2EB XM
(string)
override
=2EIR \%ncurses 's
built-in string that directs \fIxterm\fP(1)
to enable or disable mouse mode.
=2EIP
=2EI \%ncurses
sends a character sequence to the terminal to initialize mouse mode,
and when the user clicks the mouse buttons or
(in certain modes)
moves the mouse,
handles the characters sent back by the terminal
to tell the application what was done with the mouse.
=2EIP
The mouse protocol is enabled
when the
=2EI \fImask\fP
argument to the \fBmousemask\fP(3NCURSES) function is nonzero.
By default,
=2EI \%ncurses
handles the responses for the X11
=2EI xterm
mouse protocol.
It also knows about the SGR\ 1006
=2EI xterm
mouse protocol,
but must to be told to look for it specifically.
=2EI \%ncurses
is not be able to guess which of the two modes is used,
because the responses are enough alike that only confusion would result.
=2EIP
The
=2EB XM
capability has a single numeric parameter.
If nonzero,
the mouse protocol should be enabled.
If zero,
the mouse protocol should be disabled.
=2EI \%ncurses
inspects this capability if it is present,
to see whether the 1006 protocol is used.
If so,
it expects the responses to use the SGR\ 1006
=2EI xterm
mouse protocol.
=2EIP
The
=2EI xterm
mouse protocol is used by other terminal emulators.
The terminal database uses building blocks for the various
=2EI xterm
mouse protocols usable in customized terminal descriptions.
=2EIP
The terminal database building blocks for this mouse feature
also have an experimental capability,
=2EBR xm ","
that describes the mouse response.
No known interpreter uses this information,
which could make mouse support completely data-driven.
=2EIP
=2EB xm
shows the format of the mouse responses.
In this experimental capability,
the parameters are as follows.
=2ERS 5
=2ETP 5
=2EI p1
y-ordinate
=2ETP 5
=2EI p2
x-ordinate
=2ETP 5
=2EI p3
button
=2ETP 5
=2EI p4
state, e.g., pressed or released
=2ETP 5
=2EI p5
y-ordinate starting region
=2ETP 5
=2EI p6
x-ordinate starting region
=2ETP 5
=2EI p7
y-ordinate ending region
=2ETP 5
=2EI p8
x-ordinate ending region
=2ERE
=2EIP
Here are examples from the terminal database for the most commonly used
=2EI xterm
mouse protocols.
=2EIP
=2EEX
=2Enf
  xterm+x11mouse|X11 xterm mouse protocol,
          kmous=3D\eE[M, XM=3D\eE[?1000%?%p1%{1}%=3D%th%el%;,
          xm=3D\eE[M
             %?%p4%t%p3%e%{3}%;%'\ '%+%c
             %p2%'!'%+%c
             %p1%'!'%+%c,
=2EIP
  xterm+sm+1006|xterm SGR-mouse,
          kmous=3D\eE[<, XM=3D\eE[?1006;1000%?%p1%{1}%=3D%th%el%;,
          xm=3D\eE[<%i%p3%d;
             %p1%d;
             %p2%d;
             %?%p4%tM%em%;,
=2Efi
=2EEE
=2E
=2ESS "Extended Key Definitions"
Several terminals provide the ability to send distinct strings for
combinations of modified special keys.
There is no standard for what those keys can send.
=2EPP
Since 1999, \fIxterm\fP(1) has supported
\fIshift\fP, \fIcontrol\fP, \fIalt\fP, and \fImeta\fP modifiers which produ=
ce
distinct special-key strings.
In a terminal description,
\fI\%ncurses\fP has no special knowledge of the modifiers used.
Applications can use the \fInaming convention\fP established for
\fIxterm\fP
to find these special keys in the terminal description.
=2EPP
Starting with the
=2EI curses
convention that capability codes describing the input generated by a
terminal's key caps begin with \*(``k\*('',
and that shifted special keys use uppercase letters in their names,
=2EIR \%ncurses 's
terminal database defines the following names and codes to which a
suffix is added.
=2EPP
=2ERS 5
=2ETS
Lb Lb
Lb Lx.
Code	Description
_
kDC	shifted kdch1 (delete character)
=2E\" kDC is a standard capability; see X/Open Curses Issue 7, p. 345.
kDN	shifted kcud1 (cursor down)
kEND	shifted kend (end)
kHOM	shifted khome (home)
kLFT	shifted kcub1 (cursor back)
kNXT	shifted knext (next)
kPRV	shifted kprev (previous)
kRIT	shifted kcuf1 (cursor forward)
kUP	shifted kcuu1 (cursor up)
=2ETE
=2ERE
=2EPP
Keycap nomenclature on the Unix systems for which
=2EI curses
was developed differs from today's ubiquitous descendants of the IBM
PC/AT keyboard layout.
In the foregoing,
interpret \*(``backward\*('' as \*(``left\*('',
\*(``forward\*('' as \*(``right\*('',
\*(``next\*('' as \*(``page down\*('',
and
\*(``prev(ious)\*('' as \*(``page up\*(''.
=2EPP
These are the suffixes used to denote the modifiers:
=2EPP
=2ERS 5
=2ETS
tab(/) ;
l l .
\fBValue\fP/\fBDescription\fP
_
2/Shift
3/Alt
4/Shift + Alt
5/Control
6/Shift + Control
7/Alt + Control
8/Shift + Alt + Control
9/Meta
10/Meta + Shift
11/Meta + Alt
12/Meta + Alt + Shift
13/Meta + Ctrl
14/Meta + Ctrl + Shift
15/Meta + Ctrl + Alt
16/Meta + Ctrl + Alt + Shift
=2ETE
=2ERE
=2EPP
=2EI ncurses
defines no capabilities for modified F-keys;
terminal descriptions can refer to
=2EI names
that
=2EI \%ncurses
allocates at runtime to
=2EIR "key codes" "."
To use these keys in an \fI\%ncurses\fP program,
an application could do this:
=2EbP
using a list of extended key \fInames\fP,
ask \fBtigetstr\fP(3NCURSES) for their values, and
=2EbP
given the list of values,
ask \fBkey_defined\fP(3NCURSES) for the \fIkey-code\fP which
would be returned for those keys by \fBwgetch\fP(3NCURSES).
=2E\"
=2ESH PORTABILITY
The \*(``\-x\*('' extension feature of
=2EB \%tic
and
=2EB \%infocmp
has been adopted in NetBSD
=2EIR curses "."
That implementation stores user-defined capabilities,
but makes no use of these capabilities itself.
=2E\"
=2ESH AUTHORS
Thomas E. Dickey
=2Ebr
beginning with
=2EI \%ncurses
5.0 (1999)
=2E\"
=2ESH SEE ALSO
\fB\%infocmp\fP(1),
\fB\%tic\fP(1)
=2EPP
In the source form of the terminal database,
=2EIR \%terminfo.src ","
the section \*(``NCURSES USER-DEFINABLE CAPABILITIES\*(''.
summarizes commonly-used user-defined capabilities
employed in the terminal descriptions.
Some of those features are mentioned in \fB\%screen\fP(1) or
\fBtmux\fP(1).
=2EPP
=2EI "XTerm Control Sequences"
provides further information on the \fI\%xterm\fP(1) features
that are used in these extended capabilities.

--ayd4q3gvtzu6uy6j--

--sicfotzjydftvoao
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmis6+0ACgkQ0Z6cfXEm
bc4Mhg/9Fu7jdPQGYu+niTIIAD9clPsczaCPNiB+kXwv3pHFyEoiA6xBuG9X4k4g
ECR31zJ/s8S+ubAKJbwkbKa0bo6DOUUUPvdcOcrim0MV6E3QdP+AITqXdA6OTIiu
tUlkRF7QuMOt5eBKWMKYe2iwlh7Gjqwh94WqxwRA0IHzfXrKj6p4jsPshKNRpz3K
2C9mXI8WMRLO+LapJ01OaP9zUs6LOsvQKzkcgxEG1LWo1FEfJyBpu5WXnAGefmwc
kwsSQUpoZQIlEFq0/NsRI6zN4MbxDoBL9kipb2uP03lzLg//susBcaMxDcNhL/G0
A3jCIX07pL0NgVtGRNo9Rj+VKyqPL5Bg/AkVkqzpJREHMnvLZUC1vVH7XRREzC0Z
QuJZctAHGd/e4pDEMiOVhAVIJKFjAT/30AUGtHOxlroU4QrYc/WGRfIM4PDawCXl
YvKTCAdyGd25B4Iz98RMh+CsOfxXvKeWG+LtZvDS0fAXFJfKAML/bOvxrVzv2pVE
6Jk+Vaq+wOtaphiPD21bXW6aIR0TvXk/UrOJkIvZR2eBr5cMo8tVTYiQCKWfz8qG
1F6Ct3vEbCA9RzPzozDZbl5OV50rCQpcT75I5GpB6eVgyN/3YhjD+k+K44mC5/WS
FrRoysfC0KeZQbyUR/GXfVx2bvxIkNt0AydLZA7XZVI1D+rUfz0=
=XdyN
-----END PGP SIGNATURE-----

--sicfotzjydftvoao--

