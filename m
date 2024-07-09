Return-Path: <linux-man+bounces-1410-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDC892C2EB
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 19:57:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8EBE01F237AB
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 17:57:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9431F17B02D;
	Tue,  9 Jul 2024 17:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Igw1xDR5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618AF180055
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 17:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720547820; cv=none; b=PyQ4pLk4nctCjE0P4OmQhTur2YykCaUIymRWa9yQeL85EKPv3XYF5XbHDS6xf6rR2YCehoZWBex+InPOqcYp9AbA2trZHd/DrsV4UtzLEEVJcre2Id8zb2JxaMdmS/D7qh+myQBH6/nrRS68zwNS6q3dAf61cMpxH7fp8eNzeqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720547820; c=relaxed/simple;
	bh=izrvTbNRVaB0wFvQ1NeXc0/LbVzJvfF8yD0wEVmbXck=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=tLNn5dRW+0eyVzwn1JLlSW1V4jPbX3E06SV3c6sqnlRXTOMHLbUJaV8fb+GkTrxegYDr8le+4qt5pDl1/BeANtyl3qwDUBA1mWCLZvOC8WU1/wzZCfC/Vtf1CsKh+B51fJQMi9sBUAibLrDONUBbZePYSlZ8rAyZf6L8IFH0scM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Igw1xDR5; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1fb472eacf4so22563465ad.1
        for <linux-man@vger.kernel.org>; Tue, 09 Jul 2024 10:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1720547817; x=1721152617; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LkEjxNZM+r3sO0iRqxSnsAIIn34WyfJTqkeLKHpBP24=;
        b=Igw1xDR5pH3Dt3SjHE6Yvp2IX+1dUjna7/LuPvdK8Boc2tE1C1CE9lx9FmcuDfCT5s
         hwe/TjY2vEoeZ8KwgAdFyRcVPYIK4smmryVWFEdMJ0ZZk19CEkazmNUq5Sf/TU+xQUd0
         Kt4Nv98tcpPFxaAAZ9H23r0mY/bWRWIiMGDYz1YQjg8HkdF8j92sp/1EPV63UpeOq6VS
         hdbn5eTmX5QAvGeHWyY8E9gzx9ErfrqFKc2pibEwtzlaUC6IUt+78qoeuHy92xh1H32u
         wMeCvlbJxw1P79ywAXd00iakHK8AOPL2gM1Il7Vt+IROeuY/YFcJOqNiG/sp4Whl16xf
         qXhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720547817; x=1721152617;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LkEjxNZM+r3sO0iRqxSnsAIIn34WyfJTqkeLKHpBP24=;
        b=RcPZ+N4uNL6xyNLr3x3LZ7Z9XvuZSU0xasMg4mpgC8Q6oIjWEH77MsoIIVHvyPOszt
         gluxvomrIriZ+3Bj5iCYOU05o+tBJ6remnn+HJbC49eA38RH/mDCYyf8SgdacyiKkVoB
         A/NkAnnzpv6bxYVQ7kwnCaMqg224MFwxeSQSfPvD5JUSq90ND99vxCupuLRbkdYbLt30
         NEW0foqTQJK9K8GJcQBaozGbV0QZq0WVZ8mi5QDWzv0C3wyE4QpwFPU+tKmAqwUGE7j6
         aVTXRkVOfKwy2qPcWS5sG3BKvdbGroie5c9/gnw31JDx4f4/JM345JgBAhn0WaqBaDN9
         vQlw==
X-Forwarded-Encrypted: i=1; AJvYcCUp41Fbg8VDgZMRpXf8UFCCLSIE72xOU4wwrCZnAJb27+6EfBzidAYBsmA1l3jPns8WlPDzHcnbTsXtULKr/YNNE21jixyRQFT6
X-Gm-Message-State: AOJu0YzIRXm1jRkQ+0qbyPOpwPyzNT+wYWyGn9XlmqQ38mfdE1fMvlVs
	huaX7Bj3ZUGz38deWfmbMcJmiKQemO5M7IJx3r/eeedqSf6Xjoxvpx2/gpS5KFw=
X-Google-Smtp-Source: AGHT+IFui737DULh2du2b8S6U4O2cYfEe59wSnxnElAujzC2FcQGsb7lZSXqUDrAlccIga62tt4mvQ==
X-Received: by 2002:a17:902:f54f:b0:1fb:39cf:fe6f with SMTP id d9443c01a7336-1fbb6ec4044mr25163785ad.44.1720547817462;
        Tue, 09 Jul 2024 10:56:57 -0700 (PDT)
