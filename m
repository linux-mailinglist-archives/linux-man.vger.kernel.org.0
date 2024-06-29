Return-Path: <linux-man+bounces-1303-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F0291CAAE
	for <lists+linux-man@lfdr.de>; Sat, 29 Jun 2024 04:36:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 643571C21981
	for <lists+linux-man@lfdr.de>; Sat, 29 Jun 2024 02:36:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EFFC1AACC;
	Sat, 29 Jun 2024 02:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Cio8vAVa"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F281018EB0
	for <linux-man@vger.kernel.org>; Sat, 29 Jun 2024 02:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719628584; cv=none; b=n9XierPOTUdS0HUa9Bq5OKQWOY7+9yiU0drpOx73SdEYzdqyzGMNh6K7kloZhkT4aYAIcHxCzDTFspes5XLoTzde2q269JVyFmtC8X62eFExgXyadNRd2BN+lOKbEa40pyC0zREQLSQR8gTURKno0t0vCujG7ViSObgZpMJKvew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719628584; c=relaxed/simple;
	bh=oVD1zX3N9bH8/Bx2h8CehiLMK0VnNzMZePICEw9s3nk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=OI3ue3RFoEu8gtJUYUQDZPwahJmFllAZi5iwXFeqFVgZrsTCZqKsPdEZpDhdoo9ujfrvRQlI9YTDbTECl6qkjcuiv52FtD0kzEVmU1uUqT451Ct/uD36eRWpoUf9OAe8Bu6Ias3MsuITlpKRIwYJsfS39yNYrVTtfW8KjDhFncA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Cio8vAVa; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3c9cc681ee4so707707b6e.0
        for <linux-man@vger.kernel.org>; Fri, 28 Jun 2024 19:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719628581; x=1720233381; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bsWYNy5a20PBIB+BAoKrRfMZlKgBEyiW+d3uIn6Lfz4=;
        b=Cio8vAVaNIdgZFlYS/BSA6wfsp6NqEVvd+3lFR7fSp0699P4YwaDYc6AmFyPmzMIzR
         I2ibd+N9hyCc3NUFDPjab5gjH9EXFYcG7o7HqOJSmxm8RMAmhcg7W1HsVFaf4JondbQ3
         aj2/NMg+CaZxiGJkkPVO8msNDl3ibFmwWjrQSOfewzSVJRfyHJuvAio1fMZA13LAjuPk
         YHtOk+RFXIgOm1di7E60SE7MKSbcvXnco97xGoHNDqSbZjdrUyJO8E1WkSVuL75HaV5f
         Ch7FrTCP4YZX88gxsByPi1pex5ekfvDVaGKl4w84vuAI0yeS6ck7G9/ZhUnv2Q0zu1V+
         l2VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719628581; x=1720233381;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bsWYNy5a20PBIB+BAoKrRfMZlKgBEyiW+d3uIn6Lfz4=;
        b=cw8JnmmwdR7SU2rExznL+RpfWURf7E2sZ3or8EBVwVF/ubx00z8k07ijVVOeRNsq+s
         cpQGXRsd3K6fl8izDGnhuCSxE0ErDIuJf+6rs/QbjOwDlSGvk3xZBO+LTqUg4ZZKHQwE
         TQlgEwPXi1qahsqb1TMz6/Ef1qWxsecdSYPnCLfhOvNjX49HamwL7TxSx0eg/LP60x9a
         +8te/bACLcrqYX5vtjrAbw0mCzanelswfaqcYEj5Oo40MhRhdlESb09V07CR1KjR+c4F
         mo4fM1koXmkFCpZYfDUyM7bCNrEw302NyJa7vBd6T9caTriDOYzu5KeisY08/7226E/d
         og4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUZq2lHUaSEIUZvVXV9fwJDTb3/dJYRhjvHO/T9Br25Xl9YyS6MVc7hXnP+rSWLH+tcXqVYLNfPtiMQ0osBkU/D5ttbIjDF52oG
X-Gm-Message-State: AOJu0YwnavD1pLaO948K4jxsWfKEHfHkwH2BcKCSnjCt5lYgv/K1GbPR
	kWbJQcGF9M3DRBVU46+t/PtbJPHN7szRsyBkZhckPugEo2gPXww0GxDpGgH5tsc=
X-Google-Smtp-Source: AGHT+IEbQ23rKDWvKIPeTJsdC0oG4NZwxLFuidmMu2eJotmxAQBvm1fsHRPO8r4ZPq8BWk9NKZiuiw==
X-Received: by 2002:a05:6808:1154:b0:3d5:63c2:17c1 with SMTP id 5614622812f47-3d563c226bbmr12814911b6e.8.1719628580735;
        Fri, 28 Jun 2024 19:36:20 -0700 (PDT)
Received: from [127.0.1.1] ([2601:647:5700:6860:a292:f80a:858:1ca9])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-708044ae395sm2379103b3a.144.2024.06.28.19.36.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 19:36:20 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Fri, 28 Jun 2024 19:36:18 -0700
Subject: [PATCH v3] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240628-fencei_prctl-v3-1-56fd31155129@rivosinc.com>
X-B4-Tracking: v=1; b=H4sIACFzf2YC/3XMSwrCMBSF4a2UjI0kN/HRjtyHiLTJjb2gSUlKU
 Er3btqJUHB4Dnz/xBJGwsSaamIRMyUKvgy1q5jpW/9ATrZsBgK0kKC5Q2+Q7kM045Mb0LaFo1b
 qVLNChoiO3mvueiu7pzSG+FnrWS7vn1CWXHLRWds6g04peYmUQyJv9ia82NLK8PMgYeOheAW21
 qI+y04cNn6e5y8es/OJ6wAAAA==
