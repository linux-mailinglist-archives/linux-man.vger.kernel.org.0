Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB44B3D969C
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231576AbhG1UUq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231562AbhG1UUp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:45 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDBB0C061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:42 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id l4-20020a05600c1d04b02902506f89ad2dso4434061wms.1
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+/B12nT3NCumx9WV68HhAe/09thrf2qIhZPa4m+pecQ=;
        b=DRAzXA1cCLl1ZMRi9ETNosLEfVOu3RSl7gLExJDKlm6TaXssFJ01xb5jix1zvGkFTZ
         LdBA07pRTbzdPdwmscNKggD+ELColzhsAljc/kmCrpKfJ0wQKV7TQRChr64LNiJjiovT
         rBVh/ki+PwHncSeumkdXo+va+s7A8G/aYaV27nuJp5mCwFSa8/g7yefn5eCUdmtGo8Jy
         bSGj2GiXClv+e9XBtJ+TIoXFVW0vDwryHwZk+UN8Wl71dErYUMyr3j+Ditho6gBU+6dl
         4UKmTsKD4ZWDUb8pAC95Rd3Mez0fdtCmgXATAAKIF6Qj8APbs+/tpuUMyhHuE1sDFnAo
         mFfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+/B12nT3NCumx9WV68HhAe/09thrf2qIhZPa4m+pecQ=;
        b=fTfayvQRyuLRkpgX6/iTcHBDRaGnEKDrvRCm4UVC8PsMFBEGY7cbgw1h0My096rSC6
         +sQj3P5zPKFRo3APbs8+gO3aX2/dELE1sPH0fCkgMh/I1bIb3TwGfAVzbhiclQ7Ne6bG
         2mAa5nUuUaZQVDy7qH3LOmO+op43H0WFfbycvQMBboiYhOJrXQ3GKlFLpwBG0yiiJERp
         cpVwqYUVBcExZ5Jtu6lxxEUKx0kFiupyalBGSSUI7+tweNJ6YqYDySIl7pD9m+TvnL9X
         /QPe/HSJpiN257vZWbyZDEGDHc6gNgUI4GN/aoTbnj872fE4UL8Z2p5RsnwDDjvBjP1X
         ocPg==
X-Gm-Message-State: AOAM531JcviwTyZQKcYbzmUuYWvEL6yLSkLVSmEeQX2s374AQy2ybSXX
        S95d3wPLC2LDfEuQwP8MDaFzmkm0j8M=
X-Google-Smtp-Source: ABdhPJxI8Dg2TmqKKEESSnDf/ZHT+9TwAhCoY7NeZ81rYY/5e4ypi6m65bebTQKjhN0bpzKKYoGJtA==
X-Received: by 2002:a05:600c:4c96:: with SMTP id g22mr10752715wmp.70.1627503641465;
        Wed, 28 Jul 2021 13:20:41 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:41 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 29/32] sigaction.2: Apply minor tweaks to Peter's patch
Date:   Wed, 28 Jul 2021 22:20:05 +0200
Message-Id: <20210728202008.3158-30-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

- Move example program to a new EXAMPLES section
- Invert logic in the handler to have the failure in the conditional path,
  and the success in out of any conditionals.
- Use NULL, EXIT_SUCCESS, and EXIT_FAILURE instead of magic numbers
- Separate declarations from code
- Put function return type on its own line
- Put function opening brace on its line

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/sigaction.2 | 76 +++++++++++++++++++++++++++---------------------
 1 file changed, 43 insertions(+), 33 deletions(-)

diff --git a/man2/sigaction.2 b/man2/sigaction.2
index 4bf6f095e..18404dde1 100644
--- a/man2/sigaction.2
+++ b/man2/sigaction.2
@@ -936,39 +936,6 @@ because they were introduced before Linux 5.11.
 However, in general, programs may assume that these flags are supported,
 since they have all been supported since Linux 2.6,
 which was released in the year 2003.
-.PP
-The following example program exits with status 0 if
-.B SA_EXPOSE_TAGBITS
-is determined to be supported, and 1 otherwise.
-.PP
-.EX
-#include <signal.h>
-#include <stdio.h>
-#include <unistd.h>
-
-void handler(int signo, siginfo_t *info, void *context) {
-    struct sigaction oldact;
-    if (sigaction(SIGSEGV, 0, &oldact) == 0 &&
-        !(oldact.sa_flags & SA_UNSUPPORTED) &&
-        (oldact.sa_flags & SA_EXPOSE_TAGBITS)) {
-        _exit(0);
-    } else {
-        _exit(1);
-    }
-}
-
-int main(void) {
-    struct sigaction act = {0};
-    act.sa_flags = SA_SIGINFO | SA_UNSUPPORTED | SA_EXPOSE_TAGBITS;
-    act.sa_sigaction = handler;
-    if (sigaction(SIGSEGV, &act, 0) != 0) {
-        perror("sigaction");
-        return 1;
-    }
-
-    raise(SIGSEGV);
-}
-.EE
 .SH RETURN VALUE
 .BR sigaction ()
 returns 0 on success; on error, \-1 is returned, and
@@ -1174,6 +1141,49 @@ This bug was fixed in kernel 2.6.14.
 .SH EXAMPLES
 See
 .BR mprotect (2).
+.PP
+The following example program exits with status
+.B EXIT_SUCCESS
+if
+.B SA_EXPOSE_TAGBITS
+is determined to be supported, and
+.B EXIT_FAILURE
+otherwise.
+.PP
+.EX
+#include <signal.h>
+#include <stdlib.h>
+#include <stdio.h>
+#include <unistd.h>
+
+void
+handler(int signo, siginfo_t *info, void *context)
+{
+    struct sigaction oldact;
+
+    if (sigaction(SIGSEGV, NULL, &oldact) != 0 ||
+        (oldact.sa_flags & SA_UNSUPPORTED) ||
+        !(oldact.sa_flags & SA_EXPOSE_TAGBITS)) {
+        _exit(EXIT_FAILURE);
+    }
+    _exit(EXIT_SUCCESS);
+}
+
+int
+main(void)
+{
+    struct sigaction act = {0};
+
+    act.sa_flags = SA_SIGINFO | SA_UNSUPPORTED | SA_EXPOSE_TAGBITS;
+    act.sa_sigaction = &handler;
+    if (sigaction(SIGSEGV, &act, NULL) != 0) {
+        perror("sigaction");
+        exit(EXIT_FAILURE);
+    }
+
+    raise(SIGSEGV);
+}
+.EE
 .SH SEE ALSO
 .BR kill (1),
 .BR kill (2),
-- 
2.32.0

