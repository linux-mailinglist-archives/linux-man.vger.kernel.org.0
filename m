Return-Path: <linux-man+bounces-5725-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1urNFSPJT2pqoQIAu9opvQ
	(envelope-from <linux-man+bounces-5725-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 09 Jul 2026 18:15:31 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEED7335A9
	for <lists+linux-man@lfdr.de>; Thu, 09 Jul 2026 18:15:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=smrk.net header.s=20221002 header.b=A4yjGq6H;
	dmarc=pass (policy=none) header.from=smrk.net;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5725-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5725-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 782753092ACA
	for <lists+linux-man@lfdr.de>; Thu,  9 Jul 2026 16:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DF2442DA53;
	Thu,  9 Jul 2026 16:01:08 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.smrk.net (mail.smrk.net [45.76.87.244])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7E838AC83
	for <linux-man@vger.kernel.org>; Thu,  9 Jul 2026 16:01:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783612868; cv=none; b=aPkFgX77kOgqu5kaGDY9Efcwm0YmeMXKFXKFB2cUvwDevOIV1LIvqWPBEjkpM0v227RCk1fAS67o8/UmXrtdjYqynH/8Umy0Fg2EsmUip/QKWpFLGQvvmMIG2AzaHN5wrENHvKErW+vW/GmLyG7IrMfqoZa89F1ksfqJ6cKoNAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783612868; c=relaxed/simple;
	bh=mN824nINDfAJTo/+BKTi4TvEhgwpZR2T4xNxfZtI75Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=VQYnqScj0qkOM6wQ9foE9kQLIpssFUptXPYUc0wYElpB9j8AYjxY3l69pmLA/NEM/oRt5tQdk9h4Nfr0uvOvzhEsK7/i32Z9AX5PeBNG9hR0fshOduxazL1z4/dhodJwGEJq7OV9UsbJ6wGrSw8igCpnykOujQmpBTM93aWI4cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smrk.net; spf=pass smtp.mailfrom=smrk.net; dkim=pass (2048-bit key) header.d=smrk.net header.i=@smrk.net header.b=A4yjGq6H; arc=none smtp.client-ip=45.76.87.244
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smrk.net; s=20221002;
	t=1783611262;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jKSjSYVaLIafOtwgpsFTHniFU1cqf2uQMuA6/ml3xts=;
	b=A4yjGq6Hldw5Tk8mG2tCGkv7tVsbj9kF7v4J/2W/gfj4oQ6E5C6alWRb6/BZD/XJvVbSef
	iggU9A9NuQ5iASzW8QrwfkdEosslXUTQ6Ub9ITrC/wx9yCNxQFlmgLKqqgPVUsbeaVo1aT
	a7Nzv1hvKy9Y7vHLT6dEvG+XkWEa/f2rGr8XusfqwtIC7SIKeIqMR78a46kaBT6zxjLEUl
	Wc3xNPyGMk9IaQW7ilIYypBDtF+HeC8+OKRyK9hR4UvM41VEGKb0W8XVGJll+wkO60glXj
	PZJ77U+7sOFSjONbGCjOSagWUaZkngXJUYQXo8uHkRuIV8J31P3anOk5jCPJ/A==
Received: from localhost (<unknown> [192.168.5.2])
	by smrk (OpenSMTPD) with ESMTPSA id f1109fb1 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 9 Jul 2026 17:34:22 +0200 (CEST)
From: =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@smrk.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 1/3] man/: tfix
Date: Thu,  9 Jul 2026 17:34:20 +0200
Message-ID: <20260709153422.210312-1-stepnem@smrk.net>
X-Mailer: git-send-email 2.55.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.09 / 15.00];
	R_MIXED_CHARSET(1.25)[subject];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[smrk.net,none];
	R_DKIM_ALLOW(-0.20)[smrk.net:s=20221002];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[stepnem@smrk.net,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5725-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stepnem@smrk.net,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[smrk.net:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4BEED7335A9

Signed-off-by: Štěpán Němec <stepnem@smrk.net>
---
 man/man2/dup.2               | 2 +-
 man/man2/memfd_secret.2      | 2 +-
 man/man2/sched_setaffinity.2 | 2 +-
 man/man2/seccomp_unotify.2   | 2 +-
 man/man2/select.2            | 2 +-
 man/man2/send.2              | 2 +-
 man/man2/sigsuspend.2        | 2 +-
 man/man5/proc_meminfo.5      | 2 +-
 man/man7/landlock.7          | 4 ++--
 man/man7/pipe.7              | 2 +-
 man/man7/socket.7            | 2 +-
 11 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/man/man2/dup.2 b/man/man2/dup.2
index 0989209c40df..099f01d283ce 100644
--- a/man/man2/dup.2
+++ b/man/man2/dup.2
@@ -238,7 +238,7 @@ .SH NOTES
 before calling
 .BR dup2 (),
 because of the race condition described above.
-Instead, code something like the following could be used:
+Instead, something like the following could be used:
 .P
 .in +4n
 .EX
diff --git a/man/man2/memfd_secret.2 b/man/man2/memfd_secret.2
index 0ea4b8e93c37..4033adc75772 100644
--- a/man/man2/memfd_secret.2
+++ b/man/man2/memfd_secret.2
@@ -119,7 +119,7 @@ .SH ERRORS
 .B EMFILE
 The per-process limit on the number of open file descriptors has been reached.
 .TP
-.B EMFILE
+.B ENFILE
 The system-wide limit on the total number of open files has been reached.
 .TP
 .B ENOMEM
diff --git a/man/man2/sched_setaffinity.2 b/man/man2/sched_setaffinity.2
index 974c10835227..736627a2f183 100644
--- a/man/man2/sched_setaffinity.2
+++ b/man/man2/sched_setaffinity.2
@@ -223,7 +223,7 @@ .SS C library/kernel differences
 .P
 On success, the raw
 .BR sched_getaffinity ()
-system call returns the number of bytes placed copied into the
+system call returns the number of bytes copied into the
 .I mask
 buffer;
 this will be the minimum of
diff --git a/man/man2/seccomp_unotify.2 b/man/man2/seccomp_unotify.2
index 4dce9d7e897c..d7492a248600 100644
--- a/man/man2/seccomp_unotify.2
+++ b/man/man2/seccomp_unotify.2
@@ -982,7 +982,7 @@ .SS Design goals; use of SECCOMP_USER_NOTIF_FLAG_CONTINUE
 .B can not
 be used to implement a security policy!
 It should only ever be used in scenarios where a more privileged process
-supervises the system calls of a lesser privileged target to
+supervises the system calls of a less privileged target to
 get around kernel-enforced security restrictions when
 the supervisor deems this safe.
 In other words,
diff --git a/man/man2/select.2 b/man/man2/select.2
index 2d3344b3313f..a335b0a93e02 100644
--- a/man/man2/select.2
+++ b/man/man2/select.2
@@ -45,7 +45,7 @@ .SH SYNOPSIS
 .SH DESCRIPTION
 .BR "WARNING" :
 .BR select ()
-can monitor only file descriptors numbers that are less than
+can monitor only file descriptor numbers that are less than
 .B FD_SETSIZE
 (1024)\[em]an unreasonably low limit for many modern applications\[em]and
 this limitation will not change.
diff --git a/man/man2/send.2 b/man/man2/send.2
index 21b4b5553116..3ee9f423dcef 100644
--- a/man/man2/send.2
+++ b/man/man2/send.2
@@ -342,7 +342,7 @@ .SH ERRORS
 (For UNIX domain sockets, which are identified by pathname)
 Write permission is denied on the destination socket file,
 or search permission is denied for one of the directories
-the path prefix.
+in the path prefix.
 (See
 .BR path_resolution (7).)
 .IP
diff --git a/man/man2/sigsuspend.2 b/man/man2/sigsuspend.2
index 39b71846bf69..60f8715a0187 100644
--- a/man/man2/sigsuspend.2
+++ b/man/man2/sigsuspend.2
@@ -47,7 +47,7 @@ .SH DESCRIPTION
 or
 .BR SIGSTOP ;
 specifying these signals in
-.IR mask ,
+.I mask
 has no effect on the thread's signal mask.
 .SH RETURN VALUE
 .BR sigsuspend ()
diff --git a/man/man5/proc_meminfo.5 b/man/man5/proc_meminfo.5
index a9a9f0697830..8f5a1e8da2cf 100644
--- a/man/man5/proc_meminfo.5
+++ b/man/man5/proc_meminfo.5
@@ -20,7 +20,7 @@ .SH DESCRIPTION
 a parameter name,
 followed by a colon,
 the value of the parameter,
-and an option unit of measurement (e.g., "kB").
+and an optional unit of measurement (e.g., "kB").
 The list below describes the parameter names and
 the format specifier required to read the field value.
 Except as noted below,
diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index 55cd002d5789..293374ed9b46 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -21,7 +21,7 @@ .SH DESCRIPTION
 and unexpected or malicious behaviors in applications.
 .P
 A Landlock security policy is a set of access rights
-(e.g., open a file in read-only, make a directory, etc.)
+(e.g., open a file read-only, make a directory, etc.)
 tied to a file hierarchy.
 Such policy can be configured and enforced by processes for themselves
 using three system calls:
@@ -334,7 +334,7 @@ .SS Bind mounts and OverlayFS
 contains its own set of files and directories,
 which is different from a bind mount.
 A policy restricting an OverlayFS layer will not restrict
-the resulted merged hierarchy, and vice versa.
+the resulting merged hierarchy, and vice versa.
 Landlock users should then only think about file hierarchies they want to
 allow access to, regardless of the underlying filesystem.
 .\"
diff --git a/man/man7/pipe.7 b/man/man7/pipe.7
index dbf917cd4160..8641bcf4d807 100644
--- a/man/man7/pipe.7
+++ b/man/man7/pipe.7
@@ -385,7 +385,7 @@ .SS BUGS
 .PD
 .RE
 .IP
-This was racey.
+This was racy.
 Multiple processes could pass point (1) simultaneously,
 and then allocate pipe buffers that were accounted for only in step (3),
 with the result that the user's pipe buffer
diff --git a/man/man7/socket.7 b/man/man7/socket.7
index 96f6f173a40b..507ea916a56b 100644
--- a/man/man7/socket.7
+++ b/man/man7/socket.7
@@ -904,7 +904,7 @@ .SS Socket options
 load distribution in a multi-threaded server to be improved by
 using a distinct listener socket for each thread.
 This provides improved load distribution as compared
-to traditional techniques such using a single
+to traditional techniques such as using a single
 .BR accept (2)ing
 thread that distributes connections,
 or having multiple threads that compete to

base-commit: 6fc2f7aa4502676a857124e05538824367c18c06
-- 
2.55.0


