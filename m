Return-Path: <linux-man+bounces-4667-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 156D3CF80C4
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 12:31:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4E30E311798F
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 11:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6CA630EF8F;
	Tue,  6 Jan 2026 11:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VwRwhZi3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB004400
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 11:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767698798; cv=none; b=sHUMXrcyhZp5uGmLz6lwBZ2IXScq7q5rg9dEEon48Ez66TEV5CZQkIGducx8g2YaIuKPt4FsME+3CnebtwNKoQ1GymWia44c6sIlyiK7BRId95A2onUQEHnRZVHgDe2qBq+vmlUnN6IXbgHYWhYK6644qcOr/CEB0r2vHxWHcbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767698798; c=relaxed/simple;
	bh=dBKIqD8h51QypEZo/f7gB9GFK1j6T4Va98kV31IXLEg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XLWsLm6bztBReuGIcsqnlq46L1wKwRJDrtS6P3W3g3/gP3Jeq/t40YRPox3txJO3OV2nN8W+5EC1mUCT9hMuREevk6EMV3o2CuKU1baaQsnTv5AXWPyMqJL4Fyx4dAl+1BcDSCG5+fgIfvNqXWKjAbPPA3jnq2l7vm1HdF+B/rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VwRwhZi3; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-432777da980so428061f8f.0
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 03:26:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767698795; x=1768303595; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9LhX9tUq2aRl76m84eTozLW4opGZv4Q4yJ+J8lNfiSY=;
        b=VwRwhZi3e7mvuchJMTyvOxYwM14lcwgqXJpe1Io4vqGn8WwgGOPIthDyYaN8ceNGny
         O2VGkkXXJDdrucEaTOCMa/rttoeqLmi1HVJukfDw+pivgUrIOEn7Vy+XxXTUOxOZ1VUE
         fWl25b95Z+uSQdkRnwnV+y//ca8GK/gLsM3XZ0vhB6tfptoeyzfF9RX3rB05yg2Jgr/r
         U1edaZLRzxFZZ1H6v6BOpiYTpI2kxdlQj7HWzGoWm73ZwV55kho2REMGlK0BdGWXCHLf
         hCRZ8sHBUzhDD7hls/M5lxt/MODJAb4n+XW/HVTbN9wtJzIa95x1SSYy5Czr1Kf+YNz+
         MsWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767698795; x=1768303595;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9LhX9tUq2aRl76m84eTozLW4opGZv4Q4yJ+J8lNfiSY=;
        b=q++fsbJgEmG4/uRSWgapyAIJtWlZ7V9sBuSR/aVHXTqk9M/5Kq/a3xrTQ9Bx1+otWu
         yI+l+UKWy41kjhbR6xs4jhUmM06SfPWdy/H6fFWN7qrZSBJU4Ki4BS6AWDtt9lsFbB9/
         krUB0z+SdF61zT5t4RNyGCFldv124z+usdXE20uDEilP0+VxlIob1HHkxGvHkvtxNzxg
         G5BsozCzhBvmr5lOIlweU2gYYHf6T4QgcUnTCL52nXlDcdcgbBJ+lp3gg9NBCn1LSR4z
         ryDgz6Kn3fvfofiFUIi4fSJCmoFHsv8dWOQ0CfGiS/jacBlUuWilr2qPCC0Q27Cfz7B9
         lNkQ==
X-Gm-Message-State: AOJu0Yw9OUct+Lqnekt8JeAJbsZaSFwX8vCBmQo08roE8jMHA5TteJOL
	9s4dbFPdVURm0esBjo7fqvY0G0M0GD6Lz9X7gjDDzglZmiFM4jBNDZMFBHndzPW1
X-Gm-Gg: AY/fxX7/0a2jPDbWdVPqrMNcWqmTWzX8p1sUobndJ1/B8Lz6aPhKj2cRMnnjHVZSiVt
	XXJcWWZzjWGfyYXXsU3lZZlGncKMu8lUUWLD4Kq3bpmwQPwG3ajBhxk5+9Ak+UjACLv63xdKjoO
	MKkCGszQaSl9w7jQuEpg+5m5rxfSLZqfAmsWrLoAfAmYs6lVFsSlI5qRsl2nExHJbRmEh9AJWbE
	bt/7KffOCCPV84BxyLfHW1qXX6Ctulu5W0awgWJXczJRxdf7HUIWj2lfdwSUQfJ4VBKIy6SgtK+
	Szlm4k/S7fMwgvgC1pSrcfJgPT6dT2FpI3iHd8F81MZJiADsg9Xleln8A4VT8SQMxS34uKYHJ15
	L30lKyMNrWcMEHSjmRrQ0nO1qmqs+L2VMfS9KaNVpxM8OmOa6Q2AwYKMYzfwLbwLuZ6g81vJ6aC
	Vx6yUrHY3QeH9TSYuhXbA+Z6XlvfIKaQSXdDtv
X-Google-Smtp-Source: AGHT+IFBKeuM1qCHFn9yQo+dFROn9s3O4HF1DBkZYXwbdmgI1jD9VkN+2kaV11KJyK5qvMY9EeG9aQ==
X-Received: by 2002:a05:6000:4203:b0:432:85eb:a3cc with SMTP id ffacd0b85a97d-432bca2bcd5mr3208648f8f.19.1767698795003;
        Tue, 06 Jan 2026 03:26:35 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ff1e9sm4071859f8f.41.2026.01.06.03.26.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 03:26:34 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Simon Essien <champbreed1@gmail.com>
Subject: [PATCH 1/2] man2: update glibc wrapper status and clean up FIXMEs
Date: Tue,  6 Jan 2026 11:26:26 +0000
Message-ID: <20260106112627.83127-1-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update seccomp(2) to reflect that glibc 2.33 added a wrapper.
Update sched_setattr(2) to remove obsolete FIXME markers, as the
lack of a glibc wrapper is already correctly noted in the text.

Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man2/sched_setattr.2 | 5 +----
 man/man2/seccomp.2       | 4 ++--
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/man/man2/sched_setattr.2 b/man/man2/sched_setattr.2
index 6d5718022..c8010b8fa 100644
--- a/man/man2/sched_setattr.2
+++ b/man/man2/sched_setattr.2
@@ -460,7 +460,6 @@ does not include all CPUs in the system
 Linux.
 .SH HISTORY
 Linux 3.14.
-.\" FIXME . Add glibc version
 .SH NOTES
 glibc does not provide wrappers for these system calls;
 call them using
@@ -482,9 +481,7 @@ provides a superset of the functionality of
 and (partially)
 .BR getpriority (2).
 .SH BUGS
-In Linux versions up to
-.\" FIXME . patch sent to Peter Zijlstra
-3.15,
+In Linux versions up to 3.15,
 .BR sched_setattr ()
 failed with the error
 .B EFAULT
diff --git a/man/man2/seccomp.2 b/man/man2/seccomp.2
index 125794880..685ed4713 100644
--- a/man/man2/seccomp.2
+++ b/man/man2/seccomp.2
@@ -25,7 +25,7 @@ Standard C library
 .fi
 .P
 .IR Note :
-glibc provides no wrapper for
+Before glibc 2.33, glibc provided no wrapper for
 .BR seccomp (),
 necessitating the use of
 .BR syscall (2).
@@ -863,7 +863,7 @@ be determined.
 Linux.
 .SH HISTORY
 Linux 3.17.
-.\" FIXME . Add glibc version
+Glibc 2.33.
 .SH NOTES
 Rather than hand-coding seccomp filters as shown in the example below,
 you may prefer to employ the
-- 
2.51.0


