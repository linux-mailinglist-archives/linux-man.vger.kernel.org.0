Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DA5357D903
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 05:34:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229660AbiGVDd7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jul 2022 23:33:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbiGVDd6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jul 2022 23:33:58 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 583CC220ED
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 20:33:57 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id r82so4474823oig.2
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 20:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=oo+fLUiejkJQBI4DjQg4otyvKQNlCC4GwLlnDkwKp+Q=;
        b=fZu8ybPzGnAmVFc0k04UC3klBpmEq6AwT09y4d+/J5kB9Phg655t+1SgxuwbuxTNdd
         5ieaMdkli1fjQ9dZPZ3S+7CS76GlWGxNMPsrQmtaEebRHg7shLdkdReTzGnprAkN0lYB
         KrhAW3Ymh+lnTj7XYuQPGAmkQwPdZzG/XB2hLtUmjJK5D8lblsp7SmkXsMHK6Wy7hOy+
         u8EVr0wm2HESq0x2UQKo2sBn4P1Qn9Q3tlMoFCdFnp6VDi52TUgSVjo+zdhO07RYCYk0
         3RLi43feDFucho5bcclwLU8mlJQ5lNnmeOi7IvwMLnZq77Ye8XbXOyRXIlmogD+yOq9J
         KP2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=oo+fLUiejkJQBI4DjQg4otyvKQNlCC4GwLlnDkwKp+Q=;
        b=ybc+OsWO1nJpYWtTSDC7VQVDBpTeVl7Nok/c4gaCwMoHJL//FzFUhqr4z1V+tUkq0f
         ZRkuA/ZbYjsuQzNdAPRI/jDMcy+L9xdS5NcNLYGHOmbCEUV0dSohCo++tSvxaSQGH7eG
         +T1y/FKrBHSSVPX5v+V6oY8D8gbgQ3J3IgiB+MdBLbkn96UspBWPuKOyz+heAs9XCeet
         gWivZuH507Pa55dW9L6O1taoYz4q1O4qQwJl5mncediOuZChf1VOpqyTTIloCKQJYrNg
         oqPYwQ4Pf4crGx0Jtg4BllJHs6Agbk6MBRJvakcgemvR9fAmuUbNB4VR1Ip/ehFMgCLw
         u8uA==
X-Gm-Message-State: AJIora82DSE1D2goHb2I4GfCC4efJGAB93DfL9MdwqW8EZJAA+KXRhWL
        nqR8y+tdsn19sU0+NXM/fUlc+YXIauE=
X-Google-Smtp-Source: AGRyM1uzJbkWOASYMX2rAauxvP7f/IzuWin0ZxTUYs+SYiCB8lSHHkH25Ap/njtgBZSRDq5RyTF7Yw==
X-Received: by 2002:aca:90c:0:b0:33a:768b:50d5 with SMTP id 12-20020aca090c000000b0033a768b50d5mr6033135oij.294.1658460836559;
        Thu, 21 Jul 2022 20:33:56 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id v5-20020a9d4e85000000b0061c7f73611asm1490739otk.60.2022.07.21.20.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 20:33:55 -0700 (PDT)
Date:   Thu, 21 Jul 2022 22:33:53 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 4/5] tm.3type: describe tm_zone, tm_gmtoff
Message-ID: <20220722033353.ap7aqxh6uhghdcxo@illithid>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ljelzsboomh5zns5"
Content-Disposition: inline
In-Reply-To: <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ljelzsboomh5zns5
Content-Type: multipart/mixed; boundary="jrlxoke7b7ty7e5w"
Content-Disposition: inline


--jrlxoke7b7ty7e5w
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2022-07-19T14:17:15+0200, Alejandro Colomar wrote:
> Hi, =D0=BD=D0=B0=D0=B1 and Branden!

I'm not exactly sure what you wanted me to comment on in this patch
submission.

