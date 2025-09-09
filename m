Return-Path: <linux-man+bounces-3852-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 713ECB505F3
	for <lists+linux-man@lfdr.de>; Tue,  9 Sep 2025 21:14:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 691201B281D6
	for <lists+linux-man@lfdr.de>; Tue,  9 Sep 2025 19:14:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D52430499B;
	Tue,  9 Sep 2025 19:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EGe8fjC5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D4B302CAB
	for <linux-man@vger.kernel.org>; Tue,  9 Sep 2025 19:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757445243; cv=none; b=Lqa6GMPN6LLCs9SwYa9ifQdImdnUZMPbJFfbrZCM9k5T6w7eQeY4i/GkiLdALr26kjlhEddP/QnzOP/IWy/tAGVQMB+JpPi0XMLQGPwQnQQBfy1LVaGw5nvWfYZmGfGaprY1g04udG4K4tJd2UzgbclPHHp/okM8V6XIK6+qZ0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757445243; c=relaxed/simple;
	bh=jZP7BXkjMI2nZMMxDN/2ybhb7LlAQCD5If7R7Ap4Y8U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ue53xSmMy6tzM1oS4w+q1GId3FwjmAQMVUV0tRPctbPNxlAbXR2l1sAM6WnMGJzTwIUxTHpioWIcwgw5Wp6DT36HgE+V38MOc0aof4q4iJ2/NrtFpgwJ1+EDuO14bU+E9hoMCeBx8hLJKcPjR9JeYhsYmid1yFoI5j1FxoWhpI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EGe8fjC5; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-b522fd4d855so2268540a12.1
        for <linux-man@vger.kernel.org>; Tue, 09 Sep 2025 12:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757445240; x=1758050040; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/0M5rhS0sQ6J1w8UNhP/CWuuqQcqaUG+qCQP0+A3DUo=;
        b=EGe8fjC5obu9JZi6jFXjXPJrsIaanweZTpA6m0KGlpuwLX3jGycDeSt3fpYWmsAcql
         2jR2NhL9SGRWXOh6xXz2EHCxijv83bdwmSlaHVTw5231LGUNvPcUrFl32fpkKyIftDGz
         dzDIlYrx5xpplXCrMz2Sf/1KxhPrk2zniqKjIzY5bvG7xWaoUh96uuWNNM/4ZYi2IMvB
         WyJGe7Q4meZqZFtzgP1d0aWr6kQMcw/JamH1ahbhsHbWzrh+HOZ/bVN+M5qaiU2bxNti
         p2YHLRflQ1tf4zh94plJCJNHNtvGPN2XhNH6VyBCpJ+zJG4NmOChz60x49FQ5nZax7C1
         Uc9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757445240; x=1758050040;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/0M5rhS0sQ6J1w8UNhP/CWuuqQcqaUG+qCQP0+A3DUo=;
        b=EB07QJW53d6J02WDJeWjpqMm2NxaBLGu3n4yEFc3mQj0flHlJxMexi3Ub2AXZqyqyx
         9PSeC7Ivyah5W9Da6ratRSuMuka5dGdU4qudoeDCOODKCpl86zNG21CXl0RBadBSV1CW
         kJuW8IOMxy8aZm3lEGdFCewF3dm66Ux/1fKklCNB/+8qYgWeGQ4wOxt84sCLeZFqe48D
         7eu7oAlqet5X48n7JcqFKEPdxM556Qps2TAjwjSNkqdPl1KsWJkzcDGs9J0IyZ5AuQaE
         5I9en2g8UpLcUpPZBWHaH5TN+fDwh7gdhdS3rMmztXVk+qSNT5sHyPxLv/BvRSGv8uCI
         t8CQ==
X-Gm-Message-State: AOJu0YxfmLFx4HcSyFlQuzs6QNMULGpwKazJBv44AYDG9Gx8DSGdTMls
	9h3Dj48WtvsnDwaQXwfyqBGweJi7S34NkJuAvYTWzskzUqVU8fjevoiP/dRngRWRkO0=
X-Gm-Gg: ASbGncuQgUg+DkoWp87mMf/iwv17rg69Bn63at/Qt0wQkx2qdtqWfBzWsUhSMKPsF8j
	m0AQg1vAVsjCDTgNzSdhPlOBFa8HbU/qtVKigmbtkIpGMIEqFG8l8TS58lbJhrApXSzUVLB19Hc
	yOOCGiKwawH2Ti0HB5/G8uNzZOWMkEBwTkT2y00eTW5QoiIT42etNqujDlMw0aBp7p66lPwnrew
	Rvf1ab8jVDpg5ka1zuQx5ao33dKKMtuGLYVnbD6Ie0j+w3RB6wSRDtgned9eNi4CX0zKNCmoRaq
	KtbXKFGeV57YdeD9Ctee/Ny947ktQAyBqiyegHK1DVHFp+oJwsatcYOPQCm7jduH3rnTGro0gtX
	M9N32AhDqAWJ2N1oEufCFiVsBAT5u7yY=
