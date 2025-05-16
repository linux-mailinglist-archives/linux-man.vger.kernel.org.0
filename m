Return-Path: <linux-man+bounces-2934-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9146ABA0A9
	for <lists+linux-man@lfdr.de>; Fri, 16 May 2025 18:14:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A75F8A03065
	for <lists+linux-man@lfdr.de>; Fri, 16 May 2025 16:14:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B92DB1A256B;
	Fri, 16 May 2025 16:14:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="H6zMPEOi";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="PK3nj3Ko"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8C9323D;
	Fri, 16 May 2025 16:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747412068; cv=none; b=kFxnmU8Ecu3H/MCrPhVR8f4NwyiAsMtO0OMLJbHCKcDQN/XjnIT+BGv0/yF1LzdaIHYh+L2qArrrlZS1UvN0rtwzunbFM58DAn03PO5xRa33WbeiU0ikdo5j0Dcy++jTiP/QnaTc2mBGSFL2UsHFZCQgMNfb/NYyPOIyC8285+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747412068; c=relaxed/simple;
	bh=TQwoIsavedMixi6HIUcBuliBMSH+GXXDpKFXeS611+A=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=QuGMe01nqav3e80QBGiyjQ4Ot9/YgzL8vSYzTS5UBa7NdNGE4/mgovr5aYzwAIKD3hr491/UvB5xltZ99Iq2fmicv6AKw94U4hYrOvE7JCn1GR5t2a+Agf4yXqH6UDR1dd1iIC/DJcqCrfBYAUhP4JkDOdeIWmtqBwHVDFBZJkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=H6zMPEOi; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=PK3nj3Ko; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Fri, 16 May 2025 18:14:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1747412064;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=RiZabCUJ9teCjROosFErp6pWxnyNRbJPG8vV5rKTy3g=;
	b=H6zMPEOi2H8B5t4AjHjWP4/QMg5HudewWW+saulj9ZLVVDneXHXUQ5Iw9MaF9lHfDYe+K+
	f6ox8UQxmlvWy/JZX3tj+dz9ZOPtUUZkU1qLUkX+3gBf1VRmIRe+Xuh8gUyBnFTKb2Bg3X
	daiZpwYD0XBb5nfoHThZQ6kxiejRRwapEo9bG9fcqC5qiwtzB86u8/I+8sEcVKW1evVV8S
	hNi4ZIkIBjzyBwYDTtYdKh1k4bkZCOiNSyK8WyIPsVcLEFIzccYHf1NUfKaYoAbXsECvwx
	j4bkqFsjCUhBdhs2gRgMhIeJ633T3RXAqKxwhYOt8j9QNWUk1PSC2vuwmxRnrg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1747412064;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=RiZabCUJ9teCjROosFErp6pWxnyNRbJPG8vV5rKTy3g=;
	b=PK3nj3KoAupU5WVxA3Q1pnN85CFlCBPLAEdUWCbu7+8/xjA8qMI1Hh+bbihcmgp6vh0PbK
	CF6wV4ccsJJ7MuCA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>,
	Darren Hart <dvhart@infradead.org>,
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>,
	Juri Lelli <juri.lelli@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Valentin Schneider <vschneid@redhat.com>,
	Waiman Long <longman@redhat.com>
Subject: [PATCH] prctl: Add documentation for PR_FUTEX_HASH
Message-ID: <20250516161422.BqmdlxlF@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

The prctl(PR_FUTEX_HASH) is queued for the v6.16 merge window.
Add some documentation of the interface.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 man/man2/prctl.2                   |   3 +
 man/man2const/PR_FUTEX_HASH.2const | 112 +++++++++++++++++++++++++++++
 2 files changed, 115 insertions(+)
 create mode 100644 man/man2const/PR_FUTEX_HASH.2const

diff --git a/man/man2/prctl.2 b/man/man2/prctl.2
index 7a6b73e25e7a8..30c868d051a0c 100644
--- a/man/man2/prctl.2
+++ b/man/man2/prctl.2
@@ -150,6 +150,8 @@ with a significance depending on the first one.
 .B PR_GET_MDWE
 .TQ
 .B PR_RISCV_SET_ICACHE_FLUSH_CTX
+.TQ
+.B PR_FUTEX_HASH
 .SH RETURN VALUE
 On success,
 a nonnegative value is returned.