Keep in mind that I am a bear of little brain--please be clear what it
is you're asking of me.  ;-)

I will assume that it is my *roff/man(7) expertise (such as it is) and
will respond on that assumption.

I will also comment on English usage because I can't help myself.

> > diff --git a/man3/tm.3type b/man3/tm.3type

Oh, bother.  Bash autocompletion for "man" on my Debian bullseye is too
dumb to recognize this new man page suffix.  I trust someone reading
this is aware of the problem and is fixing it for the next Debian
release.  (Has someone filed this as a bug with the Debian BTS?)

Other distributions may have similar concerns.

> > index 1931d890d..8b6f8d9bf 100644
> > --- a/man3/tm.3type
> > +++ b/man3/tm.3type
> > @@ -25,8 +25,26 @@ Standard C library
> >   .BR "    int  tm_yday;" \
> >   "   /* Day of the year  [" 0 ", " 365 "] (Jan/01 =3D " 0 ") */"
> >   .BR "    int  tm_isdst;" "  /* Daylight savings flag */"
> > +
> > +.BR "    long tm_gmtoff;" " /* Seconds East of UTC */"
> > +.BR "    char*tm_zone;" "   /* Timezone abbreviation */"
>=20
> Please add cosmetic whitespace (at least 1 for every member, possibly
> 2, depending on your taste) :)

Hmmm.  I'm attaching a screenshot of Okular's rendering of the current
state of tm(3type) in the Linux man-pages Git repository to PostScript.

Recall the advice in groff's Texinfo manual.  This is from groff 1.22.4.

5.1.6 Input Conventions
-----------------------

[...]
   * Do not try to do any formatting in a WYSIWYG manner (i.e., don't
     try using spaces to get proper indentation).

Synopses in man pages, whether for section [168] commands or section
[23] C function calls or data types, are not typically set in a
monospaced typeface, nor do I think they should be.  A proportional
typeface generally looks better.

The price of that improved appearance is that the use of sequences of
spaces to get columnar alignment breaks as soon as there is variation in
the content.

The traditional solution to this problem in the *roff language is to set
tab stops.  However, man-pages(7) calls out tab stop manipulation as
unportable man(7) usage.

       *  Example programs should be laid out according  to  Kernighan
          and  Ritchie style, with 4=E2=80=90space indents.  (Avoid the use=
 of
          TAB characters in source code!)

Now, section 2 and 3 synopses are not _example program_ source code, so
a defense of tab usage could be made here, but a man page author simply
trying to get their stuff documented could be forgiven for feeling that
drawing such a distinction is hair-splitting.

Using spaces is, however, in my opinion, worse simply due to the effect
on rendered output for everything that isn't a terminal.

There are a few ways to address this issue.

A. Don't worry about it and let HTML/PostScript/PDF output look ugly.

B. Stick synopses, at least for section 2 and 3 man pages, in EX/EE
   blocks, which switch the typeface to Courier on typesetting output
   devices (which includes HTML if the groff project fixes grohtml to
   change font families--it's _supposed_ to, but something broke a long
   time ago).  My recollection is that Michael Kerrisk opposed this
   practice.  I too don't think it's a great idea; the average glyph
   width is lower in proportional fonts, so using it, you can fit more
   content on an output line.

C. Use tabs anyway.  For results that will actually get what you want,
   you will need to set the tab stops to ensure they're wide enough to
   achieve the desired alignment.  The use of custom tab stops requires
   invoking the `ta` request, and this is warned against in the
   "Portability" section of groff_man(7) (to be part of
   groff_man_style(7) in groff 1.23).  But by invoking the `nf` and `fi`
   requests for other reasons, this project's pages have already crossed
   that bridge.

