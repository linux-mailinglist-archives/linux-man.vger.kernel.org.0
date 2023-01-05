Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7975665F715
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 23:53:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236176AbjAEWxH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 17:53:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235920AbjAEWxG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 17:53:06 -0500
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com [IPv6:2607:f8b0:4864:20::c2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D927F5881D
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 14:53:05 -0800 (PST)
Received: by mail-oo1-xc2e.google.com with SMTP id m23-20020a4abc97000000b004bfe105c580so58180oop.4
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 14:53:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/qULxQguxXiSicPHhDeOHTKHeVNT89g3mqgQ6tt3jmg=;
        b=SJw3aRGLabqsY/z/YWiOvTPfhyGW3lplVLxXH1NSbDfTTZJq/aqBSDqs2o6o659Pri
         NJhkbrpLbs9jCGpPIMdi0TfiNhISciI81a9zCA87rlqBerFQNa3M55z/r+qenu0AmfEJ
         Eroh+euYj67Ov8RNsokApvlcPsFB0TjuBapWgoO60lDgZ10n35LBmI4D9L9gBf3e+s34
         tiRSRReHWzaUrB/woe+h3pxIVUDDHSnmBOhDNfrvcrfI+YQrfeag3cbNScvH47Yeq004
         JtoZ2l1nOQzfHMsj0yZ6TS2lf2ofX3jtGrcfCfhMQG5c0oxmO/KcOC9PQNbXjri5GbTd
         0D6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/qULxQguxXiSicPHhDeOHTKHeVNT89g3mqgQ6tt3jmg=;
        b=gpDdRDX1oKBjTlwZRvZDwgBAFIWGwiWaMYn6mkr4kGRj/4UWitpEqMc+ettYLB3bRI
         QLEPk6Kq0NNbTFRH0zJ0mr+r60vxwdnzCTYkJiUrDOWAkvSusWnjtHWv1BspvWtvQ7ch
         gZYqmz3xMe4VoicEDe2RgbEFU4jGPRzgVuZzJIwNbJ5e6p1OUUY32uw0pMBr6XGsHrRd
         ZuehjnwSuupxlxiWjaT32npB6piPDLuNf906Macs+sFqJBHu9rhlv0NZC9HdO3WjqIBC
         VkbElnCW0IHEh299HEoi64JSrbHOs7dH1N8gjuvm+tEiHkRTnP35rbEVJhRoIWRJWtXt
         QYdg==
X-Gm-Message-State: AFqh2kr/Kovck56LIbT2kx7o9pGoZnLO5jcpnQ/WmQyw4TcstA9200tt
        N6dpCOKuueG0+A1UPLC9hUmNj/UnmCg=
X-Google-Smtp-Source: AMrXdXtIT3qDYSEN1QqriLg6L2214nb8WRAD+7Z68zgBPqM0HppWaJL9RGizwCD5aiUN/4JSD0Bxdw==
X-Received: by 2002:a4a:d396:0:b0:4a0:a698:d1f with SMTP id i22-20020a4ad396000000b004a0a6980d1fmr24549335oos.1.1672959185150;
        Thu, 05 Jan 2023 14:53:05 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id j15-20020a4ad18f000000b004c60069d1fbsm15004833oor.11.2023.01.05.14.53.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 14:53:04 -0800 (PST)
Date:   Thu, 5 Jan 2023 16:53:03 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 07/13] libc.7: ffix
Message-ID: <20230105225303.bpo7ot4zcsthw2gv@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4vts234etcf2aj7l"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4vts234etcf2aj7l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Set page topic in lowercase.
* Use typographer's quotation marks instead of '"' for quotation.
* Hyperlink the text "GNU C Library" to its website.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man7/libc.7 | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/man7/libc.7 b/man7/libc.7
index 5deba0a8e..43ec0269f 100644
--- a/man7/libc.7
+++ b/man7/libc.7
@@ -3,21 +3,22 @@
 .\"
 .\" SPDX-License-Identifier: Linux-man-pages-copyleft
 .\"
-.TH LIBC 7 (date) "Linux man-pages (unreleased)"
+.TH libc 7 (date) "Linux man-pages (unreleased)"
 .SH NAME
 libc \- overview of standard C libraries on Linux
 .SH DESCRIPTION
-The term "libc" is commonly used as a shorthand for
-the "standard C library",
+The term \(lqlibc\(rq is commonly used as a shorthand for
+the \(lqstandard C library\(rq
 a library of standard functions that can be used by all C programs
 (and sometimes by programs in other languages).
 Because of some history
 (see below),
-use of the term "libc"
+use of the term \(lqlibc\(rq
 to refer to the standard C library is somewhat ambiguous on Linux.
 .SS glibc
-By far the most widely used C library on Linux is the GNU C Library
+By far the most widely used C library on Linux is the
 .UR http://www.gnu.org\:/software\:/libc/
+GNU C Library
 .UE ,
 often referred to as
 .IR glibc .
@@ -50,7 +51,7 @@ there was for a while
 a fork of glibc 1.x created by Linux developers who felt that glibc
 development at the time was not sufficing for the needs of Linux.
 Often,
-this library was referred to (ambiguously) as just "libc".
+this library was referred to (ambiguously) as just \(lqlibc\(rq.
 Linux libc released major versions 2, 3, 4, and 5,
 as well as many minor versions of those releases.
 Linux libc4 was the last version to use the a.out binary format,
--=20
2.30.2


--4vts234etcf2aj7l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3VM8ACgkQ0Z6cfXEm
bc6rYg/+MXMvFC37DgUEeUvJ8sQpv6KwnieaWa+synnwb6KJMzERC0ecvNy73vrm
osUfUDDnZck3ZCzFcD0Awb6/HjqGxX0dMW9c0owEYcLrdpfswm0sVSoXZV+0+goj
lUH2TfVSG/yAjs2UlKpN3OlkAEzfrG+6DOwPvJCWd2uQ6Qr81jTzvgRPQLhAArWV
ZqfekaCVgklheb2NyN6wTk76wzlghL3xWFgIHekFeChMFxKsxAI4fbwvJVWNO3MQ
42QYew3+dVEqrV+wpyFkfGDUCfyn3L7icNdmuGxArrUt0dfOmI3wYF0T2sF79+Np
IeyFC7F38YlN6GW8FhEx4MJAWx+9+3+EutowtGQvmpgzB17lqu126wPEJluR9g4z
YVQIh4t2P07AinRUYfJEJuiU9FVsJCF11QfXdcwMtOMC77C8pzRDdPSNqVVotujU
oBYwk60y0/sDFsSVyLTxSTfGttsGz44o0lDQeNPmvVqTJ0fm6XpGhjy/y/TD4Iuy
MUEf1dC9ru4yXjOdjuRh/fj0Wyz+xDpyLy5gb0fQIPhU2UYeQIwYL1dXckUg7Bjs
6RraKd8951wLGkDhXKKEsGUU9HbfJ6iGWu4N7rhKoN1ZTVMurxk9M+RaFp4yAy4V
sW17dD/n7TQUnHbKYyfiNYFQlQRXk47F345odkXvY33VdpHi4II=
=3Gz8
-----END PGP SIGNATURE-----

--4vts234etcf2aj7l--