X-Google-Smtp-Source: AGHT+IHmWhrSC2tXnj/p7mkabJXEKxIuMT8tQNItTkse/baKqfc2BhjPFvpJr5up1eNhdGG22nrbsg==
X-Received: by 2002:a17:90b:28d0:b0:327:7e8b:eba8 with SMTP id 98e67ed59e1d1-32d43f8270emr16024325a91.31.1757445240499;
        Tue, 09 Sep 2025 12:14:00 -0700 (PDT)
Received: from localhost ([2804:14d:7e39:88d6:ba9:6a6e:c9a0:290f])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-774662c39e0sm2828909b3a.69.2025.09.09.12.13.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 12:13:59 -0700 (PDT)
From: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Carlos O'Donell <carlos@redhat.com>
Subject: [PATCH v2] man/man2/sigaction.2: Update si_code list with Linux v6.16
Date: Tue,  9 Sep 2025 16:13:57 -0300
Message-ID: <20250909191357.44951-1-thiago.bauermann@linaro.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update with missing si_code values from Linux v6.16's
include/uapi/asm-generic/siginfo.h.

Signed-off-by: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
---

Changes in v2:
- Make all the entries added by this patch that have parenthesized notes
  use .BR. Some were erroneously using .B in v1.
- Add "... and glibc 2.43" note to TRAP_PERF, SYS_SECCOMP and
  SYS_USER_DISPATCH (suggested by Carlos and Alejandro).

 man/man2/sigaction.2 | 51 ++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 49 insertions(+), 2 deletions(-)

diff --git a/man/man2/sigaction.2 b/man/man2/sigaction.2
index 8d08a8c409d9..d6eced0761d7 100644
--- a/man/man2/sigaction.2
+++ b/man/man2/sigaction.2
@@ -652,6 +652,9 @@ or
 .\" SI_DETHREAD is defined in Linux 2.6.9 sources, but isn't implemented
 .\" It appears to have been an idea that was tried during 2.5.6
 .\" through to Linux 2.5.24 and then was backed out.
+.TP
+.B SI_ASYNCNL
+Async name lookup completion.
 .RE
 .P
 The following values can be placed in
@@ -716,6 +719,12 @@ Floating-point invalid operation.
 .TP
 .B FPE_FLTSUB
 Subscript out of range.
+.TP
+.BR FPE_FLTUNK " (since Linux 4.17)"
+Undiagnosed floating-point exception.
+.TP
+.BR FPE_CONDTRAP " (PARISC only)"
+Trap on condition.
 .RE
 .P
 The following values can be placed in
@@ -742,6 +751,24 @@ See
 .BR pkeys (7).
 The protection key which applied to this access is available via
 .IR si_pkey .
+.TP
+.BR SEGV_ACCADI " (since Linux 4.17, SPARC only)"
+Application Data Integrity not enabled for mapped object.
+.TP
+.BR SEGV_ADIDERR " (since Linux 4.17, SPARC only)"
+Disrupting Memory Corruption Detection error.
+.TP
+.BR SEGV_ADIPERR " (since Linux 4.17, SPARC only)"
+Precise Memory Corruption Detection exception.
+.TP
+.BR SEGV_MTEAERR " (since Linux 5.10, ARM only)"
+Asynchronous Memory Tagging Extension error.
+.TP
+.BR SEGV_MTESERR " (since Linux 5.10, ARM only)"
+Synchronous Memory Tagging Extension exception.
+.TP
+.BR SEGV_CPERR " (since Linux 6.10)"
+Control protection fault.
 .RE
 .P
 The following values can be placed in
@@ -785,6 +812,12 @@ Process taken branch trap.
 .TP
 .BR TRAP_HWBKPT " (since Linux 2.4, IA64 only)"
 Hardware breakpoint/watchpoint.
+.TP
+.BR TRAP_UNK " (since Linux 4.18)"
+Undiagnosed trap.
+.TP
+.BR TRAP_PERF " (since Linux 5.13 and glibc 2.43)"
+Perf event with sigtrap=1.
 .RE
 .P
 The following values can be placed in
@@ -839,17 +872,31 @@ High priority input available.
 Device disconnected.
 .RE
 .P
-The following value can be placed in
+The following values can be placed in
 .I si_code
 for a
 .B SIGSYS
 signal:
 .RS 4
 .TP
-.BR SYS_SECCOMP " (since Linux 3.5)"
+.BR SYS_SECCOMP " (since Linux 3.5 and glibc 2.43)"
 Triggered by a
 .BR seccomp (2)
 filter rule.
+.TP
+.BR SYS_USER_DISPATCH  " (since Linux 5.11 and glibc 2.43)"
+Syscall user dispatch triggered.
+.RE
+.P
+The following value can be placed in
+.I si_code
+for a
+.B SIGEMT
+signal:
+.RS 4
+.TP
+.BR EMT_TAGOVF " (SPARC only)"
+Tag overflow.
 .RE
 .SS Dynamically probing for flag bit support
 The

base-commit: e86f9fd0c279f593242969a2fbb5ef379272d89d

