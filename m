Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52F9D36754C
	for <lists+linux-man@lfdr.de>; Thu, 22 Apr 2021 00:45:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229706AbhDUWqB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 21 Apr 2021 18:46:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235004AbhDUWp7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 21 Apr 2021 18:45:59 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78FE7C06174A
        for <linux-man@vger.kernel.org>; Wed, 21 Apr 2021 15:45:24 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id g9so26845434wrx.0
        for <linux-man@vger.kernel.org>; Wed, 21 Apr 2021 15:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KMjxFVDpO/HQahZHCeuQOadjK9NNgb98ECvI/hvZ2rU=;
        b=T4jUBIAgKdAya1hqncTitUxPTqNkp3c6Vnck4I+PjfIKD+4hCTp0sXbf1UXy9Gg4zy
         p69RoDrbMcHw/C0zTykIGkc/+O47liLVN9WiF0FvimeLNPV/FdH46QHrzYJ4HSAqSZpH
         OXJ7Bifr22xpnQYaUbCAMPz1STn6/X65wJl46UfreK+weYsjlOBJgT7l+MZseKhmtM+m
         IPSO3FeIXLXmrCLgpw/mzhJL2O0vu1ZLQfcHisXBugPWZdygTHuB+0SFB0XjuODsv9Y9
         brmPLV+tdVc9xsA8kbj8VAi0eoi5whDLu7+VbUISgWaU1py71ADO+B9aHN7SXmtGR+pX
         IZGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KMjxFVDpO/HQahZHCeuQOadjK9NNgb98ECvI/hvZ2rU=;
        b=RQ3pST3unG949OHa1pxohdWDoXtM9tW+zroTwl317qv4UD7HbmkPmMM8/WpWsuknus
         BQujzg4666bgK5pK0EoNPW0Gf4l7awMd0aGsDcxBDJUBW5rkHTJN2s5VOLanEcYugs7l
         R6YfkIOWbjzXf3xuYnx2+2SVfwFRenxyPptL6I7dxePioq7PI+jYw+uNJCaYKCSWLsPD
         8a2pXiJxzc2q4BdpNXI2A67VE+R5Ap8ssvZZyWQcs6pWbdGEodHjLdrpaiWsr8UKsD2b
         2p400lVQTMsfckAO8Y2BS/qEkZv2OwJpgdQlV0bqAtU4FU7YiGc/rkOjFD4KbLTsmTGN
         vqQw==
X-Gm-Message-State: AOAM530yIn44UnVhqDXc9C99as078KW0kPyOO2GwCG3mWdloZx0PNAwy
        gJQdra8Os93eKWpk9zlZcRI=
X-Google-Smtp-Source: ABdhPJyEMiOpVmvKqbZewawKshkv/tQUGpQW4019ull1/hiR8tsjfcvd3Exy95/TmKJZ5SMJQ5ls8w==
X-Received: by 2002:adf:bc09:: with SMTP id s9mr366412wrg.329.1619045123182;
        Wed, 21 Apr 2021 15:45:23 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id l13sm781800wrt.14.2021.04.21.15.45.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 15:45:22 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 1/3] alloc_hugepages.2, arch_prctl.2, capget.2, clone.2, delete_module.2, execveat.2, exit_group.2, get_robust_list.2, getunwind.2, init_module.2: Add note about the use of syscall(2)
Date:   Thu, 22 Apr 2021 00:44:17 +0200
Message-Id: <20210421224418.143065-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/alloc_hugepages.2 | 5 +++++
 man2/arch_prctl.2      | 6 ++++++
 man2/capget.2          | 5 +++++
 man2/clone.2           | 6 ++++++
 man2/delete_module.2   | 6 ++++++
 man2/execveat.2        | 6 ++++++
 man2/exit_group.2      | 6 ++++++
 man2/get_robust_list.2 | 5 +++++
 man2/getunwind.2       | 6 ++++++
 man2/init_module.2     | 5 +++++
 10 files changed, 56 insertions(+)

diff --git a/man2/alloc_hugepages.2 b/man2/alloc_hugepages.2
index cc76fc495..47f9da6b0 100644
--- a/man2/alloc_hugepages.2
+++ b/man2/alloc_hugepages.2
@@ -35,6 +35,11 @@ alloc_hugepages, free_hugepages \- allocate or free huge pages
 .BI "int syscall(SYS_free_hugepages, void *" addr );
 .\" asmlinkage int sys_free_hugepages(unsigned long addr);
 .fi
+.PP
+.IR Note :
+glibc provides no wrappers for these system calls,
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The system calls
 .BR alloc_hugepages ()
diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
index 7ae5b350c..982416761 100644
--- a/man2/arch_prctl.2
+++ b/man2/arch_prctl.2
@@ -34,6 +34,12 @@ arch_prctl \- set architecture-specific thread state
 .BI "int syscall(SYS_arch_prctl, int " code ", unsigned long " addr );
 .BI "int syscall(SYS_arch_prctl, int " code ", unsigned long *" addr );
 .fi
