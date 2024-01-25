Return-Path: <linux-man+bounces-401-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEBC83B778
	for <lists+linux-man@lfdr.de>; Thu, 25 Jan 2024 04:01:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D3EF1281372
	for <lists+linux-man@lfdr.de>; Thu, 25 Jan 2024 03:01:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EA2D1FBF;
	Thu, 25 Jan 2024 03:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="rNxeHR97"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B68C67C5D
	for <linux-man@vger.kernel.org>; Thu, 25 Jan 2024 03:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706151672; cv=none; b=qjA3TawdjPmzaWX54UWwK0oQuLcg/orUQ+eLpGM/k1W2JKHAfoGAMZIxhvRIfacoLm/KMCC+eHevg0fsm8iAmxGk5m44ijBp84BCzxqJeeq89Ez33rnLe98l1vHGH04td0pZawAG/uZYIyUIwSpFpHoTmKXi/ztwU2MGXGHDgdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706151672; c=relaxed/simple;
	bh=YKJqSNHg0lQqKBdCnkjK7wni1MBj16O0YdqLK8wa7Bo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=sJOowdAlWNtBd0xJxDmb9xnGpvL+Ae/kEagqifE0JQKxaWlnlZCqTym23n+rJA8wUw0I+SS5bCYqyZ07RQHxMmmavGf8Bmjjol4jZZ3cMfXnBPjhVlgZQ3s5dTTq1HGjWEALIhc4JpHYyEsTaWS/AyQE44Eyc6aKqZZMMwJflzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=rNxeHR97; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-6dc6f47302bso2909524b3a.1
        for <linux-man@vger.kernel.org>; Wed, 24 Jan 2024 19:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1706151670; x=1706756470; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=USFK4k1MNuOFXgUKs/YA5fmXMxC0XeqCOn9kV2MrpbM=;
        b=rNxeHR97qn5P8+RdVjMwQx1+GzoeFw7lQmRe0FGECZhzIgR4ZVB0i0WxMuEzrrTEIf
         MUBl08yQxG+8UMP+niGUyv/3GXi/AYhsL3rmUFvKz1B0TFQ+j5ixwlcRI7hVpWHifXzC
         Utg5hnkzsLwsmxFLmuW4LYhPYRZe1rVzJInv5P1NfhSNagScWsUidujsYVErvEml+G1l
         g1i6m2/l8ye3RAMQLy2wov1NJoI/1W9NA0L5do/K+kLGROrNMnzLuFve3b9EQ4YAVOWN
         rw3LcC+IeNsM5o1l3ypZPtcTE/UNFbTesS66PSIwq2x3MRKsp4s+ZQ5AFYuzlrk8aIhr
         FSkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706151670; x=1706756470;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=USFK4k1MNuOFXgUKs/YA5fmXMxC0XeqCOn9kV2MrpbM=;
        b=Ljegr2EHIuCDVeJVLn4ULSlOWqcDvK5RVtxqKRyyqTtiatkleAfOD4tjVca8Ea1yRa
         Pj5PbAqGL6y0HGzDCYI4L0YAIVx5Uo9kyAxPg8/sVjZQGJmQnY1xAJUiYQduz93LyXb7
         EzwPNzb1LfbqSyyE+fbC8BQGXdSv7lITnOK+EB/X4wPla7uZhRMT8LCK3SqTs9Aygeli
         tHbFlwqVRnpTuBRD8IMD3T3glGFWaO67/Js6uRaKBMzB6FMf79Gr2pdCmbInxMAWz+kU
         g7/rZWvm/66EZPJrOn0YC7OTfMEXzKWqICv7iweBufC0IqeYrJJODywd6wN0W1bttA40
         D3Lg==
X-Gm-Message-State: AOJu0YxZn39SEPEMwINnvrPTsclO1LfTn3YZ7k2AiQb0KdvYyQtpSnDM
	KcskoMoS2P9ci4OEd37iXqcfrNwnp2U6eNXGNZZ5Nh2+wkxKuObTZNc2VvyQNPwEZAU1HTYDjDZ
	hCK0=
X-Google-Smtp-Source: AGHT+IH3yX9p96PkRUjm3ksyKSSqJ5IAdycBW0xkDuIgO8lVcRugMbXFEIe0QFmwlV74FyhX1fu3rw==
X-Received: by 2002:a05:6a20:728e:b0:19a:e211:112d with SMTP id o14-20020a056a20728e00b0019ae211112dmr530079pzk.22.1706151670509;
        Wed, 24 Jan 2024 19:01:10 -0800 (PST)
