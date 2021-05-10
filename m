Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA239379699
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233238AbhEJR5n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233216AbhEJR5m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:42 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA7AAC06175F
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:36 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id p14-20020a05600c358eb029015c01f207d7so3661606wmq.5
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1C07pbVfBci82UwrAObKhnILR5DtdOchkev/ZB7utXg=;
        b=c/5eeEpYJ11tyS9GySni7P03eNju/fbeaVQj1PqrZFHK7dq4EGHF6fWCAKfI8Wy2eG
         fFBoqdE/zOVr9zEhZVpzxOZ52RxmjQtti/yrGikJIRBmu9AV/27x7qsFghj7U49HHXQD
         JkI/yjby5v+qo5m88DZelIlFBqo/G+Kaqnti38NSm9W7z7i3rWc0jVbzOdKegYZXNKqN
         +Oa+sHUUSYK+GDsbpw52xUBkJUnHDRLf2Ef04qqssjeyL2SOP5YpUQhijhecItZk9EZJ
         po5kxN51Jwb+laqdy8olPSAlZ8/nPnoH6Dcz7owiYB8lt+s/WMas/5VLLqJPytymM+cz
         Y+bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1C07pbVfBci82UwrAObKhnILR5DtdOchkev/ZB7utXg=;
        b=Syr/Y+qSwrXCjN2rcsxPGy8oh8uiRoNtub1xj0dKBx57Y7bgBlciiOdVq+qIpjhrzO
         qqGBw0N8F0hVF2n0zyIua6BTmddJSPC5wR4EJWm97n0AIAAQiMSKTzva03bhwBwQzuJt
         sg9pGurZegGGp/2VJ3w2cnqn/0711MAoDz86iotkSGLAjpLQ0R2IkMMCYuMmK+j/vov+
         plxByHWW2OVFtU2kkQEjMiUsO3L0PiYwEoHXbT79ANLtx7n9uP0e0gGos35QYY26fjZY
         4FjR4MXV4/M1lNrozq0JJDARjVaPzEdVAu4KcJhFdNPHPuugSiCc5QrkG0NDhfzqdKJd
         mbUw==
X-Gm-Message-State: AOAM533sorSIyYBzGLSAGCsHOYmg1Zebyk2E8LJ3vSMk2egRuKGXSj8S
        XBCKCeI1MRhi0sVNBEqT6S0=
X-Google-Smtp-Source: ABdhPJz/sHuprn/NSrqA6hjwON4cmTD5ktxZbpMQdvPDL08v36+xQpW3B8tfMtxiqOS6cWlnjOzRBw==
X-Received: by 2002:a05:600c:35d2:: with SMTP id r18mr16885113wmq.23.1620669395491;
        Mon, 10 May 2021 10:56:35 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:35 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 13/39] kexec_load.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:22 +0200
Message-Id: <20210510175546.28445-14-alx.manpages@gmail.com>
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
 man2/kexec_load.2 | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/man2/kexec_load.2 b/man2/kexec_load.2
index 62a3e2006..74f142355 100644
--- a/man2/kexec_load.2
+++ b/man2/kexec_load.2
@@ -29,18 +29,23 @@
 kexec_load, kexec_file_load \- load a new kernel for later execution
 .SH SYNOPSIS
 .nf
-.B #include <linux/kexec.h>
+.BR "#include <linux/kexec.h>" "      /* Definition of " KEXEC_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "long kexec_load(unsigned long " entry ", unsigned long " nr_segments ,
-.BI "                struct kexec_segment *" segments ,
-.BI "                unsigned long " flags );
-.BI "long kexec_file_load(int " kernel_fd ", int " initrd_fd ,
-.BI "                unsigned long " cmdline_len ", const char *" cmdline ,
-.BI "                unsigned long " flags );
+.BI "long syscall(SYS_kexec_load, unsigned long " entry ,
+.BI "             unsigned long " nr_segments \
+", struct kexec_segment *" segments ,
+.BI "             unsigned long " flags );
+.BI "long syscall(SYS_kexec_file_load, int " kernel_fd ", int " initrd_fd ,
+.BI "             unsigned long " cmdline_len ", const char *" cmdline ,
+.BI "             unsigned long " flags );
 .fi
 .PP
 .IR Note :
-There are no glibc wrappers for these system calls; see NOTES.
+glibc provides no wrappers for these system calls,
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR kexec_load ()
@@ -332,9 +337,6 @@ The
 system call first appeared in Linux 3.17.
 .SH CONFORMING TO
 These system calls are Linux-specific.
-.SH NOTES
-Glibc does not provide a wrapper for these system calls; call them using
-.BR syscall (2).
 .SH SEE ALSO
 .BR reboot (2),
 .BR syscall (2),
-- 
2.31.1

