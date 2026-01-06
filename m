Return-Path: <linux-man+bounces-4680-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD312CF8A96
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 15:04:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 758AC306515E
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 13:56:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D955333C1AC;
	Tue,  6 Jan 2026 13:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X3b85ZjA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8596F3385AA
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 13:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767707407; cv=none; b=ldA4Lhfr0DoQ8yZZf7PDgy7EVtR0lWq055gS8mwU9sQGQFP9uILut/cVjBQDH5eedKsdD+Kj5qAKgVGUQxs63m6evHctDcNKTqKxcMHOEDZZ17LQW5A1ZhUtbisES3hTHCOb8Ya3F2uNBE0W4ZpYSXcHUKY4UrgTQXR5ujmTgT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767707407; c=relaxed/simple;
	bh=w3XH8xmegyjLFCsao3TrP/rXMoLIXmFdIz4l8LmQH74=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WtmiTQex+YN9VqPjljqrZWQrx0Ubl9Fpmbeed7MZGgS5/VppZtLiWHWdXGTMiAwlZ1Fc4CrtBZNbwAjy1YKVnBeFbEd65PzIbvU2FCE4dCpfSqAv/MLMpGv/iIFOOIIiO4Uep2KuznuDq/hKMnT38y8KEMbLJnfwwXaoaN5DY2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X3b85ZjA; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-432777da980so508192f8f.0
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 05:50:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767707404; x=1768312204; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2+cHZuyC124MCK0IJzVGbEuWZ6Qcil0x6+d7cKrS20c=;
        b=X3b85ZjAaDkl+3cvOLVBPH+HPk6iXfzT7vaJvFWXLx33iptJOC8zN+Pt0aEsXNLuBO
         1st/4Q6H+imlkBvz2wLe8S7OGBoh1ZEoc1037T6suLNsB2etHjsiv2ghbQgy6VG7b943
         oaEH0Zo2lbKTwEsrh5rvhvzDeBlZjSy+pTIwBb2e/zw1DveEDVo63fNQv4VHaoIEySjX
         4CrkfUj7ACgD3pIfCksNcHJYDd+2iDNQ8ZfC2e+IWYateK1bJ+dPUEpmsDZqWQbT7Wwm
         dbA1ccnH5EiAakAUD+8OPHFxseT/W8dJ332NvzUAKy98XvvaNvTVGQX/DJNAj4RXK/2z
         vLXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767707404; x=1768312204;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2+cHZuyC124MCK0IJzVGbEuWZ6Qcil0x6+d7cKrS20c=;
        b=qcbv0CETZKCoSjvhitPCqVBz4BLT/BUzUmOOXdY0J1PN/QrkS2QEtVfjpL8e8YVrO4
         o+1mjGIGUlGiLNC442nb/6vddUbdfj3dO8qGk1x5dQh3LqoE6YZwZRa2WWd4OaZg5yCT
         b4xYq60DgClZ5eOuA21wDM0Ztx3pyU3CUzI9mR08egzUzR3hx5MXAcqAqYi/61tTqbJ1
         dEzNQ0pfMURGlCjIwK5Rr8Jbn5GuThEk2tcZkM7Oyl7S5ZUbdAKZ8pfyk4TnJ4w57roe
         QomfbcqukM1mRx9AhJhgumTMm+gokLbpA13dBL3zh1M5ujJEUWws4S/Pv6tP4unBkFDP
         N/6g==
X-Gm-Message-State: AOJu0YyFQqg55pBPVi5DmnhY4HWpXisvCEWtIG5kPhuwPSjic/KR5983
	ybn7xWwEe3B/aa9Pr30uRkDRxLfIuO2XXvP/mU9dzEUo3uTRQgDjPUv9
X-Gm-Gg: AY/fxX40XIpuAnB4ybbYuzessek8+aPMZtD7JDjywmFuccT1V3Eqdk7J0rO8Get0A4g
	W22s64UWEfzWHmkVl4aoFvIrijubThFrrqHBS5ZGlDM6sSWLzPllBtrEdIfYDS8W2d5tO7tyhYU
	aXMDHFnH1iklEXriV9whs05qvlY9i2714WhEH+LpXFbxIYWh92cMG4Q1Ym5gTvvcPBx9eIt7Ovm
	6H8914fXBFEP56CQZYUxdWskkxnUx+7VNHNEaSVAP5oraQinkVfhj7vi9QxET/7YQB2cqqCCT9j
	sZNB6/5fyGy9zJdWVBpfoX23mEuEgTjfq/ybh7cjSmxpSeN20IwSh9o8lnyAsWgEFywvNCJ4XKz
	AAJGdi0+7jXBlLhxvKOJ2e9/R/LV/Z2SfkYTtF/G5kO3any+U+u+c+OTz5MqRwCbXV4LSoUVqRE
	KqcVZ8lYlN/7/9fchMOG3D1StpT2mmr37rPrM2
