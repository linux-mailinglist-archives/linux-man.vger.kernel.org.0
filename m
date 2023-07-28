Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2BDD767D43
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 10:44:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229457AbjG2Ioy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 04:44:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231355AbjG2Iow (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 04:44:52 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E8B1449F
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 01:44:48 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3a3ad1f39ebso2584054b6e.1
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 01:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690620288; x=1691225088;
        h=cc:to:subject:date:from:resent-to:resent-message-id:resent-date
         :resent-from:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=HvHot7FQYGB+QG+QU7eRzV99w7VxdegnhKZQU7FA5h4=;
        b=Vr6y02MWqBwfZaucfGo9llm7cEYwEAKlLKDXuO4WCS71nu41KaJRyKAvOd9Db0BVVW
         xS7QHC13nfR22RAicbv80E9+s5kMRMGJzp1bnln1SRrtED1Uv5Japmm/Zrb9LGQ7V6Lz
         yksEr/iQhBBG7cWN9LFFcmhyxg6Wtzr5C8MiFxm6eW6iCzzkQ/E8+lfJ5HqW8K47yo8k
         OBnXyp2xJ7rwWlYO1KhoODIYLotypf/SV/JYN/Znj2jFC9J5t1wHEYPoRTYMBfPVBEo5
         jYtK6yHKsGcBgRpxVT4Uy4h/KgOmQIdBwy2yg1egkih5LF+TbNcPjqNKK2TEkKyMtyLr
         16Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690620288; x=1691225088;
        h=cc:to:subject:date:from:resent-to:resent-message-id:resent-date
         :resent-from:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HvHot7FQYGB+QG+QU7eRzV99w7VxdegnhKZQU7FA5h4=;
        b=WkvRfFqjZbf2a2SQEUxuw4nKWVLx+Y8diXy253an/3F9Qad4Ka3+ITGPPa4GFQFPCJ
         HVe77Q9DGqOG2ODbUCGjC32PxItQDXdl7r46e7LgG36tikAXFqc7Iva6g7swF9zGflcU
         OuFJPNF4qGR/C+nN/7KC2VmjK53XIyTodTFd6WGKq3aPcfiuyocBOg08rRJMmv3uFtKY
         TMblN5BLU82jn5orKEGSU1o5Gdx5hzU/K4CNRHj7L5XzztyavLeSTBZplsR9RBvRSloQ
         X7v4q6dyrdmWl7BSt7oY5v4+Wfh0WQ28zG0TddDQJijsLc34SweN/VRI5zlOzRCws8cO
         seYw==
X-Gm-Message-State: ABy/qLZcWkCTSMzR9a76TbRibZAR/bMurNCp6A4hQ6wABoAsrihjNVcQ
        acIt0vjdsxcwLXgttZmkcrXgIa5sf2g=
X-Google-Smtp-Source: APBJJlG4BLO4oQubCG74c2GbN0HEdPys296ZEkVYRBqBFYaOguDls2VdwGBKfpI4rnbwHgkQjIxfvQ==
X-Received: by 2002:a05:6808:128b:b0:3a4:8ecb:185c with SMTP id a11-20020a056808128b00b003a48ecb185cmr7595954oiw.22.1690620287556;
        Sat, 29 Jul 2023 01:44:47 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id v16-20020a056808005000b003a59c67286bsm2410742oic.47.2023.07.29.01.44.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jul 2023 01:44:47 -0700 (PDT)
Message-ID: <64c4d17f.050a0220.3a505.03ec@mx.google.com>
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
Date:   Fri, 28 Jul 2023 12:28:06 -0500
Subject: [PATCH v2 2/2] man.7: ffix
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

v2: Use heading markup that doesn't confuse Git.

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
======
groff 1.22.3: BAD
groff 1.22.4: GOOD
groff 1.23.0: BAD
mandoc 1.14.6: BAD

now
===
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
-- 
2.30.2
