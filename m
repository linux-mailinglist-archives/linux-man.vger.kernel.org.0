Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FB347687CC
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 22:03:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229873AbjG3UDZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 16:03:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229872AbjG3UDY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 16:03:24 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE27CC6
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:03:23 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3a1ebb85f99so3026897b6e.2
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690747403; x=1691352203;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mFGH4qThhVADSqj/JxBrCL63IvuaB+91HcBnF9geb1c=;
        b=aK2lEj6BaqhUbq1kWHV3FA+0bHL+dx+n9d/mzpNc35hS2VkUPyv9cVf2bf+rSWYZkn
         qMS6J5XQgCNEQI01/3gEHpw6L0NhewMtUMFqRVHxB823ZU3oQWOYq1siuUPp7YX6q/HL
         V8td5XEWAHu/86hMFKZIchea1PQ/O5A40zfAu/9iqc6sXmjo7gsgf/hPjq1zhjxyZ+Nn
         F+oS9lo6BuoJWVsHWBvfEuTXHEBb3L29YcP/l6pYvaIKZoU+FmEE+ZyIMJnd+PA4ZKgb
         2g9hDq/bQ2S3hTmX8M+iwC7SM85pRzraRMTcJL1xN+dY43hpgOBU1DdAWKI2BRiA0Li0
         byCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690747403; x=1691352203;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mFGH4qThhVADSqj/JxBrCL63IvuaB+91HcBnF9geb1c=;
        b=Wa5buRZXD/C/adJX+WhXAOyp4/ZKknhrcA1L0wJ95BGOSw+joOQLdycUp2tZgPQVw0
         hKW0644WfEoazB5qnQ6VTuGxfsAk7UhBjWqf0BPKJ5fjgPat6wCzhFLZu9ebVwaeTSlp
         FCqKShwULCqE6CLsb/B7o17VTneXxjdEIn3nFwti1cmzL1fda2MeV4agP2+JuWojg2dK
         1LBtjct6+bI9q5aRAbmDL/AySIbinYHoGdCl1lli607diAFP88z4gfh8Oa/lwcBBr4Vg
         RbVMSlh0zh/tzjzIe8PyzWtK+0gYg/tajB5M4X1vNCxxPWyarMF7R7gxOz/E34VFYSsj
         sz6A==
X-Gm-Message-State: ABy/qLYNr/v3C1iCexqKTBeeH/ceAk5mXyGwQ1iOSropIbYsw6rKjRPo
        J5F5pzOe15IGIU2sflDPvP6yWec72ZY=
X-Google-Smtp-Source: APBJJlGD76vcHVdp+aiDQrmqnaNncMisPhBzXqbetSaN82LMK14bB/DmhJWleKKbUhnbF65CKiCRvA==
X-Received: by 2002:a05:6808:1819:b0:3a5:a78b:f773 with SMTP id bh25-20020a056808181900b003a5a78bf773mr9654179oib.6.1690747403208;
        Sun, 30 Jul 2023 13:03:23 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id bb9-20020a056808168900b003a4243d034dsm3535162oib.17.2023.07.30.13.03.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 13:03:22 -0700 (PDT)
Date:   Sun, 30 Jul 2023 15:03:21 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 8/9] ipv6.7: srcfix
Message-ID: <20230730200321.ocribgmh2fmk2gto@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="pr4vxfijecsxii6l"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--pr4vxfijecsxii6l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Protect literals in a (very long) paragraph tag from hyphenation by
using hypenation control escape sequences, instead of `nh` and `hy`
requests.  The latter approach is incorrect for use with groff(1) since
'.hy' does not restore the previous hyphenation mode but sets it to 1,
which is not appropriate for the English-language hyphenation patterns
groff uses.  (Also, AT&T man(7) used a hyphenation mode of 14.)

Also wrap long input line with \newline escape sequence.
---
 man7/ipv6.7 | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/man7/ipv6.7 b/man7/ipv6.7
index 350397401..6253e5b20 100644
--- a/man7/ipv6.7
+++ b/man7/ipv6.7
@@ -267,9 +267,8 @@ .SS Socket options
 sockets.
 Argument is a pointer to a boolean value in an integer.
 .TP
-.nh
-.B IPV6_RTHDR, IPV6_AUTHHDR, IPV6_DSTOPTS, IPV6_HOPOPTS, IPV6_FLOWINFO, IP=
V6_HOPLIMIT
-.hy
+.B \%IPV6_RTHDR, \%IPV6_AUTHHDR, \%IPV6_DSTOPTS, \%IPV6_HOPOPTS, \
+\%IPV6_FLOWINFO, \%IPV6_HOPLIMIT
 Set delivery of control messages for incoming datagrams containing
 extension headers from the received packet.
 .B IPV6_RTHDR
--=20
2.30.2


--pr4vxfijecsxii6l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTGwgkACgkQ0Z6cfXEm
bc4XmBAAmK9DcPxvovpXWHUdeozp0rf/PQ6TjpRBjSosE7OHsTcZ5O5MJ+OwGr9A
tuH0CqXfFvyrDdC3lHLcgrXzWw1/QYkJ9xYeWQzoNGVW1/zOlN69fzJhldZnjdRG
sTFQNvCxHG3f8qD3NNOP4Ia1nKpI10TXfRfMnh9fIAGInUww1K0589ikLdfF1ZVB
4gEKVV9Hzru5YkzQBCkcZ384vswIfxUxfpvINDXTdynzM89OjZPYahH0i50dswBN
iMcSZsQjO/90d6vBd83qtqfhrgGIN2rit6YiiKfgsaeXrLYFN6oLzlrrDFLlw/mS
jpP6rgdOiz+K5nka9yencqExpc3xCluiCSMe9lIOp4I6TFd39FpMr8ErcGWLuwc1
e0I+pEtV41u+aDVGbXjLOC6YG72nvYRQPnXslA41h3qZIGV/18x2HWlei403CkNT
qNYI/58GeD83pakV/LaXYK3Q5U2EI4+5c2H2d6Ob3N4yT2Cff+B4wFBwni/bOdiD
akizhL3G0DKblb41lNScb3D4YYL3jdDOHS6uXr6T6dOVvQeHhDkIVuLah+F6rBr5
2lnm4ySK8BZI4RV6ZAUPlECXID7ojdCAS/aLOAqaikNs3qju4zcUUuJtO9Q/6dbZ
VEP7lH5JHhOhsHRZPo5oz7yrqIcilHJdxqk3ueVUcpODhveHvYM=
=ckfu
-----END PGP SIGNATURE-----

--pr4vxfijecsxii6l--
