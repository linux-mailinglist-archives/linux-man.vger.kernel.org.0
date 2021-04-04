Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 501763537FC
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230446AbhDDL76 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229709AbhDDL76 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:58 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24DC5C0613E6
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:53 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id f22-20020a7bc8d60000b029010c024a1407so6339137wml.2
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8TFK8xXdP43GW9I6xb7LKbzdmP2koXz0JhfalTMMk60=;
        b=M8JIqXbD4+O4nah6BGTatHhNuiEKbGpBOLGGGPGMEx0Ons0glEio3jIF5Jnm7dEJdl
         kozt2IDBG/fQXnoWCv63Pivyz8gGPyYS9i5MyLCGmU8QteEQdTWnSJwcM+AVhiv8NPO7
         6RO3gvVWeMTVs1Q5qKg0FCnCB694dln/mUsPVpNSdva3zCNSTjN2BYZ3WUZEniwKb9B8
         fHJZzMQPNBKJED8KxMIFJojWCmEOOwpiJEnOgHmiZjPid+/83rR1KqP8+OjbMxs4g0nR
         hddrH8Iss7GmKmgwJczGORRJOEp0lSmhCiflXeC1jqO6AQM7TD6pTmSQUEUd28XMqXP3
         u8kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8TFK8xXdP43GW9I6xb7LKbzdmP2koXz0JhfalTMMk60=;
        b=FJ3P/1mpWcKh4fScjyS7ky63NmJF+C0+18Eq9D8sCT2moyF4yOP31xHe9s6p0cWcrb
         M7Y2rtLk0J9j0o4MznffO8fzrE9P3LtOf+aAbwjbrPQJAEcnRbBfQGaT16v4/QZRc2X7
         XGNIJhptKKMlg5zC+7LNBQAcaA7EgiVbZT0zK0nYSja/l6ljE0dO4SoSDrC3IVr4EZiB
         2WdiEernvGl20h2ABdaZD179mi7tQFI2xnOWbjmcvwxi/2/oTBrAbOIkoc96z0rgoYFZ
         cDuwLSi9CLTBmIXMWtKqcNPEOeeyxFHX60c1IzCIOzbNYpX4WSS/g2nQk90h+nqqLHFi
         khmQ==
X-Gm-Message-State: AOAM532wi8exnwGU8nzju8t1Ct7aAan7YJiEhrbULTbd8GkOl1f06m72
        +fzfhYC+FxqhMBGg8S+f6LJJHp+rf3I=
X-Google-Smtp-Source: ABdhPJwWvv+7bwjNyRrNFH4ZYx2yqAYS6h7Unxv/K/ajclCiOTE2QAck/4OUrPeDrBArQUFEUyUJVg==
X-Received: by 2002:a1c:7ec4:: with SMTP id z187mr20759590wmc.3.1617537591918;
        Sun, 04 Apr 2021 04:59:51 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:51 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 27/35] init_module.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sun,  4 Apr 2021 13:58:40 +0200
Message-Id: <20210404115847.78166-28-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/init_module.2 | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/man2/init_module.2 b/man2/init_module.2
index e158ce9fa..13d1b7f0a 100644
--- a/man2/init_module.2
+++ b/man2/init_module.2
@@ -29,14 +29,15 @@
 init_module, finit_module \- load a kernel module
 .SH SYNOPSIS
 .nf
-.BI "int init_module(void *" module_image ", unsigned long " len ,
-.BI "                const char *" param_values );
-.BI "int finit_module(int " fd ", const char *" param_values ,
-.BI "                 int " flags );
-.fi
+.BR "#include <linux/module.h>" "    /* Definition of " MODULE_* " constants */"
+.BR "#include <sys/syscall.h>" "     /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.IR Note :
-There are no glibc wrappers for these system calls; see NOTES.
+.BI "int syscall(SYS_init_module, void *" module_image ", unsigned long " len ,
+.BI "            const char *" param_values );
+.BI "int syscall(SYS_finit_module, int " fd ", const char *" param_values ,
+.BI "            int " flags );
+.fi
 .SH DESCRIPTION
 .BR init_module ()
 loads an ELF image into kernel space,
@@ -268,11 +269,6 @@ manually declare the interface in your code;
 alternatively, you can invoke the system call using
 .BR syscall (2).
 .PP
-Glibc does not provide a wrapper for
-.BR finit_module ();
-call it using
-.BR syscall (2).
-.PP
 Information about currently loaded modules can be found in
 .IR /proc/modules
 and in the file trees under the per-module subdirectories under
-- 
2.31.0

