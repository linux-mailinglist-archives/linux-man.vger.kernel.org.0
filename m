Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 55FA1202DB
	for <lists+linux-man@lfdr.de>; Thu, 16 May 2019 11:51:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726692AbfEPJu7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 May 2019 05:50:59 -0400
Received: from sym2.noone.org ([178.63.92.236]:46350 "EHLO sym2.noone.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726336AbfEPJu7 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 16 May 2019 05:50:59 -0400
X-Greylist: delayed 560 seconds by postgrey-1.27 at vger.kernel.org; Thu, 16 May 2019 05:50:58 EDT
Received: by sym2.noone.org (Postfix, from userid 1002)
        id 454RJc4WSjzvjc1; Thu, 16 May 2019 11:41:32 +0200 (CEST)
From:   Tobias Klauser <tklauser@distanz.ch>
To:     mtk.manpages@gmail.com
Cc:     palmer@sifive.com, linux-man@vger.kernel.org
Subject: [PATCH] vdso.7: document vDSO for RISCV
Date:   Thu, 16 May 2019 11:41:32 +0200
Message-Id: <20190516094132.8850-1-tklauser@distanz.ch>
X-Mailer: git-send-email 2.11.0
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Document the symbols exported by the RISCV vDSO which is present
from kernel 4.15 onwards.

See https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/arch/riscv/vdso

Signed-off-by: Tobias Klauser <tklauser@distanz.ch>
---
 man7/vdso.7 | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/man7/vdso.7 b/man7/vdso.7
index 8375df527ffa..8ac6c12d2c2f 100644
--- a/man7/vdso.7
+++ b/man7/vdso.7
@@ -153,6 +153,7 @@ ia64	linux\-gate.so.1
 mips	linux\-vdso.so.1
 ppc/32	linux\-vdso32.so.1
 ppc/64	linux\-vdso64.so.1
+riscv	linux\-vdso.so.1
 s390	linux\-vdso32.so.1
 s390x	linux\-vdso64.so.1
 sh	linux\-gate.so.1
@@ -433,6 +434,27 @@ and
 .I __kernel_clock_gettime
 interfaces;
 the kernel falls back to the real system call.
+.SS riscv functions
+.\" See linux/arch/riscv/kernel/vdso/vdso.lds.S
+The table below lists the symbols exported by the vDSO.
+.if t \{\
+.ft CW
+\}
+.TS
+l l.
+symbol	version
+_
+__kernel_rt_sigreturn	LINUX_4.15
+__kernel_gettimeofday	LINUX_4.15
+__kernel_clock_gettime	LINUX_4.15
+__kernel_clock_getres	LINUX_4.15
+__kernel_getcpu	LINUX_4.15
+__kernel_flush_icache	LINUX_4.15
+.TE
+.if t \{\
+.in
+.ft P
+\}
 .SS s390 functions
 .\" See linux/arch/s390/kernel/vdso32/vdso32.lds.S
 The table below lists the symbols exported by the vDSO.
-- 
2.20.0

