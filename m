Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F163660D72
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 10:55:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229972AbjAGJy5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 04:54:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236836AbjAGJyh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 04:54:37 -0500
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDE4887F01
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 01:54:33 -0800 (PST)
Received: by mail-ot1-x330.google.com with SMTP id x44-20020a05683040ac00b006707c74330eso2283673ott.10
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 01:54:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LBo8BLofE16ihbohEZ8pXgUUFF/yPGcVWzi28oW57mU=;
        b=NjoMf1kPjs9HeeEZYrO+xtcVAO0SlViICUagX4N7NPP8QClrnaR2hYmap9RREejw22
         T7V1IsfuFZLApU4pHuGpwhBbbZ5NBam5bcAzVN15RBgfmCveQgFzMy2sqhK55b9o+dsl
         joxyxsUEGi7NDsmtX6bAxye9le6dWwDu7eSweCDPm1cgoTqD8oqUrS3R1RN9JHrm/Cfv
         /+tWm+nbookvC/Ixb2Thyz1/PSIDkyWFCrlcULd0vgCD2C0bjsH1GUkupULu0pktJwTb
         5tBdKTrrlgGCe2gYgAbaqEIBWG4f8MajpG0eebpFUDf7bZKEKAq6b26kci+pVNawm4h5
         0G2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LBo8BLofE16ihbohEZ8pXgUUFF/yPGcVWzi28oW57mU=;
        b=x8mIz/UN2R+nvv8Ko1mBAHoSjmNiP3Onq4TQNbUZnUAhsz1bQg5CNYhm6y9jVvz8v9
         d3Y7vw7c0J4tBXgsHPbA0zp3ETiyvyc9AaH08JeR7ThzMz4U7QaOP43UX/WMBwJB1ocB
         YfEKtQ82BatABRdV17HJ3+fcWvBCG2YFFsHorv3lEGT1Rg/Lwv0YgaICrzB9y36nrm/u
         bHS50L9XlYWdEEN+BAuuxdsS51/mRxhOo2iDsAEYkueUFG9CA1Yc4Zd1RnOMpPMk/JdR
         WTJxONyco2CEGROtKoAFRQ/zcK06tr8BLVgDAlatUhhYbey47kLtS+a60oYhetnOUTT2
         KSiw==
X-Gm-Message-State: AFqh2krJ0RZa5j1RbHfzpeGnAG7CKcFsfDQJVreaC6heSX6/6o/bPtlz
        9BW+f2RaPDwj1PB4vjdVKwYW8pm1MSk=
X-Google-Smtp-Source: AMrXdXtfbjkwzHdljo6Xzoq2C84d+IWVSs74GfrVoLZs8c6h9JCvHl6cJCIJ+EE4VXfNonud/0t84A==
X-Received: by 2002:a05:6830:612:b0:670:97e8:bb88 with SMTP id w18-20020a056830061200b0067097e8bb88mr35874305oti.28.1673085273164;
        Sat, 07 Jan 2023 01:54:33 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id d21-20020a9d4f15000000b006704589eb54sm1634960otl.74.2023.01.07.01.54.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 01:54:32 -0800 (PST)
Date:   Sat, 7 Jan 2023 03:54:31 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 03/10] libc.7: ffix
Message-ID: <20230107095431.6rnc3hczostxl2iv@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="6sa5ibacsf6cjvpn"
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


--6sa5ibacsf6cjvpn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Set page topic in lowercase.
* Use typographer's quotation marks instead of '"' for quotation.
* Hyperlink the text "GNU C Library" to its website.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man7/libc.7 | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/man7/libc.7 b/man7/libc.7
index bba49da42..43ec0269f 100644
--- a/man7/libc.7
+++ b/man7/libc.7
@@ -7,17 +7,18 @@
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


--6sa5ibacsf6cjvpn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5QVcACgkQ0Z6cfXEm
bc4ceQ/+IAkQuhD42x1CJD+WX0bUZgbLJbW24LTxfvb9sdPmPSs7cpk4c8fsQhOw
WFlxYY6AMoo0NYpnP+l6uTiQ6oyMrjAMr5tXpIV5/j+IKnronoy3xvbvq2aEPMsh
TX0oimXdETqKIsB4Axv2kKz+/C5uDybNEHZMmRZ7oIOY8oDTeC3/Nz95ghKePPuL
pzPMH2Hrx36f/K69reWpE+3ghfi2b+2UiK9+wf/T0GwGQm17HK4baIcHuOiy71SK
WLmJfq4kTQKAIDkRx0jp2zEZZjDC3RKQNrdy2cUteN47/iKFCG12yT45vFt4MNSC
wk7kv22HOWsYajYqteQavUbBlR5UEN+UwHb9ye+3kRA7inndHqLL+8Jzr4TC/XcU
noRn7oLG/3MZLeKpkKUBOHkLk5dFHPLyYMWd6I/f3MQ137HtMKm+X2irwOfGi1HO
91ENc579auI+f9zRYp2n6r1we3gTq1ygLPXizVi0Gqisxxb0uLJj0cXgC4v0VzM5
4QNSgq88FsLGcCHRECQBmjv2B/oYO8UaPQ66mgnU0roxmH/n4ShEZ16c8c9zT+B3
n2iYP6WRGYrobmPeFUQnDWAuxRWulAcmnP9eBLXVHJDYr3Lu3dOpuCx+dHoH4y4H
Q0Nva1JRvnIwOU9vG+Tqe29aEEKEQvPgMyRpMVUPHbT+BcEcsC8=
=jnmN
-----END PGP SIGNATURE-----

--6sa5ibacsf6cjvpn--
