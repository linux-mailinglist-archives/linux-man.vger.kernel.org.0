Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CFB5379694
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233136AbhEJR5f (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232947AbhEJR5f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:35 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92D09C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:29 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id g65so9694791wmg.2
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1AJWufCrkVXWZOOZCDdsOIRBksNWYtEU13pLODmBf3U=;
        b=NEeM/7tEkGcgJbupHh78PntlYEj8lAZvZQAe8cNX0S/JaocC80HVhKfFcUE4cfoaPy
         p64t3YnxwvZbqMC0M8rspB2M12lVRE/2/qioWSvsr3K4AINPFDp06vl1Vg30QYRVpwjf
         g+5FDTMjH0Icn2SnLGYLeOUG3sNAyseLO2XU2xsBA/ay/HdTNkynGG5e/Pc2W+53wdog
         mQyub3F7VOkgvL9udb0iuPQegWNpiKM8B00aUWLwLilrz7eE9bFVMo6E8xReq9cEAoex
         Xflw/fWZ/J0PzXIFPyXf35O06Uj3rZMcmAKufesOrl4jFgUsr7IWZ5iK0OXXnkflQJDY
         IaWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1AJWufCrkVXWZOOZCDdsOIRBksNWYtEU13pLODmBf3U=;
        b=p+lwsCSupd4wvx3G0KgL4PQl5jC4V32GcyHKy7T0+JD4RwI8pN+ZZ3h7ZNwvyZTbZM
         9OOKRpSNFW6bftFVu7SQN3wdE60ynWH6jOMx08AzJgz4UmA6YG28mbJ6mh/nnAJQuCHI
         9VPs9jUm6uuXKslrsGdkUdetr03qI0bWOtGm0BDgDgnDiYllxJ4g/oSQJKr6qoxRMk9K
         ZhvqeSkKPlk7jll1kNWttEJFho7rAVRE3IYzz3Iq4AOt5X1YUXVz2foSruCdI5SO1GPQ
         NhIiHfzuaTWjTKior0DMU2TpE5eFfRwGw4Y25KjW6BH5bJ67KM84ndMl6cmDl+d+eQ4+
         wa+A==
X-Gm-Message-State: AOAM530AErsR3i7Rn5LTwIX26NLUVBN3ctdWHuGyufJ7RS0AIhn3/pZW
        Oe/IeKyi2EKkkAG4BZPUKIA=
X-Google-Smtp-Source: ABdhPJy0pT+FCZcCouB+LMY1ikpGqHgiaiT3R+knl33nNk+bKl0Gh0b4aTKWv4x5zLHufu+rPfXj3g==
X-Received: by 2002:a1c:b783:: with SMTP id h125mr378168wmf.182.1620669388398;
        Mon, 10 May 2021 10:56:28 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:28 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 08/39] ioprio_set.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:17 +0200
Message-Id: <20210510175546.28445-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioprio_set.2 | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/man2/ioprio_set.2 b/man2/ioprio_set.2
index 91ec03f3b..c110725f0 100644
--- a/man2/ioprio_set.2
+++ b/man2/ioprio_set.2
@@ -26,12 +26,18 @@
 ioprio_get, ioprio_set \- get/set I/O scheduling class and priority
 .SH SYNOPSIS
 .nf
-.BI "int ioprio_get(int " which ", int " who );
-.BI "int ioprio_set(int " which ", int " who ", int " ioprio );
+.BR "#include <linux/ioprio.h>    " "/* Definition of " IOPRIO_* " constants */"
+.BR "#include <sys/syscall.h>     " "/* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_ioprio_get, int " which ", int " who );
+.BI "int syscall(SYS_ioprio_set, int " which ", int " who ", int " ioprio );
 .fi
 .PP
 .IR Note :
-There are no glibc wrappers for these system calls; see NOTES.
+glibc provides no wrappers for these system calls,
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR ioprio_get ()
@@ -199,9 +205,6 @@ kernel 2.6.13.
 .SH CONFORMING TO
 These system calls are Linux-specific.
 .SH NOTES
-Glibc does not provide a wrapper for these system calls; call them using
-.BR syscall (2).
-.PP
 Two or more processes or threads can share an I/O context.
 This will be the case when
 .BR clone (2)
-- 
2.31.1

