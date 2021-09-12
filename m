Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F088E407DF1
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 17:30:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235928AbhILPbp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 11:31:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235927AbhILPbp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Sep 2021 11:31:45 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DE59C061574
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 08:30:31 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id u18so7028612pgf.0
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 08:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=87y5VOtQhnChLlbE7iBUdEic6+JbwtPR5/uoi/2WFJg=;
        b=IUyLuY7D/ijqD7sg9gVz8L076AnYWdLnuXBD9Rl0mE6LlKwAcbxlh12dG0dYzPzFfd
         /kP//VJvIk0I0HGFYWczZe5w+YTE/XtvZiRCWfdlE7UTFeWJn5QdxBGj8aLcoqG8Gnhn
         Zdd73PcCedbLEzWJaw7TbU7xDE+vs3HVPJStwcieYXIyHunRIPHJ5zEtNQr0DwWNWn/O
         24QfBZCbTWDS8zY5OC7IUN9ulf9O4eL4occPGSQXjjAsxRzSeyZ6b1IVg7t1RATIvo7M
         t9VwoiV57aQFJwIyrZ3OSEEmEgbhj8wBF/kV8CGIOHAJGGCKo9g8II5OcS27i3TEEcFa
         5bzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=87y5VOtQhnChLlbE7iBUdEic6+JbwtPR5/uoi/2WFJg=;
        b=7EvyqdZw7F6R8Qtz0Od1spFgaJPfxf56+Ic9qzXM/3QVzRstXgPqHVL7eNgNYMCjxs
         I6SU9tnynQtF0S9s8mtVAqK0l95KkF9IshBi3g3G7xUdmcCTX+JsqcJtOD1+bC/h0eZm
         wLO2L6aRPmRBHPFB3h9sLWzEwR5P2ISIcblGaNfOxagqZKOkGKjPmiOa577X1wwnMlnY
         NElwL8vloPJHeQ3VFBB4DMyunAsA7SexJ+/aN7j0NXmqez9lz7J7sqhm4nJv2nFx1ieZ
         d7uLX6b1d9GIQiSt7o6aVeTonPx/nuhV8RY2o5xAOmEkUcMBOSk+3h7jRuu2GEPp2qCg
         QGPA==
X-Gm-Message-State: AOAM530Aq54F3465lmu2XkASzpjExqXxTlA5c+V/6Ct5lxn17FZ1eTGZ
        mdYXC6drvO4GWXSmLw6w44R4MNsntWE=
X-Google-Smtp-Source: ABdhPJycEMe2GO1OnaupUxqho7EUNhIo0KRJZJ5C46W9Q4LykVG4J3by78t0L+txZO1V/vRvIfkoxA==
X-Received: by 2002:a63:5ec6:: with SMTP id s189mr7137097pgb.431.1631460629351;
        Sun, 12 Sep 2021 08:30:29 -0700 (PDT)
Received: from localhost.localdomain ([1.145.22.133])
        by smtp.gmail.com with ESMTPSA id ev12sm4030271pjb.57.2021.09.12.08.30.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Sep 2021 08:30:28 -0700 (PDT)
Date:   Mon, 13 Sep 2021 01:30:24 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff@gnu.org
Subject: Re: .ad l/.ad b
Message-ID: <20210912153023.xf33mocjngk66sxm@localhost.localdomain>
References: <d95326e0-7b0c-b057-3412-f60264fe1ad9@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="oyy7t6yt74s7ck6i"
Content-Disposition: inline
In-Reply-To: <d95326e0-7b0c-b057-3412-f60264fe1ad9@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--oyy7t6yt74s7ck6i
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

At 2021-09-12T13:13:07+0200, Alejandro Colomar (man-pages) wrote:
> Hi, Branden and Michael!
>=20
> I've seen these in shmctl.2, and didn't know what they mean.
> groff(7) wasn't very helpful.

