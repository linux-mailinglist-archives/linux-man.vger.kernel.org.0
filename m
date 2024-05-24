Return-Path: <linux-man+bounces-991-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B72778CEA29
	for <lists+linux-man@lfdr.de>; Fri, 24 May 2024 21:09:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C0E71F21464
	for <lists+linux-man@lfdr.de>; Fri, 24 May 2024 19:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62E1A39FFE;
	Fri, 24 May 2024 19:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="d/hO07wY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93552381C6
	for <linux-man@vger.kernel.org>; Fri, 24 May 2024 19:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716577742; cv=none; b=HtN4qU5+1VlRg81sUlhlxH+3a9EITzx/6rFwZc1q3hvV320Nhxlt9g3Wdnhm8W1THKFLixw7FMRvHyYDR1dnpDydkpCKIGFeB0fFTuFfLzqHILQvNfHGz8l5einAMOF/414j2Wj2thTFqzQ6ClHUhmwKD2mkPxTJR7+pKCilRW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716577742; c=relaxed/simple;
	bh=nxYZy5hc8uXn51jpJTgR69IkIPJZh1KjG6my7fBjNuw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iWImr42stXXYWx4BGrFxupuJ1MLI3ekRpzV0DtcYZDtNeMo4mj0DuaQbIxjF+oew7D1wd3iKtYjyL6JU6g6lvQDIGUyRdELXTwXoGB0FnuU77A16VU3QYeHJMffPxyqo/ae9YbfzlToDhWQ1IcJxYaS/j6q0j/Y8KZMD5s8J4co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=d/hO07wY; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6f8eaa14512so1147208b3a.3
        for <linux-man@vger.kernel.org>; Fri, 24 May 2024 12:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1716577740; x=1717182540; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BLegnfhEElhdfAGZhcwBXt7Xr9ERaQVJfXJuTuKN0pw=;
        b=d/hO07wYukYymqV4Co+0zcjgu0/t8iG5BF/SQpUGODCBHmfGR9p9TD2H/5UMlNSpCi
         GxZy2QEmQBU8PQfGFkhombxI9ug8CqR5441AOTjbYz0LynP9YHrefKlyIS0JQPHeofMp
         CFV+h4ntUcFOigFWR+gA6C6YvAkeRRiIEAoW4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716577740; x=1717182540;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BLegnfhEElhdfAGZhcwBXt7Xr9ERaQVJfXJuTuKN0pw=;
        b=PcymRXZA+2rz8nCnZaZBtqGutuVucNmCyhCiTryyuJLhCttlntvaE5WZGIPzegIPu+
         bxk+Ize/RooPEmz+HvzHNjwXloz65es5PV+aVew/h7Vl+bxZxAY266hl9aPLWjdR7POY
         IhzjRlqwa906pF5RmoOkzI9Rf4fTtzvbX7DnjPw4dErThXnaWVsxsK2lWKyKFWy/gZ/J
         myi1HRoQu+uSFH7rk0pRIbjD45pBT1TvkiOvaGuBsbJYVejXxVXkF5x3tY3nnpsm/BMP
         XbV/ElmSf7/0yTOaRXM1v22Yz2tGQaE6gb9GFdhGIbQxMvcxSPeLdKVFN+xY7r9kN0b2
         15Rg==
X-Forwarded-Encrypted: i=1; AJvYcCVg+398d04j4XCPAObNbSgMzcWG+xYi5+tA2hUnpBcuKjLZLZP/YSsYVfBlCl8vuUd2dhU9sUfHiKbAagAB0X9FMe0KtrAw33XZ
X-Gm-Message-State: AOJu0YxSmnGt+ni2GLmNkjpKsvV/Of5nCO7KgYC1S2YWW5iR3nJp2u9H
	cZ4S/UPv/uhCTBAG4xJ/907b8yNVX8G1jcDhcJErwHgVTPgSpBZzOlbCtBIV7in+JQLYgsFjJnG
	2nA==
