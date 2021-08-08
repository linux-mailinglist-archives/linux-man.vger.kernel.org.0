Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D99E3E3996
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:41:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231259AbhHHImG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230301AbhHHImG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:06 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB1A5C0613CF
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:41:47 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id l11-20020a7bcf0b0000b0290253545c2997so9212580wmg.4
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aXQkO1jLZzG6B7UrGiLxZG7w5Hmown0nwKzYXrQB6rs=;
        b=GpYRZFQYmZ8mWtwrU3kznjTahVDfCGAz/QgN/chm3hiJuxdO3kHcwX7Zi5AvaMCBoc
         N9CPsEd19OxLoPbBLborTMGUVnT+HsVRDefpVUL2REW69vetWAnUQtcn6Tkzc8Zq/jQN
         Y3BjsaneG8n8UCD34BFawFEIr/uG4/bagOwUIlEsVptQjMLSbZe4P2ueTax4IQTzQhu7
         fRuGWHCbiO2WbT6QTzOgeZ1Fy8Yq5IE+5zAutD8FT9BjnSjz26Eq/SF3z76322hC7wbD
         qJZk+Dnx/wvy7evfnKf7wPCk5qvG+MLflvLofv1UgWrnKolXvKjeS7X4JSgJXvQedk5t
         aYrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aXQkO1jLZzG6B7UrGiLxZG7w5Hmown0nwKzYXrQB6rs=;
        b=baOjqIfM9QBb670yiVF6ohEQiz9h7ajMRf8EgPM282q/DlOqwInC3xJdojMLrgQtUF
         FY113zy9uOdCLHwBp5dGLF++CCUcjPuE++JpG1O86WkHLYShNl4BTQa/r+O4GUoDcIWM
         j6es0G/GXY93qlYD80+jbpnXkEQIw6efD6Rgyapu63ODRePrX2BIoz7Xc4HEqKmxI1G8
         fHyPqxDF0gaqRv0OfeZiHetZIMizDc0aJjV3hwc7gHjKhd6XfAQX2nbBwOKfiB8KhhkR
         S9M1UdsNd1CZXJBWJEalKSlA82b9pOGesRGwG8BvTwbiyvE/K7XKfPNSCiRilrpfiTXs
         2KgQ==
X-Gm-Message-State: AOAM531444BWrVPTzHw6q14i2XC6DUG3R65sfL3vEEzfaA7J1CfAmDjd
        eMQ5UhFAOyAe+0OojpFpUF0=
X-Google-Smtp-Source: ABdhPJw2YRWevsN9I4VzOLxdZHY8MJq/WTuP4FhzmygFh4hbvkDRmRb8YxQgGCJrZSOqV0CVo2y4Lg==
X-Received: by 2002:a7b:c083:: with SMTP id r3mr11308730wmh.65.1628412106382;
        Sun, 08 Aug 2021 01:41:46 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:46 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Peter Collingbourne <pcc@google.com>
Subject: [PATCH 03/23] sigaction.2: Apply minor tweaks to Peter's patch
Date:   Sun,  8 Aug 2021 10:41:13 +0200
Message-Id: <20210808084133.734274-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

- Move example program to a new EXAMPLES section
- Invert logic in the handler to have the failure in the conditional path,
  and the success out of any conditionals.
- Use NULL, EXIT_SUCCESS, and EXIT_FAILURE instead of magic numbers
- Separate declarations from code
- Put function return type on its own line
- Put function opening brace on its line

Cc: Peter Collingbourne <pcc@google.com>
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

