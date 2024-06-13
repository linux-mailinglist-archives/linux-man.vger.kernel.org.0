Return-Path: <linux-man+bounces-1174-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F17907DAA
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 22:48:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22524281D84
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 20:48:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CB2713B7A1;
	Thu, 13 Jun 2024 20:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="k1G2/nl3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99B113B787
	for <linux-man@vger.kernel.org>; Thu, 13 Jun 2024 20:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718311718; cv=none; b=mCxrxWoAYv00cKCTLaZdVtxl+gZrYCESjxPTkxMN0Wsa69aIWL0emq4//yKFhM12UZ/M95BEoIybAwiPhDsrmbdx3nZcehTkph+LAzmU2I6LAkxmPYKB5/ZMxZfmZXrIO4Clt89xdYsnhcij/bmYsfV6pdmCPc+MrAM40i77Cv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718311718; c=relaxed/simple;
	bh=9cB0IQA4NtUVeB64dHE+8AyLnuH06WESGdzze+6lKiA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=feT+Bqajq7clUWkKPMgDsiOMeICFtkLHGe9UWYDvuejRX8UcmN5DCEiPuMULIDbeNPsTD92ZHPy+aN6sYqOyBszPwpf9Tag4pLoWKq8ATTIu9ZOIBqQCezbN89BvgtUPKKjJ8vnUPq9QkvUTChe979BQVk+6EgqmZmXSOl/yQSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=k1G2/nl3; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1f6f031549bso14238795ad.3
        for <linux-man@vger.kernel.org>; Thu, 13 Jun 2024 13:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718311716; x=1718916516; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/bfptCzVhxQ3NmFV7lniwTMZcoGxCLifAjrYp2H6SFw=;
        b=k1G2/nl3EJ4O7VPdRUTJ2onmbRHGZRhZ/UXHSG/oYmAWDKGCONyMDNLL+WwYkzyGp5
         HTGx6oEtFY4IwvInyAmCnZmktvRVT20q5x3uMDyBJf6t2YlSVGoIkg7BLcj1EwjGi/2d
         RrTrG2VEcc3Yr9GVn2S1bGe4izJpNoWKwF60M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718311716; x=1718916516;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/bfptCzVhxQ3NmFV7lniwTMZcoGxCLifAjrYp2H6SFw=;
        b=UlaVJEal65gwK4bKMZAVeRzCL8uDmMMaePnYLeJJj4Df75Tp49E/XTARvyV09CuTPD
         1BnQxWLaQOnxDWXZ57TRXyfDn0WPdI0Mu1BiN3barV70v4upxLwIisqfinDwGV33rUWi
         DhTY5Ds4NOnTCT9IbIQF/BRRtPaiFlMGQ5L8OeQvgBexZBPWmpmcs6mxMKACWxXXze/E
         ze8forRKmZ+Qbq2K238zzR9VuNqKqQLtl6nc+Ongy9hDzuipfZbz+cy++GJTodUvTXGJ
         tfJUsLWV+eAc2DiDncsw6H9Alh6lS1aicognsHvD3wmGk0dnqAMEsnmvNc3EOcB5Bihq
         p9TQ==
X-Forwarded-Encrypted: i=1; AJvYcCUULZ4hG/1uiiKt2+zwHvNbM+mXJNy9/DpesHt9yanylNaM8JHSUGTWUZoQAagD83PoWHzaxUW574Df7+4Gtqpwo6BaqPASMsfS
X-Gm-Message-State: AOJu0YxHCvIiHFXgE6qQnGjrVRAYMPUJXxCtrg8W4A9S70BJiq3+4B+0
	RtGcJHod2nI0uymof8eonoZ2C/zwEf/+r1kpkq5tZACG1pQ4o2yO0yGiS6SfmA==
X-Google-Smtp-Source: AGHT+IEM0oYEtrCDopNEyk5VrqY2adApB57hkf6uIFSYtxlrMGbkRPQKMX0UZRfX8r5SGAXVZpHE2w==
X-Received: by 2002:a17:902:d489:b0:1f8:3d2d:d9b1 with SMTP id d9443c01a7336-1f8625d9b65mr8703665ad.15.1718311715974;
        Thu, 13 Jun 2024 13:48:35 -0700 (PDT)
Received: from localhost ([2620:15c:9d:2:947f:f59:5791:7be1])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-1f855e72397sm18449495ad.95.2024.06.13.13.48.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jun 2024 13:48:35 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Brian Norris <briannorris@chromium.org>,
	linux-man@vger.kernel.org,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH v3] sched_setattr.2: Document sched_util_{min,max}
