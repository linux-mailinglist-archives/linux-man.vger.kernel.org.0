Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32BE657F62F
	for <lists+linux-man@lfdr.de>; Sun, 24 Jul 2022 19:29:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229829AbiGXR3x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jul 2022 13:29:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbiGXR3v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jul 2022 13:29:51 -0400
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E95C620D
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 10:29:50 -0700 (PDT)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-f2a4c51c45so12126674fac.9
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 10:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=LMrMClDkSTZw8DZ/aVRT0sfpaXmZKFXoFV1b4kzalw0=;
        b=lksYV1py+ETth7RacSqLplzCkrc1zcFc7GOahDPX7mOhwYr34IWpHngfl9mDatLIH0
         74ZdqzfAhXEIxD4FF81ZLsdaz2JppU2bJ3O4BVskCAlvi+xa6TrUGXGsgTEyxv2as0Bq
         x++/ffmq6yIT6AnQitEisSWnkiipJOmeo/D4WiArXnhvaB3lSFrKTpOo59wJLGPqOBfC
         4V2LNaxZpZf43R0Mhq+clWLrdQqZA6RI8Tjy/92tkxFu+RfMuGR7fkpJV+ogHKhBehXW
         FHVPBNRPoAjUyfvsrcnfshEs9wjurE64RXHSW50TLP+5+7PafjKlAAeOT3gvrF952H5b
         /OOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=LMrMClDkSTZw8DZ/aVRT0sfpaXmZKFXoFV1b4kzalw0=;
        b=S25XXlp1500JJ2NC9vgIs+LUFro/0uS4kaB5gIo0bp0JFM95wF3XVfrtbrIzDhtbyf
         YPew3+WyfprMLFju65lZn0kwstEJh5EVsp+xIp6CEjXqztKqaFO6HTFNn/A/Ebjh20tY
         MtH6Oxh9fvvBOLf8Y1KTZQImMdzzoEH009fpQ+lbfTRtCfm4qHz/orh58Y5rl3YHMzfj
         FrjV2cARYbG3d7Irv7Q3r6K50uohkLDRfEqYhmrHEQZf6hi/q5IPPa9goQhD0B/Am2d2
         P9ThNA+L4U6h8+qpyWwlCwJAI/tbJJ9GXcEg6B4FODJ1GZpW4NKNLT4wyOvPtwRYnRFW
         WpjA==
X-Gm-Message-State: AJIora+2vblG1tseGMRC9vwfz67gwQEgvy1fDJ214kugXn9OP/NHycm7
        NKdvL6nZ5XSedTUrjcTVavVKHNLPvuEk+Q==
X-Google-Smtp-Source: AGRyM1sOn95Rfer+V3PQ881d4920QxhHJt8epZErph+Pd0b35Z9N6JehjR8AtGN5Tw6BGOzSgLYT4A==
X-Received: by 2002:a05:6870:c229:b0:10d:bf9d:a9c5 with SMTP id z41-20020a056870c22900b0010dbf9da9c5mr5630280oae.28.1658683790202;
        Sun, 24 Jul 2022 10:29:50 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id s30-20020a056870611e00b0010d04a20030sm4754613oae.36.2022.07.24.10.29.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Jul 2022 10:29:49 -0700 (PDT)
Date:   Sun, 24 Jul 2022 12:29:47 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     alx.manpages@gmail.com, Colin Watson <cjwatson@debian.org>,
        linux-man@vger.kernel.org, man-db-devel@nongnu.org
Subject: Semantic man(7) markup (was: Linux man-pages Makefile portability)
Message-ID: <20220724172947.qlunrfnje56yaasv@illithid>
References: <Yq+P39bpy2QEeaSd@asta-kit.de>
 <8b9daa0e-6f08-dd55-5772-51f5052ed8bb@gmail.com>
 <YrB66rgFZqryrmpt@asta-kit.de>
 <6e294373-2661-286c-09c4-e67cd84103d7@gmail.com>
 <fdde7402-5e69-b6ff-60fc-74ad9c9054f1@gmail.com>
 <YtrXbDo5NVxNT/cb@asta-kit.de>
 <80553a14-8f39-d4ad-def3-35d6551a31f3@gmail.com>
 <Ytw65nGl1qouSU5R@asta-kit.de>
 <ff01b98c-563f-dfd3-4996-65ff5e5f44ce@gmail.com>
 <Yt1r65RJemg3ecmO@asta-kit.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="hkugtf6b4f5m4acr"
Content-Disposition: inline
In-Reply-To: <Yt1r65RJemg3ecmO@asta-kit.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hkugtf6b4f5m4acr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2022-07-24T17:57:31+0200, Ingo Schwarze wrote:
> Alejandro Colomar wrote on Sun, Jul 24, 2022 at 01:09:23PM +0200:
> > On 7/23/22 20:16, Ingo Schwarze wrote:
> >> The most widely used way to look up manual pages by the names of
> >> symbolic constants or type names probably is using macro keys as
> >> implemented in the mandoc version of apropos(1).  That is used by
> >> most FreeBSD, OpenBSD, Alpine Linux, and Void Linux.  I admit that
> >> doesn't qualify as "widely used", but "most widely used" is
> >> probably true all the same.  ;-)
>=20
> > That leaves out man(7).

Perhaps not for long...

> Yes.  Searching for preprocessor constants and searching for data
> type names are essentially semantic search features.  So it is
> your choice to pick a 197x-era markup language that does not provide
> semantic markup but only physical markup.  But than it feels
> irrational to me to turn around and complain not getting semantic
> search.  Unless you are a Prime Minister, you cannot have your cake
> and eat it.
>=20
> Trying to work around the lack of semantic markup by moving
> everything into the manual page names feels like very poor design
> to me.

