Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E972C7687CB
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 22:03:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229472AbjG3UDW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 16:03:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229873AbjG3UDV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 16:03:21 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E522C12B
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:03:11 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-1bb5ce75e43so2187797fac.3
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690747391; x=1691352191;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0HTtnvlOptnXRyB6k16oI3Qln7/JFjRSOTloOzkvgfk=;
        b=JIDdAYljAwU4PHfhqzF62OF9cCKEZH4wsyezNUZ3aTKkETEhF4IzhrFMvxcdaV0jPx
         GXDlKeSQFVG42bCTY/Jtt7SvUPk9cT4Pfxp0spjdvSM0NQpVTyx8YKBxgUfu6aLm8swA
         twhIcYGulvX7qDw862Lsob0VgyMg0Y3AsMcw0xMIMH3UyvsJ6+KdKcDgrWqSoDbs8c2g
         Zf6Kha4lK1otYDBN2AW4W1gW8LHmu+KA/aNs9OsyKS1mhzJJV6ydMwUIFMAL+dwa+v1L
         k25KZIeQ3hBWJ9V0Mo041ttuFMtwftAUbHZ2FEI5mnsqzIuK6PAnn72gvcGtpu8Xddjv
         Ii5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690747391; x=1691352191;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0HTtnvlOptnXRyB6k16oI3Qln7/JFjRSOTloOzkvgfk=;
        b=cf06v5u78ragxPmzdVeHJQuQ8F54J96TpLboyAktzccSEbMAMDvQ4/5quJgGdEXu5s
         xbnSIdSZx1DrNpy5yNaLBjViXJIeDB/IaAcwxV9vXYHZBD2Yf2BAoDv0lxhVDBhewrag
         DjdBNcr1Ad7tLt6H0TygJz5r5LjhOoAm5X4VYTeQbv/r75uErNuWcvcfpfYHkSJC7r/n
         PYl05cteTlxrfek87XQJ7li070qT+Cusl9xD7F1iATwiSvVisDW2tQZOIHJeE8pM7nzq
         2T0HessEgGxyKGIoMZkHXycQ+Uz7XciUhE0OWUqoWETl7XYLNVmSvYxleTe+k3aahKm1
         ksDQ==
X-Gm-Message-State: ABy/qLb9P+U87Hz41iCPWeNIKNtWTl3NgohlHnBsDBp5MUJR/Qkd3zBB
        JCw9R1luGy6aXRv5KzUx3GE=
X-Google-Smtp-Source: APBJJlEdmxsh3mI9O1GEzp7Vpkm4gJOSiod0y0+Mw54phhJwvRWYZ2UXJCG3LZY09WJZMCOu+H2VqA==
X-Received: by 2002:a05:6870:5613:b0:1b3:ef56:270a with SMTP id m19-20020a056870561300b001b3ef56270amr8236557oao.29.1690747391148;
        Sun, 30 Jul 2023 13:03:11 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id t21-20020a05683022f500b006b71a4567absm3515492otc.58.2023.07.30.13.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 13:03:10 -0700 (PDT)
Date:   Sun, 30 Jul 2023 15:03:09 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 7/9] termios.3: srcfix
Message-ID: <20230730200309.dmu36w5swirs5apx@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ztqb4koba42xumse"
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


--ztqb4koba42xumse
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Continue commit 9e54434ead, 19 July.

Fix an anomalously bracketed table, not detected by my sed script
because of the intrusion of a *roff comment.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man3/termios.3 | 2 --
 1 file changed, 2 deletions(-)

diff --git a/man3/termios.3 b/man3/termios.3
index 6f0f94408..b5ec7edf8 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -1089,7 +1089,6 @@ .SH RETURN VALUE
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
-.nh
 .TS
 allbox;
 lbx lb lb
@@ -1122,7 +1121,6 @@ .SH ATTRIBUTES
 .\" glibc manual says /bsd indicate the preceding marker only applies
 .\" when the underlying kernel is a BSD kernel.
 .\" So, it is safety in Linux kernel.
-.hy
 .SH STANDARDS
 .TP
 .BR tcgetattr ()
--=20
2.30.2


--ztqb4koba42xumse
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTGwf0ACgkQ0Z6cfXEm
bc7wvRAAlF/sQHHuZXg++b5DN/Vr8pT5ceBCeXymfqcLyz9mx8kOFLHTMD75E87K
e4ULE+izZDLjIPdMMDQkvnT4bpJSXUc3uhvY4r+jHTwKu9fTi/PGa8qZBQe/qJuF
hbZJtMgzPAyZtLfxWWgQt2R5YfdkH2jgfqmcokQd5CuSWn4MWNafrkV2eR7H+yvj
OcbG2jZQCQp2CNZv9FY8+6ShZL+/NxJ+C0l4iktpg+mDF7Yc1tCymQq7aJdSGeyE
bQldJzmo5Ha7u8UOew7pZvJO01wtK2ksQw0OA75x3mzcTL8DJla+tO+0CfCsoRfm
FYmjwWJyqhfwGp7SvIEGI7YXSStlRJqZwAM66cK3C5iqUxzW1BdxbLX10bGy+CP2
Pu7YRiDBgQ2Y7zhvlBIGrVgeDAfVhs8oPU0DQg5ctOJcmcr+EGJcov1JOnLDsKex
8Qj8anfyN9voSDdgZ7Q7v6m2PvIm4XFslWz8bn/s9JjosGSRS0XqB3wRGmAgrv06
Qxy1GOhsOBUy2JzNygjfVp9qlT9xWARkmxt4hJW6tQRtMNxATH8hLXnTfE9XZBnw
N1FtYGaqQVokwtrr9avzYdzqeEhvLb9qjcx+RRFM6jZNWvnfrp81FELOO93a5ZnD
JJtAkYDIb6MaBDMULCd9PZUhcvdtRJtO358M5bFnmjwflzlYUgI=
=GQpi
-----END PGP SIGNATURE-----

--ztqb4koba42xumse--
