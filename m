Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 412FE65AB9A
	for <lists+linux-man@lfdr.de>; Sun,  1 Jan 2023 21:48:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229496AbjAAUsL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Jan 2023 15:48:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbjAAUsK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Jan 2023 15:48:10 -0500
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB90F2ACC
        for <linux-man@vger.kernel.org>; Sun,  1 Jan 2023 12:48:07 -0800 (PST)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-142b72a728fso31293516fac.9
        for <linux-man@vger.kernel.org>; Sun, 01 Jan 2023 12:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VwSR1IzJL6lP2A7yTqcDHpaWbrMW7+HyOYoBhhhi9JA=;
        b=QG336oE+eNqv9142NlERhLuciT0R3zS6ymqtdbRjb0kgOGClwSXH1TVLVJOLonjrWD
         KOQVynn9XWsvRmcbFUsLWgHoReIfnKvQtv1DPVtrahUkDpKAxaY66ajKUMRuDKcwrKvY
         +iWtbwreDI/WXToKLC3fi67oLFFqD0mEoGL7K6hO91j66u3wQrC3GJeIqMuC/lXSOfQ1
         pR0M0UGHtYxUV2Tir64QifmyClfpo5cvtT7OYEzvmgrlc2mQy/nq5iAoT3kHJGhCFBDx
         N3XcrUwQHzpfsDxpPHjSrert/+Pj7Ht4vu5IHZwTsQpDY6UwxO25jV0tjN2mq1e2HA10
         LxeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VwSR1IzJL6lP2A7yTqcDHpaWbrMW7+HyOYoBhhhi9JA=;
        b=R9AKwRR5K86IZl0KELcSKOBwGR8XkQ2bvuTC1eqzHC95ynDE5BiGQyEf4vhM65dXj7
         rvFBzr+S8P/mE0T9jvOPU3h4tQSmfPwKd78qvZMxxO2px70mEDtQW8bCNVcduGNlpxTj
         ABV1GKCM8zB/KdKfXeqbFaerdAB1kNUSdQUsslx1X1aQYBu8hJowyDb3fUqn+c4QVkxv
         0RWB3k+RpVrKy5uGEmu/rAAhAC55FA28lIpZ3H7jJo3+2WoHHCIUf8V+dwNSLoshxvEU
         HDfQCgAb6hSJpCfBBpdS0nsWwFi+MSiyF3nX9VPXRxAvQWj7n5wxlPGIM/IgJZ84LK2g
         hseA==
X-Gm-Message-State: AFqh2kpd/UmoYzoCng5rATJgoZzmIQdfGYlqnTOu+FD70eIYqbvwJm1m
        ndmEK2tqrs9c3m1+dgD7ADk=
X-Google-Smtp-Source: AMrXdXvcQ8bFExuXwpOHhQj+vmvRm/SpGXT9yVBJJtxF7gZRTsFyJCBD31Dv4Nqb8S+JP5P4nfSDow==
X-Received: by 2002:a05:6870:818c:b0:14f:d12e:36b5 with SMTP id k12-20020a056870818c00b0014fd12e36b5mr13804295oae.47.1672606086787;
        Sun, 01 Jan 2023 12:48:06 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id m6-20020a9d7ac6000000b0066cb9069e0bsm13143324otn.42.2023.01.01.12.48.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jan 2023 12:48:06 -0800 (PST)
Date:   Sun, 1 Jan 2023 14:48:04 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Tom Schwindl <schwindl@posteo.de>
Cc:     Alejandro Colomar <alx@kernel.org>,
        "Jason A. Donenfeld" <Jason@zx2c4.com>
Subject: Re: [PATCH] arc4random.3: New page documenting the arc4random(3)
 family of functions
Message-ID: <20230101204804.lbrme62ht75gtnyz@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="zx23ch36xxugaq5m"
Content-Disposition: inline
In-Reply-To: <20230101162627.28031-1-alx@kernel.org>
 <CPH02SKUI9O7.27QRN0MS8YK88@morphine>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zx23ch36xxugaq5m
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[dropping libc-alpha due to scope of my comments]

Hi Alex,

At 2023-01-01T17:26:28+0100, Alejandro Colomar wrote:
[...]
> +.ad l
> +.nh
> +.TS
[...]
> +T{
> +.BR arc4random (),
> +.BR arc4random_uniform (),
> +.BR arc4random_buf ()
> +T}	Thread safety	MT-Safe
> +.TE
> +.hy
> +.ad