@@ -262,4 +264,5 @@ so these operations should be used with care.
 .BR PR_SET_MDWE (2const),
 .BR PR_GET_MDWE (2const),
 .BR PR_RISCV_SET_ICACHE_FLUSH_CTX (2const),
+.BR PR_FUTEX_HASH (2const),
 .BR core (5)
diff --git a/man/man2const/PR_FUTEX_HASH.2const b/man/man2const/PR_FUTEX_HASH.2const
new file mode 100644
index 0000000000000..c6a6396729770
--- /dev/null
+++ b/man/man2const/PR_FUTEX_HASH.2const
@@ -0,0 +1,112 @@
+.\" Copyright, The contributors to the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH PR_FUTEX_HASH 2const (date) "Linux man-pages (unreleased)"
+.SH NAME
+PR_FUTEX_HASH
+\-
+configure the private futex hash
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
+.B #include <sys/prctl.h>
+.P
+.BI "int prctl(PR_FUTEX_HASH, long " op ", ...);"
+.fi
+.SH DESCRIPTION
+Configure the attributes for the underlying hash used by the
+.BR futex (2)
+family of operations. The Linux kernel uses a hash to distributes the
+.BR futex (2)
+users on different data structures. The data structure holds the in-kernel
+representation of the operation and keeps track of the current users which are
+enqueued and wait for a wake up and those who perform a wake up. The size of
+the global hash is determined at boot time and is based on the number of CPUs
+in the system. Since the mapping from the provided
+.I uaddr
+value to the in-kernel representation is based on a hash, two unrelated tasks
+in the system can share the same hash bucket. This in turn can lead to delays
+of the due
+.BR futex (2)
+operation due to to lock contention of the data structure. These delays can be
+problematic on a PREEMPT_RT system since random tasks can share in-kernel locks
+and it is not deterministic which tasks will be involved.
+.P
+Linux v6.16 implements a process wide private hash which is used by all
+.BR futex (2)
+operations which specify the
+.B FUTEX_PRIVATE_FLAG
+as part of the operation.
+Without any configuration the kernel will allocate 16 hash slots once the first
+thread has been created. If the process continues to create threads, the kernel
+will try to resize the private hash based on the number of threads and
+available CPUs in the system. The kernel will only increase the size and will
+make sure it does not exceed the size of the global hash.
+.P
+The user can configure the size of the private hash which will also disable the
+automatic resize provided by the kernel.
+.P
+The following values for
+.I op
+can be specified:
+.TP
+.BI "int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_SET_SLOTS, " hash_size ", " hash_flags ");
+Set the number of slots to use for the private hash.
+.P
+.RS
+.TP
+.I hash_size
+Specifies the size of private hash to allocate. Possible values are:
+.RS
+.TP
+.I 0
+Use the global hash. This is the behaviour used before v6.16. The operation can
+not be undone.
+.TP
+.I >0
+Specifies the number of slots to allocate. The value must be power of two and
+lowest possible value is 2. The upper limit depends on available memory in
+the system. Each slot requires 64bytes of memory. Kernels compiled with
+.I CONFIG_PROVE_LOCKING
+will consume more than that.
+.RE
+.TP
+.I hash_flags
+.RS
+The following flags can be specified:
+.TP
+.I FH_FLAG_IMMUTABLE
+The private hash can no longer be changed. By using an immutable privat hash
+the kernel can avoid some accounting for the data structure. This accounting
+is visible in benchmarks if many
+.BR futex (2)
+operations are invoked in parallel on different CPUs.
+.RE
+.RE
+.TP
+.BI "int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_GET_SLOTS);
+Returns the current size of the the private hash. A value of 0 means that a
+private has not been allocated or the global hash is used. A value >0 specifies
+the size of the private hash.
+.TP
+.BI "int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_GET_IMMUTABLE);
+Return 1 if the hash has been made immutable and not be changed. Otherwise 0.
+
+.SH RETURN VALUE
+On success,
+these calls return a value >=0.
+On error, \-1 is returned, and
+.I errno
+is set to indicate the error.
+.SH STANDARDS
+Linux.
+.SH HISTORY
+Linux 6.16.
+.SH SEE ALSO
+.BR prctl (2) ,
+.BR futex (2) ,
+.BR futex (7)
-- 
2.49.0