C1. Actually selecting values for the tab stops can be tedious.  You can
    hard-code measurements, but it will be hard to maintain consistency
    among contributors (will you use ens, ems, inches, or centimeters as
    the scaling unit?) and, much worse, the size of the rendered
    typeface can vary.  groff_man(7) explicitly countenances selection
    of a 10-, 11-, or 12-point typefaces.  At present, no means of
    changing the default font family for body text is exposed, but it
    might be in the future.  So I expect the temptation will be to set
    tab stops for 10-point Times (but see below), which will lead to
    ugly results for other family/size selections.

C2. Clever roff writers (sometimes too clever) reach for the \w escape
    sequence to overcome this problem.  So instead of hard-coding tab
    stop lengths, they have the formatter compute them based on sample
    inputs.  For the page under discussion, this practice would lead to
    requests that look like the following.

    .ta \w'char*' \w'tm_gmtoff'

    What's happening here is that the "longest" item within each tab
    stop is getting its length computed, and those computed lengths used
    as the tab stop values.  In practice this won't quite do because it
    will leave no space between the items in the event the same row has
    two of the longest column entries adjacent, so you more often see
    something like this.

    .ta \w'char*'+1n \w'tm_gmtoff'+1n

    This ensures that the tab stops have extra one "en" of space between
    them.  It doesn't suck, but at this point your man page renderer
    needs to be sophisticated enough to include an arithmetic expression
    evaluator.  This provokes grumbles from folks like Ingo who maintain
    non-roff man page formatters.

    It is true that we could add a macro to man(7) that conceals a bit
    of this complexity.  Like this.

    .TA char gmtoff

    This certainly looks much cleaner, and in fact it closely resembles
    Texinfo's @multitable command.  But it is just a mask over the
    `ta` request of frightening appearance above, not a silver bullet.

C3. The above has the problem that it relies upon the writer to know
    which pieces of text between the tab stops are the longest.  This
    sounds like an obvious thing that no one would ever screw up.
    I think that assumption would be swiftly overturned.

    There are two big problems.  The first is maintenance.  Considering
    potential applications in Linux man-pages, you will often have
    situations where someone adds a new function or struct member to a
    synopsis.  A contributor may already be at the limit of their man(7)
    knowledge.  They may not look far enough up the page to see the `ta`
    request, may not understand it, and may not think to consider that
    they've just added a new longest item, and thus need to update that
    `ta` request.  Because that request may be outside the scope of the
    diff context, it will be easy for reviewers to overlook, too.

    The other issue is more subtle.  I predict that contributors are
    likely to reckon widths in terms of character cells, not the
    horizontal measurement of rendered text.  Because a proportional
    font is used for rendering, the results can be surprising.

	$ groff
	.nr m \w'mmm'
	.nr i \w'iiii'
	.tm m=3D\nm, i=3D\ni
	m=3D23340, i=3D11120

    In 10-point Times, "mmm" is over twice as wide as "iiii".  I dare
    say few man page contributors are going to think of this.  Not
    having Times roman's font metrics and a full adder operating in
    their heads when they're thinking about documenting an API, they
    will frequently fail to correctly select the "longest" content
    within a particular tab stop for an argument to \w in a `ta`
    request.

    Sorting this kind of thing out is a pain.  Why don't we have
    something that recognizes when we're using a series of lines with
    tabs, then reads them all and computes the tab stops necessary to
    separate them nicely?

D. Congratulations, you've discovered tbl(1).[1]

I guess my advice is to choose your poison.  I'll advise as best I can.

> I tend to prefer the em dash to be next to (no whitespace) the
> enclosed clause.  That makes it easier to mentally associate (as in a
> set of parentheses) to the clause.  I'm not sure if it's a thing of
> mine, or if it's standard practise?

"Spacing around an em dash varies. Most newspapers insert a space before
and after the dash, and many popular magazines do the same, but most
books and journals omit spacing, closing whatever comes before and after
the em dash right up next to it. This website prefers the latter, its
style requiring the closely held em dash in running text."

https://www.merriam-webster.com/words-at-play/em-dash-en-dash-how-to-use

