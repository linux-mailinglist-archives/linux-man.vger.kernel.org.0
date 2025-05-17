Return-Path: <linux-man+bounces-2939-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D59BABAA01
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 14:16:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A25604A203A
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 12:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E61C1DE8B2;
	Sat, 17 May 2025 12:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAX9Hlmm"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29BC2B2DA
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 12:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747484192; cv=none; b=eKg+5Ze0EpbGDyi90983pOJYHeTtdac86yTiFM35Z3hrEo8SAdHXIsejduU9pxYMvn2LNmGDiiZO9A7h6294QBNq3ka55wV38M3YdcxnmgybqRn/sD+Jxt3lVWvoy3qY7sYnXF2JMTQBQvBgSlP2KO6g+MhVmQmXBF01ZgcQ4rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747484192; c=relaxed/simple;
	bh=7IXKOa9rCqK3tE5jGoRSKsE+kS7ACwk+FwpTeygh7pk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y3U6Oq0jKuoF2Gc+VTlcbD+lAdW4p1sktvMBksBhakCToFdyVlBK4Si2Oj7xijOu0WyIpNPOQfWihIxLMjKamVGrnqjBc3pdVc/PUQemW8DeeZjS7KeBzUXoLoe0VXE4640+nHqpXmU141e2oRlCf/SgVnYNlEY2qOGJdv7dDbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAX9Hlmm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A3B5C4CEE3;
	Sat, 17 May 2025 12:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747484192;
	bh=7IXKOa9rCqK3tE5jGoRSKsE+kS7ACwk+FwpTeygh7pk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gAX9HlmmHXPzDge0TI1bALck5Of+sqYppqWrBBfTWI82rIzdT2du5Y4Hwl+tqHiN8
	 93QZH301rZYghKzB36uLFzHwyGUX7Zn/ByFr0BIVJx8QKOXOUAz+ZBtX5/j2h5NL+R
	 r3707gcSpGwfcFVtO+1gerO1QcnwKOzD0hZQcj4kIPCug0/lIWhlGo9Np4WsW/A1qz
	 xs02lL/S+GcE4EV29Zt67IfhkqQfuDZYoMADnjbwyTARsOeBeZX/KXDSfKHK5m8Zfx
	 NO7yL+TDxk36GtfvQH6dI2fU4C4PuvJBiI+zzu6O9WpQQ4zJyZCp6lwuwxgaZKtUle
	 Ba4iTKD60KVPg==
Date: Sat, 17 May 2025 14:16:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v1 2/2] man/: Update references to fork(2), and add
 references to _Fork(3), for POSIX.1-2024
Message-ID: <2e5dd24151c1b14a0761af1c7c90e72941d62b12.1747484082.git.alx@kernel.org>
X-Mailer: git-send-email 2.49.0
References: <cover.1747484082.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1747484082.git.alx@kernel.org>

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man2/fork.2          |  7 ++++++-
 man/man2/vfork.2         |  1 +
 man/man7/signal-safety.7 | 14 +-------------
 3 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/man/man2/fork.2 b/man/man2/fork.2
index b30c5af88..b70ec35b1 100644
--- a/man/man2/fork.2
+++ b/man/man2/fork.2
@@ -270,8 +270,12 @@ .SS C library/kernel differences
 established using
 .BR pthread_atfork (3).
 .\" and does some magic to ensure that getpid(2) returns the right value.
+.SS Async-signal safety
+.BR _Fork (3)
+is an async-signal safe variant of
+.BR fork (2).
 .SH STANDARDS
-POSIX.1-2008.
+POSIX.1-2024.
 .SH HISTORY
 POSIX.1-2001, SVr4, 4.3BSD.
 .SH NOTES
@@ -332,6 +336,7 @@ .SH SEE ALSO
 .BR vfork (2),
 .BR wait (2),
 .BR daemon (3),
+.BR _Fork (3),
 .BR pthread_atfork (3),
 .BR capabilities (7),
 .BR credentials (7)
diff --git a/man/man2/vfork.2 b/man/man2/vfork.2
index 868538612..5e5ef0458 100644
--- a/man/man2/vfork.2
+++ b/man/man2/vfork.2
@@ -308,5 +308,6 @@ .SH SEE ALSO
 .BR execve (2),
 .BR _exit (2),
 .BR fork (2),
+.BR _Fork (2),
 .BR unshare (2),
 .BR wait (2)
diff --git a/man/man7/signal-safety.7 b/man/man7/signal-safety.7
index 251a319f4..08563293a 100644
--- a/man/man7/signal-safety.7
+++ b/man/man7/signal-safety.7
@@ -115,7 +115,7 @@ .SH DESCRIPTION
 \f[B]fdatasync\f[](2)
 \f[B]fexecve\f[](3)	Added in POSIX.1-2008
 \f[B]ffs\f[](3)	Added in POSIX.1-2008 TC2
-\f[B]fork\f[](2)	See notes below
+\f[B]_Fork\f[](3)
 \f[B]fstat\f[](2)
 \f[B]fstatat\f[](2)	Added in POSIX.1-2008
 \f[B]fsync\f[](2)
@@ -295,18 +295,6 @@ .SH DESCRIPTION
 .BR siglongjmp (3)
 and the program subsequently calls an unsafe function,
 then the behavior of the program is undefined.
-.IP \[bu]
-POSIX.1-2001 TC1 clarified
-that if an application calls
-.BR fork (2)
-from a signal handler and any of the fork handlers registered by
-.BR pthread_atfork (3)
-calls a function that is not async-signal-safe, the behavior is undefined.
-A future revision of the standard
-.\" http://www.opengroup.org/austin/aardvark/latest/xshbug3.txt
-is likely to remove
-.BR fork (2)
-from the list of async-signal-safe functions.
 .\"
 .IP \[bu]
 Asynchronous signal handlers that call functions which are cancelation
-- 
2.49.0


