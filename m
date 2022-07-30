Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A53B0585784
	for <lists+linux-man@lfdr.de>; Sat, 30 Jul 2022 02:16:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232041AbiG3AP6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 20:15:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229686AbiG3AP6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 20:15:58 -0400
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10C7317074
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 17:15:57 -0700 (PDT)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-f2a4c51c45so7572983fac.9
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 17:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=K7FxZN010BVhuRHD9uDdM0++YDExQ6YPgNK9r7o96ug=;
        b=BEa8gtPcIlAHbCPHSGYeey3BJm1oZR6UA+1wKNPK31O5Gb8gzvmVMP+ZCaQY3FZ43C
         Z24fFOIf1XoNTOrukRTqqAkQ+AYWRtgl7kCo205ckmGvCTA+oiwu+nqftznZq7zeSL8j
         +lkyWz2yKcE1juTdRshn+xEucOjw1qNG9fkcD7MSqZnGD9PnGRJyzpFDPmsiHhOBmat0
         UG6E90J8jI7NJ8Udrd/M4FnVNEAZmyi/aTkAWhZeIdy+2or7KZQ0M2GyL1f61tH2U8ZT
         YAWkybAaCd0gUjDGWf5hS5ynuqbH194zQaUEo4XqRKrgXCg0Se8VAN6CcaZzUGc7Of7Q
         +tbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=K7FxZN010BVhuRHD9uDdM0++YDExQ6YPgNK9r7o96ug=;
        b=OLuVxi12gLTivuh1BRyUOkTriGGw+gejgZpKVjZTP7aPqbkx8MPVwCka7MNUvRSU9A
         8dJiEIlKLSPsZRhxRNYtatCOtE+2XzTUKdYhllTsarM0IIO80q148jmVY7s08qAo6VwF
         Z+y67ydS/h7qp2ij2D6bSbclabWPf8MtagDi35P10iWtgL6IqXmKPNpNNYLpUCX1rg5R
         MLis+R0uc6JLJMgK+bjyfzK9UZPIjJc/EKoYgFn3WDTMdAMkuumUXfxXlofhoeTjwgNq
         f6p4HkRLeJTESlhFjukri320LlHfpf7bf+cx2dZocbR7mlzQKkl9fENeTz2wtfTUv2D3
         T88g==
X-Gm-Message-State: AJIora9WMu7bV/OdN2ibA+iZO8GaE/TrutDZZWqeYIX9WnbCTE3WT340
        kiBtzpbBq0dfvz1ainurV0o=
X-Google-Smtp-Source: AGRyM1sGESC6nETi4u4Yu8rxDYOvj8ZUrRpdfV2UbnOpf2NmMVns8E0WDhS8Ooalll64AHtZgBqSWw==
X-Received: by 2002:a05:6870:c187:b0:f2:47a7:6f8 with SMTP id h7-20020a056870c18700b000f247a706f8mr3116622oad.213.1659140156365;
        Fri, 29 Jul 2022 17:15:56 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id k29-20020a4a851d000000b0043548e83486sm1464567ooh.35.2022.07.29.17.15.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jul 2022 17:15:55 -0700 (PDT)
Date:   Fri, 29 Jul 2022 19:15:54 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH v5 2/2] sockaddr.3type: ffix
Message-ID: <20220730001554.rayrgl2auprpw6aj@illithid>
References: <20220729152737.27770-1-alx.manpages@gmail.com>
 <20220729230107.11954-2-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4jnohyxpornht4qw"
Content-Disposition: inline
In-Reply-To: <20220729230107.11954-2-alx.manpages@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4jnohyxpornht4qw
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[replying just to Alex and the lists]

Hi Alex,

At 2022-07-30T01:01:09+0200, Alejandro Colomar wrote:
> Format structures with tbl(1) to improve alignment in
> proportional-width font text.
>=20
> I also reordered the types in the SYNOPSIS, to be consistent with
> C syntax.
>=20
> Reported-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Cc: Heinz-J=FCrgen Oertel <hj.oertel@t-online.de>
> Cc: Ralph Corderoy <ralph@inputplus.co.uk>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>=20
> This page clearly shows that using tabs would be hard.
>=20
> Although having different alignment for every structure doesn't
> convince me...

