Return-Path: <linux-man+bounces-1164-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1D5905D09
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 22:45:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7C7C1C22843
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 20:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35C1D84A56;
	Wed, 12 Jun 2024 20:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fmZ+vNvY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90D6F43144
	for <linux-man@vger.kernel.org>; Wed, 12 Jun 2024 20:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718225140; cv=none; b=f6pHti7VcILrw9ueS+oBZ+L033lO9QciCSIE2WsiYP5RUKoQwBwoxW/xEAlSBZRsqke66cv/D7t3hGlYAw7DBig/HovMyLPw/e9Sa6IZGahHlfN0/u2HG1HBdJbIm9DOBI9YJm7qBR4Cj4lhRUs5ohe5SH1H9yl+HbUTzx2VYwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718225140; c=relaxed/simple;
	bh=rOYSX6t/+bz//h85IOwYoXRYXuw3dGcM+1O+0i1VAZU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ac2R+MepV+Dak9uWNCQfbPznxxVFJY03YHEgbiQIUGT4UiSaFui/d5G7k1k4da2RH2BoeKOtytIQZmpql9KgjB7CITVHNKhu2s+ec1S3BK3AxYx/57ADeyIYBfd2V7RSZ38F5eM/diE0hQhM+NGqKWNqldWPFBpr1kLAHJQw9eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fmZ+vNvY; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1f7274a453bso2970645ad.2
        for <linux-man@vger.kernel.org>; Wed, 12 Jun 2024 13:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718225138; x=1718829938; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BQP+qrzruU8DV9OUe1ZUQh7F3MrWHfR2fC2GmWx6cdI=;
        b=fmZ+vNvY2bOtOuH/btUv/2E9l5MwAanwvaQFXFJzima9dn+y9nEJbeOV7YSqtuCghp
         Ol1gKQUGrLbEfmzBO05aPUyLHPKMHtamv0dvtULcSYnuBhnPk7DbK/NbW9Rqz3lLveTS
         bGoUvXQ6bqD07DYR7LUwKyi/5g7sBNnOwNI9I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718225138; x=1718829938;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BQP+qrzruU8DV9OUe1ZUQh7F3MrWHfR2fC2GmWx6cdI=;
        b=L9UiPBFgPnS7zC9KJ+BnEgNZXm5SqdKilFGY1UXEo9tWLD2d267Lk2yPNtWD+WdTlI
         pf6XEIGAUIQI+Q7UJIWKokML+UYk/jmjcXspnU7FeOSrXxNT3pewQVxs3M7oPGmPM8HM
         D8fezLoRrXOn48/f+0srEmF7Jn/akKCy+PRdx9x4LrREKiRETaoDBBHMlKf2LycesBTh
         s1F/cKfNYCrRhnczdhuKdD22pxIP4dkCqCjWCFaPLK78qLaT4JR+IVzcRdi/xu3WLNZz
         5oK5oYs+SyZ5BfblWkPE1MIev2DRD9Yu95o3SIqD30WIMDloXQBVBZZuaqGmGZa9EiYD
         oZkQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6qmtoVwgEJYI1fYQuqhtvMCzJ+08ASxA6z+23ATK0tXGx/586W61d7XQdZR1ssMynSYuLUuOBsUXK52I9mrLk0j12I2wZgsxr
X-Gm-Message-State: AOJu0Yx9ypgfjO9APR+y4NNIlmjIoeSRXRTknw/1DasBSUfeGIFDC84J
	nzk6gaWPWOakEbuEGvDJbcuQE/KHc1Jpx/3ZJSR4Ko8HwzAHETDqc9KBjUkBzBJAZehBffHPeDI
	=
X-Google-Smtp-Source: AGHT+IFpWB4y45p6/RmNO/gbZPQkknIKZ7T9cjJJdNdxf08AH5kWG9th/6V3kSlxMmSWUZq1KajspQ==
X-Received: by 2002:a17:902:e847:b0:1f6:f047:d37d with SMTP id d9443c01a7336-1f83b600826mr37413095ad.36.1718225137791;
        Wed, 12 Jun 2024 13:45:37 -0700 (PDT)
Received: from localhost ([2620:15c:9d:2:90ba:9f8:1a32:b765])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-1f70acdf14dsm71113705ad.113.2024.06.12.13.45.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jun 2024 13:45:37 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Brian Norris <briannorris@chromium.org>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 2/2] sched_setattr.2: Document sched_util_{min,max}
Date: Wed, 12 Jun 2024 13:44:53 -0700
Message-ID: <20240612204504.2651521-2-briannorris@chromium.org>
X-Mailer: git-send-email 2.45.2.505.gda0bf45e8d-goog
In-Reply-To: <20240612204504.2651521-1-briannorris@chromium.org>
References: <20240612204504.2651521-1-briannorris@chromium.org>
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
v2:
 * address various style, linter review comments

 man/man2/sched_setattr.2 | 67 +++++++++++++++++++++++++++++++++++++++-
 1 file changed, 66 insertions(+), 1 deletion(-)

diff --git a/man/man2/sched_setattr.2 b/man/man2/sched_setattr.2
index 0c866a786748..c3b2cc5be6f1 100644
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
@@ -228,6 +249,33 @@ .SS sched_setattr()
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
+Utilization is a value in the range [0, 1024], representing the percentage of
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
+.B UINT32_MAX
+(new in Linux 5.11).
 .P
 The
 .I flags
@@ -368,6 +416,23 @@ .SH ERRORS
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
+.B CONFIG_UCLAMP_TASK
+support.
+.TP
 .B EPERM
 The caller does not have appropriate privileges.
 .TP
-- 
2.45.2.505.gda0bf45e8d-goog


