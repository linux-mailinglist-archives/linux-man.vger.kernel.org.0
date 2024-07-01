Return-Path: <linux-man+bounces-1312-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E65591EB27
	for <lists+linux-man@lfdr.de>; Tue,  2 Jul 2024 00:51:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A7071F22613
	for <lists+linux-man@lfdr.de>; Mon,  1 Jul 2024 22:51:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8334216EBE9;
	Mon,  1 Jul 2024 22:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="JTd6Uov0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE62823DE
	for <linux-man@vger.kernel.org>; Mon,  1 Jul 2024 22:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719874269; cv=none; b=gMSchpFcvKQF3zAKHe0MmXVr31XHudIXFIHbbDv26nbPFKGxkY5iCPFN7U/JXvZbQhiV/UJVocrfHCMHvNbxDCr6Z3zRpQ1e+VVx7WFgCbHY3jcDpj9GsYpEt1JH1YnJc4HOFfQGnD7+2a+3qEi4nezga6Kdr9JfIJLUnJXvrNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719874269; c=relaxed/simple;
	bh=f1xf1h1WSHxQPUiaeFtY2DhQJSUGjLCBgFTd5lrKCtg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=DVc9HPcrECmvRXnrbfcsoxiiaG4kOWnt4Ogj+WSGrZQibxtp94d7ca5JimIFkNiTLcSI8wGkT25UfTN+ycLrRKkGLsDqbaUxoy3t8aerBgK4jtEQybU6gkD+ilVT8RKgIp5yMhv6184vMA0+6BjVP6ifY/W5UBvRFgn7J9wM+OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=JTd6Uov0; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1f480624d0dso27578765ad.1
        for <linux-man@vger.kernel.org>; Mon, 01 Jul 2024 15:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719874263; x=1720479063; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tfbhD5W2xo/max5zv/CvBId1geTmWiTZwcoJNEc3z1s=;
        b=JTd6Uov0xSOH5Nn3FfZ+FLDwLEmTlSuKOKFnvk8TK4cRl8BnaDAlIb580fGpcMG0+d
         1+qsRpTOzVGKcYbYK3GFkzLRRfkyvbV30kgZiiZ1CBT0Opaj8lTEd0IAP4CFl6PdcXeo
         clWuMVoK3PhaYX8ZS0lrEwNzA17QCESukU0WE5qrqUPc2c9MXovBRqQRMjyCloOXMwxS
         TuvTUMP7OFA/NBFlWUFh6K2fuopSIiG7zhLn249ie5XhZu1p1erdZmAsbyqahpUwmv66
         O9oK5URLRSjVQjgKnUicO5nLALTXVbOmjLT0k3WFhd82yLtHbMd4WuaaxgUORQUvSNxZ
         LwiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719874263; x=1720479063;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tfbhD5W2xo/max5zv/CvBId1geTmWiTZwcoJNEc3z1s=;
        b=oDCzAQ5gdT3Fi298RD7EhgPosUXlcKH4GLazgBVnueIJJxqEvmNLW3wR4RndUutX75
         NAT2waLCKBLPQp+jowZdcWjkTG/sGajIVznVILYuzGlTOMJGUAxvCEh/yR0FWYIHCPBp
         SgVkJlnU/xnJsXa9V61drqw6Xui306mtk0WYU0OHSzvPThX+6MCkghnxaHxTqhfEGLy7
         iukysrv9t2ilkBxSAktZboxWIpERsBtmVvAlv1mrWBCmuB4JjGxppRWxH2YzkTbSRqKQ
         zN8oZsN6HF6eceaxFOClC5CMgPaq8RMgUgL5LAcri2Q1/gd27jmK8amkkYiyuYfGr8me
         J8Iw==
X-Forwarded-Encrypted: i=1; AJvYcCVx6UrnH8/Lm+P0gIN9GORnOJziCrqFUjdlY/jtR3xZqYYleyHdf98M7fKYwk2KNO8Cwkx68IZM71aGaAMtnGNYi4d1v9LJHd+n
X-Gm-Message-State: AOJu0YxdsHepE2EfCqbdvta54NGOHKaXj8irkLayFkrA3AvDzNg82m6B
	lefW/8kXu3UUx7Ra/+FYnOSknMzYisHw2SIJoYpQWpJCbH8tEiFo55WYJg3pRkM=