X-Google-Smtp-Source: AGHT+IFUL/exVjlS+1QH2csVv0jC7kHj0ehWNQlfm3uujWC0PPfDUHbeq0Zzz0+gzkE2uw0OEMdbWg==
X-Received: by 2002:a05:6000:4014:b0:431:a0:7de0 with SMTP id ffacd0b85a97d-432bca4867cmr4196038f8f.35.1767707403697;
        Tue, 06 Jan 2026 05:50:03 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.158])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5df9afsm4739378f8f.24.2026.01.06.05.50.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 05:50:03 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Simon Essien <champbreed1@gmail.com>
Subject: [PATCH 2/2] netlink.7: expand NETLINK_NETFILTER and clarify NLM_F_ATOMIC status
Date: Tue,  6 Jan 2026 13:49:36 +0000
Message-ID: <20260106134936.233305-4-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260106134936.233305-1-champbreed1@gmail.com>
References: <20260106134936.233305-1-champbreed1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

- Provide details for NETLINK_NETFILTER including conntrack, logging, and queue.
- Remove FIXME for NLM_F_ATOMIC, noting it is no longer implemented but
  retains its privilege requirements for ABI compatibility.
---
 man/man2/seccomp_unotify.2 | 105 +++++++++++--------------------------
 man/man7/netlink.7         |  18 ++++---
 2 files changed, 42 insertions(+), 81 deletions(-)

diff --git a/man/man2/seccomp_unotify.2 b/man/man2/seccomp_unotify.2
index f1ff13513..d57d62a2f 100644
--- a/man/man2/seccomp_unotify.2
+++ b/man/man2/seccomp_unotify.2
@@ -183,18 +183,6 @@ the file descriptor can also be monitored with
 .BR poll (2),
 or
 .BR epoll (7).)
-.\" FIXME
-.\" Christian Brauner:
-.\"
-.\" Do we support O_NONBLOCK with SECCOMP_IOCTL_NOTIF_RECV and if
-.\" not should we?
-.\"
-.\" Michael Kerrisk:
-.\"
-.\" A quick test suggests that O_NONBLOCK has no effect on the blocking
-.\" behavior of SECCOMP_IOCTL_NOTIF_RECV.
-.
-.\"-------------------------------------
 .IP (6)
 The
 .I seccomp_notif
@@ -385,37 +373,12 @@ structure that was passed to the call contained nonzero fields.
 The target thread was killed by a signal as the notification information
 was being generated,
 or the target's (blocked) system call was interrupted by a signal handler.
-.\" FIXME
-.\" From my experiments,
-.\" it appears that if a SECCOMP_IOCTL_NOTIF_RECV is done after
-.\" the target thread terminates, then the ioctl() simply
-.\" blocks (rather than returning an error to indicate that the
-.\" target no longer exists).
-.\"
-.\" I found that surprising, and it required some contortions in
-.\" the example program.  It was not possible to code my SIGCHLD
-.\" handler (which reaps the zombie when the worker/target
-.\" terminates) to simply set a flag checked in the main
-.\" handleNotifications() loop, since this created an
-.\" unavoidable race where the child might terminate just after
-.\" I had checked the flag, but before I blocked (forever!) in the
-.\" SECCOMP_IOCTL_NOTIF_RECV operation.  Instead, I had to code
-.\" the signal handler to simply call _exit(2) in order to
-.\" terminate the parent process (the supervisor).
-.\"
-.\" Is this expected behavior? It seems to me rather
-.\" desirable that SECCOMP_IOCTL_NOTIF_RECV should give an error
-.\" if the target has terminated.
-.\"
-.\" Jann posted a patch to rectify this, but there was no response
-.\" (Lore link: https://bit.ly/3jvUBxk) to his question about fixing
-.\" this issue.  (I've tried building with the patch, but encountered
-.\" an issue with the target process entering D state after a signal.)
-.\"
-.\" For now, this behavior is documented in BUGS.
-.\"
-.\" Kees Cook commented: Let's change [this] ASAP!
-.\"
+.IP
+Note that if a
+.B SECCOMP_IOCTL_NOTIF_RECV
+is performed after the target thread has terminated, the
+.BR ioctl (2)
+call blocks rather than returning an error.
 .SS SECCOMP_IOCTL_NOTIF_ID_VALID
 The
 .B SECCOMP_IOCTL_NOTIF_ID_VALID