X-Google-Smtp-Source: AGHT+IHFQ07dWkkeDI2KmuT5qJRFC9Da/QqpBzUTBCbVx96Avolxne26QG0TxqzIXPa3HJ+YhDfLMw==
X-Received: by 2002:a05:6a20:f3b0:b0:1b1:f7a1:dfa6 with SMTP id adf61e73a8af0-1b212dfe653mr3259988637.38.1716577739863;
        Fri, 24 May 2024 12:08:59 -0700 (PDT)
Received: from localhost ([2620:15c:9d:2:2400:7e62:5681:ff2d])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-6f8fd4da087sm1422056b3a.204.2024.05.24.12.08.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 May 2024 12:08:59 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Brian Norris <briannorris@chromium.org>,
	linux-man@vger.kernel.org,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH] sched_setattr.2: Document sched_util_{min,max}
Date: Fri, 24 May 2024 12:08:28 -0700
Message-ID: <20240524190829.2503648-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.45.1.288.g0e0cd299f1-goog
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
 man/man2/sched_setattr.2 | 65 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 63 insertions(+), 2 deletions(-)

diff --git a/man/man2/sched_setattr.2 b/man/man2/sched_setattr.2
index 5d7061bd6e3a..4b940d76de53 100644
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
+
+    /* Utilization hints */
+    u32 sched_util_min;
+    u32 sched_util_max;
 };
 .EE
 .in
@@ -186,6 +190,20 @@ .SS sched_setattr()
 On the other hand, if the process-directed signal is delivered to
 a thread inside the process other than the one that had a run-time overrun,
 the application has no way of knowing which thread overran.
+.TP
+.BR SCHED_FLAG_UTIL_CLAMP_MIN ", " SCHED_FLAG_UTIL_CLAMP_MAX " (since Linux 5.3)"
+These flags indicate that the
+.I
+sched_util_min
+or
+.I
+sched_util_max
+fields, respectively, are present, representing the expected minimum and
+maximum utilization of the thread.
+.IP
+The utilization attributes provide the scheduler with boundaries within which
+it should schedule the thread, potentially informing its decisions regarding
+task placement and frequency selection.
 .RE
 .TP
 .I sched_nice
@@ -228,6 +246,33 @@ .SS sched_setattr()
 .I sched_period
 This field specifies the "Period" parameter for deadline scheduling.
 The value is expressed in nanoseconds.
+.TP
+.IR sched_util_min ", " sched_util_max " (since Linux 5.3)"
+These fields specify the expected minimum and maximum utilization, respectively.
+They are ignored unless their corresponding
+.I SCHED_FLAG_UTIL_CLAMP_MIN
+or
+.I SCHED_FLAG_UTIL_CLAMP_MAX
+are set in
+.IR sched_flags .
+.IP
+Utilization is a value in the range [0..1024], representing the percentage of
+CPU time used by a task when running at the maximum frequency on the highest
+capacity CPU of the system.
+This is a fixed point representation, where 1024 corresponds to 100%, and 0
+corresponds to 0%.
+For example, a 20% utilization task is a task running for 2ms every 10ms at
+maximum frequency and is represented by a utilization value of
+0.2 * 1024 = 205.
+.IP
+A task with a minimum utilization value larger than 0 is more likely scheduled
+on a CPU with a capacity big enough to fit the specified value.
+A task with a maximum utilization value smaller than 1024 is more likely
+scheduled on a CPU with no more capacity than the specified value.
+.IP
+A task utilization boundary can be reset by setting its field to
+.I UINT32_MAX
+(new in Linux 5.11).
 .P
 The
 .I flags
@@ -353,7 +398,6 @@ .SH ERRORS
 .I attr.sched_flags
 contains a flag other than
 .BR SCHED_FLAG_RESET_ON_FORK ;
-or
 .I attr.sched_priority
 is invalid; or
 .I attr.sched_policy
@@ -363,6 +407,23 @@ .SH ERRORS
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
+SCHED_FLAG_UTIL_CLAMP was provided, but the kernel was not built with
+.BR CONFIG_UCLAMP_TASK
+support.
+.TP
 .B EPERM
 The caller does not have appropriate privileges.
 .TP
-- 
2.45.1.288.g0e0cd299f1-goog


