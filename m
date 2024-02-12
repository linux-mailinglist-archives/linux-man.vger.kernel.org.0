Return-Path: <linux-man+bounces-434-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E56850F5B
	for <lists+linux-man@lfdr.de>; Mon, 12 Feb 2024 10:09:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7C31A1F2269F
	for <lists+linux-man@lfdr.de>; Mon, 12 Feb 2024 09:09:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D427FBFC;
	Mon, 12 Feb 2024 09:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=smrk.net header.i=@smrk.net header.b="QffzTv58"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.smrk.net (mail.smrk.net [45.76.87.244])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274D8101C1
	for <linux-man@vger.kernel.org>; Mon, 12 Feb 2024 09:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.76.87.244
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707728956; cv=none; b=YtVUPY9td5/tWafcasdyxO5BXzp+aFaLzdy3gc/hEvG9UPkWmA20U6wOnMChjH2I+UrisawEWYjXLE5K8sNkGF0sxyYL9zG6sUzv+7EexYSzqTvdvxSlMN7ytajvIVjFJ0wsps/3pUs43BDCk+4hPHQ8+quOIgurHBcevAz/Dg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707728956; c=relaxed/simple;
	bh=IuMyQMsZW4yKlXMeFxOqyGKzCX9Run3VV632eLrP7aw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=TLlk6rIpARqxpRo2x0nk9jfl1uF+tV4jbr18Q0OYduc9YMby6+PZvJRLEfaLn4oV7NuL9xkd9O5EuzBSGx52UzUNPZPjDhjpo2Be6vkSB9yJF9dm1yOwVS4/jDRM0Fe3L3USzJxu1pxg9KVZA0mAx4JvlqVQx7k6hrXkO+2WoqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smrk.net; spf=pass smtp.mailfrom=smrk.net; dkim=pass (2048-bit key) header.d=smrk.net header.i=@smrk.net header.b=QffzTv58; arc=none smtp.client-ip=45.76.87.244
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smrk.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smrk.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smrk.net; s=20221002;
	t=1707728944;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ND+/RgodSgK4CeflcMACPS5YyDSevQmd7/4+GmwCMCs=;
	b=QffzTv58rgen2HMP4nOX2aWc5Vn83Yu4iR7dg0MQ06cRIrtmY2GcQK3ay21Wg5EemWu8M/
	c0B98vY2uXfYdh1Tajx+9TBm9ZxLTnWoFkwueu6nTNaATYpPHHfDCHylOSYotPS9fecpqn
	+B4+iXRJQfSNkCjEzaPyHXLB6D4A6S7mXhHJrOHQFPctwyKO2+dCYofpB34sOvR847uTnM
	nPeMivB3T7aWG3eHLM/AtbVvR0cB9gh/KUJOa+kr1PoV5XvSP4sJir/TXtE1KjRpGCj5uH
	j5UqCYQFwUAJHtFWnX/hjAT0U1xFp8cL82lcFOXKQHKKNaNVk7n1jcmSwmzzew==
Received: from localhost (<unknown> [192.168.5.2])
	by smrk (OpenSMTPD) with ESMTPSA id 1c8066aa (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Mon, 12 Feb 2024 10:09:04 +0100 (CET)
From: =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@smrk.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 1/2] clone.2, epoll_wait.2, recv.2, send.2, syscalls.2, unlink.2, sched.7, unix.7, vdso.7: tfix
Date: Mon, 12 Feb 2024 10:09:02 +0100
Message-ID: <20240212090903.645715-1-stepnem@smrk.net>
X-Mailer: git-send-email 2.43.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Štěpán Němec <stepnem@smrk.net>
---
 man2/clone.2      | 2 +-
 man2/epoll_wait.2 | 2 +-
 man2/recv.2       | 2 +-
 man2/send.2       | 2 +-
 man2/syscalls.2   | 2 +-
 man2/unlink.2     | 2 +-
 man7/sched.7      | 2 +-
 man7/unix.7       | 4 ++--
 man7/vdso.7       | 2 +-
 9 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/man2/clone.2 b/man2/clone.2
index 8e5eae806014..e88c54eeb6a3 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -1745,7 +1745,7 @@ .SS Linux 2.4 and earlier
 and
 .IR child_tid .
 .SH NOTES
