Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36F613796A5
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233280AbhEJR6B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:58:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232654AbhEJR6B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:58:01 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 502FEC061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:55 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id l13so17508574wru.11
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=abi0pYctvvMdncGo9cnwwy4M+LI2oBukEc5Y0D1R4AA=;
        b=qSaJ6xdYEYoRFS9VzP1CaNmZSl2eODFf9nXxBg+oYdGNb8aPy7Wk86zUpfRv+hTEwb
         bS6uUx+rxblSE6QenvQLXfFD+m6pQ6cVRCa+AJJbtwMoIIoCKO1IPUhAjdDvEVDyzx/J
         +KC1bt4SMoGjmzLUeQgyCu/lw4bcZWq47wvkEE5qDT3jQhtUUACZgabGlNqSpfJAysG/
         MA5M+t0ANLW6D/PEeeVwS61C6kg6jN/gpoL81iZklmUo/qSRhq8HZsIji92F/i4izLee
         JXiXKEZHKXkelor+pRUp/MdAGOvk1X9H408xWDOwb/SE+0SLaBW4+6SJJCjrJz/acbnE
         u55w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=abi0pYctvvMdncGo9cnwwy4M+LI2oBukEc5Y0D1R4AA=;
        b=i2woOLhda7IyX0B4Dy6mnKBIikxsSp4XXS85J3nylXbpaBFlWCQ3ANPJ5rogbMM055
         P6KlEwAu5MIdh4Q4eVYTT0lZV7B2nW1aw2IHpvTay8GzdxKvWZjnFHu6iE896Al8RztU
         XAEpGjadxQp9v48/ZChoiN4FcTVsMLWlM7mhIdDIN/BtxgEOhOfMuwTH5efk5h7KcVxZ
         G1DozvJDZDbxbaVHMWp3G1QmsIsb5gBLWx5kqCQfTzxKrln5yxOC6lbCFy4eb8ELfRLU
         gDcSvRmR8dIKa+cnP0VvK3DATJuZy+j6SjQkEX4r9nNVm7DRf0Eo0xd8tz+9MySfloiU
         BVeg==
X-Gm-Message-State: AOAM533PAh5IIyeLJ4wVRCjKmKslzeXX/zSHaHihw/Nq+75zKVI0RtG3
        +u289BWK0eCFvKkGL7lJAec=
X-Google-Smtp-Source: ABdhPJxCzNfk26JW5LK2eH+lliFxdB2fPvyVWIpT7AqIb6Z3un6gnGTdKAjTdt9R6gAZBx6YpV1mFQ==
X-Received: by 2002:a5d:5263:: with SMTP id l3mr32546370wrc.263.1620669414078;
        Mon, 10 May 2021 10:56:54 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:53 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 25/39] alloc_hugepages.2, arch_prctl.2, capget.2, clone.2, delete_module.2, exit_group.2, get_robust_list.2, getunwind.2, init_module.2: Add note about the use of syscall(2)
Date:   Mon, 10 May 2021 19:55:34 +0200
Message-Id: <20210510175546.28445-26-alx.manpages@gmail.com>
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
 man2/alloc_hugepages.2 | 5 +++++
 man2/arch_prctl.2      | 6 ++++++
 man2/capget.2          | 5 +++++
 man2/clone.2           | 6 ++++++
 man2/delete_module.2   | 6 ++++++
 man2/exit_group.2      | 6 ++++++
 man2/get_robust_list.2 | 5 +++++
 man2/getunwind.2       | 6 ++++++
 man2/init_module.2     | 5 +++++
 9 files changed, 50 insertions(+)

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
index 04b4ec38c..e381da165 100644
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
diff --git a/man2/exit_group.2 b/man2/exit_group.2
index d197f1f2e..1533529f8 100644
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
index 403bd7770..0935497c6 100644
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
2.31.1

