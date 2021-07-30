Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B7123DC19F
	for <lists+linux-man@lfdr.de>; Sat, 31 Jul 2021 01:39:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233540AbhG3Xjr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 19:39:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231209AbhG3Xjq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 19:39:46 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A61F2C0613C1;
        Fri, 30 Jul 2021 16:39:40 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id q2so12892056plr.11;
        Fri, 30 Jul 2021 16:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/funuoKDMV4S7FuS+9nBRn5+wd8zcXBynQL67/rRzq0=;
        b=YIiyNNzatCqhQBd/xc5obRQgnenLFiVi1virBraOXWQ3+pS6eZKnFsZkFp11D+q5dx
         F2L35I+VsCJL5SvmGEW6esJysGOoKZSBJTpjZ9lJeB8cgsIhynqkFBYkX8Two3LEeNS8
         XVWpNkaK5ydE6FS0J7euigTHQZfuo6qAL5W1ZvyfRG9Wmset6jMnxlawoCRTeHn5nE5S
         7sd29vPz8MyTiAjL1jD5S0IzVK6qMPqcYaR2rFYJAfQgVbYznI8NdMwNVH+pEaqAhom2
         8BkSIkwS+CivGNT8xnpQbedi5arDEordLaS1ouXxHvjXEKGcpluQ4+It0Enx0Gju92Bt
         FX0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/funuoKDMV4S7FuS+9nBRn5+wd8zcXBynQL67/rRzq0=;
        b=lpAOxeRmKRC0ahePrjm9HfTxQVe4RvVn9t6mIvcGmFJE3PlIU93GoK8GxxbYa/wlK8
         MObziHO0yvint1kV0pRRQsvjsUamfrQNlclop/k/tLB3xF56obdIdcy1oiACAHYa+PvU
         JZiHT14e3nbSt9eh0T/0E/9mXYVi+jOHauvgxymguOOaUDw241Laea21Whoz+qqlOCvo
         LSh6cTQnIvXw8HXQwoqb2barrnUTr5Z7ELVOyXYCPfPQ4hD+TtZTnh1zTwgXxSHCLsD+
         MjC4duMcQScmcGSoqmHD6x40iikg1ZNJltsmbPDkVXNoPR4aS1ZHmWARbVgUKdPKvW4C
         ONEA==
X-Gm-Message-State: AOAM532u8c9LiE4Tx7HGxJe1YrPEIuKxp1q8OmQCgpvAcjTVKRgkUg4i
        X3lHm5h/xN225urNUVATv6s=
X-Google-Smtp-Source: ABdhPJy08DWWWoW8txSwC0QIeRWvPtsJGC7xJTL3aQEF25eFbI+lUe51HkpM9cXeafZ1HxcTdy2dgg==
X-Received: by 2002:a17:902:9002:b029:12b:f33e:33ec with SMTP id a2-20020a1709029002b029012bf33e33ecmr4614917plp.6.1627688380189;
        Fri, 30 Jul 2021 16:39:40 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id y15sm4156564pga.34.2021.07.30.16.39.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 16:39:39 -0700 (PDT)
Date:   Sat, 31 Jul 2021 09:39:32 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Jann Horn <jannh@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Kees Cook <keescook@chromium.org>,
        Randy Dunlap <rdunlap@infradead.org>,
        Vincent Dagonneau <vincent.dagonneau@ssi.gouv.fr>,
        landlock@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@linux.microsoft.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2 1/4] landlock.7: Add a new page to introduce Landlock
Message-ID: <20210730233931.lbtq67esmeuo4o6d@localhost.localdomain>
References: <20210712155745.831580-1-mic@digikod.net>
 <20210712155745.831580-2-mic@digikod.net>
 <3f1b943b-2477-2c4e-c835-d6616888176c@gmail.com>
 <c5036c5c-37a1-57d2-e5dc-1f41a5ed0d31@digikod.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="aahkqoefdilbcf2r"
