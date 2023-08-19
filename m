Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7503878175D
	for <lists+linux-man@lfdr.de>; Sat, 19 Aug 2023 06:38:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229532AbjHSEhs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 19 Aug 2023 00:37:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244480AbjHSEhl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 19 Aug 2023 00:37:41 -0400
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24F4D4215
        for <linux-man@vger.kernel.org>; Fri, 18 Aug 2023 21:37:37 -0700 (PDT)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-1c4cd0f6cb2so888268fac.0
        for <linux-man@vger.kernel.org>; Fri, 18 Aug 2023 21:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692419855; x=1693024655;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=I0QRBYVt+ZXT6RJNMEReIMaR8/djZv/t7O2++CQJ8+o=;
        b=B+VjpNuwT/2z76GuDtbpAyt42eolp87D9S2/waS6M9GWNRrDFd5osQ+9QsiPjvDGM3
         80mOgBlq8rX7vFN+5mg4iRP4SxCy0rsiqG5wLeDWy/heY7c9X2SZqrTQ6SQ0qflv5y75
         SD3dYgrBpENiJyLcB50KY6rFaYrbAqhEb8GSUPkCPNQPmD6ebYWFYgzqYsZWjaiDBqbM
         NW8FRufsKJ5pRwbin78jBjsaAtxXrUCOHE9UEtSrt68vXFrdgz01fw2PC3GfKSY5vfFO
         xLbIgOcqms7H94uTla7rcW0sc2E8nuRZLJhB2EEADcLH8en1KqnBtOeCdI5DbmCDrDjO
         t5dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692419855; x=1693024655;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I0QRBYVt+ZXT6RJNMEReIMaR8/djZv/t7O2++CQJ8+o=;
        b=cDQ12KFIkAO7fDFZEqhm33M2dVkkXYuo2UQQcFRgxo/tYoUVzKP2tee5VGryabLizs
         6wP1BWCnpYJwNiaqh876CMbLrb3LXeV3/wg/+USycM6h+LpWump19QX49nZd5o79ZL4Y
         4nVFu+bdgVc7ydQKWuUfZfBpGXPbXxTU10EGRqEnArAW3vnScg/z1RXRVQHQbuAXqNlw
         z9zm9cjDMCL07jvJA+c+1S+/OB/X2pIKwprpu+3G48awy5ps6gSO7c1eZBkxXHDVB3Th
         TtZdzPE8BGExDBcYd7eSVAVX2q57x+5/tQ4bLzjJMcuN4VLHNk3R9Figev51MdXBMmfN
         3ggw==
X-Gm-Message-State: AOJu0YyTF/h0AAT9ayOACKvLLuIXajOvZ86Bv+kKHtyNN5s/8YPrpiEi
        56KDw1wgMGCUYWtbZzLki0k=
X-Google-Smtp-Source: AGHT+IEtYaeoHo634Tm/7M0vyxJ6CGwz94Tn2uRI0WBYnTS3UNWvqXyT7YY9W0wTnVDVWSendRgkug==
X-Received: by 2002:a05:6870:3926:b0:1bf:16be:9c1a with SMTP id b38-20020a056870392600b001bf16be9c1amr1023868oap.16.1692419855344;
        Fri, 18 Aug 2023 21:37:35 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id ch16-20020a056871c41000b001c02f12abd0sm1780252oac.38.2023.08.18.21.37.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Aug 2023 21:37:34 -0700 (PDT)
Date:   Fri, 18 Aug 2023 23:37:32 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org,
        Brian.Inglis@shaw.ca, groff@gnu.org
Subject: Re: groff features for hyperlinked man pages (was: No 6.05/.01 pdf
 book available)
Message-ID: <20230819043732.6y5c5bazjskdia7m@illithid>
References: <20230815005022.47vpqsjoczn4vyii@illithid>
 <64e14441-c527-8fbe-c9d0-023dda5bde38@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="pgzlp7cirsnzblmp"
