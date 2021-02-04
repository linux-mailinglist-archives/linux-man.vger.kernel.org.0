Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFA9A30F1F2
	for <lists+linux-man@lfdr.de>; Thu,  4 Feb 2021 12:22:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235560AbhBDLUe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Feb 2021 06:20:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235551AbhBDLUc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Feb 2021 06:20:32 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75B2DC0613D6;
        Thu,  4 Feb 2021 03:19:52 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id y187so2658262wmd.3;
        Thu, 04 Feb 2021 03:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+NQNsmgLjymyzoU3Zkfr8Kgi3bLWvqv+FhgdKhN/wd8=;
        b=Z4wbM/ZesE9e2jKkCM9CV63YrTCrSmXNRukY0KlRSHHUJM/MUBKgHelpTdSaRZz6A9
         jic7/GxbnfRJcCvA2e+SvwIi00u/JIVSY7oMkK6NFDMqT0FqQcK4K3SZgz4M8U0JEauB
         poBo/8lflLlKztlSr6qZ7JHhuc5ciY7Ajhah9dpmq69/NL4JcGppgYGHoE/ZECBR+Uk0
         k3p3tNDXvTyByr2CmzIoUQtRkmqKNoKBeQ9OGreHRbCls3rY8VibZ9mT2v6QJWcmwXSy
         LLbL0pTMs805ue4O9FrZmbjZ4SeTpi0jt4W3yy9QDnE5JrBtUzcP+I/SILff9XjGO09q
         kutA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+NQNsmgLjymyzoU3Zkfr8Kgi3bLWvqv+FhgdKhN/wd8=;
        b=mRw8mhCRAHDIZxixuZgEB1PKejYND3WiLNWCw8IuH1OLNUAsKM0IMbBgFAY8+t9eaa
         FBJLqO3vOXVLG7H/6zQjS1g1w0imrDLizhoFZ2h0V6w5jksPzutvsjswl+KBK7lf3Cg2
         EyO297Qnqa+5+AgmaHtrF8GM4ODEP45WwOBvpPSQOCCm3OT+hgRTGUgci/hIWHRISFA5
         oBqqIT9jrkzcBrre+w5pFe9gzXadka05AsMUnPpBZiIwnhq0Lp4NAaADEUPSlAEGyNkM
         QCygM+RintZRDtHe4TjmADWUwlIc9hod/harxuB2GvihSNifR0LU5VB818xLamqaBqnS
         MSsg==
X-Gm-Message-State: AOAM533Va3vMjLDlEzhEZmlGvFcf+d4a/NwqNf0bC5K/aG+KL3dsvXn0
        QjqYIjAQAAW+ftrhRs4e+xoRk1CODrw=
X-Google-Smtp-Source: ABdhPJwM8QDtmlNOiM1gYBoPd1mLD70xtd52ge1IkHclh0vALb4mHAcenM/Tq4VZQ12Qu9IDfgjoAw==
X-Received: by 2002:a05:600c:4f8b:: with SMTP id n11mr6940730wmq.160.1612437591270;
        Thu, 04 Feb 2021 03:19:51 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id c62sm5849770wmd.43.2021.02.04.03.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 03:19:50 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] mmap2.2: Fix prototype parameter types
Date:   Thu,  4 Feb 2021 12:19:26 +0100
Message-Id: <20210204111925.194705-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

There are many slightly different prototypes for this syscall,
but none of them is like the documented one.
Of all the different prototypes,
let's document the asm-generic one.

......

.../linux$ grep_syscall mmap2
arch/csky/kernel/syscall.c:17:
SYSCALL_DEFINE6(mmap2,
	unsigned long, addr,
	unsigned long, len,
	unsigned long, prot,
	unsigned long, flags,
	unsigned long, fd,
	off_t, offset)
arch/microblaze/kernel/sys_microblaze.c:46:
SYSCALL_DEFINE6(mmap2, unsigned long, addr, unsigned long, len,
		unsigned long, prot, unsigned long, flags, unsigned long, fd,
		unsigned long, pgoff)
arch/nds32/kernel/sys_nds32.c:12:
SYSCALL_DEFINE6(mmap2, unsigned long, addr, unsigned long, len,
	       unsigned long, prot, unsigned long, flags,
	       unsigned long, fd, unsigned long, pgoff)
