Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD95F7693FA
	for <lists+linux-man@lfdr.de>; Mon, 31 Jul 2023 12:59:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231299AbjGaK7Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 06:59:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231233AbjGaK66 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 06:58:58 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02B15E76
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 03:58:55 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-6b9a2416b1cso3537758a34.2
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 03:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690801135; x=1691405935;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gqEeZyodqImhgrlJf3kl//JnhAQq50iYNYkXGJZS46s=;
        b=W/mzJB7NogiwRXdtTt/vA+SY3hti04LuqE9InwUVE354buN+bmaKlHYI90+YaFc1xU
         KA68XKWaXEOAeOrLGtc4EJDJyxi5c2CJmGEG/p9/pp093UzIc/nakyb8Ysdp9DTlc0Sp
         JJaSHO32EPz/r1c70McBY8JJ8gY0fcVqeAtZ9FSspdYRagoyUaLEyQI7DpfqAxz+q2xe
         j+DtEgC6FxChRmJbW7Ue4CNdeVBgQxWczQFf7D38oV5c/+AnhPhwTT95C0MisxAzojGq
         Hg50esVM+3ssbKCa2Z59VTAO2xgcGaMis1aVZA0n1H0G4DKP1XDYfwteGG1MW0fm9F2b
         xb/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801135; x=1691405935;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gqEeZyodqImhgrlJf3kl//JnhAQq50iYNYkXGJZS46s=;
        b=DJkVDR2EoxszElhHboTho6BzQtifoBYOg129bkRNB5n0MhIUowA0w2eR8C5Oy12Dc9
         ebgPqk6zDoqb/jEuiRrNGJtZiXEs8fZiHcTEi29Y24XT6EVmekC+sAKdh1qsDr7PeC+r
         U69yrrSXC7Ag10APzR1M+QKSAt4I5k8xEuC7Vrrtyg5nj0jjbCgNBdu6fWcUbtmdx829
         DuxCNlv7SvjWde8psG36sCZ2z6hyZqPAtGbAYSXymbyrr6zcY9P2buRoz/n1GBcsyPjY
         /RoFH2QRimp4HfCYj6D+t7AZvsRmh7VlnzDJSFRIEYkk0xz2hbnX/SjirFNMyoJitLiM
         vnvQ==
X-Gm-Message-State: ABy/qLZr/xMFYD4vs5PtbsEIhnWpmAGMJUfGHiZ22UBfInbE55lHoaFS
        Fc9SsVvYw5/rMGclxJHIfy2XUD02xVQ=
X-Google-Smtp-Source: APBJJlGNksuL+BPS4tr9XIu9mDe0WsuQXk01lRQRSJzTAmPjKqPPPn7HPImKhX/p8Nj/6ua4+nvSyQ==
X-Received: by 2002:a05:6830:10e:b0:6b9:1af3:3307 with SMTP id i14-20020a056830010e00b006b91af33307mr8894800otp.17.1690801134858;
        Mon, 31 Jul 2023 03:58:54 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id g22-20020a9d6b16000000b006b8b55297b5sm4039837otp.42.2023.07.31.03.58.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:58:54 -0700 (PDT)
Date:   Mon, 31 Jul 2023 05:58:52 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
Subject: On synopsis grammar (was: Spaces in synopses of commands)
Message-ID: <20230731105852.uzjzar7xlfdinqga@illithid>
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
 <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
 <20230730154541.uitln7ioq4bw6xkq@illithid>
 <02dce126-966c-b7f8-4b26-2fb6ce11b30f@kernel.org>
 <20230730161304.ywc7jyz7hlbjqpsd@illithid>
 <62c5ebd9-534d-a85a-0ce3-4f3b4007130a@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="uccwbkns33asa46l"
Content-Disposition: inline
In-Reply-To: <62c5ebd9-534d-a85a-0ce3-4f3b4007130a@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--uccwbkns33asa46l
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[adding groff list so that more people can argue with me, since I once
again found a soapbox to mount]

At 2023-07-30T18:14:53+0200, Alejandro Colomar wrote:
> On 2023-07-30 18:13, G. Branden Robinson wrote:
> > I think this is a matter of achieving an accurate and unambiguous
> > synopsis grammar.
>=20
> Thanks; that kind of objective reasoning is what I wanted.  Would you
> mind stating it in the commit message for posterity?  :-)

I think I'll add it to the explanation of the example synopsis in
groff_man_style(7), too.  ;-)

While I'd love for synopsis grammar to be _fully_ unambiguous, one
unfortunate case did arise in discussion with mandoc maintainer Ingo
Schwarze on the groff mailing list in the past year or two.

Consider:

foocmd [-abort] file ...

Is this a command that takes up to 5 different options -a, -b, -o, -r,
-t, or a command that takes one option called "abort"?

A program in the BSD tradition might suggest one answer and a program in
the X11 tradition another.  I assume that this is not a new observation,
and is why the GNU project introduced (or adopted from some
now-forgotten progenitor) the double-dash long-option-name convention.

While we could eliminate the ambiguity by insisting upon a practice of
setting each short option in its own set of optional-argument brackets,
that would come at a significant cost in visual clutter.