X-Google-Smtp-Source: AGHT+IFVYTYSrzqOA7T4YC2cJEf7Hwjrk4mq70jpAG27SnUlTU7yRuMHv7czqZ3I0w+mA3ep6rDexg==
X-Received: by 2002:a17:902:ce82:b0:1f9:ae6d:5697 with SMTP id d9443c01a7336-1fadbca1584mr96734715ad.35.1719874262692;
        Mon, 01 Jul 2024 15:51:02 -0700 (PDT)
Received: from [127.0.1.1] ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fac10d2652sm70510915ad.1.2024.07.01.15.51.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 15:51:02 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Mon, 01 Jul 2024 15:45:11 -0700
Subject: [PATCH v4] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240701-fencei_prctl-v4-1-9e181287d872@rivosinc.com>
X-B4-Tracking: v=1; b=H4sIAHYxg2YC/3XM3QqCMBjG8VuRHbfY+26adtR9RITuI18olU1GI
 d570xNB6vB54PefWLCebGDnbGLeRgrUd2moQ8Z0W3cPy8mkzVCgEoCKO9tpS/fB6/HJNSpTY6G
 kPFUskcFbR+81d72l3VIYe/9Z6xGW908oAgcuGmNqp62TEi6eYh+o00fdv9jSirh5BNx5TF6iq
 ZSoSmhE/sPLzRdY7rxMPi+ckQB5Dljt/DzPX8EnsuErAQAA
To: Alejandro Colomar <alx@kernel.org>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1719874261; l=6278;
 i=charlie@rivosinc.com; s=20240124; h=from:subject:message-id;
 bh=f1xf1h1WSHxQPUiaeFtY2DhQJSUGjLCBgFTd5lrKCtg=;
 b=1gbdJncqkKZXQwwXRlHYjg4jTNLoQmxlVDS2uMNS54gzgsQR2mIImKiABT5A1me9XVTGbRhSa
 HTg10Hx7Y6AB9VjjF01x1LevRScOVpsk5t9x9jk5vIdhQhZ3OnodWgf
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=eVndo3OHViAjwuqHqbJB4ZtzJzzvk/r6fUf84tZ3rw4=