Content-Disposition: inline
In-Reply-To: <64e14441-c527-8fbe-c9d0-023dda5bde38@kernel.org>
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--pgzlp7cirsnzblmp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-08-18T15:50:21+0200, Alejandro Colomar wrote:
> On 2023-08-15 02:50, G. Branden Robinson wrote:
> >>> I just re-read this, and am confused.  '\-' is an ASCII character,
> >>> isn't it?  In fact, all of the Linux man-pages pathnames are
> >>> composed exclusively of ASCII characters, aren't they?
[...]
> > You're thinking about this at the wrong level, Alex.  `\-` is a
> > *roff special character.  Unless converted to something else by
> > character translation or character definition,[7] it goes to the
> > device-independent page description language as a special character
> > too.
[...]
> > It is up to the output device to decide what to do with that.
> > groff's "ascii" and "latin1" output devices put out a U+002D
> > character; its "utf8" device puts out a minus sign, U+2212.  Now,
> > before anyone defecates a brick about the U+2212 not being easily
> > greppable, nor useful for copying and pasting to a shell prompt, the
> > man(7) and mdoc(7) macro packages override that.
>=20
> So, \- is kept as a special character, even in man(7), until output
> drivers translate it to ASCII -?

In *roff, any character, ordinary or special, can be "translated" to any
other with the `tr` request.

=2Etr AB \" translate "A" to "B"
=2Etr -\- \" translate ordinary char '-' to special char '-'
=2Etr \[aq]' \" translate special char 'aq' to ordinary char "'"

The resemblance to Unix tr(1) is not coincidental.

In GNU troff, context-dependent translations are available (for fairly
specialized purposes--`trin` and `trnt`).  Beneath that,[1] you can
_redefine_ any ordinary or special character.

The formatter applies character translations (and, in GNU troff,
definitions) before producing output.

> Or which program does the translation?

Output devices can perform translations too.  In the above example, "'"
doesn't "remain" "'"; if the output device has directional single
quotes, groff's font descriptions will assign it to the glyph for U+2019
or similar.

Some time perusing the 1.23.0 groff_char(7) and groff_font(5) man pages
will be rewarded.  I hope one day soon to revise groff_out(5) and the
"Using Symbols" section of groff's Texinfo manual to my
satisfaction--the latter will likely drive updates to groff(7)--and by
then the path from input characters to visible output glyphs should be
completely illuminated.  If you were to call this stuff frustratingly
complex, I'd agree.  Most of the complexity exists for good reasons,
though some of those are historical.  The responsible update of
technical documentation entails unearthing and presenting those reasons.

> If it's gropdf(1) that makes the translation, I guess it will also be
> able to perform the same translation for MR.

The translation of `\-` to `-` specifically for the purpose of writing
PDF metadata (bookmarks) via troff device control commands is _extremely
specialized_.  No man page author should ever have to deal with it.

> If the translation has already been made by troff(1), then gropdf(1)
> shouldn't care.  In any case, I still don't see the problem.

If Deri and I do our jobs right, you won't need to care, nor see any
problems.  We're workin' on it.  (Mostly Deri has been, to date.  My
"contribution" has mainly been to look at an.tmac on one hand and the
"pdfhref" macro on the other and stare slack-jawed, wondering how the
hell I'll ever get the impedances to match.  Don't be surprised if
something gets refactored.)

> Indeed.  I won't violently protest to Deri's experiments, as I do
> worse aberrations while experimenting, but I would if this went into
> groff(1).  :)

I don't know what the current state of play with respect to a
four-argument `MR` in Deri's branch is.  I'll let him speak to it.  I'd
prefer not to undertake a code review half-cocked (and ill-prepared,
besides).

> > One of the selling points of `MR` is less typing (no parentheses).
>=20
> I woudn't really buy it just for that.  ;)