-One use of these systems calls
+One use of these system calls
 is to implement threads: multiple flows of control in a program that
 run concurrently in a shared address space.
 .P
diff --git a/man2/epoll_wait.2 b/man2/epoll_wait.2
index 3407785ec72b..2a0ad6364ff4 100644
--- a/man2/epoll_wait.2
+++ b/man2/epoll_wait.2
@@ -77,7 +77,7 @@ .SH DESCRIPTION
 .BR epoll_wait ()
 to block indefinitely, while specifying a
 .I timeout
-equal to zero cause
+equal to zero causes
 .BR epoll_wait ()
 to return immediately, even if no events are available.
 .P
diff --git a/man2/recv.2 b/man2/recv.2
index 7959bff2583d..294eca384dae 100644
--- a/man2/recv.2
+++ b/man2/recv.2
@@ -123,7 +123,7 @@ .SS The flags argument
 is a setting on the open file description (see
 .BR open (2)),
 which will affect all threads in the calling process
-and as well as other processes that hold file descriptors
+as well as other processes that hold file descriptors
 referring to the same open file description.
 .TP
 .BR MSG_ERRQUEUE " (since Linux 2.2)"
diff --git a/man2/send.2 b/man2/send.2
index 88588148e483..f3de06e4c629 100644
--- a/man2/send.2
+++ b/man2/send.2
@@ -184,7 +184,7 @@ .SS The flags argument
 is a setting on the open file description (see
 .BR open (2)),
 which will affect all threads in the calling process
-and as well as other processes that hold file descriptors
+as well as other processes that hold file descriptors
 referring to the same open file description.
 .TP
 .BR MSG_EOR " (since Linux 2.2)"
diff --git a/man2/syscalls.2 b/man2/syscalls.2
index c75855393464..6c231350634d 100644
--- a/man2/syscalls.2
+++ b/man2/syscalls.2
@@ -985,7 +985,7 @@ .SH NOTES
 the glibc wrapper functions do some work to ensure that the right
 system call is invoked, and that ABI compatibility is
 preserved for old binaries.)
-Examples of systems calls that exist in multiple versions are
+Examples of system calls that exist in multiple versions are
 the following:
 .IP \[bu] 3
 By now there are three different versions of
diff --git a/man2/unlink.2 b/man2/unlink.2
index c43071f12029..ed729109d8e3 100644
--- a/man2/unlink.2
+++ b/man2/unlink.2
@@ -117,7 +117,7 @@ .SS unlinkat()
 .IR pathname .
 If the
 .B AT_REMOVEDIR
-flag is specified, then
+flag is specified, it
 performs the equivalent of
 .BR rmdir (2)
 on
diff --git a/man7/sched.7 b/man7/sched.7
index 5640325a9185..71f098e48188 100644
--- a/man7/sched.7
+++ b/man7/sched.7
@@ -158,7 +158,7 @@ .SS SCHED_FIFO: First in-first out scheduling
 thread identified by
 .I pid
 the effect on the thread's position in the list depends on
-the direction of the change to threads priority:
+the direction of the change to the thread's priority:
 .RS
 .IP (a) 5
 If the thread's priority is raised,
diff --git a/man7/unix.7 b/man7/unix.7
index 71cdfc7586a5..cb1dcae45a66 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -72,7 +72,7 @@ .SS Address format
 .I sun_path
 is 108 bytes in size; see also BUGS, below.
 .P
-Various systems calls (for example,
+Various system calls (for example,
 .BR bind (2),
 .BR connect (2),
 and
@@ -833,7 +833,7 @@ .SH NOTES
 .\"
 .SH BUGS
 When binding a socket to an address,
-Linux is one of the implementations that appends a null terminator
+Linux is one of the implementations that append a null terminator
 if none is supplied in
 .IR sun_path .
 In most cases this is unproblematic:
diff --git a/man7/vdso.7 b/man7/vdso.7
index f440172d1532..de5f300cd219 100644
--- a/man7/vdso.7
+++ b/man7/vdso.7
@@ -173,7 +173,7 @@ .SS vDSO names
 .ft P
 \}
 .SS strace(1), seccomp(2), and the vDSO
-When tracing systems calls with
+When tracing system calls with
 .BR strace (1),
 symbols (system calls) that are exported by the vDSO will
 .I not

base-commit: a1e22a8c359660394afdc9f838c87eb0d38e7903
-- 
2.43.1


