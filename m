Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7063E29EDF4
	for <lists+linux-man@lfdr.de>; Thu, 29 Oct 2020 15:13:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725828AbgJ2ONC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Oct 2020 10:13:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725300AbgJ2ONC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Oct 2020 10:13:02 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0F59C0613CF;
        Thu, 29 Oct 2020 07:13:01 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id k125so544660wmf.0;
        Thu, 29 Oct 2020 07:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wp449LD1V//0Su1aAAh4SFHAWUtfUlnD32tPLIfCQy0=;
        b=QtANNntoFUAeLYwV8SbCOOb2qBfGraTJtFHEQrfLxYTyo90QlRQXTYH08pmU4ErqMz
         GNv/Q/fNihER/c18jQIQ8h33tOS7WvwmToANMXuEBEZjdmjFRvIC1mAjnmdAVPGvb0HW
         X3oXnDSet5Li6TGG2C9H97g31rRHel0rOvod4Z+0DMNEgYUS6zylgLwrIJdfS2sTlSnN
         llkDJptL5eOMOVa2D2QB7YJdkVHApJMwMMtt52PGR3q1q9bNnQ74G5jCWjFSqlJeGGc6
         DBf/anaOi108r27+maPh5yXa2+NkMxRDXdPlWGw6D/13mw6yBkQd1lIKtios2ZRb6qqg
         tYOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wp449LD1V//0Su1aAAh4SFHAWUtfUlnD32tPLIfCQy0=;
        b=jkdKbuv2hHWgSiNPHOAsDXYZZXo0H7F60zzm0k1QPSdUfGe4Ps5z+JAn/EzrFuDR46
         aC/mNx1QgndXpy+3OWIKXp+Rphlz7bN64b62Wk37vLPZmxihtuhtusUkCwv5lAXpuPok
         1qBcRQmN8zyAPKQgi1DIN0clmJKL/boMiobu8PBt1MWmXSTFsNggQ28D+wJcsifWhGPW
         cDbj9ipx2cyvJZ5dmdg9crMILeczIM2QTN52xCiapBm5W+/H6vbKQZvje0nmfdJ99Roq
         xcEjKq5y3pubNvA/udkUmFvPGR8vsl82zLhcKmqYcSxyyjtKZUQOJy96HBXXLjbQm4w0
         5ZAA==
X-Gm-Message-State: AOAM5318uBbUYTs+p0qFtIfE595DZPw+WK43PXiagxop0fWrqjWpd+yP
        RBGHRZJ8RbCNUpjQwuDOtNS3DP3unBw=
X-Google-Smtp-Source: ABdhPJysdWFxBoJYeaLxWjlPbEL/JwlCCmi5zijYUgQizDJk2HleJl5s93xTeMQpG/OhDnrStoTeRw==
X-Received: by 2002:a1c:bdc4:: with SMTP id n187mr4831727wmf.185.1603980780446;
        Thu, 29 Oct 2020 07:13:00 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m12sm4518670wmi.33.2020.10.29.07.12.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 07:12:59 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: [PATCH v3] getdents.2: Use appropriate types
Date:   Thu, 29 Oct 2020 15:10:54 +0100
Message-Id: <20201029141053.195998-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <CAKgNAkgi7MAW9PxKNBFQ07r7p2PFRR3xU2BJBTqk8oiXDJ4NXA@mail.gmail.com>
References: <CAKgNAkgi7MAW9PxKNBFQ07r7p2PFRR3xU2BJBTqk8oiXDJ4NXA@mail.gmail.com>
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
The glibc wrapper uses:
ssize_t getdents64(int, void *, size_t);

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

Sorry, I'm being a bit distracted these days :)
It should be good enough now, I think.

Cheers,

Alex

 man2/getdents.2 | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/man2/getdents.2 b/man2/getdents.2
index a187fbcef..ed3bb40b1 100644
--- a/man2/getdents.2
+++ b/man2/getdents.2
@@ -33,14 +33,13 @@
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
+.BI "ssize_t getdents64(int " fd ", void *" dirp ", size_t " count );
 .fi
 .PP
 .IR Note :
@@ -282,7 +281,8 @@ struct linux_dirent {
 int
 main(int argc, char *argv[])
 {
-    int fd, nread;
+    int fd;
+    long nread;
     char buf[BUF_SIZE];
     struct linux_dirent *d;
     char d_type;
@@ -301,7 +301,7 @@ main(int argc, char *argv[])
 
         printf("\-\-\-\-\-\-\-\-\-\-\-\-\-\-\- nread=%d \-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\en", nread);
         printf("inode#    file type  d_reclen  d_off   d_name\en");
-        for (int bpos = 0; bpos < nread;) {
+        for (long bpos = 0; bpos < nread;) {
             d = (struct linux_dirent *) (buf + bpos);
             printf("%8ld  ", d\->d_ino);
             d_type = *(buf + bpos + d\->d_reclen \- 1);
-- 
2.28.0

