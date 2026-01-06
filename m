Return-Path: <linux-man+bounces-4662-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC9BCF7CE4
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 11:33:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 15D833000927
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 10:33:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D781A2D9784;
	Tue,  6 Jan 2026 10:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I3T4TGWb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8A030AABC
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 10:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767695610; cv=none; b=d2ALUFgsAtTMVNQxLBye7999i8boiSQO/x+fI6WYF8n4zqklhqGvY4cKYpaIl86KykGk6uy53bekFK+E5XQWisQHizNb4IHvrehev0Omo6H/mznY1EzqCCEMrTszPuBQqvKrYLbE/C5ytLDD7197931l2Cb3TMWcWdEZH9j1aYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767695610; c=relaxed/simple;
	bh=pBKaGBUNxznktkoPyTcqZvsz609BWiFnwoied8kZT2w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RtaSzEBWmCtM3PsY6emgylZPyoWObEnFZpumxUC4LesWhoj3v+MuD/qrSed5yhezd+XCeWxqLEOy/EZ7tsqsFLJ10ECWH8ScfdivDAJH3pMk2jPrACPxg07mA4AwCSmMFGHHlyVAg/XWtygSziLtN2duhYcPMnG7xaF9oUbOpIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I3T4TGWb; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-477563e28a3so5592655e9.1
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 02:33:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767695607; x=1768300407; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=V38UjlvZ8NvZwgNi0yucHphFjSq7O0yzCHqVeQ3uz18=;
        b=I3T4TGWb9Ljb1yzGrWGnHKt5j8pk8AOUF1d7IdCbnMqersYOWZFmsfSERHnxmRrFgQ
         R6oPUawTXxSYIUjzGkkcOM+D+REpvrXAl7HHc6gvFPBhWqocqqoXcoDmi18b2vy/zlgG
         nINwPAqB7HLjY4NSYLbWDv5pzfGGYmuIVlRMucijss3nWWWyi4ikk6yK+7s/lwj4FUs+
         yvQTmIe1EoqWC4jFHg3iRrVtAy25PTATZkGy1GRLPhBWlmM8tVxA7ngEXKYS+moI59F6
         /mC5NejA/ikJOc/kYJXLwSew8iZ/7mPJmSKTK9ycHtYkk2aKAiKVyvKJ1yhbLcfZoEkk
         qCxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767695607; x=1768300407;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V38UjlvZ8NvZwgNi0yucHphFjSq7O0yzCHqVeQ3uz18=;
        b=BuBcV6BPrcnf6H4We6l+oIJeEWWxqDRw7Apf4V5RgnOXi5yNDPSh34nevKc6gx5UGi
         ysJc3MLvlOdiYJTXa4JgD5wG9zYFrYb/HxiEAV+OBN0rRmyIiZen0eQc20p5ZcKmKlja
         7oiTdVxu+Us5Ovz8ngkkH8peRWlaaqALEr4m7+7tcieXkg44Obk6ZXLLr/tkol9N99AG
         VWWNepjcR2pCFX7dz9VCqJ+TpyI6IV/zfnXNVmVxdlHvgeJDOLIpFMW/No/ALyKkNwEf
         ljf7I7ZJza6NcDktj5Ninm0NXjq1tSd5vL9eY8WDzzhZIF8TNKlQzYxhhT+q21Kvid4f
         b8pQ==
X-Gm-Message-State: AOJu0Yw0v4FoXVRzM/GP4kunDYOBFQ5EE8yH6QJ4Yo7VHLj9RQWypDum
	jK/VFdqIqIfJWoUDM66Aan16fm75NDNb6IVzdhkVcIjYXnwAarv7heNx
X-Gm-Gg: AY/fxX7qjNQq43IMu5OVLnVppb5vOEBzVBSl4nQVwFYvJp/lF6hqQ/32THKdDzBNkxO
	V+fpIGPczFBSf9yB3HDEIvkSTJ+UZgaz+oQnOso/UjQqo6vP2K1zFrqefJMhaa0rAsyVZIP9IPK
	HUmjzUNGH19FdKc6LLbBSbnyTZQtvq42nuVwQkNBxMphcf4gpHkXvO77guiVZH3pi78mdKR12lg
	NAZSei61M/fiz6itRqbONbzMluuwmOYaGzIFHaXDX2ZlpX5UOTzRfIim/QUPnm6jyaV8IuF4Zn2
	M1oEiZxrdQtujb7dFdfJxTyPUeZ/enbf4DPpDjLMZrffr91/Jl/uQclbIUZmQqIv4btC3I5HIuh
	MHCbVA5pEbe32pmUxXM5b4JpJVkaHmpSuQNB6FlC5omi52pl6RGUdR502vTIQQS8lQlZcQpPehf
	BOiVLIQ8bfo1q0FSBDb2fZ9EYEbRl5hjAz6ydq
