Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E7E2271699
	for <lists+linux-man@lfdr.de>; Sun, 20 Sep 2020 20:06:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726055AbgITSGr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Sep 2020 14:06:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726043AbgITSGr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Sep 2020 14:06:47 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DAF2C061755
        for <linux-man@vger.kernel.org>; Sun, 20 Sep 2020 11:06:47 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id w2so9966403wmi.1
        for <linux-man@vger.kernel.org>; Sun, 20 Sep 2020 11:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TjB3DapvNpGrqWmWt4MCPPKQPoM3j9bVSq3D5a/jKPY=;
        b=JBm3kMyZGNOtAWntTuwcGoyZqs5qbmu3meRpVdQKhRd58xbvVkBttQ3IBx7pb53qPu
         M62T60zf35IpQq5ZGyQU5ofRCTIoY0Lp9B1vc+Ti+rC3ppaJHW+ZHIhMpZKnYMHjmE1g
         EQjWyDR1czIY1TleBfxocL0e3tmScghkaZq8rav4eEi52/bnd4zHG+0xzv1drsCs7fI4
         5J0GkKDQVqMVo88B+nnVfs696gtFFTI1Qd6/fixY7xbvlttCvzvH+scGHLffgXSRjRbW
         w1VihnvCaVtyl5jjGBfOCwSWA+1Fk1e8e5msbLO7qwrXBB1C5+6yJCLfzcX+VEEJpnjy
         aGnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TjB3DapvNpGrqWmWt4MCPPKQPoM3j9bVSq3D5a/jKPY=;
        b=tJkTjLgaIAdeOoeWIUbOdlmMcgw5D6jBgVnDOx98L+IC2OMswWkCyKcFXrNJqSmwom
         CSr4koUKdaZpEqBbR1ep73109ujCrWySLZfrRYWyLdGPcWggz2rfzG+CWKCY6IWdHUQ7
         xvQEMfzf1lFsJwAFP1KgfeyoHsxv79rFYYfDI7zFrvXP8n/pJgind4L+/MoyBuQyGbXv
         HS2CGVJ952ea/AeTVZ91uucqcQnG02UZp/r/cqealgItOfuPTQ7RFxDr5oXu4vLZX7Uh
         F/WT6PNXkrpdvOpPU5tA0Hx6LV66AIBuHgKlxRq9TV+A8VHVjKvpWu5JH/uRNnAcwaTP
         4VCA==
X-Gm-Message-State: AOAM533F4qH9UTCoZGMlzkXb7KEOHB4kJ3G75c5QMo6xa8fcXjnX/7DE
        VsNypo50Cs6BB7JVG0ACn6k=
X-Google-Smtp-Source: ABdhPJySWDxLK4UmMND8Qa2AWP8o0Zfrk3K4ACCzTlXViAdtePA9Ea3u62meEcR8l+9tuWtg+299Vg==
X-Received: by 2002:a1c:5a86:: with SMTP id o128mr25192512wmb.129.1600625206094;
        Sun, 20 Sep 2020 11:06:46 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id d2sm16402029wro.34.2020.09.20.11.06.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2020 11:06:45 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v2 8/9] system_data_types.7: Document siginfo_t
Date:   Sun, 20 Sep 2020 20:05:51 +0200
Message-Id: <20200920180551.63608-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <a5e4490c-b796-c13f-fb74-75ebc7dbe321@gmail.com>
References: <a5e4490c-b796-c13f-fb74-75ebc7dbe321@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Note: There are a few members off this structure that are
not required by POSIX (XSI extensions, and such).

I simply chose to not document them at all.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hello Michael,

Clearly I needed the weekend!
Here's the patch as it should have been.

Cheers,

Alex

 man7/system_data_types.7 | 39 ++++++++++++++++++++++++++++++++++++---
 1 file changed, 36 insertions(+), 3 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index a7955f331..080f0057f 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -213,6 +213,39 @@ See also:
 See also the
 .I aiocb
 structure in this page.
+.\"------------------------------------- siginfo_t --------------------/
+.TP
+.I siginfo_t
+.IP
+Include:
+.IR <signal.h> ;
+or
+.IR <sys/wait.h> .
+.IP
+.EX
+typedef struct {
+    int             si_signo; /* Signal number */
+    int             si_code; /* Signal code */
+
+    pid_t           si_pid; /* Sending process ID */
+    uid_t           si_uid; /* Real user ID of sending process */
+    void           *si_addr; /* Address of faulting instruction */
+    int             si_status; /* Exit value or signal */
+
+    union sigval    si_value; /* Signal value */
+} siginfo_t;
+.EE
+.\".IP
+.\" FIXME: Add a description?
+.IP
+Conforming to: POSIX.1-2001 and later.
+.IP
+See also:
+.BR pidfd_send_signal (2),
+.BR rt_sigqueueinfo (2),
+.BR sigaction (2),
+.BR sigwaitinfo (2),
+.BR psiginfo (3)
 .\"------------------------------------- sigval -----------------------/
 .TP
 .I sigval
@@ -239,9 +272,9 @@ See also:
 See also the
 .I sigevent
 structure
-.\"and the
-.\".I siginfo_t	FIXME
-.\"type
+and the
+.I siginfo_t
+type
 in this page.
 .\"------------------------------------- size_t -----------------------/
 .TP
-- 
2.28.0