Date: Thu, 13 Jun 2024 13:46:56 -0700
Message-ID: <20240613204823.3184609-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.45.2.627.g7a2c4fd464-goog
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Utilization attributes were added in Linux v5.3 via commit a509a7cd7974
("sched/uclamp: Extend sched_setattr() to support utilization
clamping"). Borrow some documentation from there, with a bit of
editorial trimming and augmentation.

The "reset" (-1 / UINT32_MAX) behavior was added in Linux 5.11 via
commit 480a6ca2dc6e ("sched/uclamp: Allow to reset a task uclamp
constraint value").

Cc: Dietmar Eggemann <dietmar.eggemann@arm.com>
Cc: Patrick Bellasi <patrick.bellasi@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---
v3:
 * more grammar, formatting fixes
 * drop patch 1 / semi-unrelated content which was already applied

v2:
 * address various style, linter review comments

 man/man2/sched_setattr.2 | 72 +++++++++++++++++++++++++++++++++++++++-
 1 file changed, 71 insertions(+), 1 deletion(-)

diff --git a/man/man2/sched_setattr.2 b/man/man2/sched_setattr.2
index 0c866a786748..aa27dee79dce 100644
--- a/man/man2/sched_setattr.2
+++ b/man/man2/sched_setattr.2
@@ -94,10 +94,14 @@ .SS sched_setattr()
                               SCHED_BATCH) */
     u32 sched_priority;    /* Static priority (SCHED_FIFO,
                               SCHED_RR) */
-    /* Remaining fields are for SCHED_DEADLINE */
+    /* For SCHED_DEADLINE */
     u64 sched_runtime;
     u64 sched_deadline;
     u64 sched_period;
+\&
+    /* Utilization hints */
+    u32 sched_util_min;
+    u32 sched_util_max;
 };
 .EE
 .in
@@ -186,6 +190,23 @@ .SS sched_setattr()
 On the other hand, if the process-directed signal is delivered to
 a thread inside the process other than the one that had a run-time overrun,
 the application has no way of knowing which thread overran.
+.TP
+.B SCHED_FLAG_UTIL_CLAMP_MIN
+.TQ
+.BR SCHED_FLAG_UTIL_CLAMP_MAX " (both since Linux 5.3)"
+These flags indicate that the
+.I
+sched_util_min
+or
+.I
+sched_util_max
+fields, respectively, are present,
+representing the expected minimum and maximum utilization of the thread.
+.IP
+The utilization attributes provide the scheduler with boundaries
+within which it should schedule the thread,
+potentially informing its decisions
+regarding task placement and frequency selection.
 .RE
 .TP
 .I sched_nice
@@ -228,6 +249,37 @@ .SS sched_setattr()
 .I sched_period
 This field specifies the "Period" parameter for deadline scheduling.
 The value is expressed in nanoseconds.
+.TP
+.I sched_util_min
+.TQ
+.IR sched_util_max " (both since Linux 5.3)"
+These fields specify the expected minimum and maximum utilization, respectively.
+They are ignored unless their corresponding
+.B SCHED_FLAG_UTIL_CLAMP_MIN
+or
+.B SCHED_FLAG_UTIL_CLAMP_MAX
+is set in
+.IR sched_flags .
+.IP
+Utilization is a value in the range [0, 1024], representing the percentage of
+CPU time used by a task when running at the maximum frequency
+on the highest capacity CPU of the system.
+This is a fixed point representation, where 1024 corresponds to 100%,
+and 0 corresponds to 0%.
+For example,
+a 20% utilization task is
+a task running for 2ms every 10ms at maximum frequency and is represented by a
+utilization value of
+.IR 0.2\~*\~1024\~=\~205 .
+.IP
+A task with a minimum utilization value larger than 0 is more likely
+scheduled on a CPU with a capacity big enough to fit the specified value.
+A task with a maximum utilization value smaller than 1024 is more likely
+scheduled on a CPU with no more capacity than the specified value.
+.IP
+A task utilization boundary can be reset by setting its field to
+.B UINT32_MAX
+(since Linux 5.11).
 .P
 The
 .I flags
@@ -368,6 +420,24 @@ .SH ERRORS
 .I attr
 are invalid.
 .TP
+.B EINVAL
+.I attr.sched_flags
+contains
+.B SCHED_FLAG_UTIL_CLAMP_MIN
+or
+.BR SCHED_FLAG_UTIL_CLAMP_MAX ,
+and
+.I attr.sched_util_min
+or
+.I attr.sched_util_max
+are out of bounds.
+.TP
+.B EOPNOTSUPP
+.B SCHED_FLAG_UTIL_CLAMP
+was provided, but the kernel was not built with
+.B CONFIG_UCLAMP_TASK
+support.
+.TP
 .B EPERM
 The caller does not have appropriate privileges.
 .TP
-- 
2.45.2.627.g7a2c4fd464-goog


