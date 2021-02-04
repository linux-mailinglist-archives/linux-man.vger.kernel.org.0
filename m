Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B12C930F1E1
	for <lists+linux-man@lfdr.de>; Thu,  4 Feb 2021 12:18:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235679AbhBDLRw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Feb 2021 06:17:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235579AbhBDLQb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Feb 2021 06:16:31 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A2BAC06178A
        for <linux-man@vger.kernel.org>; Thu,  4 Feb 2021 03:15:51 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id f16so2750795wmq.5
        for <linux-man@vger.kernel.org>; Thu, 04 Feb 2021 03:15:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0dc6p34wdkFF75ww9XLmoVAmRnuX4wruVgSQX1OHJXg=;
        b=Pj9oKvwPFczxRX+g4/JlHmTSaccIxCOvdpKxGGsCj2GXqjBns82OxTw+Gq2rv4Yvpi
         MIEtMwURvYpdW4gVj6QTZchZCtmJzOGtmnYR7LOo0o+Z+3k2lMfGfRARLAQYGZf63gkB
         r8EUQZV1GEe3KvEKMMgpo5nJBVpmoV4ZqvnTaaNAwhrdg0f+IMPGISXOh3vlH93EbRTu
         rK119xnkclkrqx6JaIus5VHGQcebT2bd4RQIPr8EddAzPlsQtaKgC13N5BeDaKaquZOi
         9CREg14r8RobWRjQ08hPxoiFLXgEYftun4oa8JJbEXx30luii3aKe0oAXitZPn4IDqcF
         2hSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0dc6p34wdkFF75ww9XLmoVAmRnuX4wruVgSQX1OHJXg=;
        b=rdkUyU8c8mHsFG1H9c9J94+jkUqlbXzGYOGym7v7dfzJRZbR23Db3XgyMzOIG4SBte
         /EVfPqDXZyb7LBhWdnJwcDEDPIaXUsi1r0QAcK57LsY9V80OKKEp5jMalDYEV7mjJbu6
         3JKyK+Y2dZtPmoutKXp6Zc2KgRO2X4CNWIIYrwuqfEjvyE1m8+t3zK+vw3mu21dowK1p
         Jm+DcsHopNcaIORXBKRLtVsSnxaysXn49v6KKNu8vH0dulpejnY+S1jIhcxkhq1F9Cc4
         +epmA+4vBFYv1dZJhoEw0M6vxKYEzLjdsxuNQDwgNmq/quID1VQdAbRjPuSkFy+wJ5ou
         +ALQ==
X-Gm-Message-State: AOAM53184pW4Rizn2nD25AWWmY//QezQmmwz6DI/mFiEo5m8aTf45GFL
        A/RKtYhMe3DUjK8TJk8GQZ0=
X-Google-Smtp-Source: ABdhPJwux2vQFLOknf/wRada9Jf0fN6bTsj+2/pa+gmWivsdDiL1AwdAlilAsX6PuzFlQ4+lDQcSLQ==
X-Received: by 2002:a05:600c:414b:: with SMTP id h11mr6577695wmm.125.1612437350223;
        Thu, 04 Feb 2021 03:15:50 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id t15sm5651379wmi.48.2021.02.04.03.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 03:15:49 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] bdflush.2, capget.2, get_mempolicy.2, ipc.2, lookup_dcookie.2, mbind.2, migrate_pages.2: Add notes about missing glibc wrappers
Date:   Thu,  4 Feb 2021 12:15:27 +0100
Message-Id: <20210204111526.194462-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

.../glibc$ grep_syscall_wrapper bdflush
.../glibc$ grep_syscall_wrapper capget
.../glibc$ grep_syscall_wrapper capset
.../glibc$ grep_syscall_wrapper get_mempolicy
.../glibc$ grep_syscall_wrapper ipc
.../glibc$ grep_syscall_wrapper lookup_dcookie
.../glibc$ grep_syscall_wrapper mbind
.../glibc$ grep_syscall_wrapper migrate_pages
.../glibc$

function grep_syscall_wrapper()
{
	if ! [ -v 1 ]; then
		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
		return ${EX_USAGE};
	fi

	find * -type f \
	|grep '\.h$' \
	|sort -V \
	|xargs pcregrep -Mn \
	  "(?s)^[^\s#][\w\s]+\s+\**${1}\s*\([\w\s()[\]*,]*?(...)?\)[\w\s()]*;" \
	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
}

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/bdflush.2        | 3 +++
 man2/capget.2         | 6 ++++++
 man2/get_mempolicy.2  | 4 ++++
 man2/ipc.2            | 6 ++++++
 man2/lookup_dcookie.2 | 6 ++++++
 man2/mbind.2          | 4 ++++
 man2/migrate_pages.2  | 4 ++++
 7 files changed, 33 insertions(+)

diff --git a/man2/bdflush.2 b/man2/bdflush.2
index 93190ee3a..6e69155bf 100644
--- a/man2/bdflush.2
+++ b/man2/bdflush.2
@@ -34,6 +34,9 @@ bdflush \- start, flush, or tune buffer-dirty-flush daemon
 .BI "int bdflush(int "  func ", long *" address );
 .BI "int bdflush(int "  func ", long " data );
 .fi
