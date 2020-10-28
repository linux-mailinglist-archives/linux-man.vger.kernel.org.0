Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6D6629D612
	for <lists+linux-man@lfdr.de>; Wed, 28 Oct 2020 23:11:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730693AbgJ1WLe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Oct 2020 18:11:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730689AbgJ1WLd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Oct 2020 18:11:33 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B9E5C0613CF
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 15:11:33 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id l20so4457wme.0
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 15:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nCh48h12RgPeEz/753RyZmPhvXghBpoCF7i5N0f48Es=;
        b=FGTONoC3l1BwVlVuQPn4N6BX1bsJSe2U90NOzWS8XYgMa3vWnuS4D7XfkkT9n3np8t
         AllrW2RjIaS/H00iBrl/t1NRBNt+0ilz6MbKn7aN/hxQSXkeW+sLAA+osKGMF5o8rv35
         Hna8RMLIljWWoFjKluZ9Byifb64MVPRE/AbBC9+A9aC8481tsR4kLXHIwZTdgKTYEldp
         7/E77mtaBlYfM+qo8LinR8/Jqye993VbefqzLwDzRO7KhKRqV2JA3LRzqyXYZbBUoHEx
         EgdwQ7me3cTZekWvqzL9OtSJdloS3/7QDxM71Sf2HzoPVgj8AT+f4QJ8Xc8CFTomtt3m
         4b1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nCh48h12RgPeEz/753RyZmPhvXghBpoCF7i5N0f48Es=;
        b=i2VQ+o9TOy1nTbl5R8Ul5gxyeFesSmbtEaOHbOIyNXoM/RVFadrpK1wshltChyrSaR
         Yha29LsXfBe8x7KADykh2RhKZpPgP2suyv65ZPrYE+VVbhuZi2omCbwmJpucggHKkcmJ
         1AzDw+5zZiKh0Cj/3GC4mfVPVDBHLG6+Tt11gxpkd8PD8s0qRDZrJjmzme5CcopgXYKt
         VXTAYa0HCijZLV910nvhjaq90dtvPLQnHTlRzCqX/SNnWpZT2bxMWL1l66orq77O7Nwq
         qEpet5zcPRRNyfUH3lwU44juMEee7XwKEueI0DUmCaUe4gCYaJl0mUGiAd1Z5kozUAWK
         +/wg==
X-Gm-Message-State: AOAM533R9fowvE28ynS4RGCmdJYcXpr+SHKkQ6QKYRghYlCVj3kWZuW/
        BMPimWWuDFnCBJ08Pe8bzSw=
X-Google-Smtp-Source: ABdhPJxjSPgGIzf/4BH5Pwhf5NHYXijy4Qnlj3ZeMZ7Orxq+qxf1Gear5zKQ9YVYoHlC1R2f34HuDQ==
X-Received: by 2002:a1c:4306:: with SMTP id q6mr991387wma.189.1603923092018;
        Wed, 28 Oct 2020 15:11:32 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l124sm1011430wml.48.2020.10.28.15.11.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 15:11:31 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] getdents.2: Use 'ssize_t' instead of 'int'
Date:   Wed, 28 Oct 2020 23:11:19 +0100
Message-Id: <20201028221118.158108-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The glibc wrapper for getdents64() uses ssize_t.
And let's use it also for getdents().
It makes more sense than int:
It's a count of bytes, and can report an error (-1).

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/getdents.2 | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/man2/getdents.2 b/man2/getdents.2
index a187fbcef..d660f1bc1 100644
--- a/man2/getdents.2
+++ b/man2/getdents.2
@@ -33,13 +33,13 @@
 getdents, getdents64 \- get directory entries
 .SH SYNOPSIS
 .nf
-.BI "int getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
+.BI "ssize_t getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
 .BI "             unsigned int " count );
 .PP
 .BR "#define _GNU_SOURCE" "        /* See feature_test_macros(7) */"
 .B #include <dirent.h>
 .PP
-.BI "int getdents64(unsigned int " fd ", struct linux_dirent64 *" dirp ,
+.BI "ssize_t getdents64(unsigned int " fd ", struct linux_dirent64 *" dirp ,
 .BI "             unsigned int " count );
 .fi
 .PP
@@ -266,6 +266,7 @@ inode#    file type  d_reclen  d_off   d_name
 #include <stdlib.h>
 #include <sys/stat.h>
 #include <sys/syscall.h>
+#include <sys/types.h>
 
 #define handle_error(msg) \e
         do { perror(msg); exit(EXIT_FAILURE); } while (0)
@@ -282,7 +283,8 @@ struct linux_dirent {
 int
 main(int argc, char *argv[])
 {
-    int fd, nread;
+    int fd;
+    ssize_t nread;
     char buf[BUF_SIZE];
     struct linux_dirent *d;
     char d_type;
@@ -301,7 +303,7 @@ main(int argc, char *argv[])
 
         printf("\-\-\-\-\-\-\-\-\-\-\-\-\-\-\- nread=%d \-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\en", nread);
         printf("inode#    file type  d_reclen  d_off   d_name\en");
-        for (int bpos = 0; bpos < nread;) {
+        for (ssize_t bpos = 0; bpos < nread;) {
             d = (struct linux_dirent *) (buf + bpos);
             printf("%8ld  ", d\->d_ino);
             d_type = *(buf + bpos + d\->d_reclen \- 1);
-- 
2.28.0

