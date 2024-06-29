Return-Path: <linux-man+bounces-1305-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2629B91CAE1
	for <lists+linux-man@lfdr.de>; Sat, 29 Jun 2024 05:33:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 70B19B21BB2
	for <lists+linux-man@lfdr.de>; Sat, 29 Jun 2024 03:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4E5B1D540;
	Sat, 29 Jun 2024 03:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="rL3gq9m/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A40291CD06
	for <linux-man@vger.kernel.org>; Sat, 29 Jun 2024 03:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719631977; cv=none; b=esLtUaW3PbfpR5dUsNVIsaZislxAIvbSzLP6+DDc0cbWv6qJZQ9ReOZS1GnRlLcaz3pxt0SQvO7RHrvNfmSJ9J37GFxVrO+KWomQl+x6fT9sjk0wNY5yj+WqVeyckptuIIdXKpF/Q1m553u/xC2Qx+D69F2pjp8TF3OkwqzOjgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719631977; c=relaxed/simple;
	bh=SLW1RRQBltwh+YhZQP119V6BNSk7LVR6SROPS7fF6Gw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=s60cQVFc+oQb5RQwC6DrjHEli4UcreVT3HvCMlNjqsV1RLDfFw7p1LeOYDVHeLCGvM90gY+geM1jzg8FAYtusWhDo0+8nbw6L4YYJRLA+Cy9wZfW1yWf6XO1ZEAYUCPNaJPYqFpLLOw6aAv8fN4Azb3OSI40tFszQtGioXSdM+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=rL3gq9m/; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3c9cc681ee0so667145b6e.0
        for <linux-man@vger.kernel.org>; Fri, 28 Jun 2024 20:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719631974; x=1720236774; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=umZoSG9zqrZiLmKxY8ihGbllsuZUeTYnB0HSFsbftE8=;
        b=rL3gq9m/czlOWBLTYazRsanEXpcaRa9ro4h8275br+SL/0uh9+W9UybCmCTaGJPpVp
         7zYiOVDRCBVpvgBKpTudDUCzzOBagpN9zGc6hjoEZQ4h6qsc0wP+4VWheMQQqNfxkwUU
         /fHUKvxUcIeXs5Qqj8giaFefnc7U2Ljta7bL+U2WVFjNjG9j2Z+SiU9bPYRtH5pxxwi7
         SmwpIOxdqqVjjEtqPYN2LChDlxMfUvvx1+vClr27Zs2eHrLCMkHKuyZcbr97CeGdyR3s
         1snwfWlNFRdNr3GxYsRDI/rnD9FrdsCPuEvzA60KqPUT8vw4dvPl9jb7odiM+kBc4hid
         9dmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719631974; x=1720236774;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=umZoSG9zqrZiLmKxY8ihGbllsuZUeTYnB0HSFsbftE8=;
        b=kPeUKwU+yw/JeXDElXCPaPe2nxc61ra7nndVzn0HavMy5WUA9KIX4pcQS4jd3qRcvI
         YAqkHVJUVBP7fmHZG0B46IggSvLWQrDxMGX43oDLkKqfF7iu9HPfVAsL9zuSk0mOGYA/
         voqggjfOT/5A+FQ7fWG6dw+87n1HfT6/ywo6me3DuPeD5IKF1TWoechxU9Mg4wN9+aIR
         kKqPcLbprmQ6eEbLSgoBFUOWkKpb6rSE7JQwETJgCutTQZ/oDqeJ2bT5fOLeotIbMIxZ
         ikTYIy/qoI2eI8OEOTg2C4leDtl5uXMiK7lsuRxrHqo11o8cPXiBj+r3WByji07WEO0j
         3EUA==
X-Gm-Message-State: AOJu0Yyk0iIIRlEwoHb65TBRjH8ndNOjDdUi34zlVIUkJF3suh7kVNLx
	T/Od01nY5TRtrcIRLHKT/aFCoZGRYSjPbP5rXEJf1/AA/DfmF4T3GR2SxO1jo8A1Z4HQ4Kl1kfJ
	t
