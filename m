Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D914274C86B
	for <lists+linux-man@lfdr.de>; Sun,  9 Jul 2023 23:34:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229889AbjGIVeC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Jul 2023 17:34:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229848AbjGIVeB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Jul 2023 17:34:01 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 808ECAF
        for <linux-man@vger.kernel.org>; Sun,  9 Jul 2023 14:34:00 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-c4dd86f5d78so5619165276.0
        for <linux-man@vger.kernel.org>; Sun, 09 Jul 2023 14:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688938439; x=1691530439;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HfuCbMHLRsJENyGxMfIYxaAnAZxg/OCa38IpAzXGCKY=;
        b=hSaP9Pz6gcOuoMn0zyZRWuH+VKDmGJ7OPi4NwypFfBlzd3W++qIWAuB73Xb9Jis9tB
         Q7YbAjSht790TopVEI6Ziv03dMKnr9TO4t0s7HOywJfmmXF5csvWRA8MxPnqBwaZ/CsZ
         GKr7CTnzU3iuG4zN8QIpSIMrLc5DwWnpCbt2Jp/prhJQSh3LDeHs+plnAvr2LS9JaG5m
         bxqGIYxrhHP7dz0aACib8a74LEvl7eHSulTPuXboEOZR24yx9lrmQX4THbrf3WmYvcrz
         Oa2gOn7z0+FxM6221LIYp42dGZNjr07/4O9Tfqo48GlOZCwrds9auwiEmHqx8gtYumhA
         j+hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688938439; x=1691530439;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HfuCbMHLRsJENyGxMfIYxaAnAZxg/OCa38IpAzXGCKY=;
        b=JueBWHf2jBQwpUtEecxmdNsT4JoxNWf8HVojRqIK7MA/RzXhJETHX3e3vWXHz81RUW
         oFbOinZye0JhvfDEckJEWn5m2j1H1H3XjbigK1u55k2y4wKWm0ukhRLiwes4kqKHmEvf
         qoz8ZPc4wAc21wa1efvf9U7HKONC8UTgXGHdhdgWHRMmI2jopf0tQ/1H9/ZfF6kXDX5R
         y7R/TFJW3R9wRu6T8GJvxSZRHIXikveVJQJ+Hgy5SJ3tXYD/NnVJB3hNyveutNPve4mf
         zQe34m1QCYp6eSJBDZXqgRG4PukpKlbiJRVLkgYyJYEm+9r+AD9vHz5zusV6O8EIeTSq
         wNtQ==
X-Gm-Message-State: ABy/qLb2YLGabCDAKAepYqlVF06RJQesg7Tts8YeaVjX+O6o9fCG2vhF
        5sYxjYrbU/tlw7SRkVOjkss=
X-Google-Smtp-Source: APBJJlExT4j6sB6y8av59Bfd940TVnPKVYf0YOTl0mbZQJa6NnEm+h2oLlU/rRr4uDsIetKF+Z4LyQ==
X-Received: by 2002:a25:ce54:0:b0:c4f:23af:f666 with SMTP id x81-20020a25ce54000000b00c4f23aff666mr9054244ybe.4.1688938439515;
        Sun, 09 Jul 2023 14:33:59 -0700 (PDT)
Received: from firmament.local (c-73-106-204-164.hsd1.ga.comcast.net. [73.106.204.164])
        by smtp.gmail.com with ESMTPSA id i192-20020a25d1c9000000b00bf3438d6301sm2364329ybg.0.2023.07.09.14.33.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Jul 2023 14:33:59 -0700 (PDT)
From:   Matthew House <mattlloydhouse@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] recv.2: Document MSG_CMSG_CLOEXEC as returned in msg_flags
Date:   Sun,  9 Jul 2023 17:33:47 -0400
Message-ID: <20230709213358.389871-1-mattlloydhouse@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Matthew House <mattlloydhouse@gmail.com>
---
 man2/recv.2 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man2/recv.2 b/man2/recv.2
index 660c103fb..0d05d68fe 100644
--- a/man2/recv.2
+++ b/man2/recv.2
@@ -412,6 +412,15 @@ is returned to indicate that expedited or out-of-band data was received.
 .B MSG_ERRQUEUE
 indicates that no data was received but an extended error from the socket
 error queue.
+.TP
+.BR MSG_CMSG_CLOEXEC " (since Linux 2.6.23)"
+.\" commit 4a19542e5f694cd408a32c3d9dc593ba9366e2d7
+indicates that
+.B MSG_CMSG_CLOEXEC
+was specified in
+the
+.I flags
+argument.
 .SH RETURN VALUE
 These calls return the number of bytes received, or \-1
 if an error occurred.
-- 
2.41.0

