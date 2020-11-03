Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 378592A54DA
	for <lists+linux-man@lfdr.de>; Tue,  3 Nov 2020 22:14:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388919AbgKCVO4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Nov 2020 16:14:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732451AbgKCVO4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Nov 2020 16:14:56 -0500
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4B89C0613D1
        for <linux-man@vger.kernel.org>; Tue,  3 Nov 2020 13:14:55 -0800 (PST)
Received: by mail-wr1-x441.google.com with SMTP id g12so19909020wrp.10
        for <linux-man@vger.kernel.org>; Tue, 03 Nov 2020 13:14:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7BGn0YaMsfrz1gQkKr2GhCTxqkFFcIPrmh3+Y7Vwiw0=;
        b=MWS29J7K6j7Hp2p76E+a5wkPu+c9gNO0kvNF8uEaddLegxNvFTbNPgEI7RiXjBpEDM
         Iv3Vc2ev14dXwRt3tPccj0LlkuSAjsXrKyBvXM1xMbenecnVHncu/jSqgiXF5g6zwP0/
         BckQzu/BCRMq0UNTOZVXfItxr2aQ1dlk+7ttISV8CT8khtx2CpOweRfjvW+knovRja+6
         D5RA06kfwHjYfLEmXRU+KMPtbfsqFuXKenpbP+cjcc2ofIiaD9iT4jXbAUSoDiSctGEy
         IEGgYvxMjhtbjKedjODetkPom3oJ23KBuq+X0cpwwwIgLBM0ddoDhgAMyEhvx99GADti
         nv/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7BGn0YaMsfrz1gQkKr2GhCTxqkFFcIPrmh3+Y7Vwiw0=;
        b=eA4pGzAnQHZv2yoOkaKZjMBFkWvNhlKLFNvWfbEyYU0T3qSiuInTyPyWO9trwIHfa0
         DEKtlI4KUfg8R0qndUF2LeRGz6DecQHCYZpN04DAZyZ0B73/kJl70wlvsfdx4o6ZIk6v
         BlmMIo+zQdg/40QqVyx4yoGP2SKp5LEVcqRMeJmjarbJPflDAZrf/j5OpxY0ylI4E66a
         qhliy2UVBAF3fvIPJh5zdeDss44N3CwtpO2CbxAt6imjYJXbLmJA6q/7Ai2/efeiSIja
         pqVWEiaXUEv0iotDIgFcYq8F7yya0Hkr3zWcjjHKt9w0xkpWxpPBdMh/r8P04lCP0tKA
         K7JA==
X-Gm-Message-State: AOAM531e96d99VSeovUbDCfKADEjh1I7LjSlhPkirWup8Qujr3yky2RP
        K9VxpNwZb6mp9jljRN/xhIU=
X-Google-Smtp-Source: ABdhPJxSDppd6WADX2PBgL0Kw248BCSGy3dnhpm41uTkhYWKB7H0yBvUWuB1ozFM5osjz2tAn4riNA==
X-Received: by 2002:adf:cd82:: with SMTP id q2mr29845657wrj.118.1604438094678;
        Tue, 03 Nov 2020 13:14:54 -0800 (PST)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y4sm24431wmj.2.2020.11.03.13.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2020 13:14:54 -0800 (PST)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Peter Oskolkov <posk@google.com>,
        Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org,
        "Paul E . McKenney" <paulmck@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Boqun Feng <boqun.feng@gmail.com>,
        Paul Turner <pjt@google.com>,
        Chris Kennelly <ckennelly@google.com>,
        Peter Oskolkov <posk@posk.io>
Subject: [PATCH 2/1] membarrier.2: Update EXAMPLES for new membarrier() API
Date:   Tue,  3 Nov 2020 22:13:34 +0100
Message-Id: <20201103211333.11826-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <042cd0b4-236f-ceca-2760-9a4fbbcd3e3f@gmail.com>
References: <042cd0b4-236f-ceca-2760-9a4fbbcd3e3f@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fix the EXAMPLES tu use the new interface for the syscall membarrier().
See the previous commit, by Peter Oskolkov.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Peter,

I wrote this patch for the EXAMPLES Section to complete yours.

Cheers,

Alex

 man2/membarrier.2 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man2/membarrier.2 b/man2/membarrier.2
index c95e97cb6..0251f1477 100644
--- a/man2/membarrier.2
+++ b/man2/membarrier.2
@@ -387,9 +387,9 @@ becomes:
 static volatile int a, b;
 
 static int
-membarrier(int cmd, int flags)
+membarrier(int cmd, unsigned int flags, int cpu_id)
 {
-    return syscall(__NR_membarrier, cmd, flags);
+    return syscall(__NR_membarrier, cmd, flags, cpu_id);
 }
 
 static int
@@ -399,7 +399,7 @@ init_membarrier(void)
 
     /* Check that membarrier() is supported. */
 
-    ret = membarrier(MEMBARRIER_CMD_QUERY, 0);
+    ret = membarrier(MEMBARRIER_CMD_QUERY, 0, 0);
     if (ret < 0) {
         perror("membarrier");
         return \-1;
@@ -426,7 +426,7 @@ static void
 slow_path(int *read_a)
 {
     b = 1;
-    membarrier(MEMBARRIER_CMD_GLOBAL, 0);
+    membarrier(MEMBARRIER_CMD_GLOBAL, 0, 0);
     *read_a = a;
 }
 
-- 
2.28.0