It will not surprise, but might horrify, Ingo to learn that I have an
idea for how to add semantic markup to man(7).

Consider this hypothetical example.

  $ cat man3/man-pages.man
  .DC type B
  .DC field I
  $ cat man3/tm.3type
  .so man3/man-pages.man
[...]
  .SH DESCRIPTION
  .TG type "struct tm"
  describes time, broken down into distinct components.
  .PP
  .TG field tm_isdst
  describes wether daylight saving time is in effect at the time
  described.
[...]

Here, "DC" means "define class", a class of tags.  "TG", if one could
not guess, declares a tag of the type in its first argument with the
remaining arguments being the content thus tagged.

Returning to "DC", we see that it takes a second argument naming a macro
to call which will then apply any desired presentational markup to style
the tagged word.  This second argument need not be present.  In other
words, tagged content need not be visually distinct from its
surroundings.  Even in that event, it can still be useful; see #1 below.

Further, it will be obvious to the experienced *roff user that the macro
called by DC to style the applicable arguments given to TG need not even
be part of the man(7) language.

You could populate "man-pages.man" like this.

  $ cat man3/man-pages.man
  .de CW
  .  ie t \&\f[CR]\\$*\f[]
  .  el   \&\\$*
  ..
  .DC type CW
  .DC field I

This technique breaks the stranglehold of the man(7) font selection
macros.  (You're still limited by the output device's font repertoire,
however.)  If rendering to PostScript or PDF, you could decide to style
certain tags in Zapf Chancery Medium italic, if you wished.  (I cannot
warrant that you won't get yelled at.)

Here are a few perhaps less obvious things this approach would offer.

1.  It enables keyword search by tag.  Whatever does the searching need
    only look for "TG" calls, match the class argument, and return the
    remainder.  A search could be narrowed by limiting both the class
    _and_ the keyword arguments of course, perhaps to answer questions
    like "what pages use 'stat' as data type?".

2.  Degraded operation for other/older man(7) implementations is
    straightforward.  'DC' can be completely ignored.  'TG' can be
    defined as follows.

    .de TG
    \&\\$*
    ..

    or, for truly bloody-minded portability, thus.

    .de TG
    \&\\$1 \\$2 \\$3 \\$4 \\$5 \\$6 \\$7 \\$8 \\$9
    ..

3.  Everyday man(7) page authors need only learn 'TG' and the available
    list of keywords for the suite of man pages to which they are
    contributing.  Hammering out the repertoire of available tag classes
    and the surely monumental bikeshedding of text styling decisions to
    be associated with each tag class is delegated to the project that
    chooses to define them.  The man(7) macro package itself will impose
    no policy and may not even define any tag classes to start with.
    (groff would have some for its own man pages, of course, as I would
    expect Linux man-pages to do.)

4.  Site admins offended at the styling decisions undertaken by various
    projects could reliably override them by editing the files sourced
    by the relevant man pages.  Maybe those should live in /etc rather
    than the man page hierarchy proper.

5.  Misspelling a tag class or using an unavailable one is an error that
    would be easily diagnosed and reported.

To reiterate, groff man(7) would impose no policy regarding the tag
classes or their rendering on anyone.  It similarly would escape the
ongoing problem that mdoc(7) chose for itself by administering
centralized authoritative lists of standards documents, operating system
releases, and other lexica.  Tagful man(7) pages under my proposal would
opt into whatever keyword/class discipline they desire, or not at all.

I am not wedded to the nomenclature for the included files, nor the `DC`
or `TG` macros, except to note that the macro names are available.
(`DT`, putatively for "define tag", is not.  It is already taken.)

I stand ready for the hail of rotten tomatoes.

Regards,
Branden

--hkugtf6b4f5m4acr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmLdgYMACgkQ0Z6cfXEm
bc48YQ/8C38/l0Bp00At2D+gui3vbJhK1M4jUxIYpDkyKNIkO5rEIxSVNgkQN62t
mzXNdKXh0SxP9tM1Vfps2wtzAV6YkdcBWrTlKDjh1t6WLDcOlgNkj6YYsFt85k7a
5WE0/oXruLSYWaAsZ+M8KGPjMXo6zrkOSyi/xVOHnUaYvXLKVK4QiuN357HnImEK
jBdX3JyUnscd5aKDLqedjr79dbUcbQapooG4DX7Qry+KqkD8DPOQmGJ3r179vMxH
Zr6j4Rxnap7KcWPTwzw2AwR/m6tuSdEDkt2OaHmAxTpLmkpmgNKD3chsni534hKt
tbasL9EgRHE+H3anwtaGMDaAM8v/fGu+MyaKCl4Nzvjgteo2TcPwDc1I1XsKwuP1
wD1QaI2YhwWbocWUIB2y60w07wNGI3bPRpv7MVVLjyUNz64GSLl4afsFguh5eDPz
zh/56FwTzwAWjyTdGDNxqsW6PB4pEru40dG9XZTT+pOwPPMIQIzSTc2UFw6zpqtk
moubJH7OskujIZNeWHrN9N7BITkmiwIZChHPrgDky2Zg2QvyrXcpoMG4IaqyTbvO
Qvje9niBoSqwCNjTOhNDkFvtyREUbAc215amFQaS5iWqK9JyrWj+ZmbHIveZS7CL
pDz5Z1vxS/WTncjqBfQFwoHxNztXXiKdePGkqAIGtsucHHEmmKk=
=4LVT
-----END PGP SIGNATURE-----

--hkugtf6b4f5m4acr--
