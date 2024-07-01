Return-Path: <linux-man+bounces-1311-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4231F91E812
	for <lists+linux-man@lfdr.de>; Mon,  1 Jul 2024 21:00:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E13F41F21FC7
	for <lists+linux-man@lfdr.de>; Mon,  1 Jul 2024 19:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6977E15DBD6;
	Mon,  1 Jul 2024 19:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="J6Fhplix"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96029C8C7
	for <linux-man@vger.kernel.org>; Mon,  1 Jul 2024 19:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719860446; cv=none; b=MbAOmCtXzhkHfmUaDBbz6Kfg3pD9hEMGfnOMoOeCItQ6xoa/voIA+QYr37g4Mn48aSJquhgYYx1SWuTm9MmYLDQYPrIrPx24qJQl9+Z9Iv4ghN2zNSCUKJohCElSt9zpBQJjCJPU46r6cPwdCm2BQ7UJlaiIT213JqRZzIB+k1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719860446; c=relaxed/simple;
	bh=fYiqZKB9S5c2Y9pyZQuUKSnzwyJp+m/XiQIfqhgU9ts=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=I4tzmrI/CQEK9epq8x1QmlEkc/MLRmPwEsEP4+gUqYHXjZAzAR9ij0lK1bYvC43qKBOF9IFMX+NosRKWd+cuXkL1I7Up4TjlFic6ddndlV6a6zkqBPwioSTtFDemzeR9g6Uqr3HySsMtptaazoqAm7kPF70za4p7+fiJxqrzY1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=J6Fhplix; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1f9fb3ca81bso17981375ad.3
        for <linux-man@vger.kernel.org>; Mon, 01 Jul 2024 12:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719860443; x=1720465243; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VjWtEEiVWlc++GzlkRbu+1bZnZmQZqXcMaxAItRfrf0=;
        b=J6FhplixYtYdsGrtaodK3sS30FQJOgyXzX7AmMz7iSx2J40wkpnxvwAuN15X539Mby
         0lonagTAAGrdf5hugr94o1kRjFfvdRBbyWjnlgq6BU6th6byHXXbu+Uo166qP/1QYBLN
         hSj0fZAVyUq0N1QPdEvokJzqkr67XvstkSsAoFUu0mKpUrESGaqipFfyQLEudFh5wlv8
         pOZ15u/KZTVCOEykWOL0PwKfARVnmxfQ6NN4h3ZbedG+TyxH1wbAoW1+I6evt0YDchYx
         0vOMhk3IXkF+KeUOKCirSj1jwCMZHMQKAwcUzHQYcGED9Sc7pXBraS/mOruCBuCgUOiJ
         99yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719860443; x=1720465243;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VjWtEEiVWlc++GzlkRbu+1bZnZmQZqXcMaxAItRfrf0=;
        b=rP6XCUelGAg0qc0w7oorJyp/p5BtEGsSq33in4a4C7sZmGRq2sTtEdAt9hMr98DAxC
         gCl++AWKdsL1RAwukxsfZ2fCBUhNV1xkErpgR/z+ClC23cvIMMBhfE7csjn3AB47WlLS
         OnzbagNhNXO5GMoRmGC3YCMt2CKGzfkKCPRcyYsVs4TobpvHhExone0NukxjDQR39u+8
         bffun+TEWCI5go98w2qHpu/Y5y+UVdfUIju0zscEXu+k46GGkQmWyYXNRjMnYRUT5Njd
         ps3f8V0r221KjVO6tydkNA8sv7pHjIgVZ4BWH0HGWgwazvUQePnUM1KeJMpGRLG/fo3B
         hGkQ==
X-Gm-Message-State: AOJu0YzN3x9XIrMtGjiXe2PB7koEi6ijFyl/bzHIAMOWpJQ8ltOGw+Rx
	7xUnoE//UHpknY1V9b5HD5Pe2Z+cJq/MrLnhkbDMz0vB/8HknMYtN4A833h8NAp2vv8TFo0oSQ2
	y
X-Google-Smtp-Source: AGHT+IHUxRp0e5gWbxK1YIiz9tz1/4W4+QDdWZPNx0OFCp1xisQ4/AA2X8DJdPTMnnW8lryXaRf5vQ==
X-Received: by 2002:a17:902:e74d:b0:1f9:9c40:edff with SMTP id d9443c01a7336-1fadbcf4720mr41114625ad.61.1719860443208;
        Mon, 01 Jul 2024 12:00:43 -0700 (PDT)
