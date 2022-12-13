Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE66E64BB28
	for <lists+linux-man@lfdr.de>; Tue, 13 Dec 2022 18:35:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235935AbiLMRfY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Dec 2022 12:35:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235686AbiLMRfV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Dec 2022 12:35:21 -0500
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25F413AD
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 09:35:20 -0800 (PST)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-14449b7814bso13443328fac.3
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 09:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=H7hzGJfLQxnCzaib/w3qdTYyt/STv5Wnvh6gqd1vITw=;
        b=fR8QpU3k8e/e39qkUOzNd/J2wH3zdwi0SjcrY9I4pN7aFPmBGpO+Lz7btJkxlDyiLN
         R0C/C/1aC4MyJwyksiiH4I8MlURBSHJXUYd5E+zG2B9rH9YG8snIruj9ABDUKtHnMT8M
         t7lI1PojmUvyBgI0amm7dA1Rkn5RHWHgd85AtkhkppF93lzvpvl3ovegj9zLlp61Aj+f
         9NQ4hIjPCMqTIVAeUgMM6rhRNimlwOQzPkmTpKsPWN1DixXDms1qa9kzgmWGh6PVz5up
         4n2QZeXi+SnTRPbpkuAxcQw362xwIwVIfa5S2doJlt+aX/QTvTKDwu2t0EmFKcJOOFyU
         9JHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H7hzGJfLQxnCzaib/w3qdTYyt/STv5Wnvh6gqd1vITw=;
        b=UJVDM9dSWCXBQ3jzk0uXq97q3ma5bhoGkPUDMaRFY77bHurBcmtDWLRmtHf8ErzS9h
         +g7jmJIL/N+jCiHRueU5K/MzQZDOD9YZ61qR5kgV5KbfzB84TWUfzSa8zrDeewQyOBlV
         GD8ZugZf+yZWGSVnnTCJCMZgub83OO2Mzfqm+wo8oyNa0QX87CNgFw54JA7AZWsZDbd7
         +tTMLs94ZNjaANGPqimAJBgT6Lnm0lblmklkjyeuTn6Bhil4ueQLTe08Glf+H1jAMknG
         Ml0sTmBjskGAJDDcvgQAbHPLh/hQ6b07rjsz5BDKKNZX8ir2Wa8okIX5W6qCQuM72Oln
         G1xw==
X-Gm-Message-State: ANoB5pnMCooD/PVpRJXRQ9XC10niDjSTjoXm3UuNZpJvZ39d4d2WE00M
        GHQ3n9RI0qff0cq8uL4qMnI=
X-Google-Smtp-Source: AA0mqf6KH2g4x+KcxgO0/gd2oTQ4nSFKppc1eWlwxYTKve9i7cufnLthBS9tWy/M8Ad4rR2UB+SN9Q==
X-Received: by 2002:a05:6871:4683:b0:137:3ada:7249 with SMTP id ni3-20020a056871468300b001373ada7249mr9315679oab.54.1670952919281;
        Tue, 13 Dec 2022 09:35:19 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id h4-20020a4aa284000000b004a3cc18e86asm1330603ool.40.2022.12.13.09.35.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 09:35:18 -0800 (PST)
Date:   Tue, 13 Dec 2022 11:35:17 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     groff <groff@gnu.org>, Helge Kreutzmann <debian@helgefjell.de>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Italics in SS (was: Issue in man page namespaces.7)
Message-ID: <20221213173517.fhtj52pchamx6xof@illithid>
References: <20221204090713.GA512@Debian-50-lenny-64-minimal>
 <796a4611-9030-0d3a-e3e6-5b23ca66672b@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="nqeuvn3qoy4ihrwz"
Content-Disposition: inline
In-Reply-To: <796a4611-9030-0d3a-e3e6-5b23ca66672b@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--nqeuvn3qoy4ihrwz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

[finally getting to this; my email reply queue is about 3 weeks deep]

At 2022-12-04T13:34:43+0100, Alejandro Colomar wrote:
> On 12/4/22 10:07, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    /proc/sys/user =E2=86=92 I</proc/sys/user>
> >=20
> > "The /proc/sys/user directory"
>=20
> That is a subsection, which is of course bold by default.  In the SS
> title, there's text that would be formatted if it appeared elsewhere
> in the page, but we don't format it in SS titles (I'm guessing for
> laziness of using the dreaded \f escape).  Would you recommend using
> it?  I tried it, and it shows in bold+italics,

Know how I can tell you're using groff Git?  ;-)

> which is okay to my taste, and also increases consistency of
> formatting, so I'm fine with it.

Yes.  This is an exception to my general proscription regarding use of
`\f` in man pages.  It is rare that a typeface change is required in a
(sub)section heading, but when it is, it should not be omitted to keep
the document source tidy.