No indeed, which is why it has much bigger reasons to recommend it,
namely those cited in groff's NEWS file.

  Inclusion of the `MR` macro was prompted by its introduction to
  Plan 9 from User Space's troff in August 2020.  Its purpose is to
  ameliorate several long-standing problems with man page cross
  references: (1) the package's lack of inherent hyperlink support for
  them; (2) false-positive identification of strings resembling man page
  cross references (as can happen with "exit(1)", "while(1)",
  "sleep(5)", "time(0)" and others) by terminal emulators and other
  programs; (3) the unwanted intrusion of hyphens into man page topics,
  which frustrates copy-and-paste operations (this problem has always
  been avoidable through use of the \% escape sequence, but cross
  references are frequent in man pages and some page authors are
  inexpert *roff users); and (4) deep divisions in man page maintenance
  communities over which typeface should be used to set the man page
  topic (italics, roman, or bold).

> In fact, not having a RM variant, it's more typing when (foo(1)).

It's exactly the same.  Check these with `wc -c`.

All your questions are answered elsewhere
=2ERB ( foo (1) ).

All your questions are answered elsewhere (\c
=2EMR foo 1 ).

I admit that the mysterious and frightening `\c` escape sequence punches
well above its weight in key strokes, however.  I'm trying to fix that.

groff_man_style(7):

     \c   End a text line without inserting space or attempting a break.
          Normally, if filling is enabled, the end of a text line is
          treated like a space; an output line may be broken there (if
          not, an adjustable space is inserted); if filling is disabled,
          the line will be broken there, as in .EX/.EE examples.  The
          next line is interpreted as usual and can include a macro call
          (contrast with \newline).  \c is useful when three font styles
          are needed in a single word, as in a command synopsis.

               .RB [ \-\-stylesheet=3D\c
               .IR name ]

          It also helps when changing font styles in .EX/.EE examples,
          since they are not filled.

               .EX
               $ \c
               .B groff \-T utf8 \-Z \c
               .I file \c
               .B | grotty \-i
               .EE

          Alternatively, and perhaps with better portability, the \f
          font selection escape sequence can be used; see below.  Using
          \c to continue a .TP paragraph tag across multiple input lines
          will render incorrectly with groff 1.22.3, mandoc 1.14.1,
          older versions of these programs, and perhaps with some other
          formatters.

I know that's a lot of words, but I want man page writers to use `\c`
without fear (and only) where it is necessary.  Six years ago when I
raised the question on the groff list, no one could explain it to my
satisfaction.  (That may be a "me" problem, not an "everyone else" one.
But other people have expressed unease with `\c` too.)

Incidentally:

A gear finally turned for me just in the past day or two when I realized
that the only reason the man(7) package has font style alternation
macros in the first place was because the *roff `it` request ignores
`\c`.  This was one of the first tricky groff issues I tried to grapple
with.  Years later, I understand that it was a painful botch for `it` to
ignore `\c`, particularly when `ce` did not.[2]

I felt like a fool for not realizing this sooner, but I've never seen
anyone else explicate this point, so maybe I'm not the dunce I think.
(Or I am, but for some other reason. :P )

If Doc Brown loaned me his DeLorean, I'd go back and plead with Joe
Ossanna to fix this in the early days.  If I could drive 88mph only back
to 1979, I'd ask Doug McIlroy to not use input traps in the man(7)
macros at all.

> I'd expect that the hyperlinking ability should be modifyable with
> groff(1) --I don't care at what level of the pipeline--, similar to
> how it was modifiable with man2html(1).  But the source code shouldn't
> know about it.

Please point me to which man2html(1) implementation you mean.[3]  I can
have a look and evaluate.