arch/powerpc/kernel/syscalls.c:60:
SYSCALL_DEFINE6(mmap2, unsigned long, addr, size_t, len,
		unsigned long, prot, unsigned long, flags,
		unsigned long, fd, unsigned long, pgoff)
arch/riscv/kernel/sys_riscv.c:37:
SYSCALL_DEFINE6(mmap2, unsigned long, addr, unsigned long, len,
	unsigned long, prot, unsigned long, flags,
	unsigned long, fd, off_t, offset)
arch/s390/kernel/sys_s390.c:49:
SYSCALL_DEFINE1(mmap2, struct s390_mmap_arg_struct __user *, arg)
arch/sparc/kernel/sys_sparc_32.c:101:
SYSCALL_DEFINE6(mmap2, unsigned long, addr, unsigned long, len,
	unsigned long, prot, unsigned long, flags, unsigned long, fd,
	unsigned long, pgoff)
arch/ia64/include/asm/unistd.h:30:
asmlinkage unsigned long sys_mmap2(
				unsigned long addr, unsigned long len,
				int prot, int flags,
				int fd, long pgoff);
arch/ia64/kernel/sys_ia64.c:139:
asmlinkage unsigned long
sys_mmap2 (unsigned long addr, unsigned long len, int prot, int flags, int fd, long pgoff)
arch/m68k/kernel/sys_m68k.c:40:
asmlinkage long sys_mmap2(unsigned long addr, unsigned long len,
	unsigned long prot, unsigned long flags,
	unsigned long fd, unsigned long pgoff)
arch/parisc/kernel/sys_parisc.c:275:
asmlinkage unsigned long sys_mmap2(unsigned long addr, unsigned long len,
	unsigned long prot, unsigned long flags, unsigned long fd,
	unsigned long pgoff)
arch/powerpc/include/asm/syscalls.h:15:
asmlinkage long sys_mmap2(unsigned long addr, size_t len,
		unsigned long prot, unsigned long flags,
		unsigned long fd, unsigned long pgoff);
arch/sh/include/asm/syscalls.h:8:
asmlinkage long sys_mmap2(unsigned long addr, unsigned long len,
			  unsigned long prot, unsigned long flags,
			  unsigned long fd, unsigned long pgoff);
arch/sh/kernel/sys_sh.c:41:
asmlinkage long sys_mmap2(unsigned long addr, unsigned long len,
	unsigned long prot, unsigned long flags,
	unsigned long fd, unsigned long pgoff)
arch/sparc/kernel/systbls.h:23:
asmlinkage long sys_mmap2(unsigned long addr, unsigned long len,
			  unsigned long prot, unsigned long flags,
			  unsigned long fd, unsigned long pgoff);
include/asm-generic/syscalls.h:14:
asmlinkage long sys_mmap2(unsigned long addr, unsigned long len,
			unsigned long prot, unsigned long flags,
			unsigned long fd, unsigned long pgoff);
.../linux$

function grep_syscall()
{
	if ! [ -v 1 ]; then
		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
		return ${EX_USAGE};
	fi

	find * -type f \
	|grep '\.c$' \
	|sort -V \
	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
	|sed -E 's/^[^:]+:[0-9]+:/&\n/';

	find * -type f \
	|grep '\.[ch]$' \
	|sort -V \
	|xargs pcregrep -Mn "(?s)^asmlinkage\s+[\w\s]+\**sys_${1}\s*\(.*?\)" \
	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
}

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/mmap2.2 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man2/mmap2.2 b/man2/mmap2.2
index 349ee45e5..f9f9e91cb 100644
--- a/man2/mmap2.2
+++ b/man2/mmap2.2
@@ -33,8 +33,9 @@ mmap2 \- map files or devices into memory
 .nf
 .B #include <sys/mman.h>
 .PP
-.BI "void *mmap2(void *" addr ", size_t " length ", int " prot ,
-.BI "             int " flags ", int " fd ", off_t " pgoffset );
+.BI "void *mmap2(unsigned long " addr ", unsigned long " length ,
+.BI "            unsigned long " prot ", unsigned long " flags ,
+.BI "            unsigned long " fd ", unsigned long " pgoffset );
 .fi
 .SH DESCRIPTION
 This is probably not the system call that you are interested in; instead, see
-- 
2.30.0