Received: from [127.0.1.1] ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fac15693e8sm68236345ad.217.2024.07.01.12.00.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 12:00:42 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Mon, 01 Jul 2024 12:00:37 -0700
Subject: [PATCH v2] riscv_flush_icache.2: Create page
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240701-flush_icache-v2-1-15f7a35a0d13@rivosinc.com>
X-B4-Tracking: v=1; b=H4sIANT8gmYC/3XMQQ7CIBCF4as0sxYD2FLsynuYxiAOMomCASWah
 ruL3bv8X/K+BTImwgxTt0DCQpliaCE3HVhvwhUZXVqD5LLnSmrmbq/sT2SN9cjObjDCac13EqF
 dHgkdvVfuOLf2lJ8xfVa9iN/6ByqCCTYqw8Wgezfu1SFRiZmC3dp4h7nW+gWb+MVtqwAAAA==
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1719860442; l=2549;
 i=charlie@rivosinc.com; s=20240124; h=from:subject:message-id;
 bh=fYiqZKB9S5c2Y9pyZQuUKSnzwyJp+m/XiQIfqhgU9ts=;
 b=bCNC4Ze7PCNZCUQT0YatOhSkGUi/Zkp2Vd1j786g3i4aNSWr8xnR1oIXz4iGN2lV+x8ppBHd2
 Pun+cEuD8KRCR4jh3/xxM/QXEQnnSdxZrHTOILKB2y0p+4pbyEhIpJQ
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=eVndo3OHViAjwuqHqbJB4ZtzJzzvk/r6fUf84tZ3rw4=

riscv_flush_icache has been present in syscall.2, but had no page for
itself. Add the page for this syscall.

The syscall is named riscv_flush_icache, but the glibc function is
named __riscv_flush_icache. To handle this, name the syscall page
riscv_flush_icache.2 and point to the libc page __riscv_flush_icache.3.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
Changes in v2:
- Correct text referring to title of page to be __riscv_flush_icache
- Place \- on new linie
- Drop "int" from "unsigned long int"
- Use semantic newlines
- Link to v1: https://lore.kernel.org/r/20240628-flush_icache-v1-1-76a01584f796@rivosinc.com
---
 man/man2/riscv_flush_icache.2   |  1 +
 man/man3/__riscv_flush_icache.3 | 46 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/man/man2/riscv_flush_icache.2 b/man/man2/riscv_flush_icache.2
new file mode 100644
index 000000000..a6d807e9d
--- /dev/null
+++ b/man/man2/riscv_flush_icache.2
@@ -0,0 +1 @@
+.so man3/__riscv_flush_icache.3
diff --git a/man/man3/__riscv_flush_icache.3 b/man/man3/__riscv_flush_icache.3
new file mode 100644
index 000000000..7d3aa6e40
--- /dev/null
+++ b/man/man3/__riscv_flush_icache.3
@@ -0,0 +1,46 @@
+.\" Copyright (C) Rivos Inc., 2024
+.\"
+.\" SPDX-License-Identifier: GPL-2.0-or-later
+.\"
+.TH __riscv_flush_icache 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+__riscv_flush_icache
+\- Flush icaches on RISC-V
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " \-lc )
+.SH SYNOPSIS
+.nf
+.B #include <sys/cachectl.h>
+.P
+.B int __riscv_flush_icache(void *start, void *end, \
+unsigned long flags);
+.fi
+.SH DESCRIPTION
+.BR __riscv_flush_icache ()
+enforces ordering between stores and instruction cache fetches.
+The range of addresses over which ordering is enforced is specified by
+.I start
+and
+.IR end .
+The
+.I flags
+argument controls the extent of this ordering,
+with the default behavior
+(a
+.I flags
+value of 0)
+being to enforce the fence on
+all threads in the current process.
+Setting the
+.B SYS_RISCV_FLUSH_ICACHE_LOCAL
+bit allows users to indicate that enforcing ordering on
+only the current thread is necessary.
+All other flag bits are reserved.
+.SH STANDARDS
+Linux on RISC-V.
+.SH HISTORY
+Linux 4.15.
+glibc 2.27.
+.SH SEE ALSO
+.BR syscall (2)

---
base-commit: d0621648b4b5a356e86cea23e842f2591461f0cf
change-id: 20240628-flush_icache-bf5a1f88032e

Best regards,
-- 
Charlie Jenkins <charlie@rivosinc.com>