+.PP
+.IR Note :
+glibc provides no wrapper for
+.BR arch_prctl (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 .BR arch_prctl ()
 sets architecture-specific process or thread state.
diff --git a/man2/capget.2 b/man2/capget.2
index 9dbc0404c..3ac05106f 100644
--- a/man2/capget.2
+++ b/man2/capget.2
@@ -28,6 +28,11 @@ capget, capset \- set/get capabilities of thread(s)
 .BI "int syscall(SYS_capset, cap_user_header_t " hdrp ,
 .BI "            const cap_user_data_t " datap );
 .fi
+.PP
+.IR Note :
+glibc provides no wrappers for these system calls,
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 These two system calls are the raw kernel interface for getting and
 setting thread capabilities.
diff --git a/man2/clone.2 b/man2/clone.2
index f455c97d8..7253091a7 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -63,6 +63,12 @@ clone, __clone2, clone3 \- create a child process
 .PP
 .BI "long syscall(SYS_clone3, struct clone_args *" cl_args ", size_t " size );
 .fi
+.PP
+.IR Note :
+glibc provides no wrapper for
+.BR clone3 (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 These system calls
 create a new ("child") process, in a manner similar to
diff --git a/man2/delete_module.2 b/man2/delete_module.2
index 21c9e9d8d..3b14111c5 100644
--- a/man2/delete_module.2
+++ b/man2/delete_module.2
@@ -33,6 +33,12 @@ delete_module \- unload a kernel module
 .PP
 .BI "int syscall(SYS_delete_module, const char *" name ", unsigned int " flags );
 .fi
+.PP
+.IR Note :
+glibc provides no wrapper for
+.BR delete_module (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR delete_module ()
diff --git a/man2/execveat.2 b/man2/execveat.2
index c566f53df..0c97a0eb3 100644
--- a/man2/execveat.2
+++ b/man2/execveat.2
@@ -36,6 +36,12 @@ execveat \- execute program relative to a directory file descriptor
 .BI "            const char *const " argv "[], const char *const " envp [],
 .BI "            int " flags );
 .fi
+.PP
+.IR Note :
+glibc provides no wrapper for
+.BR execveat (),
+necessitating the use of
+.BR syscall (2).
 .\" FIXME . See https://sourceware.org/bugzilla/show_bug.cgi?id=27364
 .SH DESCRIPTION
 .\" commit 51f39a1f0cea1cacf8c787f652f26dfee9611874
diff --git a/man2/exit_group.2 b/man2/exit_group.2
index b512927d4..96715d26a 100644
--- a/man2/exit_group.2
+++ b/man2/exit_group.2
@@ -32,6 +32,12 @@ exit_group \- exit all threads in a process
 .PP
 .BI "noreturn void syscall(SYS_exit_group, int " status );
 .fi
+.PP
+.IR Note :
+glibc provides no wrapper for
+.BR exit_group (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 This system call is equivalent to
 .BR _exit (2)
diff --git a/man2/get_robust_list.2 b/man2/get_robust_list.2
index d1b1c59bc..66b27d905 100644
--- a/man2/get_robust_list.2
+++ b/man2/get_robust_list.2
@@ -42,6 +42,11 @@ get_robust_list, set_robust_list \- get/set list of robust futexes
 .BI "long syscall(SYS_set_robust_list,"
 .BI "             struct robust_list_head *" head ", size_t " len );
 .fi
+.PP
+.IR Note :
+glibc provides no wrappers for these system calls,
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 These system calls deal with per-thread robust futex lists.
 These lists are managed in user space:
diff --git a/man2/getunwind.2 b/man2/getunwind.2
index 2c44506c7..bf15a82b6 100644
--- a/man2/getunwind.2
+++ b/man2/getunwind.2
@@ -35,6 +35,12 @@ getunwind \- copy the unwind data to caller's buffer
 .PP
 .BI "long syscall(SYS_getunwind, void " *buf ", size_t " buf_size );
 .fi
+.PP
+.IR Note :
+glibc provides no wrapper for
+.BR getunwind (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 .I Note: this system call is obsolete.
 .PP
diff --git a/man2/init_module.2 b/man2/init_module.2
index 13d1b7f0a..aac0c6631 100644
--- a/man2/init_module.2
+++ b/man2/init_module.2
@@ -38,6 +38,11 @@ init_module, finit_module \- load a kernel module
 .BI "int syscall(SYS_finit_module, int " fd ", const char *" param_values ,
 .BI "            int " flags );
 .fi
+.PP
+.IR Note :
+glibc provides no wrappers for these system calls,
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 .BR init_module ()
 loads an ELF image into kernel space,
-- 
2.31.0