Document the PR_RISCV_SET_ICACHE_FLUSH_CTX flag for prctl(2) that is
supported as of Linux 6.10.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
Changes in v4:
- Move release information to Standards/History
- Fix typo in prctl
- Use semantic newlines
- Add magic comments for code and fix style issues (clang-tidy warns
  about prctl flags that are available in the 6.10 rc's)
- Link to v3: https://lore.kernel.org/r/20240628-fencei_prctl-v3-1-56fd31155129@rivosinc.com

Changes in v3:
- Rebase onto master
- Add example usage
- Link to v2: https://lore.kernel.org/r/20240212-fencei_prctl-v2-1-32d940981b05@rivosinc.com

Changes in v2:
- Update formatting (Alejandro)
- Link to v1: https://lore.kernel.org/r/20240124-fencei_prctl-v1-1-0bddafcef331@rivosinc.com
---
 man/man2/prctl.2                                   |   3 +
 man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const | 157 +++++++++++++++++++++
 2 files changed, 160 insertions(+)

diff --git a/man/man2/prctl.2 b/man/man2/prctl.2
index 6db916587..31a3f9064 100644
--- a/man/man2/prctl.2
+++ b/man/man2/prctl.2
@@ -157,6 +157,8 @@ The first argument can be:
 .B PR_SET_MDWE
 .TQ
 .B PR_GET_MDWE
+.TQ
+.B PR_RISCV_SET_ICACHE_FLUSH_CTX
 .SH RETURN VALUE
 On success,
 a nonnegative value is returned.
@@ -268,4 +270,5 @@ so these operations should be used with care.
 .BR PR_GET_AUXV (2const),
 .BR PR_SET_MDWE (2const),
 .BR PR_GET_MDWE (2const),
+.BR PR_RISCV_SET_ICACHE_FLUSH_CTX (2const),
 .BR core (5)
diff --git a/man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const b/man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
new file mode 100644
index 000000000..2fbdd2fb5
--- /dev/null
+++ b/man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
@@ -0,0 +1,157 @@
+.\" Copyright 2024 Rivos Inc.
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH PR_RISCV_SET_ICACHE_FLUSH_CTX 2const (date) "Linux man-pages (unreleased)"
+.SH NAME
+PR_RISCV_SET_ICACHE_FLUSH_CTX
+\-
+Enable/disable icache flushing instructions in userspace.
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
+.B #include <sys/prctl.h>
+.P
+.BI "int prctl(PR_RISCV_SET_ICACHE_FLUSH_CTX, unsigned long " ctx,
+.BI "          unsigned long " scope );
+.fi
+.SH DESCRIPTION
+The context and the scope can be provided using
+.I ctx
+and
+.I scope
+respectively.
+.P
+When scope is set to
+.B PR_RISCV_SCOPE_PER_PROCESS
+all threads in the process are permitted to emit icache flushing instructions.
+Whenever any thread in the process is migrated,
+the corresponding hart's icache will be guaranteed
+to be consistent with instruction storage.
+This does not enforce any guarantees outside of migration.
+If a thread modifies an instruction that another thread may attempt to execute,
+the other thread must still emit an icache flushing instruction
+before attempting to execute the potentially modified instruction.
+This must be performed by the user-space program.
+.P
+In per-thread context (eg. scope is set to
+.BR PR_RISCV_SCOPE_PER_THREAD )
+only the thread calling this function is permitted to emit icache flushing
+instructions.
+When the thread is migrated,
+the corresponding hart's icache will be
+guaranteed to be consistent with instruction storage.
+.P
+On kernels configured without SMP, this prctl
+.BR PR_RISCV_SET_ICACHE_FLUSH_CTX
+is a nop as migrations across harts will not occur.
+.P
+The following values for
+.I ctx
+can be specified:
+.RS
+.TP
+.BR PR_RISCV_CTX_SW_FENCEI_ON " (since Linux 6.10)"
+Allow fence.i in user space.
+.TP
+.BR PR_RISCV_CTX_SW_FENCEI_OFF " (since Linux 6.10)"
+Disallow fence.i in user space.
+All threads in a process will be affected when scope is set to
+.BR PR_RISCV_SCOPE_PER_PROCESS .
+Therefore, caution must be taken;
+use this flag only when you can guarantee that
+no thread in the process will emit fence.i from this point onward.
+.RE
+.IP
+The following values for
+.I scope
+can be specified:
+.RS
+.TP
+.BR PR_RISCV_SCOPE_PER_PROCESS " (since Linux 6.10)"
+Ensure the icache of any thread in this process is coherent with instruction
+storage upon migration.
+.TP
+.BR PR_RISCV_SCOPE_PER_THREAD " (since Linux 6.10)"
+Ensure the icache of the current thread is coherent with instruction storage
+upon migration.
+.RE
+
+.SH EXAMPLES
+
+The following files are meant to be compiled and linked with each other.
+The modify_instruction() function
+replaces an add with zero with an add with one,
+causing the instruction sequence in get_value() to change from
+returning a zero to returning a one.
+
+.SS Program source: cmodx.c
+.\" SRC BEGIN (cmodx.c)
+.EX
+#include <stdio.h>
+#include <sys/prctl.h>
+.
+extern int get_value(void);
+extern void modify_instruction(void);
+.
+int main(void)
+{
+    int value = get_value();
+    printf("Value before cmodx: %d\[rs]n", value);
+.
+    // Call prctl before first fence.i is called
+    prctl(PR_RISCV_SET_ICACHE_FLUSH_CTX, PR_RISCV_CTX_SW_FENCEI_ON,
+          PR_RISCV_SCOPE_PER_PROCESS);
+    modify_instruction();
+    // Call prctl after final fence.i is called in process
+    prctl(PR_RISCV_SET_ICACHE_FLUSH_CTX, PR_RISCV_CTX_SW_FENCEI_OFF,
+          PR_RISCV_SCOPE_PER_PROCESS);
+.
+    value = get_value();
+    printf("Value after cmodx: %d\[rs]n", value);
+    return 0;
+}
+.EE
+.\" SRC END
+.SS Program source: cmodx.S
+.EX
+\&.option norvc
+.
+\&.text
+\&.global modify_instruction
+modify_instruction:
+lw a0, new_insn
+lui a5,%hi(old_insn)
+sw  a0,%lo(old_insn)(a5)
+fence.i
+ret
+.
+\&.section modifiable, "awx"
+\&.global get_value
+get_value:
+li a0, 0
+old_insn:
+addi a0, a0, 0
+ret
+.
+\&.data
+new_insn:
+addi a0, a0, 1
+.EE
+
+.SS Expected result
+.EX
+Value before cmodx: 0
+Value after cmodx: 1
+.EE
+
+.SH STANDARDS
+Linux. RISC-V only.
+.SH HISTORY
+.TP
+Linux 6.10 (RISC-V).
+.SH SEE ALSO
+.BR prctl (2)

---
base-commit: d0621648b4b5a356e86cea23e842f2591461f0cf
change-id: 20240124-fencei_prctl-c24da2643379

Best regards,
-- 
Charlie Jenkins <charlie@rivosinc.com>


