Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89018767424
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 20:02:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231345AbjG1SCD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 14:02:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229704AbjG1SCD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 14:02:03 -0400
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4649219AF
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 11:02:02 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-1b449890ef5so1853255fac.1
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 11:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690567320; x=1691172120;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+rCt9J16w79Mbc0ga8X0R9r8rwFdnFJaBETMqhAPOqg=;
        b=Qa1YtyP7O7lpraG83ZNTJWE8YYSbJrOmq4QHf4Pm8ouXlDqQi/rVb+5NJXUJC3+Ii1
         mf62gdPYDoFZfkeELcPrmCSPTx8GuY3TxyciLxolmRe8XjwOgqxzSEts1WjepLGESSxd
         NR2xCsxZ1bF4bu0TLLsqNXJnEhLZl/R/n/0E3VG/gO2lzXQJyHEEBD7SOqDkRO7wArO4
         wBFiNR3rrELpEfZwoGXjnhOI3URPlkVv+fhEvKjOZpGIjGIeQ9Fk1qPnmTFHR8NYdKOm
         Nm8Rq4WRbd45B7NUHJxI7v0KOj8i60jK6mRPf0TywSrhM/7fWQQgibTVWy/qpFbdDwhf
         8kRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690567320; x=1691172120;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+rCt9J16w79Mbc0ga8X0R9r8rwFdnFJaBETMqhAPOqg=;
        b=jeh/XQYnFi0AkUeW+ZdJWCH21Wnjim8k6ETBlBTwbv2lGvpuM7EhjTWAtQ79Iqsdm2
         JLnKpQysOBr1/Xc/44I3FAPd+L9pu0ZC1jlfCFqLlgQrK987dTArhEy3cnJWL4QMt+ax
         h7CkN05ADC+HnEPnFaAfP2fZHafUSCs60m6lOFb4RirOCT9bJ7m/c/XOO8Vx5fysvopO
         4DW4RxGnfGLOHwiADEYhgQTo82h81YpYq8UxAUcBhHhLIp3wQHywtXsVMzbXETHoU2cU
         Sqx6rTExpW9cxh+CkqSMuBAs0lefwyjgtJTBcZOnBLM6wyb84nB+1Yhj4ON1s9bADEuW
         bONw==
X-Gm-Message-State: ABy/qLa7TcuKpNoQLCcE66ErAdBWLlR4SgBWe8CXLfUi9FZyhlE132XL
        JXUAt5q01BN0izZfrhloFpUEe6N3JyI=
X-Google-Smtp-Source: APBJJlHCm/384YGswb1DzlZMm/ElW+uU2KXAMoT2oWU+4FRqqcdJTyJ9LFT0njPCRUkhjlt3S9BqPQ==
X-Received: by 2002:a05:6870:568e:b0:1b0:5141:4c6e with SMTP id p14-20020a056870568e00b001b051414c6emr4053747oao.26.1690567320554;
        Fri, 28 Jul 2023 11:02:00 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id h125-20020a4a5e83000000b0055975f57993sm1876691oob.42.2023.07.28.11.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jul 2023 11:02:00 -0700 (PDT)
Date:   Fri, 28 Jul 2023 13:01:58 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     alx@kernel.org
Subject: [PATCH 6/6] man.7: ffix
Message-ID: <20230728180158.zfas4r33u5rsun6a@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="hzi3vdqtsvgeljub"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hzi3vdqtsvgeljub
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Clean up in preparation for "MR sed".

=46rom 5ce2b67f5e4ba0f52291f515bed0891d7a56d2ea Mon Sep 17 00:00:00 2001
=46rom: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Date: Fri, 28 Jul 2023 12:28:06 -0500
Subject: [PATCH 6/6] man.7: ffix

The `\c` escape sequence works in an argument to a macro call that is
part of a paragraph tag with font style alternation macros, but not the
ordinary font macros `B` and `I`.  This is because `TP`, `B`, and `I`
all set up input traps; the six font style alternation macros do not.

The old formatting would, for some versions of some formatters, set the
"[trailer]" text as part of the paragraph body, not the tag--like this.

       .UE    [trailer] Terminate the link text  of  the  preceding  .UR
              macro,  with  the  optional trailer (if present, usually a
(and so on)

This was a poorly understood--and undocumented--interaction of man(7)
features until recently.  Gory details involving nroff on Unix Version 7
(1979) running on a simulated PDP-11/45 are available.[1]

Here is a comparison of the former and new markup.

before
------
groff 1.22.3: BAD
groff 1.22.4: GOOD
groff 1.23.0: BAD
mandoc 1.14.6: BAD

now
---
groff 1.22.3: BAD
groff 1.22.4: GOOD
groff 1.23.0: GOOD
mandoc 1.14.6: GOOD

[1] https://savannah.gnu.org/bugs/?51468
    https://lists.gnu.org/archive/html/groff/2022-06/msg00020.html

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man7/man.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/man.7 b/man7/man.7
index 258ce25da..583fe354f 100644
--- a/man7/man.7
+++ b/man7/man.7
@@ -249,7 +249,7 @@ .SS Hypertext link macros
 .B .UE
 macro as the link text.
 .TP
-.B .UE \c
+.BR .UE \~\c
 .RI [ trailer ]
 Terminate the link text of the preceding
 .B .UR
--=20
2.30.2


--hzi3vdqtsvgeljub
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTEApYACgkQ0Z6cfXEm
bc4zbw//ThMJRXs0JQhTypFu8aCVkiCKDHNoneWcaZ+1IlIrbV3pWcY7MpUeRMgo
hDP0tBqiGyIeUpyOd0/b7n5N0QA8wDKAFZwo9eBAUIRLwGuvFq8jGpBC5t981PEq
2lFF8RANbaaDwPzSqxk+MVlmBgZMv1xnunr4YgSJoTxi7JX/cowYrm9+9CJAlPdL
fFY9ebnYdKJr/KKha7tpMkeHSNEqtePI0AMTdbslvx+8f4TelL+z+oxLOg6E8omi
z1kKe9WEVYLyBTu2xVUPjZywa6OkuoX3aZg+txg5tBEnG6toHbMBv5mpArCQe134
T0X2QHSs6QhUYJaTOW13hQtVa16I2PVZcOhP43wWluHm45gZmWcHt+nrkLJ4BS3g
YlAXG7mWopBFH97QeBElnNUN8MlDAzuB9whN1+4tGMxqFkAIg/GfVyQAq8YI7OXE
6TySs/clekR8w8xr90spA7YYZpXKZPJ+XVItwVCDz/gKmhcumQ2JCcJCtUPu9DoV
IRiR7lp04jGu6PKbZLMi9uUu0UquPyNRuZZPIct51JoBWFd8PEwiFs7/GaE8dI3m
SeGUyHBfWiY7lIJjEB6KZ37Wxt0CpThqDrfpihbVKw+QfB2vuflpC3kFmSzwDZ6E
a6Yrl7pM1rS8j68qM363ZsnJL6FyWCWrGLZ0kkqT4/v/fPaOZjw=
=rHAY
-----END PGP SIGNATURE-----

--hzi3vdqtsvgeljub--