> I'd like groff(1) to figure out some name that resembles the text used
> as man page reference, or as section heading; I don't want to specify
> it.
[...]
> > Looking farther ahead, I think a further step is required if we're
> > going to have intra-page links; we're going to have to have a way to
> > disambiguate duplicates.  In practice there's not much risk from
> > having duplicate section titles in man pages, but I reckon a big,
> > complex page could duplicate subsection titles.  And if we
> > automatically generate hyperlink tags for paragraph tags, those
> > would likely need it as well.  Maybe representing such internal
> > anchors hierarchically will be enough: "section_subsection_tag" or
> > something like that.
>=20
> Yep.  I'd expect something like that.  You could also include the page
> name in a book, which would involve the changes suggested by Deri of
> not having the page title hardcoded as the first level, right?

Yeah, we could put a page identifier (constructed from the first two
arguments to `TH`) as the first component of the anchor.  Would this
even need to be conditional?  Should we simply always do it?

Regards,
Branden

[1] Or, possibly, on top of it.  https://savannah.gnu.org/bugs/?62691

[2]

$ cat /tmp/it-vs-ce.tr
=2Ede AA
BOOM!
=2E.
=2E
=2Eie \n(.g .itc 1 AA
=2Eel       .it 1 AA
Tick.  \c
Tick.
=2Ece 1
Clean up \c
debris.
$ nroff --version | sed 1q
GNU nroff (groff) version 1.23.0
$ nroff /tmp/it-vs-ce.tr | sed 3q
Tick.  Tick.  BOOM!
                        Clean up debris.

$ pdp11
PDP-11 simulator V3.8-1
sim> set cpu 11/45
Disabling XQ
sim> set tto 7b
sim> att rl unix_v7_rl.dsk
sim> boot rl
@boot
New Boot, known devices are hp ht rk rl rp tm vt
: rl(0,0)rl2unix
mem =3D 177856
# Restricted rights: Use, duplication, or disclosure
is subject to restrictions stated in your contract with
Western Electric Company, Inc.
Thu Sep 22 22:00:20 EDT 1988

login: dmr
$ nroff /tmp/it-vs-ce.tr | sed 3q
Tick.  BOOM!  Tick.
                        Clean up debris.


[3] https://invisible-island.net/scripts/man2html.html#same-name

--pgzlp7cirsnzblmp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTgRwQACgkQ0Z6cfXEm
bc67NBAAoICEcH9Mc7AOERWmsNDu/MVTJ/C/CwZn9OHW65qa8LmE6SiWYVPF9vbu
tFmN9/R4yn5SqkC9yqFTgzAtzYU8oXW8fgitzHjglDlNFicRZOXGbK55lSzj1o54
OazQfcDUJLrOBaeamHvYaQeMJZ/Y7np5k7Xx6AsQr5ljPzv//x/qjhBWIPFr3rXZ
CF6SQ7qsFzBwb4HD2K31ZnQpSMJCOwrXZeBod3BjPFXZtjNLVSOKxfvky2zQXpxk
K7fURQKRpgJGr7NUOQf9sQ58kJoDCb19ewIYZXQ27XYK2PsnOu4zMlQ4Y2G8YlDv
JRXSWhJF+3PEALdxVKhhdH1DteJdmyZvvWAJUEFNoBho1+qtZlS+CRFZfe/VAVXb
cKf6Rip3e+iInp57EqL8PykdXZZ75gHNdhg6z0VqgpI6JqDGsng3TEJUUxjdosdr
8LoJCKUuBVO9dGEHn4eRDibq9Gpl44E+Oe5Mkv7tToTO25aaBwXz5SQ0FZWl3w6q
wD8y+2Mgk5MrHiwBC6Aq8doMqsl/I0gO/bM4Vq+/YhZRDS95PYB0s2yY3g8b9Zfh
tY8nsQB/sWBliBYmjl5SgQDdmt9oFU3d0X/TiIbOAjeH5MlOhhMAqcvXETUU4t8B
NzrAfDNkseootG+XwbvhgoJk04LLrqBbXyEbSB9RlUAptyn1Dy0=
=wKjV
-----END PGP SIGNATURE-----

--pgzlp7cirsnzblmp--