Consider the groff(1) command, already ornamented richly with options.

    groff [-abcCeEgGijklNpRsStUVXzZ] [-d ctext] [-d string=3Dtext]
          [-D fallback=E2=80=90encoding] [-f font=E2=80=90family] [-F font=
=E2=80=90directory]
          [-I inclusion=E2=80=90directory] [-K input=E2=80=90encoding] [-L =
spooler=E2=80=90
          argument] [-m macro=E2=80=90package] [-M macro=E2=80=90directory]=
 [-n page=E2=80=90
          number] [-o page=E2=80=90list] [-P postprocessor=E2=80=90argument]
          [-r cnumeric=E2=80=90expression] [-r register=3Dnumeric=E2=80=90e=
xpression]
          [-T output=E2=80=90device] [-w warning=E2=80=90category] [-W warn=
ing=E2=80=90category]
          [file ...]

In a quest for zero ambiguity, we might say:

    groff [-a] [-b] [-c] [-C] [-e] [-E] [-g] [-G] [-i] [-j] [-k] [-l]
          [-N] [-p] [-R] [-s] [-S] [-t] [-U] [-V] [-X] [-z] [-Z]
          [-d ctext] [-d string=3Dtext] [-D fallback=E2=80=90encoding]
          [-f font=E2=80=90family] [-F font=E2=80=90directory] [-I inclusio=
n=E2=80=90directory]
          [-K input=E2=80=90encoding] [-L spooler=E2=80=90 argument] [-m ma=
cro=E2=80=90package]
          [-M macro=E2=80=90directory] [-n page=E2=80=90number] [-o page=E2=
=80=90list]
          [-P postprocessor=E2=80=90argument] [-r cnumeric=E2=80=90expressi=
on]
          [-r register=3Dnumeric=E2=80=90expression] [-T output=E2=80=90dev=
ice]
          [-w warning=E2=80=90category] [-W warning=E2=80=90category] [file=
 ...]

And with that done, we might as well lexicographically order all the
options.

    groff [-a] [-b] [-c] [-C] [-d ctext] [-d string=3Dtext]
          [-D fallback=E2=80=90encoding] [-e] [-E] [-f font=E2=80=90family]
          [-F font=E2=80=90directory] [-g] [-G] [-i] [-I inclusion=E2=80=90=
directory]
          [-j] [-k] [-K input=E2=80=90encoding] [-l] [-L spooler=E2=80=90ar=
gument]
          [-m macro=E2=80=90package] [-M macro=E2=80=90directory] [-n page=
=E2=80=90number] [-N]
          [-o page=E2=80=90list] [-p] [-P postprocessor=E2=80=90argument]
          [-r cnumeric=E2=80=90expression] [-r register=3Dnumeric=E2=80=90e=
xpression]
          [-R] [-s] [-S] [-t] [-T output=E2=80=90device] [-U] [-V]
          [-w warning=E2=80=90category] [-W warning=E2=80=90category] [-X] =
[-z] [-Z]
          [file ...]

=2E..but that doesn't seem like an improvement to me.  Options that don't
take arguments are typically of Boolean sense.  (Occasionally, as with
some applications of '-v', they model an incrementation operation of
some kind.)  "Argumentful" options require further decision-making from
the user and it thus seems useful, to me, to segregate the two
categories.  Some traditions evolve for good reasons.  :)

As an aside, one might wonder why the groff(1) page uses such long
metasyntactic variable names in 1.23.0 when it did not in 1.22.4.  After
years of working on groff's ~60 man pages, I came to adopt a handful of
principles.

1.  A command should always offer a usage message via '--help',
    presenting a (plain text) synopsis much like the above.

2.  That synopsis, and the one in the corresponding man page, should
    match.

3.  A _usage_ message should be _useful_.

    $ foo --barblegarg
    foo: error: unrecognized option 'barblegarg'
    foo: usage: foo [options] [files]

    is so un-useful as to be user-hostile.  A programmer who writes this
    should be frank about their contempt for the user and drop such
    "usage advice" entirely.[1]

    Consider the novice user of groff.  They might wonder, "is lowercase
    'm' the flag letter for the macro package name and '-M' the one to
    add a macro search directory, or the other way around"?  Output like
    I presented for it above answers such a question.

4.  A usage message should not dump an _explanation_ of all options.  A
    person accustomed to the Unix command line philosophy of "no news is
    good news" will rightly be dismayed when a command invocation they
    expect to perform some task quietly and return to the shell prompt
    instead spews a gout of text to the terminal.  If many options are
    supported, and/or their explanations demand much space to present,
    the _actual problem_ with the command can easily scroll away.  Yes,
    maybe everybody has terminals with scrollback buffer these days, but
    it's still rude.  When something has gone wrong, a user's immediate
    response should not be to pound on the keyboard some more, but to
    pause, take a breath if necessary, and gather useful information
    from the screen.  If our "helpful" command hasn't left the most
    important information _on_ the screen, that's harder to do.

5.  It's okay to present a lengthy usage message, with much detail, if
    a user explicitly requests "--help".  But because lengthy runs of
    text can get out of sync, I prefer to maintain such things in one
    place--the command's man page.

