Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C18A7687CA
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 22:03:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229774AbjG3UDG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 16:03:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229875AbjG3UDF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 16:03:05 -0400
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4DD3FF
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:02:58 -0700 (PDT)
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-6bc886d1504so1864069a34.0
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690747378; x=1691352178;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/ioifkZsK90P8/yS/vgH42QAuc9RY/a1Eow0jdCIN1A=;
        b=hhrzCczjNJHbZDGgjSK6Ma8r6JZV7n4z6S87Xh2eguHI/NFxuGC+tvlf4kG4aTf5Y6
         FybvqoS/cptLzGlSPo48j/ubByqvpBCu6irX7zYGytxiaNsCUzWKU24b0l0P4pK5PB6w
         40HwKdPtudeOtoTKW041nObw0zSRqj+UotSx0kmvTHQkP5Ip7HvJ6YSaOQvq14Mdxwm9
         f8V3BCWMbA5zZBFKvVn6md8xeC7zFrMd/TCUE6QIEHgQfprd9bwsibmVBujRbqRMTj1G
         8uoZTOND16E6VAj0mu066q5eVbzEqLVcCzcrOh1H4m9UAhFmm/SYitQChjkrFJvfjOgB
         vFLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690747378; x=1691352178;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/ioifkZsK90P8/yS/vgH42QAuc9RY/a1Eow0jdCIN1A=;
        b=X2sYOrObjpRkXHo1DH8wygMJIEnZbuWypllskEkDKdejeEkKtohu9G2z8F8bCbn80y
         XfCSjluiXkAHL3joTfMgUgey6hsbTlK+FVMCY1DaBbBomfJ4macZwFI496uNJflcFB+2
         XxMsZz162OkUS1GrspbsJU+gmfLLVDqTS//Vu0M7tpQTOF31qS4ktgcPLvAcRRd7WKyR
         2Se+caHm6YabnVkggxFrDtTnSxeIATppDCakz82ugrzR/LYHgPhx0toYhBZRAo3XgnHi
         tuTW/BROypLpWeGg5RJah0yUTaf6GdtYaObqL4QK/B21hJLGpIHBXb1qGIQO7nSzhDkT
         9Y7A==
X-Gm-Message-State: ABy/qLYDskPnuHWfGnjMNfmz/pExmAsn+5K1EJDziKTMhp7PAwDAw918
        JMJ0P/12Fps1MLa4yeyZ6IyfgdshZl4=
X-Google-Smtp-Source: APBJJlEY1eXF5PB/Y4Hzsn5hKk7XasSG06YULFlBUjeDbMr5R/0iQ43NLoSq4zg1IDl3m9ImPeWXMQ==
X-Received: by 2002:a05:6830:3a0e:b0:6af:7760:f2d0 with SMTP id di14-20020a0568303a0e00b006af7760f2d0mr8334249otb.32.1690747377751;
        Sun, 30 Jul 2023 13:02:57 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id t3-20020a9d7483000000b006b96384ba1csm3476224otk.77.2023.07.30.13.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 13:02:57 -0700 (PDT)
Date:   Sun, 30 Jul 2023 15:02:55 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 6/9] setnetgrent.3, unlocked_stdio.3: ffix
Message-ID: <20230730200255.fmpcwshdryxdq6l5@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4fgyoddb2yunutxp"
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


--4fgyoddb2yunutxp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Stop attempting to manipulate adjustment outside of tbl(1) text blocks.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man3/setnetgrent.3    | 2 --
 man3/unlocked_stdio.3 | 2 --
 2 files changed, 4 deletions(-)

diff --git a/man3/setnetgrent.3 b/man3/setnetgrent.3
index 8a1ab76ec..8fd592766 100644
--- a/man3/setnetgrent.3
+++ b/man3/setnetgrent.3
@@ -34,7 +34,6 @@ .SH SYNOPSIS
 Feature Test Macro Requirements for glibc (see
 .BR feature_test_macros (7)):
 .RE
-.ad l
 .PP
 .BR \%setnetgrent (),
 .BR \%endnetgrent (),
@@ -47,7 +46,6 @@ .SH SYNOPSIS
     glibc 2.19 and earlier:
         _BSD_SOURCE || _SVID_SOURCE
 .fi
-.ad
 .SH DESCRIPTION
 The
 .I netgroup
diff --git a/man3/unlocked_stdio.3 b/man3/unlocked_stdio.3
index ba9f3dfa2..a37cd0675 100644
--- a/man3/unlocked_stdio.3
+++ b/man3/unlocked_stdio.3
@@ -59,7 +59,6 @@ .SH SYNOPSIS
 Feature Test Macro Requirements for glibc (see
 .BR feature_test_macros (7)):
 .RE
-.ad l
 .PP
 .BR \%getc_unlocked (),
 .BR \%getchar_unlocked (),
@@ -97,7 +96,6 @@ .SH SYNOPSIS
 .nf
     _GNU_SOURCE
 .fi
-.ad
 .SH DESCRIPTION
 Each of these functions has the same behavior as its counterpart
 without the "_unlocked" suffix, except that they do not use locking
--=20
2.30.2


--4fgyoddb2yunutxp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTGwe8ACgkQ0Z6cfXEm
bc4nMBAAjFJVhpw3LFrSuvUSkAkkQKGGUdRdZio7wQAjrnIAj5v9AHCRkZAp81O3
RbCac/L2L7Z9c5d+N7n49phsZ+zjBkX2nx8lLYjlAt5X0SMMSsIyxQ5uZqyjnyix
bqaV8YN5aZ8NO+/kkeNyYErRZYmEWekwH/8gsbVvcrNWAwB76qg0P5YwKIxF/Ao7
ldwJF5WKbCBD/r4lSH4i9J30gENCfdvbRg7No7FUFPXqvlCWpIQTnOEYaaXOlyGd
kBK8M9qt60/wZJ1rAgfk9nmZWfxljkXoci3cv5D3BsflktibDM0EVHQC7yHNvqoQ
P0BgsWUmW2HcXBw41S76eZzAmKrxDEStHSzqQOTCw2HCEDNyWMrlYeomfw9vU/aH
qSKANZkJKFT7Eay7oDSAEkDSx4kavYvCgg88r9TUwr1HA45chtaDO+TeX/MRVJlS
56gXpnyLPBxWVuwHfx/Uet6W+SUnFyIA4dD4qZKKOJ8Z+5rCxbYqQDkZ/EPuqf3t
+sZ9piOWz2Xttt/zDmEErfuavoC3A3Uq3ysttvy7NTQgTXD2c78a2NxiPuqz6lqe
5Jo4Sm1Ifnla9Ah/laz5fb+iDNk3n23E7MwAKLGqSa2zPAKrneo7GL4sssA5IonW
BjUmDfDeSJdZcc1ivPMh8nB6vNpJ7uvzKYVnTXrogRQ+Zx6Fvoo=
=bDuD
-----END PGP SIGNATURE-----

--4fgyoddb2yunutxp--
