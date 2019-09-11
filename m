Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 13A79B02C7
	for <lists+linux-man@lfdr.de>; Wed, 11 Sep 2019 19:38:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729349AbfIKRiL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Sep 2019 13:38:11 -0400
Received: from vmicros1.altlinux.org ([194.107.17.57]:53676 "EHLO
        vmicros1.altlinux.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729145AbfIKRiL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Sep 2019 13:38:11 -0400
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id 2422772CC6C;
        Wed, 11 Sep 2019 20:38:08 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id 162357CCB47; Wed, 11 Sep 2019 20:38:08 +0300 (MSK)
Date:   Wed, 11 Sep 2019 20:38:08 +0300
From:   "Dmitry V. Levin" <ldv@altlinux.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Elvira Khabirova <lineprinter@altlinux.org>,
        linux-man@vger.kernel.org
Subject: [PATCH] ptrace.2: document struct ptrace_syscall_info
Message-ID: <20190911173807.GA25385@altlinux.org>
References: <20190902123858.GA8956@altlinux.org>
 <0eb09cbc-8035-ee82-9c75-6525d91e7138@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0eb09cbc-8035-ee82-9c75-6525d91e7138@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Dmitry V. Levin <ldv@altlinux.org>
---
 man2/ptrace.2 | 51 ++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 50 insertions(+), 1 deletion(-)

diff --git a/man2/ptrace.2 b/man2/ptrace.2
index ff897bb19..b030247e6 100644
--- a/man2/ptrace.2
+++ b/man2/ptrace.2
@@ -1026,7 +1026,56 @@ If the size of the data to be written by the kernel exceeds the size
 specified by the
 .I addr
 argument, the output data is truncated.
-.\" FIXME Document 'struct ptrace_syscall_info'
+.IP
+The
+.I ptrace_syscall_info
+structure contains the following fields:
+.IP
+.in
+.EX
+struct ptrace_syscall_info {
+    __u8 op;                    /* PTRACE_SYSCALL_INFO_* value
+                                   describing the kind
+                                   of system call stop,
+                                   see <linux/ptrace.h> */
+    __u32 arch;                 /* AUDIT_ARCH_* value,
+                                   see seccomp(2) */
+    __u64 instruction_pointer;  /* CPU instruction pointer */
+    __u64 stack_pointer;        /* CPU stack pointer */
+    union {
+        struct {
+            __u64 nr;           /* System call number */
+            __u64 args[6];      /* System call arguments */
+        } entry;                /* Information specific to
+                                   system call entry stops */
+        struct {
+            __s64 rval;         /* System call return value */
+            __u8 is_error;      /* System call error flag */
+        } exit;                 /* Information specific to
+                                   system call exit stops */
+        struct {
+            __u64 nr;           /* System call number */
+            __u64 args[6];      /* System call arguments */
+            __u32 ret_data;     /* The SECCOMP_RET_DATA portion
+                                   of SECCOMP_RET_TRACE return
+                                   value */
+        } seccomp;              /* Information specific to
+                                   PTRACE_EVENT_SECCOMP stops */
+    };
+};
+.EE
+.in
+.IP
+.IR op ,
+.IR arch ,
+.IR instruction_pointer ,
+and
+.I stack_pointer
+fields are defined for all kinds of ptrace system call stops.
+The rest of the structure is a union, one should read only those fields
+that are meaningful for the kind of system call stop specified by the
+.IR op
+field.
 .\"
 .SS Death under ptrace
 When a (possibly multithreaded) process receives a killing signal
-- 
ldv