6.  Ideally, you'd store things like metasyntactic variable names for
    command-line options in a data structure inside the command's
    sources, and a mechanism, possibly an environment variable or an
    otherwise "maintainer mode" command-line option, would dump a
    well-formed synopsis in man(7) format[2] using this information to
    the standard output.  As part of package build, one could then apply
    this output to a templated man page document to produce the shipping
    page.

    I first had this idea something like 25 years ago and I'm sure many
    other people have, too, it being such an obvious application of the
    DRY principle.  I can only guess that it didn't happen because
    getopt_long() is a GNU thing; GNU people (okay, let's be precise:
    GNU Emacs people), historically, have held man pages beneath
    contempt; and nobody else had both the traction and desire to get it
    done.  (Engineers paid to work on or adjacent to the Linux kernel
    seem always to have struggled, either with themselves or their
    managers, to justify expending more than a minimal effort on
    documentation of any sort.  Thus did both sides of GNU/Linux's white
    picket fence become brownfields.)

7.  One place we _don't_ need information rich metasyntactic variable
    names is where we're going to spend a lot of words explaining them
    anyway.  So after over-applying a principle of militant synchrony,
    I found that "Options" sections of man pages[3] could get by
    pedagogically just as well with short ones; they were easier to cope
    with typographically as well, improving the regularity of formatting
    (which is helpful to the reader, visually) and reducing the need for
    *roff stunts in man page sources to achieve consistent indentation
    in a series of tagged paragraphs.

    Consider again groff(1) options.  Here's the synopsis/usage message
    again, abbreviated.

    groff [-K input=E2=80=90encoding] [-L spooler=E2=80=90argument] [-T out=
put=E2=80=90device]

    And here's the corresponding material from its man page's "Options"
    section.

       -K enc Set input encoding used by preconv(1) to enc; implies -k.

       -L arg Pass  arg  to the print spooler program.  If multiple args
              are required, pass each with a separate -L option.   groff
              does not prefix an option dash to arg before passing it to
              the spooler program.

       -T dev Direct troff to format the input  for  the  output  device
              dev.  groff then calls an output driver to convert troff=E2=
=80=99s
              output to a form appropriate for dev; see subsection =E2=80=
=9COut=E2=80=90
              put devices=E2=80=9D below.

    (I haven't forgotten that you prefer two spaces between a tag and
    the body of a tagged paragraph.  I agree that it would look better.
    I still intend to add a tunable parameter for that [defaulting to
    2n], probably around the same time I do so for the base paragraph
    indentation amount.)

    We don't need a metasyntactic variable name as long as your arm when
    explaining fully in adjacent text what the parameter means.  At the
    same time, replacing all such names in the foregoing example with
    just "x" would be laconic to excess.

The Unix-Haters' Handbook is due for a second edition, isn't it?  ;-)

Regards,
Branden

[1] "Use the source, Luke," a.k.a. "see Figure 1."

[2] or some JSONic thing easily transformed into man(7) or another
    desired format

[3] Full disclosure: mandoc maintainer and mdoc(7) advocate Ingo
    Schwarze opposes the existence of "Options" sections in man pages.

    https://lists.gnu.org/archive/html/groff/2018-11/msg00031.html

--uccwbkns33asa46l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTHk+QACgkQ0Z6cfXEm
bc4n9RAArlvAbqg7i80vu7U9Jy5/Q2ru7n2srH88PL4TJ+7/XlFXisuIFKmivsYf
ieN8ycl0hapHmgB1X1Gnit+A0HQcHcDA6hsrkJmz3Pv8WRY+Ps4ZBRqU7147Glzs
+FrFHFXoDAmSTYYJSIJLcqNbWt5r0ThamhXAa7S2aTfpPXhXv5DNwjrNZue3jiIu
p4o4tscgug5ORuELDWb9L7PDu/DtHgI/9FMPnAveUGs5qT/LFoj2I2pkemAkL/nQ
xQcCT8V+5QiG6VsENf8K0Fls/ZpSwpDHqHmMW15tzza8r03uTUpshw7zsLKN+ADb
A7of9JHAOiyvKSIVv2KoHMesDW/5IX7w6Pp1CVJYMIiVSEqcGvm7IE0wl20Z9Iw4
3BzWIo189pWTRY5y9jhmscvF+WTsIL97PQhkF370OHwxQhx7p6P2rG3Ruuci7SGH
SAFIjf7mD6tJhJT4Kem31iBWRU+IeIxIiw10Vq2FxKeuIzBr3xqIhpwYYIZkmB4S
+YitMWgbRL0F8FEut+FWFqp5RYj1RKuzETFwlY74aCdqwQzbZRiYZrGTks9gxjnn
n1w9fqv/dcv+F83F/r7ROYAFJIhbfpOG3IUsqYitcYGnIBIX7m1fzyzmeqQmAslJ
lXHzm+oEW+zoWV2GQk3OKC7V+d3lo3QpO3XT1RqKEJKdly6pjBs=
=EDlM
-----END PGP SIGNATURE-----

--uccwbkns33asa46l--