X-Google-Smtp-Source: AGHT+IEVn7Vex7Ie3MNZzR6eDkHAMjdMka2HNG7+yFnCW/2ej5bsQWBGAQiGrOBrABVwpYFHKA0vEA==
X-Received: by 2002:a05:600c:46c3:b0:477:a2f7:74de with SMTP id 5b1f17b1804b1-47d7f404854mr34202565e9.3.1767695606782;
        Tue, 06 Jan 2026 02:33:26 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5df9afsm3794540f8f.24.2026.01.06.02.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 02:33:26 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	debian@helgeth.de,
	champbreed1@gmail.com
Subject: [PATCH] man3, man5, man7: Fix spelling (British -> American)
Date: Tue,  6 Jan 2026 10:33:18 +0000
Message-ID: <20260106103318.31819-1-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change 'cancelled' to 'canceled' to follow the project's American English standard.

Reported-by: Helge Kreutzmann <debian@helgeth.de>
Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man3/pthread_cond_init.3 | 2 +-
 man/man5/proc_pid_io.5       | 6 +++---
 man/man7/bpf-helpers.7       | 6 +++---
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/man/man3/pthread_cond_init.3 b/man/man3/pthread_cond_init.3
index 88600b3a5..f562ce47a 100644
--- a/man/man3/pthread_cond_init.3
+++ b/man/man3/pthread_cond_init.3
@@ -169,7 +169,7 @@ except checking that the condition has no waiting threads.
 and
 .BR pthread_cond_timedwait ()
 are cancelation points.
-If a thread is cancelled while suspended in one of these functions,
+If a thread is canceled while suspended in one of these functions,
 the thread immediately resumes execution,
 then locks again the
 .I mutex
diff --git a/man/man5/proc_pid_io.5 b/man/man5/proc_pid_io.5
index 19b5bde9e..fe810b60d 100644
--- a/man/man5/proc_pid_io.5
+++ b/man/man5/proc_pid_io.5
@@ -22,7 +22,7 @@ syscr: 632687
 syscw: 632675
 read_bytes: 0
 write_bytes: 323932160
-cancelled_write_bytes: 0
+canceled_write_bytes: 0
 .EE
 .in
 .IP
@@ -70,7 +70,7 @@ This is accurate for block-backed filesystems.
 .IR write_bytes ": bytes written"
 The number of bytes really sent to the storage layer.
 .TP
-.IR cancelled_write_bytes :
+.IR canceled_write_bytes :
 The above statistics fail to account for truncation:
 if a process writes 1 MB to a regular file and then removes it,
 said 1 MB will not be written, but
@@ -79,7 +79,7 @@ have nevertheless been accounted as a 1 MB write.
 This field represents the number of bytes "saved" from I/O writeback.
 This can yield to having done negative I/O
 if caches dirtied by another process are truncated.
-.I cancelled_write_bytes
+.I canceled_write_bytes
 applies to I/O already accounted-for in
 .IR write_bytes .
 .RE
diff --git a/man/man7/bpf-helpers.7 b/man/man7/bpf-helpers.7
index 01c2d87d9..fdabfbf2d 100644
--- a/man/man7/bpf-helpers.7
+++ b/man/man7/bpf-helpers.7
@@ -4317,7 +4317,7 @@ the same \fImap\fP\&.
 \fB\-EPERM\fP if \fItimer\fP is in a map that doesn\(aqt have any user references.
 The user space should either hold a file descriptor to a map with timers
 or pin such map in bpffs. When map is unpinned or file descriptor is
-closed all timers in the map will be cancelled and freed.
+closed all timers in the map will be canceled and freed.
 .UNINDENT
 .TP
 .B \fBlong bpf_timer_set_callback(struct bpf_timer *\fP\fItimer\fP\fB, void *\fP\fIcallback_fn\fP\fB)\fP
@@ -4332,7 +4332,7 @@ Configure the timer to call \fIcallback_fn\fP static function.
 \fB\-EPERM\fP if \fItimer\fP is in a map that doesn\(aqt have any user references.
 The user space should either hold a file descriptor to a map with timers
 or pin such map in bpffs. When map is unpinned or file descriptor is
-closed all timers in the map will be cancelled and freed.
+closed all timers in the map will be canceled and freed.
 .UNINDENT
 .TP
 .B \fBlong bpf_timer_start(struct bpf_timer *\fP\fItimer\fP\fB, u64\fP \fInsecs\fP\fB, u64\fP \fIflags\fP\fB)\fP
@@ -4347,7 +4347,7 @@ Since struct bpf_timer is a field inside map element the map
 owns the timer. The bpf_timer_set_callback() will increment refcnt
 of BPF program to make sure that callback_fn code stays valid.
 When user space reference to a map reaches zero all timers
-in a map are cancelled and corresponding program\(aqs refcnts are
+in a map are canceled and corresponding program\(aqs refcnts are
 decremented. This is done to make sure that Ctrl\-C of a user
 process doesn\(aqt leave any timers running. If map is pinned in
 bpffs the callback_fn can re\-arm itself indefinitely.
-- 
2.51.0


