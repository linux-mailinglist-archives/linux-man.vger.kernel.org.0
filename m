Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9334353561
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:41:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236790AbhDCTmC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236736AbhDCTmC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:02 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0A8AC0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:41:58 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id e18so7476390wrt.6
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JXWn8Nd3MCs94z9YfHZPmIU6x0WwZCWfTr+hRs6FLmw=;
        b=O50tCoYMvjpI8zmeQAL3TZrMEMnd4KBLxs6v/epbGNcMnkIL0M6a2vQPxepgWqWYHS
         r84KX1V3BHtdXzVmNgQX1kYTN5v57qsn507IbZ53C5hPYWpgivxhlycCUOlvoGFCN3hv
         jLbriHzNKG7g2R0WgqGGmSZ//ykCHFQP+Hw9dXE0SdmRjVueIip7ZA5LVAEoaR1y1Mtv
         +v2sXoVwN7lfbur1TzkvRYAFVw+E1FXln8ruEm0WMSIdIa4uEDmba2HC/KhGiiPV3dO/
         j8PPZkar9KMIJPYkdjJfv0vofB1F1tuand3Jt1yk0UshsXx5ZYmQBSd3vpIdOWE96qqp
         jpCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JXWn8Nd3MCs94z9YfHZPmIU6x0WwZCWfTr+hRs6FLmw=;
        b=jW67uyyo/XApXOASf/so8pz6A+kxaBJkZTPMrN8+OSQBP+k63C1B1mSlGLvt3jfsh5
         6PF+YNG+3ihgEr/CKMAi+CHlIQEEgQyqRXiSfb38X69MbgLVCvJmFNuYy7ob+TSkqN6c
         eDBspCatJS+C/C3BbWXgpf4cDJ98+MoplyCuY4wVIdsZ4st/9bIjtKjf2qUHL7/XcjjU
         wwXohsC0gcPMiJX6JUkd6ekaNip9Z10KihQQUGfNy8gzKELnFB1lbQBxL8fZTyvGbkar
         bLHJ1CI84Sxp8A91RIPVn9DgFVTesFAn2QGEoeVsbEN3MGAikrmW3Mo1LKd0lRgDiOUv
         xWzQ==
X-Gm-Message-State: AOAM532PN3VcAE1n7Za9QpbMOJHIxVRwD4T+ejzRbusrR2R+xPW3pRMz
        EqgxkIc4iZhHiU2I+OJiMYPkVMCa5sc=
X-Google-Smtp-Source: ABdhPJxQLEArSc3cLGbNLZCtQQVLIyLQZ9FiatQrB5VPOeO2lYt+YYMmQ6bxF+kFKVkYG/4tWj6qBg==
X-Received: by 2002:a05:6000:147:: with SMTP id r7mr21618052wrx.25.1617478917622;
        Sat, 03 Apr 2021 12:41:57 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:41:57 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 14/35] execveat.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat,  3 Apr 2021 21:40:06 +0200
Message-Id: <20210403194026.102818-15-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Add <linux/fcntl.h>, which contains AT_* definitions used by
execveat().

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/execveat.2 | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/man2/execveat.2 b/man2/execveat.2
index 855832765..c566f53df 100644
--- a/man2/execveat.2
+++ b/man2/execveat.2
@@ -28,15 +28,14 @@
 execveat \- execute program relative to a directory file descriptor
 .SH SYNOPSIS
 .nf
+.BR "#include <linux/fcntl.h>" "      /* Definition of " AT_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
 .B #include <unistd.h>
 .PP
-.BI "int execveat(int " dirfd ", const char *" pathname ,
-.BI "             const char *const " argv "[], const char *const " envp [],
-.BI "             int " flags );
+.BI "int syscall(SYS_execveat, int " dirfd ", const char *" pathname ,
+.BI "            const char *const " argv "[], const char *const " envp [],
+.BI "            int " flags );
 .fi
-.PP
-.IR Note :
-There is no glibc wrapper for this system call; see NOTES.
 .\" FIXME . See https://sourceware.org/bugzilla/show_bug.cgi?id=27364
 .SH DESCRIPTION
 .\" commit 51f39a1f0cea1cacf8c787f652f26dfee9611874
@@ -209,9 +208,6 @@ the natural idiom when using
 is to set the close-on-exec flag on
 .IR dirfd .
 (But see BUGS.)
-.PP
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
 .SH BUGS
 The
 .B ENOENT
-- 
2.31.0

