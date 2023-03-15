Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DD4B6BBD65
	for <lists+linux-man@lfdr.de>; Wed, 15 Mar 2023 20:38:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230258AbjCOTiP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Mar 2023 15:38:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232883AbjCOTiK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Mar 2023 15:38:10 -0400
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56BB893861
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 12:37:30 -0700 (PDT)
Received: by mail-oi1-x22d.google.com with SMTP id bi17so14989255oib.3
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 12:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678909049;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VBF6uvTY5XikVoY0kvHpWKc/NVrwuvCPA+uB7D8ad8c=;
        b=IBiDw8dkmqLSD5LwSqcMescLmgsd4LcgOocnvzMmMi6R+QtLYR45ZPzelbQnShRfCi
         G8wX2ksCCzVylGyX/PZCFv07aIHup9g1eS3U29XWapL5wEoUG9QRqERM/fjNNDuTgA+U
         fZcT39fE0bIIkr7GkP58pf+azmOuABzjOrw7hmJOPDnGfbxJkBTn+JJQPhKCPoQvAOnF
         MLY7f6tXRUqkwcl5WKoD9py2DjidX0Mi+vTRxGzwjOr01nHWIrES52uXm+sirMF2b5Qo
         xri+1VPq9Mjo5e098SUoFS00+A+yLYt2tJRmkwyrixVmQNnryK8TUcR1ftohWD6d6W2y
         FLPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678909049;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VBF6uvTY5XikVoY0kvHpWKc/NVrwuvCPA+uB7D8ad8c=;
        b=yncrQ5mKVZLDGgFS2YO4jttdmgDleN0F10t3aBoSg8eIyZ3mrjEJ70cWosmZMqAvXd
         ca+bHSwCTBl5wqT4JLk2LRAdKfRrHWKurc/XNdgpikGDcS0Z0peCHsEdIUuv/5vRRn59
         8el42UuCb3FITls1MhlEJTrF1jAqDM4W9Oyiwl4/KWegHLQoknFvlzovxtJCHYdMvTS2
         FD6EUx7jvRWxhQS10DQTYmrmvFexKu9NRO29ITyptr7M+YmYR7Yu33tRNsUEhHU6IFQl
         FS7ILGl50AIdWXXT+J9bA5WxdVeuqdWw+mXbrNCrUpiSH0ePatZpMEC0arjYWfHXs7tZ
         6/bQ==
X-Gm-Message-State: AO0yUKWio4o8jBuKzKDOuX1IMzvXu5Gre+vAi+K5eonuhZkK+w/GJAgw
        7U9mdW3SPYt3xxb8n9Z4IeeinI9E6GM=
X-Google-Smtp-Source: AK7set/rlDv7u2PcEMxXRUxzbhHrvZVy+omMfbd2RO4JrjeCgBAYecyrsWC8Kwl35+rOe5STj6Jblg==
X-Received: by 2002:aca:1201:0:b0:384:3750:ef08 with SMTP id 1-20020aca1201000000b003843750ef08mr1564443ois.8.1678909049385;
        Wed, 15 Mar 2023 12:37:29 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id u18-20020a9d7212000000b006864b5f4650sm2740742otj.46.2023.03.15.12.37.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 12:37:28 -0700 (PDT)
Date:   Wed, 15 Mar 2023 14:37:27 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Tom Schwindl <schwindl@posteo.de>, Jakub Wilk <jwilk@jwilk.net>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] arc4random.3: New page documenting the arc4random(3)
 family of functions
Message-ID: <20230315193727.k6t2d2hgcsbuz7zv@illithid>
References: <20230101162627.28031-1-alx@kernel.org>
 <20230313213044.scl37hpwvuyo2dif@jwilk.net>
 <CR6C48K1388R.2M61G9YHB8VHA@morphine>
 <062a16a8-7057-15d8-eb8a-bfcdb7644ece@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="476vrx7s2liorm5o"
Content-Disposition: inline
In-Reply-To: <062a16a8-7057-15d8-eb8a-bfcdb7644ece@gmail.com>
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,URI_DOTEDU
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--476vrx7s2liorm5o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2023-03-15T13:04:29+0100, Alejandro Colomar wrote:
> > off-topic for Alex:
> > As we're talking about libc here, what about the libc.7 patch?
> > Is there any progress regarding it?
>
> I guess you refer to the patch set by Branden that touched
> ldconfig(8), libc(7), and a some more?  I guess Branden is busy
> with his own stuff (releasing groff-1.23.0).  Probably after the
> release we'll see some updated patches.

