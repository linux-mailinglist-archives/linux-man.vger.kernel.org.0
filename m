Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 393085852AB
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 17:29:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237607AbiG2P3Q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 11:29:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237700AbiG2P3G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 11:29:06 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E2F586C3F
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 08:28:40 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id j7so6432676wrh.3
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 08:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=/0Qh+aeNzLG+2AcfAKi+82KqNr3TGCSjsvgoeq6p+RA=;
        b=X4SnWfGGDNHibTxlZwz3wm8WwRZ/d/nMilZHd+GSqS/lrMAFNJcePVJUweY1QTLXI+
         va/K43pZE0AEEE9cwv0BA54b6PTUM0xdvpAst+/hCvSQeAjQ8qZCU6WCY3Hkq9hJLbh6
         HPnmTG7teejlJQWZ3k27m8PXh2dDTEuKg9mqhucCYOx8CD0UxyH8c+rXTsMyUrrw7GCt
         pGGNK3GMVZT6W4xFBLSoqH21m3W9qV97Kcrev49GxlyBLTQ4KTCDFcwbej0sATjy263C
         4ZZYAJU+JbHnVZWf9VltpZAt8xSQHmFnQvCw7FCVj8lydaxAXx0OyRUGae0IQpbsg6oR
         z8pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=/0Qh+aeNzLG+2AcfAKi+82KqNr3TGCSjsvgoeq6p+RA=;
        b=Di4/72lSYA3UnyDL43k9YEyeC5VxxrGqnrzYzOgF3kRGfMOpx4rFv+UJnDqpL4Mzdu
         +lZiXHmnmhnwBtGOcAj3kZ6tLUB3KTO6llB7jTZUU/4x15Ebm7GLhRodzoqDueSEO/Ji
         SIONcjQQ/sI4S8MjY/DxvuCYfUuXz+C2BoIgIwzRtDylwup/oetpp9Ig6gYfGi+Xs86A
         iSs9QROQc1pUIqsVvZxNBF0JUVGIONK412/XOsOGmwJWRuFWN6O4j45q+hgFoW3cNblh
         X8aYVyV3a/5yOcdw23csj7FvUYt1B1nBliCaBsgF5o0xZCf7nemWssf/H1YtIIUKsIK8
         mcGw==
X-Gm-Message-State: ACgBeo0/BRY1V4MiSo8VMS7ANpUA4TzRL8T/gElNCe6docp+JRgP8nC5
        8hOp7IyxFd2iMA1pYzW8TUJIwypMn1Q=
X-Google-Smtp-Source: AA6agR78ZwRDA1J3sog8oPoizZQq6Z/arbsUyq6FroM0PFXtJ534IrYR1cE4heXDV4ne+Kd1eNzO4Q==
X-Received: by 2002:a5d:6609:0:b0:21f:ff6:9090 with SMTP id n9-20020a5d6609000000b0021f0ff69090mr2627272wru.30.1659108518865;
        Fri, 29 Jul 2022 08:28:38 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id o12-20020a05600c4fcc00b003a31d200a7dsm5208579wmq.9.2022.07.29.08.28.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jul 2022 08:28:38 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        =?UTF-8?q?Heinz-J=C3=BCrgen=20Oertel?= <hj.oertel@t-online.de>,
        Ralph Corderoy <ralph@inputplus.co.uk>
Subject: [PATCH v4] open_how.2type: ffix
Date:   Fri, 29 Jul 2022 17:27:38 +0200
Message-Id: <20220729152737.27770-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220726202643.49890-1-alx.manpages@gmail.com>
References: <20220726202643.49890-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1129; h=from:subject; bh=b6AO1LoL7oqcfD0mBHts/gEdmCNuLdB30UHde/YlVjY=; b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBi4/xj4CH8ZAdfpQ6snV8hw+IAnd0zb1N+xjQwDgr8 acD2rtWJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCYuP8YwAKCRCejBr7vv/bMtbEEA COzn3hkg6xU46Ajp7VzGa6mgMcssX3ASh3mmAXw2xekkjLaqEMRIA/WF1jo3xLPVlUgzjDbzcNTrvm ScFb/5fwlcfvSOmvlfN4cDmG8Pac3qUQbmpuRNepA6ZBIIGkrhxZmHexN9AHbryAdRZn89GFzjsJzy UbMQ9HotLwBxskIsIY2o/UwsN6CVa1z4ADgh0jafzh+dK0VhzKn0aFC5ZmzafZnMAJa9cTfxHi8BBB Ck20lWkb1BscyNTeo52AHE0CCUqN9SdgEDLP4sOtVMFRyqi06oLS3fILKZe0EwYXpHNcYcDeXB1NR2 RRjDdteeykb4FirFU8jlr/kRAHngz/rGU/bjuQhzWNR3T97MHI2KTId9FRLIXQUSXF8feREhGdl9Q8 Dq6Qc4Q2gK27J5BZUAGoyaoOGiEMZWsYCmkX/TICO9GYyn64sVH4Fxem+Qpy1rapMT8Tij/3aIJ5QD gF0mYr0O67OFV4Kx+MFZE/Lcj1ij8NCNR31PmPk6qvsihUOKwPW7ceBxLprvXEchmwnyGQ5gF8NaIi xHN64pq0y+wQFb8Uy8S166NBwIPVX41ZNxl7fNfNdnWupZv+YX9Wq3KbxKdhfsmu0q5pmtGdjnBR7x EjJp3B0NrvGqc0Yym8zJWi9gCyLOtkgeVf+KuYpYLXSye0B32zKJg5zAQ14A==
X-Developer-Key: i=alx.manpages@gmail.com; a=openpgp; fpr=A9348594CE31283A826FBDD8D57633D441E25BB5
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Format structures with tbl(1) to improve alignment in
proportional-width font text.

Reported-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Heinz-Jürgen Oertel <hj.oertel@t-online.de>
Cc: Ralph Corderoy <ralph@inputplus.co.uk>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2type/open_how.2type | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/man2type/open_how.2type b/man2type/open_how.2type
index 570bc9b22..16f289820 100644
--- a/man2type/open_how.2type
+++ b/man2type/open_how.2type
@@ -13,9 +13,26 @@ Linux kernel headers
 .B #include <linux/openat2.h>
 .PP
 .B struct open_how {
-.BR "    u64  flags;" "    /* " O_ "* flags */"
-.BR "    u64  mode;" "     /* Mode for " O_ { CREAT , TMPFILE "} */"
-.BR "    u64  resolve;" "  /* " RESOLVE_ "* flags */"
+.fi
+.RS 4
+.TS
+lB2 lB2 l1 lX.
+u64	flags;	/*	T{
+.BR O_ *
+flags */
+T}
+u64	mode;	/*	T{
+Mode for
+.BR \%O_ { CREAT , TMPFILE }
+*/
+T}
+u64	resolve;	/*	T{
+.BR RESOLVE_ *
+flags */
+T}
+.TE
+.RE
+.nf
     /* ... */
 .B };
 .fi
-- 
2.36.1