In the groff man pages, I too "close up" any space around em dashes, but
I freely admit that this (1) doesn't look all that great in terminal
rendering [it too closely resembles other dashes--a "fullwidth" dash
taking two character cells would be preferable on purely esthetic
grounds, and probably a nightmare to get terminal emulators to cope
with] and (2) it frustrates my input style; since I don't want to use
the `\c` escape sequence, I end up putting the words immediately outside
the em-dashed aside on the "wrong" lines semantically.  Maybe I should
just get over my allergy to `\c` now that I understand how it
works.[citation needed]

> What is "&a."?  Is that documented somewhere?  I didn't know that
> abbreviature.

Having seen =D0=BD=D0=B0=D0=B1's reply, it seems of a piece with "&c.", whi=
ch was
in English formerly (ca. 150 years ago) a common abbreviation for the
Latin "et cetera".  Nowadays "etc." has fully supplanted "&c." while
many native English speakers are shaky on what, exactly, it abbreviates,
even spelling it "ect." because that better aligns with English language
phonotactics.

I admit never having seen "&a." before in English writing.  Like
Germans' use of "resp.", it may be a thing non-native speakers assume
"ports" into English, but doesn't.

Regards,
Branden

[1] https://git.savannah.gnu.org/cgit/groff.git/tree/src/preproc/tbl/tbl.1.=
man

--jrlxoke7b7ty7e5w
Content-Type: image/png
Content-Disposition: attachment; filename="tm.3type.ps.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAABHNCSVQICAgIfAhkiAAAABl0
RVh0U29mdHdhcmUAZ25vbWUtc2NyZWVuc2hvdO8Dvz4AAAAtdEVYdENyZWF0aW9uIFRpbWUA
V2VkIDIwIEp1bCAyMDIyIDA0OjAwOjAzIEFNIENEVKxCjdoAAAANSURBVAiZYxAUFPwPAAGd
ATO384aOAAAAAElFTkSuQmCC

--jrlxoke7b7ty7e5w--

--ljelzsboomh5zns5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmLaGpkACgkQ0Z6cfXEm
bc64kBAAnMpL4+YQAN0qd/JyQ92wnCiU6hddba69jdEffaGbFYb5EjpPUBUEeJla
34kGbMSgvg90ZI2UNJA4qLE8jUM9GisfPTmVHLGAiwKFn7+pTCH4oJtG8M5VQaBR
iFrYwglhjUhBIPfQWx+uXvKsiLMSavqlaEwzIpzI6ADzG1HKPLXSbQKpOe9VQ3RZ
90IGesrxi+Op1JvIutN8MMIiqL2MH1clHkCN3eeUfWs76P2YYqgcM2g4lUZgFOKq
Y0I4HI/iKVW0A4RD4vKsjiYj0RmG3hRNAB5z0SorcJIFinF2lTO/zPYWRg8shTGL
RVPiRXb3rHMD+RXl8ta+oqMSnXO9ShrOEJj6Si5/18e57K9xwsv6+Ysx1DzbPlCJ
Z+ur09Ro1UnTSqSeo/mj6vV/H/etaFfnFWXdPy0a81S9MkoBOlRp6/Ln2T9SyCRl
RIiWboj6ATuD9TALQPSgGz9jVebpgveQcCSRLMTY75sZy93WK9e1X4x3s6hmYYSO
Bvf1uzVf0Vujt4j9WBC3fg62C/khC6akMoYFZv0vX3c4XTLsCWsDIBZ5kJJTTbn4
s3UeniCYv6Kgsm6MBdPRxSw1kUig8yca58hlKc+K9E2dbHwQMsBZA7FQQWD8KT+m
Ohr1CQn86fbg9qJNTx/FUhNsrsFNzdOWcMZu/Cl+2cWU0EYBwOM=
=DUhh
-----END PGP SIGNATURE-----

--ljelzsboomh5zns5--