Received: from [127.0.1.1] (mobile-166-137-160-039.mycingular.net. [166.137.160.39])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fbb6ab6e4bsm18912335ad.144.2024.07.09.10.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 10:56:57 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Tue, 09 Jul 2024 10:56:52 -0700
Subject: [PATCH v5] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240709-fencei_prctl-v5-1-a0391069f746@rivosinc.com>
X-B4-Tracking: v=1; b=H4sIAON5jWYC/3XMQWrDMBCF4asErauiGUm2lFXuUUJwpFEz0NpGC
 qIh+O5RsjGYdPkefP9dFMpMRex3d5GpcuFpbMN+7ES4DOM3SY5tC1RoFKCRicZAfJpzuP7IgCY
 O2Bmtey8amTMl/nvlvo5tX7hcp3x71Ss8339CFSRIdY5xSIGS1nDIXKfCY/gM0694tiquHgE3H
 pvXGL1R3sFZ2Tder75Dt/G6edulqAGsBfRvvFl9r2DjTfOewAG6ProeN35Zlgem1rzGawEAAA=
 =
To: Alejandro Colomar <alx@kernel.org>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1720547816; l=6461;
 i=charlie@rivosinc.com; s=20240124; h=from:subject:message-id;
 bh=izrvTbNRVaB0wFvQ1NeXc0/LbVzJvfF8yD0wEVmbXck=;
 b=c375oymwgaVVk/zJSg+h8mCXtRNbdlQBU5M1vRO9o5sdmdvoa3lCLdDJQH++ZHx3MTjklIp7o
 QL8vamYi+ALCAEZW68q1iUV0uYL11gofDh+2ZNynD9HK3QIpl7XHV4J
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=eVndo3OHViAjwuqHqbJB4ZtzJzzvk/r6fUf84tZ3rw4=

Document the PR_RISCV_SET_ICACHE_FLUSH_CTX flag for prctl(2) that is
supported as of Linux 6.10.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
Changes in v5:
- Change "." to "\&" for newlines in example
- Fix whitespace
- Link to v4: https://lore.kernel.org/r/20240701-fencei_prctl-v4-1-9e181287d872@rivosinc.com

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
 man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const | 155 +++++++++++++++++++++
 2 files changed, 158 insertions(+)

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
index 000000000..138e45e0b
--- /dev/null
+++ b/man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
@@ -0,0 +1,155 @@
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
+only the thread calling this function is permitted to
+emit icache flushing instructions.
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
+.SH EXAMPLES
+The following files are meant to be compiled and linked with each other.
+The modify_instruction() function
+replaces an add with zero with an add with one,
+causing the instruction sequence in get_value() to change from
+returning a zero to returning a one.
+.SS Program source: cmodx.c
+.\" SRC BEGIN (cmodx.c)
+.EX
+#include <stdio.h>
+#include <sys/prctl.h>
+\&
+extern int get_value(void);
+extern void modify_instruction(void);
+\&
+int main(void)
+{
+    int value = get_value();
+\&
+    printf("Value before cmodx: %d\[rs]n", value);
+\&
+    // Call prctl before first fence.i is called
+    prctl(PR_RISCV_SET_ICACHE_FLUSH_CTX, PR_RISCV_CTX_SW_FENCEI_ON,
+          PR_RISCV_SCOPE_PER_PROCESS);
+\&
+    modify_instruction();
+\&
+    // Call prctl after final fence.i is called in process
+    prctl(PR_RISCV_SET_ICACHE_FLUSH_CTX, PR_RISCV_CTX_SW_FENCEI_OFF,
+          PR_RISCV_SCOPE_PER_PROCESS);
+\&
+    value = get_value();
+    printf("Value after cmodx: %d\[rs]n", value);
+    return 0;
+}
+.EE
+.\" SRC END
+.SS Program source: cmodx.S
+.EX
+\&.option norvc
+\&
+\&.text
+\&.global modify_instruction
+modify_instruction:
+lw a0, new_insn
+lui a5,%hi(old_insn)
+sw  a0,%lo(old_insn)(a5)
+fence.i
+ret
+\&
+\&.section modifiable, "awx"
+\&.global get_value
+get_value:
+li a0, 0
+old_insn:
+addi a0, a0, 0
+ret
+\&
+\&.data
+new_insn:
+addi a0, a0, 1
+.EE
+.SS Expected result
+.EX
+Value before cmodx: 0
+Value after cmodx: 1
+.EE
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


