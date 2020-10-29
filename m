Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2D0229ED36
	for <lists+linux-man@lfdr.de>; Thu, 29 Oct 2020 14:42:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727434AbgJ2Nmd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Oct 2020 09:42:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727480AbgJ2Nmc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Oct 2020 09:42:32 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF5B0C0613D8;
        Thu, 29 Oct 2020 06:42:26 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id i1so2858588wro.1;
        Thu, 29 Oct 2020 06:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1m9RdrkV/XMaXPplxU/cDwehV/41DxDWVqQGV0at6mc=;
        b=IQaEcXc4Z7jh1k0Y1HjORcbSsyYxotFgW/2kxDTYxtODINK5l5dLS2J5UOLbUbqaaa
         YJYRct1xyq6yyGpJRc2Y4InVPjrGX349rtH+JsTIzplvHzL4LbdqQPXxfVlj6CxYqGEF
         g+5qyg7XyhcjZwlTPRikuOcQ5pgFss4LMXXgR9aoPfbvcsbahxA0e/uoGGQJw8gwSy+A
         UnNyxF3j0WIHYtE9GWq1ZkWzl7P4eOpNIT0IQLX9JJUQtKOyrUrKkS18K0Shqw14RY1H
         Ns0uGok62zEj/7/EpPfWnE0tC5tOY7fZLSAr79tmw4xS0sWWV/JVy9Ri6wt7ItdCRXI+
         Y4hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1m9RdrkV/XMaXPplxU/cDwehV/41DxDWVqQGV0at6mc=;
        b=t7IuoF8zH/MZcT+1KATTLrAUgEmr6Fn0v7WLwHudLnkvltZjI2zohNb6AajMLrK3Ab
         Ea/jZvC7lOPUTciilW41mHe/d1YcphK/E1Bpx1WgT6iPXkveAHqJnxCrGYcvhTCE42bD
         d2VeScDIiQe2wTAfqdT0usaNVIsBv9ckeZQfYChjgg0PUXe0iP2duGgIg1p9CpOS+Q/4
         ZVpSGYVulP9HqaUcL44klP5mHYGlejA9t8mcLhvau9QyHGdx/AzcKKeclkJzemsXJ6Lo
         nQx8cl8XlGKYH76Rluj58IzR9mdxOJQgYI864P/xLjasCt82PVQrYskIOquMX32+m9h8
         pmjg==
X-Gm-Message-State: AOAM531TsVDdPZmDu7t943k7rU3XXod27rVs398bSKD7kUgSV2Yb3Cyd
        qbrVY6+NMwsjVXi4hsTadrM=
X-Google-Smtp-Source: ABdhPJxukwTn1a0aCVQhArgKwMSZ/Ly647l/BY4IhoGYXWvH2sk7r221/e104o3eQ5O13uvHFD7g9g==
X-Received: by 2002:a5d:4d0c:: with SMTP id z12mr6273888wrt.60.1603978945397;
        Thu, 29 Oct 2020 06:42:25 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id j13sm5360115wru.86.2020.10.29.06.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 06:42:24 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2] getdents.2: Use appropriate types
Date:   Thu, 29 Oct 2020 14:42:11 +0100
Message-Id: <20201029134210.191970-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <1195fda6-4de3-09fc-8653-42655d7e2b76@gmail.com>
References: <1195fda6-4de3-09fc-8653-42655d7e2b76@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

getdents():
This function has no glibc wrapper.
As such, we should use the same types the Linux kernel uses:
Use 'long' as the return type.

getdents64():
The glibc wrapper uses ssize_t for the return type,
and 'size_t' for the count argument.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/getdents.2 | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/man2/getdents.2 b/man2/getdents.2
index a187fbcef..e14627e6e 100644
--- a/man2/getdents.2
+++ b/man2/getdents.2
@@ -33,14 +33,14 @@
 getdents, getdents64 \- get directory entries
 .SH SYNOPSIS
 .nf
-.BI "int getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
+.BI "long getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
 .BI "             unsigned int " count );
 .PP
 .BR "#define _GNU_SOURCE" "        /* See feature_test_macros(7) */"
 .B #include <dirent.h>
 .PP
-.BI "int getdents64(unsigned int " fd ", struct linux_dirent64 *" dirp ,
-.BI "             unsigned int " count );
+.BI "ssize_t getdents64(unsigned int " fd ", struct linux_dirent64 *" dirp ,
+.BI "             size_t " count );
 .fi
 .PP
 .IR Note :
@@ -282,7 +282,8 @@ struct linux_dirent {
 int
 main(int argc, char *argv[])
 {
-    int fd, nread;
+    int fd;
+    long nread;
     char buf[BUF_SIZE];
     struct linux_dirent *d;
     char d_type;
@@ -301,7 +302,7 @@ main(int argc, char *argv[])
 
         printf("\-\-\-\-\-\-\-\-\-\-\-\-\-\-\- nread=%d \-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\en", nread);
         printf("inode#    file type  d_reclen  d_off   d_name\en");
-        for (int bpos = 0; bpos < nread;) {
+        for (long bpos = 0; bpos < nread;) {
             d = (struct linux_dirent *) (buf + bpos);
             printf("%8ld  ", d\->d_ino);
             d_type = *(buf + bpos + d\->d_reclen \- 1);
-- 
2.28.0