Received: from [127.0.1.1] ([2601:647:5700:6860:c623:c231:5ff6:8a4d])
        by smtp.gmail.com with ESMTPSA id i18-20020aa79092000000b006d9a7a48bbesm14470021pfa.116.2024.01.24.19.01.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 19:01:09 -0800 (PST)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 24 Jan 2024 18:59:04 -0800
Subject: [PATCH] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240124-fencei_prctl-v1-1-0bddafcef331@rivosinc.com>
X-B4-Tracking: v=1; b=H4sIAHfOsWUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDQyMT3bTUvOTUzPiCouSSHN1kI5OURCMzE2Njc0sloJaCotS0zAqwcdG
 xtbUAiD1oJF4AAAA=
To: Alejandro Colomar <alx@kernel.org>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1706151669; l=3320;
 i=charlie@rivosinc.com; s=20240124; h=from:subject:message-id;
 bh=YKJqSNHg0lQqKBdCnkjK7wni1MBj16O0YdqLK8wa7Bo=;
 b=R1Zpw92BgwtTmwpgug6vszHmffLay9H1KXqe2+oHgFMw0YtRpqX7zVd7cRANIzUfRzXNPNbeZ
 2YGzwtr5S5rA/jCB0lgZxowoCB2ToU93IGY7Omwbl8gksWQgBNNmtH1
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=eVndo3OHViAjwuqHqbJB4ZtzJzzvk/r6fUf84tZ3rw4=

I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX flag
for prctl(2) to LKML. It has been reviewed and is expected to land
during the Linux version 6.9 merge window. This adds the relevant
documentation from that patch.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX
flag for prctl(2) to LKML. It has been reviewed and is expected to land
during the Linux version 6.9 merge window.
---
 man2/prctl.2 | 58 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index f1604a7cb..2889a7195 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1147,6 +1147,64 @@ For further information, see the kernel source file
 (or
 .I Documentation/security/Yama.txt
 before Linux 4.13).
+.\" prctl PR_RISCV_SET_ICACHE_FLUSH_CTX
+.TP
+.BR PR_RISCV_SET_ICACHE_FLUSH_CTX " (since Linux 6.9, RISC-V only)"
+Enable/disable icache flushing instructions in userspace. The ctx and the
+scope can be provided using
+.IR arg2
+and
+.IR arg3
+respectively. When scope is set to
+.B PR_RISCV_SCOPE_PER_PROCESS ,
+all threads in the process are permitted to emit icache flushing
+instructions. Whenever any thread in the process is migrated, the
+corresponding hart's icache will be guaranteed to be consistent with
+instruction storage. Note this does not enforce any guarantees outside of
+migration. If a thread modifies an instruction that another thread may
+attempt to execute, the other thread must still emit an icache flushing
+instruction before attempting to execute the potentially modified
+instruction. This must be performed by the userspace program.
+.IP
+In per-thread context (eg. scope is set to
+.B PR_RISCV_SCOPE_PER_THREAD )
+, only the thread calling this function is permitted to emit icache
+flushing instructions. When the thread is migrated, the corresponding
+hart's icache will be guaranteed to be consistent with instruction storage.
+.IP
+On kernels configured without SMP, this function is a nop as migrations
+across harts will not occur.
+.IP
+The following values for
+.IR arg2
+can be specified:
+.RS
+.TP
+.BR PR_RISCV_CTX_SW_FENCEI_ON " (since Linux 6.9)"
+Allow fence.i in userspace.
+.TP
+.BR PR_RISCV_CTX_SW_FENCEI_OFF " (since Linux 6.9)"
+Disallow fence.i in userspace. All threads in a process will be affected
+when scope is set to
+.B PR_RISCV_SCOPE_PER_PROCESS .
+Therefore, caution must be taken -- only use this flag when you can
+guarantee that no thread in the process will emit fence.i from this point
+onward.
+.RE
+.IP
+The following values for
+.IR arg3
+can be specified:
+.RS
+.TP
+.BR PR_RISCV_SCOPE_PER_PROCESS " (since Linux 6.9)"
+Ensure the icache of any thread in this process is coherent with
+instruction storage upon migration.
+.TP
+.BR PR_RISCV_SCOPE_PER_THREAD " (since Linux 6.9)"
+Ensure the icache of the current thread is coherent with instruction
+storage upon migration.
+.RE
 .\" prctl PR_SET_SECCOMP
 .TP
 .BR PR_SET_SECCOMP " (since Linux 2.6.23)"

---
base-commit: a81e893f2b9316869e6098c3a079c30a48158092
change-id: 20240124-fencei_prctl-c24da2643379

Best regards,
-- 
Charlie Jenkins <charlie@rivosinc.com>