Content-Disposition: inline
In-Reply-To: <c5036c5c-37a1-57d2-e5dc-1f41a5ed0d31@digikod.net>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--aahkqoefdilbcf2r
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Micka=C3=ABl!

I'm going to rearrange your message to reply to it to put the shortest
point first, as I am nervous of people tiring of my info dumps,
especially with such an efflorescent CC list.

At 2021-07-30T14:15:48+0200, Micka=C3=ABl Sala=C3=BCn wrote:
> >> +The rule will only allow reading the file hierarchy
> >> +.IR /usr .
>=20
> Why ".IR" is correct here?

Because you don't want a space or a line break in the output between
"/usr" and the period.

Line breaks in *roff input usually mean "insert a word break here".[1]

[the long version]
> When do we really need .IR? Isn't `.I "foo bar"` the same as `.IR foo
> bar`? What do you use roman for?
>=20
> Where can we find these preferences? The best I found was
> https://www.man7.org/linux/man-pages/man7/groff_man.7.html but it
> doesn't explain what to use. The current man pages seems to use both
> interchangeably.

This is a good news/bad news situation for me.  As the maintainer of
that man page, I'm delighted to hear that you found it the best resource
of its type.  But that you came away still not knowing when or why to
use .IR tells me I still have work to do.

One of the things I did after the groff 1.22.4 release (December 2018)
was to split groff_man(7) into two pages.  The one you've linked is the
terser reference for seasoned (perhaps salty) man page writers.  Near
the top of it you'll find this.

       This document presents the macros thematically; for those needing
       only a quick reference, the following table lists them
       alphabetically, with cross-references to appropriate subsections
       below.

       Man page authors and maintainers who are not already experienced
       groff users should consult groff_man_style(7), an expanded
       version of this document, for additional explanations and advice.
       It covers only those concepts required for man page document
       maintenance, and not the full breadth of the groff typesetting
       system.

There, at <https://www.man7.org/linux/man-pages/man7/groff_man.7.html>,
I'd direct you to the following.

   Font style macros
       The man macro package is limited in its font styling options,
       offering only bold (.B), italic (.I), and roman.  Italic text is
       usually set underscored instead on terminal devices.  The .SM and
       .SB macros set text in roman or bold, respectively, at a smaller
       point size; these differ visually from regular-sized roman or
       bold text only on typesetter devices.  It is often necessary to
       set text in different styles without intervening space.  The
       macros .BI, .BR, .IB, .IR, .RB, and .RI, where =E2=80=9CB=E2=80=9D, =
=E2=80=9CI=E2=80=9D, and =E2=80=9CR=E2=80=9D
       indicate bold, italic, and roman, respectively, set their odd-
       and even-numbered arguments in alternating styles, with no space
       separating them.
[...]
       .I [text]
              Set text in italics.  If the macro is given no arguments,
              the text of the next input line is set in italics.

              Use italics for file and path names, for environment
              variables, for enumeration or preprocessor constants in C,
              for variable (user-determined) portions of syntax
              synopses, for the first occurrence (only) of a technical
              concept being introduced, for names of works of software
              (including commands and functions, but excluding names of
              operating systems or their kernels), and anywhere a
              parameter requiring replacement by the user is
              encountered.  An exception involves variable text in a
              context that is already marked up in italics, such as file
              or path names with variable components; in such cases,
              follow the convention of mathematical typography: set the
              file or path name in italics as usual but use roman for
              the variable part (see .IR and .RI below), and italics
              again in running roman text when referring to the variable
              material.
[...]
       Note what is not prescribed for setting in bold or italics above:
       elements of =E2=80=9Csynopsis language=E2=80=9D such as ellipses and=
 brackets
       around options; proper names and adjectives; titles of anything
       other than works of literature or software; identifiers for
       standards documents or technical reports such as CSTR #54,
       RFC 1918, Unicode 13.0, or POSIX.1-2017; acronyms; and
       occurrences after the first of a technical term or piece of
       jargon.  Again, the names of operating systems and their kernels
       are, by practically universal convention, set in roman.

       Be frugal with italics for emphasis, and particularly with bold.
       Brief runs of literal text, such as references to individual
       characters or short strings, including section and subsection
       headings of man pages, are suitable objects for quotation; see
       the \(lq, \(rq, \(oq, and \(cq escapes in subsection
       =E2=80=9CPortability=E2=80=9D below.

       Unlike the above font style macros, the font style alternation
       macros below accept only arguments on the same line as the macro
       call.  Italic corrections are applied as appropriate.  If space
       is required within one of the arguments, first consider whether
       the same result could be achieved with as much clarity by using
       the single-style macros on separate input lines.  When it cannot,
       double-quote an argument containing embedded space characters.
       Setting all three different styles within a word presents
       challenges; it is possible with the \c and/or \f escapes, but see
       subsection =E2=80=9CPortability=E2=80=9D below for caveats.
[...]
       .IR italic-text roman-text ...
              Set each argument in italics and roman, alternately.

                     This is the first command of the
                     .IR prologue .

I'd appreciate feedback from anyone on how I can improve the above.

> >> +upper layer.
> >> +From a Landlock policy point of view,
> >> +each OverlayFS layers and merge hierarchies are standalone and contai=
ns
> >> +their own set of files and directories,
> >> +which is different from bind mounts.
> >=20
> >=20
> > Incorrect mix of singular and plural, I think.
>=20
> Is it OK with s/contains/contain/?

That's correct, but you also need s/their/its/.

A handy technique for resolving inflection/agreement problems in English
is to drop phrases from the sentence in a way that preserves its
structure; this usually makes clear what should be done.

In this case, "... Each ... contains its own set."

Native speakers screw this up even in simpler cases; e.g.,

  *"The spaces in between leave room for you and I to grow."

We get thrown by the conjunction "and", which makes the language organ
in our brain think of plural number.  But no native speaker ever commits
the error

  *"Will you buy a hamburger for I?"

unless for deliberate effect.  (Though there is probably some hamlet in
the West Midlands of England or something where this is standard. :-| )

Regards,
Branden

[1] "Usually."  In roff terms, this generalization applies to text lines
    (not control lines; that is, lines starting with a control
    character) that do not end with the output line continuation escape
    sequence, '\c'.

--aahkqoefdilbcf2r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEEjaMACgkQ0Z6cfXEm
bc4kCg/+Ih9W+OUJ+Y20UiJc+piOJG+EXx9h3UHhbUcVJJD2lMj5L9xtQJu0rL3V
xc1uAR/KaY4hz07IKVOkXJc+dqkSYv5bUyzN8UsMgOwucAWyu6htlAtSZywMqIcR
GL57hK2J6/5QabGxj0yZ8+8v0EETvD35l0vFsjD9C1tA7xgsuxJogKiWdNBHNeRa
achLdI+8+oP3Z5/de+wGYWL8yZdEoT1NMpotbz5AiQhiTEBePN3Ld8AZtAuI2Gyr
pgluNmS/dyi93mPLQUJ7esBVbKaX0JnlIXn9UYvDRbzeCpUYcsUJTfJ1BNvXYlR8
R0/OhJS5HoTU/Nzb5rWA607S6BYr4VS5EwAEAcYqRhBA7cCDDdLWL4kHj6ETQXc4
rorn7X+ner/fHDNR9iDItCavGnPABdJCmRoRjUqNtxVy0FIqyGF5DBWVDgonIyd8
CVr9yHpkpxDrVIC9dUx8EqmDokLbgx+9CZuYH1rdX7OsARZW+0HH635l2lveQV6E
46z1BEZzf0zhOP3oUbgsTcgXFnbKBW8OPviUrxqBuRxirb2D5RSEoqelHCz5vCyK
NafJStZv9SQdJyoCJUNu4anBLTgsW9OrzafbW8GhDggJobESI4WXDYmvCJwoD7bC
qEJvu8k/48tVbfoiIZHlA4ql02iENRKb/JST48XC62Vvj4Nd6i4=
=2G4r
-----END PGP SIGNATURE-----

--aahkqoefdilbcf2r--
