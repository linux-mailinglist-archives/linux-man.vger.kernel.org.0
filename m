Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8534A267670
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 01:15:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725887AbgIKXP0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 19:15:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725893AbgIKXOm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 19:14:42 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEB14C061798
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:40 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id l15so2008805wmh.1
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=B2i9Lc0pOXxHkpY3fGd6e0fK/827nYdMKzFaUh/GEyc=;
        b=DUkWhYNt+zTmCteIFSesZOjKU7+hOJ4yn1JbqBrUVdQ3fOLXRhreSSVFO0s3zWvoA1
         ZWCYAXtlbSjM6aY4ofWzkpCHILyauzureEUrngMxNv21F7GltbC6uLrqcESqmUKChH0N
         QgkyXHz0WIew7YlDGZXbux055isefFRHDO/aKn63LF01BKTQq4IjCafr4Zym0cg7bfT/
         5w7K4xsr52JmwpqpzxOomlgVCSd1gb/cBfEWfGnDm6QC0+GR9avj6ILtubTEeIFvAigD
         F1fWNojIg4hYiYu8TPgvOHvUSdfTMqRqED5XGiCPxgaUkG3FUYXtYfC9HfDkTyVrjuDQ
         MBbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B2i9Lc0pOXxHkpY3fGd6e0fK/827nYdMKzFaUh/GEyc=;
        b=KU5Mm1Bxt6iyP+9w8LlrENbrE4PR7ujQxBQLuYI0EXWg6HTd8zNjEoQaLyd0YudKts
         Lh4/gn2SyWupj4cja+nCz45Q2XEESq9eud3gx/ADuD0n1WkWzACOFcdqj3FiIJu87XXH
         JZFI0r/XEzrj89eYl10Sfqm6UK/g4qGEaB2dd9GjVAQIKheGmHc9oO7U9SPucbkWNj8e
         mJigEV3/t2XAYfX1hVrkYvqBrfmqr40CtarSF/DYNN5kNUap8YSaYGTG4p/nFATsO1Zd
         bFJF8AdthbbRajoE98FBam1kIPIkq5IdAua9d6IyXPQD6iA7MDD+Tuu+G2EJVsEsNkHX
         dk2Q==
X-Gm-Message-State: AOAM531yPx0AZhxJ5Iz4wRocsxfJLZbsHQwI3PiHe1lFSwNWD1L7RBU0
        z3YiL3gVhIPrAc2YvvmqssE=
X-Google-Smtp-Source: ABdhPJzutA8rAVer47RZ8/RE2IbGE7677qRT4PpCOHkr82iy42DiWdHjyjsSGpVe16IyIuTzKYTxhA==
X-Received: by 2002:a1c:ba0b:: with SMTP id k11mr4330518wmf.20.1599866079448;
        Fri, 11 Sep 2020 16:14:39 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id b76sm7300806wme.45.2020.09.11.16.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 16:14:39 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 07/12] userfaultfd.2: Use 'PRIx64' rather than "%llx" when printing 64-bit fixed-width types
Date:   Sat, 12 Sep 2020 01:14:07 +0200
Message-Id: <20200911231411.28406-8-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/userfaultfd.2 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index 126d4a854..c7e42804a 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -566,6 +566,7 @@ Read address 0x7fd30106ec0f in main(): C
    Licensed under the GNU General Public License version 2 or later.
 */
 #define _GNU_SOURCE
+#include <inttypes.h>
 #include <sys/types.h>
 #include <stdio.h>
 #include <linux/userfaultfd.h>
@@ -650,8 +651,8 @@ fault_handler_thread(void *arg)
         /* Display info about the page\-fault event */
 
         printf("    UFFD_EVENT_PAGEFAULT event: ");
-        printf("flags = %llx; ", msg.arg.pagefault.flags);
-        printf("address = %llx\en", msg.arg.pagefault.address);
+        printf("flags = %"PRIx64"; ", msg.arg.pagefault.flags);
+        printf("address = %"PRIx64"\en", msg.arg.pagefault.address);
 
         /* Copy the page pointed to by \(aqpage\(aq into the faulting
            region. Vary the contents that are copied in, so that it
@@ -673,7 +674,7 @@ fault_handler_thread(void *arg)
         if (ioctl(uffd, UFFDIO_COPY, &uffdio_copy) == \-1)
             errExit("ioctl\-UFFDIO_COPY");
 
-        printf("        (uffdio_copy.copy returned %lld)\en",
+        printf("        (uffdio_copy.copy returned %"PRId64")\en",
                 uffdio_copy.copy);
     }
 }
-- 
2.28.0

