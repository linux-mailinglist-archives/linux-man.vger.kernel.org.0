Return-Path: <linux-man+bounces-5326-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKaOK/vh22krIQkAu9opvQ
	(envelope-from <linux-man+bounces-5326-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 12 Apr 2026 20:18:35 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 494183E55DB
	for <lists+linux-man@lfdr.de>; Sun, 12 Apr 2026 20:18:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 61F3730099A2
	for <lists+linux-man@lfdr.de>; Sun, 12 Apr 2026 18:18:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B347036309D;
	Sun, 12 Apr 2026 18:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M4a1ERQX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380533624CC
	for <linux-man@vger.kernel.org>; Sun, 12 Apr 2026 18:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776017903; cv=none; b=fPTBqrdzr7D4Epkwqzt/sBBsh3nyNeE31oRPAfkvGhRJ/UFjb4qB9Pb4sAMQ9gps2AgXELdowEWyDLdIweVaRAkuXJqLiA4MTxKRB6fGkz9vwbI2s1t4Gqv+EIupQ42JgpTkOrXdutWk0XtulkRzZthzN/MLgUGm6TcDzCv9nCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776017903; c=relaxed/simple;
	bh=PFVCOffAPTXBDK7gsUNjcLIhH9SzTZK2CoweMyo/t14=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=M1cNNG7L9/Toc6BMEANnzfNM9Ml7WyHUikHwAIWh0P/lpVkxeQE7k9LaHhrUh0g6lnJgJxSVnz6utJPdhN5u6hYRYhGqG5xRjc1TKbubzcRhMpGUGvDg1Ls/J6WxoQJ6cNvJk51GzCUHCiu/ZHCLcnVax2Y4Y4K96v1apxUEsjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M4a1ERQX; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-827270d50d4so3379406b3a.3
        for <linux-man@vger.kernel.org>; Sun, 12 Apr 2026 11:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776017901; x=1776622701; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d0lXBCiOMkoFu4Tr3Z4bw4jVhAqhzUpwDXkACUdSblo=;
        b=M4a1ERQXKmlAofSfzy1e4t3MpE3v6VpgFdcPFgPzPY0hGA4ET8VEajB3N6p32obnag
         rMKFo58vep8LV6yZKUM/2TkTvFQUvrOxdLndghoAje4+s5PPN0IpwrVj8HPvjOoDTnW+
         jROkBP23MBrPEOB6rHekdxRhkUWZjdqYy12ihDItCYOFpV/UsVe8nyLa4GC2x/0wyNCv
         LdddR7qXVfu2HsMjlv+jDGRHiOBMuP53LZ5I65FqbGZ0sgDurTnW2c9cLGzVKjjRpfYh
         +7B7icda3+hHgCoG+Fo0dnp1UJfQBl/Ic/yRiOjgWKeEYblPehhitgFQv+sVWsHZF3E3
         kg6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776017901; x=1776622701;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d0lXBCiOMkoFu4Tr3Z4bw4jVhAqhzUpwDXkACUdSblo=;
        b=Qvitpsrv6eIVGz9z9wzYQyvE5atDVOCCniScZRvQo6j5UU1fJG/BbWHZVQTKAWZ5YQ
         gIVr51ZXNogBl9oQPRf2De8rO9g64LjoorvbV/vq3AUOvd79tXA3NCbqSscAJoaRSiBl
         ed9zLYQ/+STa2Drv//LMeUjfdlKIzTWGS5GbFkLBcBSUWJQmW3iSEtpeUocF8Hbp8w3+
         IllImB0dILvwvEKM64gXtwmMAtiRU25//oB5HXDRU5FGGA9B+nmnlVOQTTwAxFvhXcFX
         q15TlVSXJ9qZb2bBwWSXVpeJoS6YHcXVZX4mfzduTEIKDZ8q0F3WVKH16q7KtbJTCjmm
         S1ew==
X-Gm-Message-State: AOJu0YxpudXI3qvlIVgKNMPTtxeeYMCNs9TSlpa5qqPgwC8JK6zY+Xwj
	ZuyUVXTgvaqxgnrsmglQiBF5PFFardtNCsOS7CZwxNo7kWAMNI5scJfs
X-Gm-Gg: AeBDievqkoR0WUqcZt2T8S820pQEaCEbbTfiq6S9XoCYbx+jBHqaY4GIrbwzLD3Lh8y
	qxcjIsoTNZOKzXnDIzqKDoE9D5xT1n63OpBhAyuNb2pDF4DhuY2j3U/DA+npLWhy54+yen+dFyW
	AWLxJF46S+6aQz5I/SXxpP72VYPKcF6XT0YuGFHEnSdDkMXx1JOYtkZGV4Bnk0KfcrCGnxQ9dqe
	doIYnTTO1Qhhti1c8UaOl4Wt81JhlWBH15RP3/s6vm6qQZWI4KQJ5WIfie7i/0Q934KnDDZaqhP
	cdq2N3b0rGHhJo1nCtHr4i/cKFWE5DqT0Yv3/kN0GgeXkTJri0fTDu2F7BwOycRJyn3lNxMK2wZ
	ErTED26VHHjLEAhBtShyK0kmUW9VL4A558Z1X7Gy01ogQ1hs3muqkV3gu8owVv3wuxCjkF+Q8NH
	mmbhIyU7TbYh/vyomp5lcjFpZLlNZqNA89Z4i54xS3v8PSByDVxjQ=
X-Received: by 2002:a05:6a00:4684:b0:82f:1d38:f692 with SMTP id d2e1a72fcca58-82f1d38fc86mr4656821b3a.6.1776017901412;
        Sun, 12 Apr 2026 11:18:21 -0700 (PDT)
Received: from eric-wcnlab.tail151456.ts.net ([2001:288:7001:1099:da32:10f:5734:2b9c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82f0c4b3b29sm8921394b3a.36.2026.04.12.11.18.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Apr 2026 11:18:20 -0700 (PDT)
From: Cheng-Yang Chou <yphbchou0911@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	sched-ext@lists.linux.dev,
	Tejun Heo <tj@kernel.org>,
	David Vernet <void@manifault.com>,
	Andrea Righi <arighi@nvidia.com>,
	Changwoo Min <changwoo@igalia.com>,
	Ching-Chun Huang <jserv@ccns.ncku.edu.tw>,
	Chia-Ping Tsai <chia7712@gmail.com>,
	yphbchou0911@gmail.com
Subject: [PATCH] man7, man2: document SCHED_EXT policy
Date: Mon, 13 Apr 2026 02:16:58 +0800
Message-ID: <20260412181743.276652-1-yphbchou0911@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,kernel.org,manifault.com,nvidia.com,igalia.com,ccns.ncku.edu.tw,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5326-lists,linux-man=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yphbchou0911@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 494183E55DB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the sched_ext(7) manual page and update existing scheduling
documentation to include the SCHED_EXT policy.

Signed-off-by: Cheng-Yang Chou <yphbchou0911@gmail.com>
---
 man/man2/sched_setattr.2      |  11 +++-
 man/man2/sched_setscheduler.2 |   4 ++
 man/man7/sched.7              |  13 +++++
 man/man7/sched_ext.7          | 100 ++++++++++++++++++++++++++++++++++
 4 files changed, 126 insertions(+), 2 deletions(-)
 create mode 100644 man/man7/sched_ext.7

diff --git a/man/man2/sched_setattr.2 b/man/man2/sched_setattr.2
index 80a0ac726dcf..d60678f00e72 100644
--- a/man/man2/sched_setattr.2
+++ b/man/man2/sched_setattr.2
@@ -81,6 +81,10 @@ a deadline scheduling policy;
 see
 .BR sched (7)
 for details.
+.TP 14
+.B SCHED_EXT
+for extensible scheduling policies implemented via BPF
+(see \fBsched_ext\fR(7)).
 .P
 The
 .I attr
@@ -95,7 +99,8 @@ struct sched_attr {
     u32 sched_policy;      /* Policy (SCHED_*) */
     u64 sched_flags;       /* Flags */
     s32 sched_nice;        /* Nice value (SCHED_OTHER,
-                              SCHED_BATCH) */
+                              SCHED_BATCH,
+                              SCHED_EXT) */
     u32 sched_priority;    /* Static priority (SCHED_FIFO,
                               SCHED_RR) */
     /* For SCHED_DEADLINE */
@@ -218,8 +223,10 @@ This field specifies the nice value to be set when specifying
 .I sched_policy
 as
 .B SCHED_OTHER
+,
+.BR SCHED_BATCH ,
 or
-.BR SCHED_BATCH .
+.BR SCHED_EXT .
 The nice value is a number in the range \-20 (high priority)
 to +19 (low priority);
 see
diff --git a/man/man2/sched_setscheduler.2 b/man/man2/sched_setscheduler.2
index b4c35543e5bf..825eb7290ee7 100644
--- a/man/man2/sched_setscheduler.2
+++ b/man/man2/sched_setscheduler.2
@@ -67,6 +67,10 @@ and
 for running
 .I very
 low priority background jobs.
+.TP
+.B SCHED_EXT
+for extensible scheduling policies implemented via BPF
+(see \fBsched_ext\fR(7)).
 .P
 For each of the above policies,
 .I param\->sched_priority
diff --git a/man/man7/sched.7 b/man/man7/sched.7
index 00926cd34ecf..2e73a4c716b9 100644
--- a/man/man7/sched.7
+++ b/man/man7/sched.7
@@ -116,6 +116,13 @@ and
 .BR sched_get_priority_max (2)
 to find the range of priorities supported for a particular policy.
 .P
+Since Linux 6.12, there is an extensible BPF scheduling policy
+.RB ( SCHED_EXT ),
+which allows for custom scheduling algorithms to be implemented as BPF
+programs.
+See
+.BR sched_ext (7).
+.P
 Conceptually,
 the scheduler maintains a list of runnable threads for each possible
 .I sched_priority
@@ -529,6 +536,12 @@ priority (lower even than a +19 nice value with the
 or
 .B SCHED_BATCH
 policies).
+.SS SCHED_EXT: Extensible BPF Scheduling
+Tasks with this policy are managed by an extensible scheduler class,
+which allows for custom scheduling algorithms to be implemented as
+BPF programs.
+See
+.BR sched_ext (7).
 .\"
 .SS Resetting scheduling policy for child processes
 Each thread has a reset-on-fork scheduling flag.
diff --git a/man/man7/sched_ext.7 b/man/man7/sched_ext.7
new file mode 100644
index 000000000000..7ea467e18b84
--- /dev/null
+++ b/man/man7/sched_ext.7
@@ -0,0 +1,100 @@
+.TH SCHED_EXT 7 2024-04-13 "Linux" "Linux Programmer's Manual"
+.SH NAME
+sched_ext \- Extensible BPF Scheduler Class
+.SH SYNOPSIS
+.B #include <linux/sched.h>
+.PP
+.B #define SCHED_EXT 7
+.SH DESCRIPTION
+.B sched_ext
+is a scheduling class whose behavior can be defined by a set of BPF
+programs, known as the BPF scheduler. It allows for the implementation
+of custom scheduling algorithms that can be loaded and unloaded
+dynamically.
+.PP
+When a BPF scheduler is loaded, it can take over the scheduling of
+tasks that use the
+.B SCHED_EXT
+policy, as well as tasks using standard policies like
+.BR SCHED_NORMAL ,
+.BR SCHED_BATCH ,
+and
+.B SCHED_IDLE ,
+depending on how the BPF scheduler is configured.
+.SS Switching to and from sched_ext
+The feature is enabled via the
+.B CONFIG_SCHED_CLASS_EXT
+kernel configuration option.
+.PP
+A task can explicitly request the
+.B SCHED_EXT
+policy using system calls such as
+.BR sched_setscheduler (2)
+or
+.BR sched_setattr (2).
+If no BPF scheduler is currently loaded, tasks with the
+.B SCHED_EXT
+policy are treated as
+.B SCHED_NORMAL
+and scheduled by the default fair-class scheduler (CFS/EEVDF).
+.PP
+When a BPF scheduler is loaded:
+.IP \(bu 3
+If
+.B SCX_OPS_SWITCH_PARTIAL
+is NOT set in the scheduler's flags, ALL tasks with policies
+.BR SCHED_NORMAL ,
+.BR SCHED_BATCH ,
+.BR SCHED_IDLE ,
+and
+.B SCHED_EXT
+are scheduled by
+.BR sched_ext .
+.IP \(bu 3
+If
+.B SCX_OPS_SWITCH_PARTIAL
+IS set, only tasks with the
+.B SCHED_EXT
+policy are scheduled by
+.BR sched_ext .
+Tasks with other policies remain under the control of the fair-class scheduler.
+.PP
+If the BPF scheduler terminates (either normally, due to an error, or
+via a SysRq command), all tasks are automatically reverted to the
+fair-class scheduler.
+.SS System Interfaces
+.B sched_ext
+exposes several interfaces in sysfs for monitoring and control:
+.TP
+.I /sys/kernel/sched_ext/state
+Shows the current state of the BPF scheduler (\fBenabled\fR, \fBdisabled\fR, etc.).
+.TP
+.I /sys/kernel/sched_ext/root/ops
+Shows the name of the currently loaded BPF scheduler.
+.TP
+.I /sys/kernel/sched_ext/enable_seq
+A monotonically incrementing counter that tracks how many times a BPF
+scheduler has been enabled since boot.
+.SS Safety and Debugging
+System integrity is maintained regardless of the BPF scheduler's
+behavior. If a runnable task stalls or an internal error is detected,
+the BPF scheduler is aborted.
+.PP
+The following SysRq sequences are available for emergency management:
+.TP
+.B SysRq-S
+Aborts the current BPF scheduler and reverts all tasks to the fair-class
+scheduler.
+.TP
+.B SysRq-D
+Triggers a debug dump of the current scheduler state to the
+.B sched_ext_dump
+tracepoint.
+.SH SEE ALSO
+.BR sched (7),
+.BR sched_setscheduler (2),
+.BR sched_setattr (2),
+.BR bpf (2)
+.PP
+.I Documentation/scheduler/sched-ext.rst
+in the Linux kernel source tree.
-- 
2.48.1


