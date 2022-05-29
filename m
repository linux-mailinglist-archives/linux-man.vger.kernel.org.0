Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10F9A537296
	for <lists+linux-man@lfdr.de>; Sun, 29 May 2022 22:40:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230098AbiE2Uk3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 May 2022 16:40:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229782AbiE2Uk2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 May 2022 16:40:28 -0400
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B22A1B19
        for <linux-man@vger.kernel.org>; Sun, 29 May 2022 13:40:26 -0700 (PDT)
Received: by mail-qv1-f41.google.com with SMTP id v5so8452024qvs.10
        for <linux-man@vger.kernel.org>; Sun, 29 May 2022 13:40:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pQG/wxJHrFCtZzyT//DFS68PeenXkIBHvqUHNfOYKjQ=;
        b=w/WDsH3UgBUH+LSe+oeqny2DffMQJVpayxSSVhwan/gtkQauXTIfcIoOupoaNYwh/7
         cy4D8Xnjlh1kWEBV1nUmARlIN3A2rwt3749ibPW0qYb7SqeML1cciwWNTT2MdZuZn0QS
         pMyTcTu2YlOp8XRJZ4eEzxWUQzjw6OpTLaGkHPTSCe5PjWw15ihC4r3Qft8e5y8iahY8
         3E5w5v5JqAiIrvTcpsymwOQgrpUsM3jNALRkzimXqyvSd7IeOfZZqYEUdAUdpJIc6PrF
         NB1OsBIphmaZUv+6KkiD4EbEbc4nlFkG4TQwuQ7E1LIzbSfQmGX/X1veq9SKkx1vq4EX
         G6aA==
X-Gm-Message-State: AOAM533ud7Lr8MdAEXVGCBJS2o+PVczF3xodbr0PIgfj6jWDQDaLwoHU
        Od5/qhbTM3EG7T1nvR+cC0c=
X-Google-Smtp-Source: ABdhPJw0Zq9Ua5TRfRLUr3jEc7NWKjvTR1qi/t26Q7Wm1MalmVAV036EtyvOOxXZMEVup9s44NfzgQ==
X-Received: by 2002:ad4:5de2:0:b0:462:2cb8:2146 with SMTP id jn2-20020ad45de2000000b004622cb82146mr33010260qvb.110.1653856825793;
        Sun, 29 May 2022 13:40:25 -0700 (PDT)
Received: from localhost.localdomain ([2601:184:417f:5c0a:18f7:8cb3:d465:4430])
        by smtp.gmail.com with ESMTPSA id q11-20020a37a70b000000b0069fc13ce211sm6490103qke.66.2022.05.29.13.40.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 May 2022 13:40:25 -0700 (PDT)
From:   David Ward <david.ward@gatech.edu>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     David Ward <david.ward@gatech.edu>,
        Michael Welsh Duggan <mwd@cert.org>,
        Nadav Har'El <nyh@math.technion.ac.il>,
        linux-man@vger.kernel.org
Subject: [PATCH RESEND] poll.2: Set fd to its bitwise complement to ignore
Date:   Sun, 29 May 2022 16:37:37 -0400
Message-Id: <20220529203737.290-1-david.ward@gatech.edu>
X-Mailer: git-send-email 2.35.1.windows.2
In-Reply-To: <20220516023344.803-1-david.ward@gatech.edu>
References: <20220516023344.803-1-david.ward@gatech.edu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Unlike negating the fd, this works even for fd 0. It is a better fix for
https://bugzilla.kernel.org/show_bug.cgi?id=79411.

Signed-off-by: David Ward <david.ward@gatech.edu>
---
 man2/poll.2 | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/man2/poll.2 b/man2/poll.2
index 205468f3e..cd65bc6e8 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -83,10 +83,9 @@ field returns zero.
 (This provides an easy way of ignoring a
 file descriptor for a single
 .BR poll ()
-call: simply negate the
+call: simply set the
 .I fd
-field.
-Note, however, that this technique can't be used to ignore file descriptor 0.)
+field to its bitwise complement.)
 .PP
 The field
 .I events