That's about the size of it.

This is what I have queued up to submit after I review Alex's feedback.
(Some of these I haven't submitted at all yet, I think.)  Also I haven't
rebased lately, so my view of origin/master may be stale.

commit 06a104b5be1ac103f9858a7a898284fea2137a7b (HEAD -> master)
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Fri Jan 6 01:48:55 2023 -0600

    intro.3: srcfix (hyphenation control)

    Protect man page cross reference from hyphenation.  (This will not be
    necessary upon migration to groff 1.23's `MR` macro.)

    Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

commit a997ee7d2936e1c5e3f61a9218b02118dbae9a52
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Wed Jan 4 01:16:17 2023 -0600

    intro.3: Revise discussion

    * Recast introduction to discuss the purpose of section 3 as a whole
      instead of focussing solely on the standard C library.
    * Provide historical context for usage of subsections in section 3.
      Resurrect information from comments, in rewritten form, of section 3
      subsections, so as to contrast them with the current approach
      developed by Alex.  Be even more emphatic that those documenting other
      C libraries should not mess with subsections.
    * Explain basic principles of usage of any C library to the novice.
      (This page _is_ called "intro".)
    * Drop material about organization of glibc, now moved to libc(7).

    Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

commit 8a5bc95aba96c409b74f7128f9a9b30b34dc976e
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Thu Jan 5 16:37:20 2023 -0600

    intro.3: wfix

    * Tighten cross reference.  It wastes words to tell people to look
      elsewhere "for further information".  Why else would they look there?
    * Use passive voice less.
    * Relocate sentence for more coherent discussion.
    * Say "application _programming_ interface".

    Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

commit 5619f1fff3457a5f0d67c983b76fb329eaae7b92
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Tue Jan 3 01:06:55 2023 -0600

    libc.7: Revise content

    * Define the term "standard C library".
    * Say who's responsible for standardizing it.
    * Practically all C _libraries_ use libc, too.
    * Move material describing structure glibc from intro(3) to here and
      recast in more detail.
    * Update example filespec for libc.so.6.

    Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

commit f9c89fd1697f3354f570a93814665d2b665ffdad
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Thu Jan 5 16:34:39 2023 -0600

    libc.7: wfix

    * Say "GNU/Linux distributions" instead of "Linux distributions".
    * Clarify claim about popularity of glibc.
    * Tighten wording.

    Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

commit 12a26baf73d984d1c2c3075246aa64b7a5162348
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Fri Jan 6 01:44:20 2023 -0600

    ldconfig.8: Revise and update for glibc 2.32

    * Recast summary description to identify relevance of libraries.
    * Drop `-V` option from synopsis; it doesn't make any sense combined
      with the operation mode shown, and no other "get out quick" option,
      including its synonym `--version`, is documented in the synopsis.
    * Clarify that the "links" manipulated by the program are symbolic.
    * Discuss caching feature separately from symbolic link management.
    * Clarify how ldconfig can be run by unprivileged users (probably for
      troubleshooting).
    * Recast example of shared library linkage chain and motivate the
      existence for each link or file.  Define term "soname" and present it
      in lowercase like other Linux man-pages, instead of full caps.
    * Document auxiliary cache file, which apparently has been described
      nowhere but a source comment in the original commit 15 years ago.
    * Document that `-C` implies `-i`.  See elf/ldconfig.c:162.
    * Clarify how `-l` option works (a little).
    * Drop mention of "quiet mode", which does not seem to exist.
    * Be explicit that `-p`/`--print-cache` option exits early; i.e., it
      doesn't undertake ldconfig's primary function.
    * Document `--usage` and `-?`/`--help` options.
    * Clarify what `-v`/`--verbose` does.
    * Clarify that `-V`/`--version` exits early.
    * Expand description of "ld.so.conf" file to discuss "include" and
      "hwcap" features.  Describe these as "directives" (though the latter
      died upstream in glibc 2.32 before we got around to documenting it).
      Document ld.so.conf's comment syntax.
    * Document handling of leading spaces and empty lines in ld.so.conf.
    * Document location of auxiliary cache file.

    Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

commit afc8fa5eebd36de2d8a372873a781abebaddf996
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Sun Jan 8 16:20:29 2023 -0600

    adjtimex.2: Drop dead hyperlink.

    "UNIX and Scientific Computing Services Pages

    The information that was previously in this area is out of date.
    Please refer to the SCS Confluence Page or contact unix-admin."

    Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

commit 0b8b5b30064ecd9d2398f6389cac27683051fb19
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Sun Jan 8 15:49:21 2023 -0600

    localedef.1: ffix

    * Protect literals from hyphenation.
    * Specify break points in lengthy file names.

    Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

commit 3e3272e211c2ac1a628dce272b14c1b61e7c03c4
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Sun Jan 8 15:37:24 2023 -0600

    localedef.1: ffix

    Spell metasyntactic variables as hyphenated noun phrases.

    Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

commit 9da1c0128b4f0d3ce18434fb3fae633e208cd0c9
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Sun Jan 8 15:36:02 2023 -0600

    localedef.1: ffix

    Spell ellipsis such that it will render better on typesetters.

    Use unadjustable space \~ instead of quoted space at the boundary of a
    macro argument, for readability.

    Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

commit d8e77e33049230f27a45f1040fcfec847bfae64b
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Sun Jan 8 15:34:19 2023 -0600

    localedef.1: ffix

    Use typographer's quotation marks.

    Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

commit 64e88fdd36ab6fb9cae6d0671962cbfe54a92c1c
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Sat Jan 7 03:36:35 2023 -0600

    signal.2, utf-8.7: srcfix

    Use `IP` macro instead of `TP` for paragraph tags with no semantic
    value.

    Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

commit c423b1bd51992a2316d4812624c0392638665d49
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Wed Feb 15 09:08:02 2023 -0600

    memcmp.3: Recast security caveat

    Use terminology more carefully.

    * Refer to the info sec property of confidentiality instead of saying,
      vaguely, "security-critical".
        https://informationsecurity.wustl.edu/items/\
        confidentiality-integrity-and-availability-the-cia-triad/
    * Try not to confuse anyone who's studied the analysis of algorithms:
      don't say "constant time" when "deterministic time" is meant.  The
      time to perform the memory comparison remains linear (O(n)), not
      constant (O(1)).
    * Tighten wording.

    Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

commit 88163675125a0facf3709eea30239734119d2459 (origin/master, origin/HEAD)
[snip]

Regards,
Branden

--476vrx7s2liorm5o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmQSHm8ACgkQ0Z6cfXEm
bc6MAQ/7B9oIzHbDJf8JLQqCsJNbHoaTB72u1OC3SL+9WHBZK1XGw6ezNOHgyneH
GEw6pai+KHAO75VIHguPO0U0S+0qyGz/OWxHtb52/vI8scMd+oFQQQkr2yksXYq6
AoYFBIo5zKluiAudGMSZa03yjEThnJAV1CNz7P68+p6UOGMPCTemHsrbXFfbEUMU
jsAyI10zEmCDIFWfg0dBCTVRQNgFUGjy95tim6Vt0xsxap2eNp7ZrtWEj8e6A27u
t5ZP5+yAx40wno8OTQJhXcdIevaclS7WmCRIP7BhAxXL/n+gPmCTscHw2Q2C/WXQ
Z2zPFIs3Wvcbvi+NFG+vmCLYac7lnVoAumDcCWRC8sPidyd3B/H8lKs0Ly7sVf7h
U5CHAYPGnveT/VToor2gwoD3PCKjgy9I5F8MyYJ1VYC2zVQeV5YFNkZlQ9hRHuIQ
EvGK6+ZYntOj2eP7RgD4Wh3Wu4HVlowytbQMqXcajCbzsnBsWkezHEhDgI/nzNb9
5sBseN/IdN30atffhn8zoibBUkknudAGqxOl3uqf3f9TdCidhW5O47zmZa+qkfMx
VEqvC4nD01YtFMR53gLxY9v+9dCDooQ9lqryVjE6vk/GHnkwFP0OrwwNIH91w2l6
YGab1f8Vr/TtSpw7aAeUn0RVoGz+X0IU7u1hSzReepIkpCyNo4w=
=hQfb
-----END PGP SIGNATURE-----

--476vrx7s2liorm5o--