@@ -601,18 +564,12 @@ is set to a value that will be used as the return value for a spoofed
 The value in this field is ignored if the
 .I error
 field contains a nonzero value.
-.\" FIXME
-.\" Kees Cook suggested:
-.\"
-.\" Strictly speaking, this is architecture specific, but
-.\" all architectures do it this way.  Should seccomp enforce
-.\" val == 0 when err != 0 ?
-.\"
-.\" Christian Brauner
-.\"
-.\" Feels like it should, at least for the SEND ioctl where we already
-.\" verify that val and err are both 0 when CONTINUE is specified (as you
-.\" pointed out correctly above).
+.IP
+For consistency across architectures, the
+.I val
+field should be set to 0 if the
+.I error
+field is nonzero.
 .RE
 .P
 On success,
@@ -842,9 +799,8 @@ exceeds the limit specified in
 .IR /proc/sys/fs/nr_open .
 .TP
 .B ENOENT
-The blocked system call in the target
-has been interrupted by a signal handler
-or the target has terminated.
+The blocked system call in the target has been interrupted by a signal 
+handler, the target has terminated, or a response has already been sent.
 .P
 Here is some sample code (with error handling omitted) that uses the
 .B SECCOMP_ADDFD_FLAG_SETFD
@@ -1146,15 +1102,13 @@ that would
 normally be restarted by the
 .B SA_RESTART
 flag.
-.
-.\" FIXME
-.\" Michael Kerrisk:
-.\" I wonder about the effect of this oddity for system calls that
-.\" are normally nonrestartable because they have timeouts.  My
-.\" understanding is that the kernel doesn't restart those system
-.\" calls because it's impossible for the kernel to restart the call
-.\" with the right timeout value.  I wonder what happens when those
-.\" system calls are restarted in the scenario we're discussing.)
+.IP
+Note that even if the
+.B SA_RESTART
+flag is used, a system call interrupted by a user-space
+notification will always return with the error
+.B EINTR
+rather than being automatically restarted by the kernel.
 .P
 Furthermore, if the supervisor response is a file descriptor
 added with
@@ -1173,14 +1127,15 @@ is performed after the target terminates, then the
 .BR ioctl (2)
 call simply blocks (rather than returning an error to indicate that the
 target no longer exists).
-.\" FIXME
-.\" Comment from Kees Cook:
-.\"
-.\" I want this fixed.  It caused me no end of pain when building the
-.\" selftests, and ended up spawning my implementing a global test timeout
-.\" in kselftest.  :P  Before the usage counter refactor, there was no sane
-.\" way to deal with this, but now I think we're close.
-.\"
+.IP
+Because
+.B SECCOMP_IOCTL_NOTIF_RECV
+may block indefinitely if the target terminates before the
+notification is fetched, supervisors should consider using
+.BR poll (2)
+or
+.BR epoll (7)
+with a timeout to avoid permanent hangs.
 .SH EXAMPLES
 The (somewhat contrived) program shown below demonstrates the use of
 the interfaces described in this page.
diff --git a/man/man7/netlink.7 b/man/man7/netlink.7
index 028a0010a..16a6055e2 100644
--- a/man/man7/netlink.7
+++ b/man/man7/netlink.7
@@ -107,8 +107,14 @@ in Linux 5.2 and earlier)
 in the Linux kernel source tree for further information.
 .TP
 .BR NETLINK_NETFILTER " (since Linux 2.6.14)"
-.\" FIXME More details on NETLINK_NETFILTER needed.
-Netfilter subsystem.
+Netfilter subsystem.  This protocol provides an interface to various
+Netfilter components, including
+.B nfnetlink_log
+(packet logging),
+.B nfnetlink_queue
+(user-space packet verdict decisions), and
+.B nfnetlink_conntrack
+(connection tracking table management).
 .TP
 .BR NETLINK_SCSITRANSPORT " (since Linux 2.6.19)"
 .\" commit 84314fd4740ad73550c76dee4a9578979d84af48
@@ -259,11 +265,11 @@ equivalent to
 (NLM_F_ROOT|NLM_F_MATCH).
 T}
 .TE
-.\" FIXME NLM_F_ATOMIC is not used anymore?
-.P
-Note that
+Historically, the
 .B NLM_F_ATOMIC
-requires the
+flag was used to request an atomic snapshot of kernel data,
+but it is no longer implemented.
+Note that use of this flag still requires the
 .B CAP_NET_ADMIN
 capability or an effective UID of 0.
 .TS
-- 
2.51.0