To: Alejandro Colomar <alx@kernel.org>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1719628579; l=5826;
 i=charlie@rivosinc.com; s=20240124; h=from:subject:message-id;
 bh=oVD1zX3N9bH8/Bx2h8CehiLMK0VnNzMZePICEw9s3nk=;
 b=llQcRyKGfoY89XghLX4MBvkKdYESZ6mHawb2+izX1EJQ+mKlyx8A1uXKyufOGLuROiYAKptSc
 LZMRfj5VjREBfJPPhyJgD8aCPMv5u2IIO9zoG/NdFRvnd/YchGowkxx
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=eVndo3OHViAjwuqHqbJB4ZtzJzzvk/r6fUf84tZ3rw4=

Document the PR_RISCV_SET_ICACHE_FLUSH_CTX flag for prctl(2) that is
supported as of Linux 6.10.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
Changes in v3:
- Rebase onto master
- Add example usage
- Link to v2: https://lore.kernel.org/r/20240212-fencei_prctl-v2-1-32d940981b05@rivosinc.com

Changes in v2:
- Update formatting (Alejandro)
- Link to v1: https://lore.kernel.org/r/20240124-fencei_prctl-v1-1-0bddafcef331@rivosinc.com
---
 man/man2/prctl.2                                   |   3 +
 man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const | 149 +++++++++++++++++++++
 2 files changed, 152 insertions(+)

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
index 000000000..aec16a237
--- /dev/null
+++ b/man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
@@ -0,0 +1,149 @@
+.\" Copyright 2024 Rivos Inc.
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH PR_RISCV_SET_ICACHE_FLUSH_CTX 2const (date) "Linux man-pages (unreleased)"
+.SH NAME
+PR_RISCV_SET_ICACHE_FLUSH_CTX (since Linux 6.10, RISC-V only)
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
+.B int prctl(PR_RISCV_SET_ICACHE_FLUSH_CTX_ON, ctx, scope);
+.fi
+.SH DESCRIPTION
+The context and the scope can be provided using
+.I arg2
+and
+.I arg3
+respectively.
+When scope is set to
+.B PR_RISCV_SCOPE_PER_PROCESS
+all threads in the process are permitted to emit icache flushing instructions.
+Whenever any thread in the process is migrated, the corresponding hart's
+icache will be guaranteed to be consistent with instruction storage.
+This does not enforce any guarantees outside of migration.
+If a thread modifies an instruction that another thread may attempt to
+execute, the other thread must still emit an icache flushing instruction
+before attempting to execute the potentially modified instruction.
+This must be performed by the user-space program.
+.P
+In per-thread context (eg. scope is set to
+.B PR_RISCV_SCOPE_PER_THREAD )
+only the thread calling this function is permitted to emit icache flushing
+instructions.
+When the thread is migrated, the corresponding hart's icache will be
+guaranteed to be consistent with instruction storage.
+.P
+On kernels configured without SMP, this function is a nop as migrations across
+harts will not occur.
+.P
+The following values for
+.I arg2
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
+Therefore, caution must be taken; use this flag only when you can guarantee
+that no thread in the process will emit fence.i from this point onward.
+.RE
+.IP
+The following values for
+.I arg3
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
+.SH EXAMPLE
+
+The following files are meant to be compiled and linked with each other. The
+modify_instruction() function replaces an add with zero with an add with one,
+causing the instruction sequence in get_value() to change from returning a zero
+to returning a one.
+
+.SS Program source: cmodx.c
+\&
+.EX
+#include <stdio.h>
+#include <sys/prctl.h>
+\&
+extern int get_value();
+extern void modify_instruction();
+\&
+int main()
+{
+    int value = get_value();
+    printf("Value before cmodx: %d\\n", value);
+
+    // Call prctl before first fence.i is called
+    prctl(PR_RISCV_SET_ICACHE_FLUSH_CTX, PR_RISCV_CTX_SW_FENCEI_ON,
+          PR_RISCV_SCOPE_PER_PROCESS);
+    modify_instruction();
+    // Call prctl after final fence.i is called in process
+    prctl(PR_RISCV_SET_ICACHE_FLUSH_CTX, PR_RISCV_CTX_SW_FENCEI_OFF,
+          PR_RISCV_SCOPE_PER_PROCESS);
+
+    value = get_value();
+    printf("Value after cmodx: %d\\n", value);
+    return 0;
+}
+.SS Program source: cmodx.S
+.EX
+\&.option norvc
+
+\&.text
+\&.global modify_instruction
+modify_instruction:
+lw a0, new_insn
+lui a5,%hi(old_insn)
+sw  a0,%lo(old_insn)(a5)
+fence.i
+ret
+
+\&.section modifiable, "awx"
+\&.global get_value
+get_value:
+li a0, 0
+old_insn:
+addi a0, a0, 0
+ret
+
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
+Linux.
+.SH HISTORY
+.TP
+.B PR_RISCV_SCOPE_PER_PROCESS
+Linux 6.10.
+.SH SEE ALSO
+.BR prctl (2)

---
base-commit: d0621648b4b5a356e86cea23e842f2591461f0cf
change-id: 20240124-fencei_prctl-c24da2643379

Best regards,
-- 
Charlie Jenkins <charlie@rivosinc.com>