I would counsel against putting these *roff requests outside the table
definition.  I think that having them where you do (1) misleads the
reader/maintainer into thinking that they influence how table entries in
general are typeset, and (2) they risk being retained in the event the
man page is refactored to stop using a table definition to present the
material.

--begin snip--
    Ordinarily, a table entry is typeset rigidly.  It is not filled,
    broken, hyphenated, adjusted, or populated with additional inter=E2=80=
=90
    sentence space.  [...] In contrast to conventional roff input
    (within a paragraph, say), changes to text formatting, such as font
    selection or vertical spacing, do not persist between entries.
  [...]
    Text blocks are formatted as was the text prior to the table,
    modified by applicable column descriptors.  Specifically, the
    classifiers A, C, L, N, R, and S determine a text block=E2=80=99s align=
ment
    within its cell, but not its adjustment.  Add na or ad requests to
    the beginning of a text block to alter its adjustment distinctly
    from other text in the document.  As with other table entries, when
    a text block ends, any alterations to formatting parameters are
    discarded.  They do not affect subsequent table entries, not even
    other text blocks.[1]
--end snip--

Admittedly, if you had a single table region with a bunch of text blocks
in it, it is more economical to change (and later restore) the
formatting of "the text prior to the table", so you don't have to whack
each text block with ".ad l" and ".nh" individually.

But in this case you can move 2 lines and drop two, since the changed
alignment and automatic hyphenation disablement will be "discarded".

> +.sp 1

When you throw the groff 1.23.0 switch and start using the `MR` macro,
you can get rid of this too.  https://savannah.gnu.org/bugs/?49390

> +.SH STANDARDS
> +These nonstandard functions are present in several Unix systems.
>=20
> I'm not a native speaker, but I think it should be s/in/on/.

[a native English speaker has entered the chat]

Neither will sound wrong to most ears.  I think "on" is a little more
idiomatic, as we tend to speak of operating systems as some kind of
platform or foundation upon which other activities are conducted or
interfaces are constructed.  But we also speak of an OS as an
environment in which we carry out tasks.  ("I tried doing development in
Windows--it was hell!")  When speaking of an entry point to "the system"
(not to say "the kernel"), I think the argument for "on" is stronger,
since we are speaking of it in that platform/foundational sense.  I see
this usage in man-pages(7) itself.[2]

More important, I think, would be to pick one phrasing for the Linux
man-pages and use it consistently.

Regards,
Branden

[1] https://git.savannah.gnu.org/cgit/groff.git/tree/src/preproc/tbl/tbl.1.=
man
[2] I also see both "The conventions described on this page" and
    "The first command in a man page", revealing that slippage between
    these prepositions is common in other contexts as well.  I never
    noticed this until I looked for it.

--zx23ch36xxugaq5m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOx8XcACgkQ0Z6cfXEm
bc7yuw/9Hi4COjN0lN9Yr7/ParA1ShZORLrmaM/oyRgOLvsvw6d+hRDaqPJuTFlq
BHaTk2+kRy8aIRWpKXyOj5fxfu+E1IAxbNs+1EXsVf1a54jDHLA7Uk2l/Ea+Bfx8
ZCSkV6kZFFi9S4T0SvUKZhIJBjNY38JanKXn8aRGhcUlYhahcNZGyg8bQyKCd04U
fmnz8XGBLOLiFd/oZ2L8hK25F/LwNOJDZvAnfJYij6oTqeP3dQbqz9eh483BO04t
p4gEYlJmIA9UeFk1oMOCnqhsHU49PF4ZHdSOUrEYbb4yOGXqNR1uQdiWGnbeq1mR
BzNZxbk1VS6rZf4J7n/6pk33Tu0UpHBoqp0KgvDXZWxssdeW/rUx0I384sjhoV/4
4dQj3F4/DvchZhoH+crddaRzVOYUzQCJxa1+OTWFiraEePxn3qGN3ysRJI1V6gV6
82OJegGjWlG7zBpSo5SEGrR8VDXpdC321ZjuguEfiBVTNT0Wix9uoB0vWT0cVZyj
7CZ64nKES0mEmsAQkb2LI99WHMrBQgJFp++03V8eRc9DA5goot2dZB2GQYJZt1Mo
tlwotWkDoGEZsIIi8VOmlvRCxOdVs4qFnuZkjl4tHqd+2Fmo5P1cOtIz9EEfovdW
BTz0w7Bxo7dPSESugtUZFICUha7Cem9c8Rf6+3E1y7b85Akj7Fk=
=n83f
-----END PGP SIGNATURE-----

--zx23ch36xxugaq5m--