Strange as it may sound, this issue is intertwined with some of the
trickiest and most frustrating design features (or gaps) of *roff, going
back to Ossanna troff in the mid-1970s and all the way up to fancy PDF
features today.

So settle in for yet another gigantic email, and I'll tell you a story.

1.  groff 1.22.4 and earlier will _not_ show bold-italics.  I taught
    groff Git to do this because the loss of stroke weight when
    rendering to PostScript and PDF was irritating.

2.  There _was_ a way to do this with font style macros.

  .SS
  The\~\c
  .I /proc/sys/user\~\c
  .B directory

    This works in groff 1.22.4, but it is warty, as you can see.  People
    get baffled by these escape sequences, and having to select the bold
    style again explicitly does not play well with groff man(7)'s `HF`
    string feature (which turns 20 years old in February).

    But the most notable thing about the above is that the "arguments"
    to the `SS` macro call are on subsequent lines.  They are not
    arguments at all.  They are ordinary text lines, which the `SS`
    macro has arranged for capture by the macro package through use of a
    *roff feature known as an "input trap" (request `it`).

    I broke the foregoing in groff Git, on purpose, because a
    compatibility dilemma arose involving output line continuation
    (`\c`) and input line traps.  In the end I went with AT&T Unix
    Version 7 troff compatibility.  The details are deeply down in the
    weeds, and since taking that decision after discussion[1] with
    mandoc(1) maintainer Ingo Schwarze I have come to feel that AT&T
    troff was in fact buggy in this regard; its `it` request counted
    input lines including those using the `\c` escape sequence like any
    others, while the `ce` centering request counted input lines but
    _didn't_ increment the counter for lines using `\c`.  I claim that
    these should have been consistent with each other, but they weren't.

    (groff's `rj` [right-alignment] request counts input lines as `ce`
    does, and for extra excitement, input lines that aren't productive
    of formatted output aren't counted by _any_ of these macros--a point
    I feel has not been adequately stressed by any *roff documentation I
    have seen to date.)

    I have recently updated groff's documentation to discuss these
    matters frankly.  (I hope comprehensively in our Texinfo manual, and
    economically in the case of our man pages.)  That includes an
    explanation of what, exactly, I mean by "input lines that are
    productive of formatted input".

    Changing groff's `it` to work like its `itc` would (1) render `itc`
    superfluous, and (2) break historical *roff code in ways that could
    be really hard for a novice to troubleshoot.  The alternative was to
    "break" groff man(7)'s `SH` and `SS` macros instead.

    But here's the good news.  *Almost no one, past or present, uses
    `SH` and `SS` this way.*  I'll bet some people reading this did not
    even know you could put the (sub)section headings on the next line
    like this.  You could, but even in the first man(7) pages ever, in
    Version 7, `SH` was used with arguments.  And nearly every man(7)
    page written since has followed suit.  Further, breaking it has
    other benefits I'll get back to in a moment.

    (Another fun fact: `SS` was implemented in the first man(7) macros
    ever, but not documented in Version 7 Unix's own man(7) page.)

    (Back then, there was an absolute limit of 9 arguments to any macro,
    because that's all you could say with `\$1` .. `\$9`.  Also, AT&T
    man(7) tended to only pass 6 arguments among macros anyway.  I
    wonder if the input line trap approach to `SH` and `SS` was adopted
    in foresight of the possibility that someone might want a
    (sub)section heading that was more than six (or nine) words long,
    and they might be unreceptive to advice to just _quote multi-word
    arguments to macros_.  Or maybe `SH` and `SS` used input traps
    because that's how Mike Lesk's ms(7) macro package, at that time the
    gold standard for technical writing at the Bell Labs CSRC, handled
    its `NH` and `SH` macros for numbered and unnumbered headings.)

    More obviously, one can observe that escape sequences are still
    necessary in the above.  The `\c` is one that has proven challenging
    to master--though I've done my damnedest in groff's documentation
    post-1.22.4 to demystify it--so we might not regard the foregoing
    approach as an improvement.  Users at least have confidence that
    they know what the font selection escape sequences will do.  (As
    Russ Allbery has recently brought to my attention, if the font you
    select doesn't exist, your confidence when subsequently using `\fP`
    or `f[]` may be misplaced, especially when using Solaris troff.)

3.  So the (sub)section heading technique that no one uses will be
    broken in groff 1.23.  Do we gain anything from this apart from a
    perverse compatibility with a 43-year-old version of a macro
    package?

    Yes!

    With the contents of the heading sitting right there, we can with
    great ease construct a PDF bookmark with them.  This means when you
    render your man pages to PDF, your PDF viewer's navigation pane will
    show you a hierarchical menu of the man page with hyperlinked
    section and subsection titles, greatly easing navigation.

    When I re-typeset the Kernighan & Cherry paper "Typesetting
    Mathematics -- User's Guide" using groff earlier this year[2], Larry
    McVoy emailed me to express pleased surprise at this sudden new
    hyperlink-powered navigability feature in a 40+ year old document.
    The reason was that K&C used a private macro called `SC` as an
    extension to the ms(7) macros they used for the document.  Their
    `SC` macro wanted the heading title as _arguments_, which made it
    trivial to construct a PDF bookmark from it.

4.  The argumentful use of `SH` and `SS` is more amenable to grepping.

5.  Not all is joy and roses.  When you do things like embed font
    selection escape sequences in a heading, internally groff creates
    data structures called "nodes" that are not straightforwardly
    encodable in the device control escape sequences that are used to
    embed "PDFMark" data in the formatted document.  In the past this
    has led to what I nominate as groff's most horribly inscrutable
    diagnostic message.

      can't transparently output node at top level

   So, long story short (too late) what we need in groff is a better
   method of "sanitizing" node lists, so we can strip them of everything
   but _encoded characters_ suitable for handoff to an output device.
   groff _already_ has two requests for this sort of thing, `unformat`
   and `asciify`, but my current assessment is unfortunately they don't
   do precisely what is needed.

   This includes the problem of embedding non-ASCII characters that
   appear in (sub)section headings.  Right now this is simply not
   expected to work, with a similar diagnostic message.  I haven't yet
   fully sorted the issue out (PDF experts know this stuff better than I
   do), but I think it has to do with non-ASCII characters requiring
   UTF-16 encoding.  groff simply doesn't know to produce UTF-16-encoded
   characters.

   Maybe we'll get that sorted out in a clean way for groff 1.24.

   https://savannah.gnu.org/bugs/index.php?63074

   In the meantime, I have stifled these warnings.  Anyone wanting to
   see them can turn them back on with an environment variable,
   GROFF_ENABLE_TRANSPARENCY_WARNINGS.  This variable is undocumented
   because I hope it won't live long, and I feel pretty confident that
   the only people who want to see or can do anything about such
   warnings are developers of groff itself, or of macro packages.

6. The problems discussed in point #5 would still afflict us even if we
   continued to use input traps for `SH` and `SS`, so retaining that
   point of compatibility would seem to buy us little.

So, go forth with

  .SS "The \f[I]/proc/sys/user\f[] directory"

or

  .SS "The \fI/proc/sys/user\fP directory"

if you want old *roff compatibility, and be merry.

Regards,
Branden

[1] https://lists.gnu.org/archive/html/groff/2022-06/msg00020.html
[2] https://lists.gnu.org/archive/html/groff/2022-07/msg00002.html

--nqeuvn3qoy4ihrwz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOYt80ACgkQ0Z6cfXEm
bc5lcQ//feRfVC72+MwDTrI/hkEDfSdGDPLQhxyidurPrN5CQxAdaYE7H4fF4PVy
J4Fj1+H/XNkopbd4aEv//UI6l/gSjxkZHY5YlQloWbeXU49Dnp8zqALeDdGiKikD
Hekwr2XQv198ULqG43a0uwrKtFJGd9l32ZIhw6hY+QDGtMdlKEkzKRRlA2QLSgGl
uw7avaDHfyydwasjI0qW1F1aNzwtLLfnzb+hDv2hQhSRv0NM3lbTLOsmM8du56G1
uf/aglnqnNTTm0rXsqQDgJ8lgbbK4Z9SrdwLZ4wYxAVvy974GdsubMy11LFhdED1
ivdf10F/xqYqoyLJ+uPCatZG8zIVhs6JK/RlGgYG2GKMHrIt8zeMT8Oxu+9kryK9
o03gALjRpvs8fof9+qXOeRG1dxOR2FVW3I015q3rcGMzJop5xfUb+J6Bwqo8MJej
sFk+o5Pum/ppZFP2gsj8AEtHqNijEZcBY5EKXkubcV3Ksva8v6Rx4s0HkfbI5MOc
VHGCVcSrBYy7c6ZKa2Mqhfm9zTKhD1KyrzUHKZFF55zjoiQHGkGaKmZ+UL2FuwR/
Joj4y/KJV1Srt1G5sdJJNJQ22yJuBbElt+qCvdhLmtgNa8BA36e9V7bq1tAgzC9V
XqbXtsKFRAqUm5poBLxXexAEH2zSTAIthgTJq+llRFk9Kk3n+Ug=
=vBxh
-----END PGP SIGNATURE-----

--nqeuvn3qoy4ihrwz--
