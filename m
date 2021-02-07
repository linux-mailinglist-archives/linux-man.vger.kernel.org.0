Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1213B312460
	for <lists+linux-man@lfdr.de>; Sun,  7 Feb 2021 13:59:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229611AbhBGM7B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Feb 2021 07:59:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbhBGM7B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Feb 2021 07:59:01 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1767C061756
        for <linux-man@vger.kernel.org>; Sun,  7 Feb 2021 04:58:19 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id z6so13757100wrq.10
        for <linux-man@vger.kernel.org>; Sun, 07 Feb 2021 04:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lMgcsWZZbZmDATgSCCjwhCG3e0dh5g67rzwBRwTT3Tk=;
        b=MpPw4su3PCoKgOzgQbKLQZO5jWsR23Vz3UtCJ4FWinG5v9n0uyHeLMahwnFKOfPZp0
         WrYNSRnsI9CgPHEPmIXplff8hlEOCzCxyEAhjmG4mwGSezqCcbCwOI1STqaHGMXjPs36
         /x6f6dWCdXJodel/f9l1yecx/6zTLcNp1e50dht0FcL0feSIiCHPsU7NumUdk7QMZmT8
         zlyKOWYKGaCadiX7kyYHV150scSiXpbDg0h7gEwU6oAc6AMS4s4NGfWJCb9scdW//iGs
         vvuePcPzOfriHTeALWB1rgULNw5AyA/QtjI1S7k9wMBDynEYwXz2OijMNpKp3J5L164w
         i+2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lMgcsWZZbZmDATgSCCjwhCG3e0dh5g67rzwBRwTT3Tk=;
        b=UX45NQROYlfPLJIJgB03RfFO2Pd45VNfctcumxL2At/dfEb+K9CN/UVNQeKpVB3VlM
         AyLpxrsg2OtMQ8izfC/+FpS8U0BkxEyNRPUy4tRVPo/YVJlvwoxhdtq98bt7ef4HesJh
         jHzX7OesvBCKn1FEtGaSMbDFFsi/wZ5m1U5zuOqUFkyFuqXPjv7Nd4o1FNH5j7AJsSOk
         roUCacIsOOuLV95WBDdP0C0H57r5lg5U9w7BtaSASOue03HicQxTfGydueLWYw/7w731
         WRPgqIXM9UPLsBllCxTZSnzRmTiw606G5Lbg1Y76MIV4UjGA4L+ehuDp5lRiThbTr1bX
         T46Q==
X-Gm-Message-State: AOAM530e1M/xD/6nTaZ29oORbe9C7Yv6rQdryzR+2FhVls8OOmQ1fqPc
        pTbYg12pKlBoDR68JuQEdeoaeNn5+0k=
X-Google-Smtp-Source: ABdhPJwunjXpMNdLabde4ruac2K/xW0h4RvLMI/0hWXQheYH5PIoMOwVHwGqhzaeqk5M8ZH4UuFP/w==
X-Received: by 2002:adf:b749:: with SMTP id n9mr14695626wre.267.1612702698782;
        Sun, 07 Feb 2021 04:58:18 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id t17sm4137667wmi.20.2021.02.07.04.58.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Feb 2021 04:58:18 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2] mmap2.2: Fix prototype parameter types
Date:   Sun,  7 Feb 2021 13:57:47 +0100
Message-Id: <20210207125746.217846-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210204111925.194705-1-alx.manpages@gmail.com>
References: <20210204111925.194705-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

There are many slightly different prototypes for this syscall,
but none of them is like the documented one.
Of all the different prototypes,
let's document the asm-generic one.

This manual page was actually using a prototype similar to
mmap(2), but there's no glibc wrapper function called mmap2(2),
as the wrapper for this syscall is mmap(2).  Therefore, the
documented prototype should be the kernel one.

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