:(  It's true that our groff(7) page doesn't cover a lot of topics that
were covered in CSTR #54.

As Ingo noted, you can consult the online copy of the groff Texinfo
manual for fuller details, however the manual has seen a lot of updates
=66rom me in the past 2=C2=BD years.

Here's some of the applicable new material.

[[

5.1.5 Adjustment
----------------

After GNU 'troff' performs an automatic line break, it then tries to
"adjust" the line: inter-word spaces are widened until the text reaches
the right margin.  Extra spaces between words are preserved.  Leading
and trailing spaces are handled as noted above.  Text can be aligned to
the left or right margins or centered; see *note Manipulating Filling
and Adjustment::.

=2E..

5.7 Manipulating Filling and Adjustment
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

A break interrupts filling.  Various ways of causing breaks were shown
in *note Breaking::.  The 'br' request likewise causes a break.  A break
is implied by several other requests: 'bp', 'ce', 'cf', 'fi', 'fl',
'in', 'nf', 'rj', 'sp', 'ti', and 'trf'.  If the no-break control
character is used with any of these requests, GNU 'troff' suppresses the
break; instead the requested operation takes effect at the next break.

     .ll 55n
     This line is normally filled and adjusted.
     .br
     A line's alignment is decided
     'ce \" Center the next input line (no break).
     when it is output.
     This line returns to normal filling and adjustment.
         =3D> This line is normally filled and adjusted.
         =3D>    A line's alignment is decided when it is output.
         =3D> This line returns to normal filling and adjustment.

Output line properties like adjustment and indentation are not
determined until the line has been broken.  An output line is said to be
"pending" if some input has been collected but an output line
corresponding to it has not yet been written; such an output line is
also termed "partially collected".  If no output line is pending, it is
as if a break has already happened; additional breaks, whether explicit
or implicit, have no effect.

=2E..

 -- Request: .ad [mode]
 -- Register: \n[.j]
     Enable output line adjustment in MODE, taking effect when the
     pending (or next) output line is broken.  Adjustment is suppressed
     when filling is.  MODE can have one of the following values.

     'b'
     'n'
          Adjust "normally": to both margins.  This is the GNU 'troff'
          default.

     'c'
          Center filled text.  Contrast with the 'ce' request, which
          centers text without filling.

     'l'
          Adjust text to the left margin, producing what is sometimes
          called ragged-right text.

     'r'
          Adjust text to the right margin, producing ragged-left text.

     MODE can also be a value previously stored in the '.j' register.

     Using 'ad' without an argument is the same as '.ad \n[.j]'.  In
     particular, GNU 'troff' adjusts lines in the same way it did before
     adjustment was disabled (with a call to 'na', say).

          .ll 48n
          .de AD
          .  br
          .  ad \\$1
          ..
          .
          .de NA
          .  br
          .  na
          ..
          .
          left
          .AD r
          .nr ad \n(.j
          right
          .AD c
          center
          .NA
          left
          .AD
          center
          .AD \n(ad
          right
              =3D> left
              =3D>                                            right
              =3D>                      center
              =3D> left
              =3D>                      center
              =3D>                                            right

     The adjustment mode and enablement status are encoded in the
     read-only register '.j'.  These parameters are associated with the
     environment (*note Environments::).

     The value of '.j' for any adjustment mode is an implementation
     detail and should not be relied upon as a programmer's interface.
     Do not write logic to interpret or perform arithmetic on it.

 -- Request: .na
     Disable output line adjustment.  This produces the same output as
     alignment to the left margin, but the value of the adjustment mode
     register '.j' is altered differently.  The adjustment mode and
     enablement status are associated with the environment (*note
     Environments::).

]]

> [
> .SH SYNOPSIS
> .nf
> .ad l
> .B #include <sys/shm.h>
> .PP
> .BI "int shmctl(int " shmid ", int " cmd ", struct shmid_ds *" buf );
> .ad b
> .fi
> ]
>=20
> What are those '.ad X' and do we really need them?

As noted in the quote from the groff Texinfo manual above, adjustment is
disabled when filling is, so these .ad invocations are superfluous.

> I found some other pages that use it:
>=20
> [
> .../linux/man-pages$ grep -rn '^\.ad b' man?
> man1/localedef.1:60:.ad b
> man2/setsid.2:40:.ad b
> man2/acct.2:41:.ad b
> man2/shmctl.2:55:.ad b
> man2/shmget.2:50:.ad b
> ]

I regard it as bad style to attempt manipulation of adjustment in man
pages.  For one thing, it requires the use of *roff requests, meaning
inherently low-level manipulation of the typesetting, bypassing the
macro package.  For another, its effect is not all that reliable because
some people have an extreme allergy to the default *roff adjustment
mode, and disable it, as Ingo does with mandoc(1).  A third reason is
that historically, the man(7) `TH` macro did not reset the adjustment
mode, so if you were formatting multiple pages at once with "groff
-man"[1], you might be stuck unexpectedly with the last adjustment mode
set by a previous page.

In groff 1.23.0 there will be a documented mechanism exposing control of
the default adjustment mode, and the `TH` is more defensively programmed
to use and restore it.

[[
Options
       The following groff options set registers (with -r)  and  strings
       (with -d) recognized and used by the man macro package.

       -dAD=3Dadjustment=E2=80=90mode
              Set line adjustment to adjustment=E2=80=90mode, which is typi=
cally
              =E2=80=9Cb=E2=80=9D for adjustment to both margins (the defau=
lt),  or  =E2=80=9Cl=E2=80=9D
              for left alignment (ragged right margin).  Any valid argu=E2=
=80=90
              ment to groff's =E2=80=9C.ad=E2=80=9D request may be used.   =
See  groff(7)
              for less=E2=80=90common choices.
]]

> groff(7) related info:
>=20
> [
>        .ad       Begin line adjustment for output lines in current
>                  adjust mode.
>        .ad c     Start line adjustment in mode c (c=3Dl,r,c,b,n).
> ]
>=20
> But what does each mode mean?  I couldn't find anything about them in
> the manual page.

Sadly it is not yet present (there's a little more detail in the current
version of the page, but not enough to answer your question).  It is my
intention to add a brief "Adjustment" section to this page, as I have
with "Line continuation", "Control structures", "Syntax reference
conventions", "Hyphenation", "Localization", and "Writing macros".  In
most cases, these are condensed adaptations of corresponding nodes in
the groff Texinfo manual, boiled down to eliminate examples and fulfill
the aim of a reference for the experienced user needing a refresher.

Regards,
Branden

[1] man-db man(1) doesn't do this; instead, it forks a new "groff"
process for each man page to be rendered if multiple ones are requested.
I suspect this is because it is so easy for the use of low-level
requests in a man page document to do irreversible damage to the
formatting of later pages.

--oyy7t6yt74s7ck6i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmE+HQIACgkQ0Z6cfXEm
bc6x4g/8C+KTkUaRG6hXpWzgD0X5+tawJtWLsVjAnsANFateE+hP4QwdiOapdoXG
Clpw8dhULQN0dHNMbchL7MOSxjOe/4HUR6kOP3oD08Slp1IAg7qvJLOT7mJQPWY+
TcMKTgmG7KveE9SmJtbaexx+RrMvfDQ4tYA45A1KQpa85w3wrKUCJBoJ5C/z8P7k
QZ5o9h2BSjm9Dm6AM2bzmZlvpKd7hCKcWHFMxFa8GxHg1IWP09bWUGWDQg4vHurK
ejnbW1Mbt9X3iu1fd3+xght+9yCx2Za5BDW7nMME/HM/vgwEIsdWCvh6QpdK22sy
XBffwLFGoBkNW2ghrIWVfKVniIoJDN/HJ3rA2Pm/ddYoaU94R7HQTWzxrzW2w5zD
nClheLU71BStvPkYpk0n8GC9tbBA49g1WxCslFp9PsMW1AFyoTpUlc6rO6CmjC9E
qh4dWUReKkhmUIf8gO/y3jhoNBjkvo3Nc4FdVMr6PvzMP4iaBlMWmPVI2TeDIH40
F238fm/0q3h6ayXwG6MJMFjG5K5NRCh+HPaUe4+pl8psLqFbUxqqjPbTab+OSy/G
WMhutGr3SY/ECOvheIAkXdx7dwC6PfMhm4dQeu+gfxsU2BqehQNoCdPRtZCx+UoB
qT8NFetQ2/BK6nkRFT+bVm1pdcJNbWUTmbYVDZUyhc71HAoouQE=
=F80k
-----END PGP SIGNATURE-----

--oyy7t6yt74s7ck6i--