+.PP
+.IR Note :
+There is no glibc wrapper for this system call; see VERSIONS.
 .SH DESCRIPTION
 .IR Note :
 Since Linux 2.6,
diff --git a/man2/capget.2 b/man2/capget.2
index 226a917e7..ea504c28c 100644
--- a/man2/capget.2
+++ b/man2/capget.2
@@ -23,6 +23,9 @@ capget, capset \- set/get capabilities of thread(s)
 .BI "int capget(cap_user_header_t " hdrp ", cap_user_data_t " datap );
 .BI "int capset(cap_user_header_t " hdrp ", const cap_user_data_t " datap );
 .fi
+.PP
+.IR Note :
+There are no glibc wrappers for these system calls; see NOTES.
 .SH DESCRIPTION
 These two system calls are the raw kernel interface for getting and
 setting thread capabilities.
@@ -236,6 +239,9 @@ No such thread.
 .SH CONFORMING TO
 These system calls are Linux-specific.
 .SH NOTES
+Glibc does not provide a wrapper for this system call; call it using
+.BR syscall (2).
+.PP
 The portable interface to the capability querying and setting
 functions is provided by the
 .I libcap
diff --git a/man2/get_mempolicy.2 b/man2/get_mempolicy.2
index 1ee68933b..fbcab2a7c 100644
--- a/man2/get_mempolicy.2
+++ b/man2/get_mempolicy.2
@@ -37,6 +37,9 @@ get_mempolicy \- retrieve NUMA memory policy for a thread
 .PP
 Link with \fI\-lnuma\fP.
 .fi
+.PP
+.IR Note :
+There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 .BR get_mempolicy ()
 retrieves the NUMA policy of the calling thread or of a memory address,
@@ -239,6 +242,7 @@ system call was added to the Linux kernel in version 2.6.7.
 .SH CONFORMING TO
 This system call is Linux-specific.
 .SH NOTES
+Glibc does not provide a wrapper for this system call.
 For information on library support, see
 .BR numa (7).
 .SH SEE ALSO
diff --git a/man2/ipc.2 b/man2/ipc.2
index 469185638..d2b409ff9 100644
--- a/man2/ipc.2
+++ b/man2/ipc.2
@@ -31,6 +31,9 @@ ipc \- System V IPC system calls
 ", int " third ,
 .BI "        void *" ptr ", long " fifth );
 .fi
+.PP
+.IR Note :
+There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 .BR ipc ()
 is a common kernel entry point for the System\ V IPC calls
@@ -54,6 +57,9 @@ system call; instead,
 .BR semctl (2),
 .BR shmctl (2),
 and so on really are implemented as separate system calls.
+.PP
+Glibc does not provide a wrapper for this system call; call it using
+.BR syscall (2).
 .SH SEE ALSO
 .BR msgctl (2),
 .BR msgget (2),
diff --git a/man2/lookup_dcookie.2 b/man2/lookup_dcookie.2
index c2f2a87e6..e38ca89a4 100644
--- a/man2/lookup_dcookie.2
+++ b/man2/lookup_dcookie.2
@@ -31,6 +31,9 @@ lookup_dcookie \- return a directory entry's path
 .nf
 .BI "int lookup_dcookie(u64 " cookie ", char *" buffer ", size_t " len );
 .fi
+.PP
+.IR Note :
+There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 Look up the full path of the directory entry specified by the value
 .IR cookie .
@@ -89,5 +92,8 @@ It relies on a kernel driver to register cookies for directory entries.
 .PP
 The path returned may be suffixed by the string " (deleted)" if the directory
 entry has been removed.
+.PP
+Glibc does not provide a wrapper for this system call; call it using
+.BR syscall (2).
 .SH SEE ALSO
 .BR oprofile (1)
diff --git a/man2/mbind.2 b/man2/mbind.2
index d98969e7f..bfec5dd1b 100644
--- a/man2/mbind.2
+++ b/man2/mbind.2
@@ -45,6 +45,9 @@ mbind \- set memory policy for a memory range
 .PP
 Link with \fI\-lnuma\fP.
 .fi
+.PP
+.IR Note :
+There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 .BR mbind ()
 sets the NUMA memory policy,
@@ -425,6 +428,7 @@ system call was added to the Linux kernel in version 2.6.7.
 .SH CONFORMING TO
 This system call is Linux-specific.
 .SH NOTES
+Glibc does not provide a wrapper for this system call.
 For information on library support, see
 .BR numa (7).
 .PP
diff --git a/man2/migrate_pages.2 b/man2/migrate_pages.2
index cbba5350d..e4c7af92d 100644
--- a/man2/migrate_pages.2
+++ b/man2/migrate_pages.2
@@ -27,6 +27,9 @@ migrate_pages \- move all pages in a process to another set of nodes
 .BI "                   const unsigned long *" new_nodes );
 .fi
 .PP
+.IR Note :
+There is no glibc wrapper for this system call; see NOTES.
+.PP
 Link with \fI\-lnuma\fP.
 .SH DESCRIPTION
 .BR migrate_pages ()
@@ -140,6 +143,7 @@ system call first appeared on Linux in version 2.6.16.
 .SH CONFORMING TO
 This system call is Linux-specific.
 .SH NOTES
+Glibc does not provide a wrapper for this system call.
 For information on library support, see
 .BR numa (7).
 .PP
-- 
2.30.0