X-Google-Smtp-Source: AGHT+IFdSlr5IZRvA31hkYCKmPgZzjLNkpyAp1bQePYkWRcysWu1QDT1NH1IT44YgC6PXbTC4L4ebg==
X-Received: by 2002:a05:6808:301f:b0:3d2:271d:37cf with SMTP id 5614622812f47-3d6b3a95ea6mr95813b6e.30.1719631974635;
        Fri, 28 Jun 2024 20:32:54 -0700 (PDT)
Received: from [127.0.1.1] ([2601:647:5700:6860:a292:f80a:858:1ca9])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70801e631f0sm2365592b3a.4.2024.06.28.20.32.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 20:32:54 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Fri, 28 Jun 2024 20:32:47 -0700
Subject: [PATCH] riscv_flush_icache.2: Create page
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240628-flush_icache-v1-1-76a01584f796@rivosinc.com>
X-B4-Tracking: v=1; b=H4sIAF6Af2YC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDMyML3bSc0uKM+MzkxOSMVN2kNNNEwzQLCwNjo1QloJaCotS0zAqwcdG
 xtbUA1pNlxF4AAAA=
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1719631973; l=2352;
 i=charlie@rivosinc.com; s=20240124; h=from:subject:message-id;
 bh=SLW1RRQBltwh+YhZQP119V6BNSk7LVR6SROPS7fF6Gw=;
 b=N0hmrjkeDEJTt6DQq6lx4Ky4ekILu8RVjVohOFpjDZp977ZDr1plRn5P7CuV6hgr6r5F/zd7T
 ZLZAyn/DFwpBW56O4EfUYoq2oflMiT0SoC726plS2f2fyqZpsR1Q4cx
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=eVndo3OHViAjwuqHqbJB4ZtzJzzvk/r6fUf84tZ3rw4=

riscv_flush_icache has been present in syscall.2, but had no page for
itself. Add the page for this syscall.

The syscall is named riscv_flush_icache, but the glibc function is
named __riscv_flush_icache. To handle this, name the syscall page
riscv_flush_icache.2 and point to the libc page __riscv_flush_icache.3.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 man/man2/riscv_flush_icache.2   |  2 ++
 man/man3/__riscv_flush_icache.3 | 42 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 44 insertions(+)

diff --git a/man/man2/riscv_flush_icache.2 b/man/man2/riscv_flush_icache.2
new file mode 100644
index 000000000..3bafb5aca
--- /dev/null
+++ b/man/man2/riscv_flush_icache.2
@@ -0,0 +1,2 @@
+.so man3/__riscv_flush_icache.3
+.\" Because __riscv_flush_icache(3) is layered on a system call of the same name
diff --git a/man/man3/__riscv_flush_icache.3 b/man/man3/__riscv_flush_icache.3
new file mode 100644
index 000000000..db59f4672
--- /dev/null
+++ b/man/man3/__riscv_flush_icache.3
@@ -0,0 +1,42 @@
+.\" Copyright (C) Rivos Inc., 2024
+.\"
+.\" SPDX-License-Identifier: GPL-2.0-or-later
+.\"
+.TH riscv_flush_icache 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+riscv_flush_icache \- Flush icaches on RISC-V
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " \-lc )
+.SH SYNOPSIS
+.nf
+.B #include <sys/cachectl.h>
+.P
+.B int __riscv_flush_icache(void *start, void *end, \
+unsigned long int flags);
+.fi
+.SH DESCRIPTION
+.BR __riscv_flush_icache ()
+enforces ordering between stores and instruction cache fetches. The range of
+addresses over which ordering is enforced is specified by
+.I start
+and
+.I end .
+The
+.I flags
+argument controls the extent of this ordering, with
+the default behavior (a
+.I flags
+value of 0) being to enforce the fence on
+all threads in the current process. Setting the
+.B SYS_RISCV_FLUSH_ICACHE_LOCAL
+bit allows users to indicate that enforcing
+ordering on only the current thread is necessary. All other flag bits are
+reserved.
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