You can resolve that.  Simply choose column widths that are large enough
for the widest data types and identifiers appearing in the page, and use
the `w` modifier in each table to impose that width on the relevant
columns.

At a glace, these look like plausible candidates.

> -.BR "    struct in6_addr sin6_addr;" "      /* IPv6 address */"
> -.BR "    uint32_t        sin6_scope_id;" "  /* Set of interfaces for a s=
cope */"

"struct in6_addr" is 15 characters wide; in typographer-speak, call that
15 ens, and in roff(7) lands "15n".  "sin6_scope_id" is 13n.

So your table formats for this page would look like this.

lBW(15n)2 lBW(13n)2 l1 lX.

These explicit measurements are not guaranteed to be perfect; they may
leave excess space or even be too small in the unlikely event you have
to deal with data types or identifiers that look like "MWMWMWMWMWM".

On the bright side I can't think of how they could go wrong in
terminals.  And you can, of course, spend as much time time as you care
to tuning them for typesetting devices.

But these widths will have to be manually maintained, and in multiple
places at that.  (Of course, this only applies if a page documents more
than one struct or union type _and_ uses more than one table _and_ you
want the columns to align across those tables.)

Like I said on the groff list, tbl(1) is heavy machinery.  And beautiful
typography spreads its sublime wings when proportional typefaces get
involved.  There are good roffish tricks for avoiding some of these
problems--they involve using the `\w` escape sequence to measure things,
and storing the results in registers--but unfortunately they are
unlikely to work well, or at all, with mandoc(1) or other non-roff
formatters.

But, people thought they weren't giving up anything important when, 20
years ago, they decided they wanted to wanted to parse man pages into
XML or HTML without having to implement a roff formatter.  man(7) pages
were "almost" simple enough...

So if you want me to resurrect that tab stop-computing macro idea, let
me know.  ;-)

Regards,
Branden

--4jnohyxpornht4qw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmLkeDMACgkQ0Z6cfXEm
bc5xnRAAlitxqf0tqptfbqvrz0LW0bEMJiBGVSo2E7NnYKvTz2YZHqPeZrpjE91B
p+6cQnb1Oiy00brUznTL0902rx7oqaaz7iZr6K2AaDgSJSgl1YJ6VYGLJfJkgT5P
MX5n+Oiuo7qd4mkekMvfqs+/mGeKRmMUVB7OF2y1BntKLEWKaLhOhHLtku3uZnlS
7WOwlt4HsCuFdkZJcZnx/Qo1eGWYNp1JHM7e8RxnkRhAEBIEnx04nQR99J5sLK1l
DDFpl9ToUY1gtzRUEJve1kRhtLYJAbez87WUz47R0gExgJ77Fdn0Yt2/s/0p9s7h
BRUXgs4ZgRXu23PEqpGDPBp3sRVnXqs+oV85wc9M32UMgcIE1aHE3VN23QkeBTeQ
jjPONfuESWGauW3BaxAvjMuwUz2lTUTqo2UGxJwosGgJS+tY8XYq03cvbEmKHk8a
24zmsaVamrrE8az9smpblFuHuHLp/oZ2uB3FrbVcCulsEkOlq7EIrCM+L5JOkBvK
AvO16QthKQbrhkkn3wrpJE1qGb/pRufkArX+JKFk3eRCwUYN3WiVrKMdmtXhuzXS
Ha5uTVOZQ5H/hY/uFy7GraDZHDD/U61rSj6MqSsKbnnpQO3byidMyZMkcfXB1MBb
M7ySrF5MrQIv3q7VXUQH5vlxXSj43lC+qmIi3XreI+XT8Y2TzTQ=
=iE6p
-----END PGP SIGNATURE-----

--4jnohyxpornht4qw--
