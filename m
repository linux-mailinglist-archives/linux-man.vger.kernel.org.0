Return-Path: <linux-man+bounces-3017-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B35DAC42A7
	for <lists+linux-man@lfdr.de>; Mon, 26 May 2025 17:55:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 95FED179DCA
	for <lists+linux-man@lfdr.de>; Mon, 26 May 2025 15:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 255112153D3;
	Mon, 26 May 2025 15:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="o97yOsB8";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="NznP2auW"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DB3214801;
	Mon, 26 May 2025 15:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748274935; cv=none; b=CB5g1RL+b8F/db/8JmQfUFZWvgBGdLvNJ3hDNLFzI7oPCWjkdnnIXZXiYRYKOmDjIqwa1sLd1RxIY+/vpZJE4F49IUapX4NDyDNtV69zIo1ofFwNd0oLer3XQNSK6kSr5BjHJ7Yt1o6AGdJcskNjwGGY2KukZAoOWf8ifWVUn3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748274935; c=relaxed/simple;
	bh=XTZV7pD5pDE7Vd5uLVRHB/Bw60Uu7Bu1LQhr0vzqZ/0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dhTQD9qbNqLrS0PO0Ih3PKAKASuRJvQngtVYNiOIXR58kIU1YRdvwFe7iNSlvqrUnSRX6oTrDKN6NdBO6wEgfZ2SeWdDrJr/JGggtTbeIvDCMnVsjO8D49KhBcsI509GIg2tb7mOJhJ5cNG4hHFL95NdqTuN7nGb9Cwnjw0nCX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=o97yOsB8; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=NznP2auW; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1748274931;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=p1EPlxVeEMXO3cWyc2Jc4qL1oDnaXLhcOpSYI9w2uKs=;
	b=o97yOsB89KIplENlGwa811769XYTyuxNRpabJZuhc5grOyb9DOo2buKbAAGFif3O2KZKGW
	EBbYuRkMwjtYfVDNgOByC7UQPudXYdtQpu/gbqRRq1aPOb9qg+E7hDuwnnLOlMZTSyJp9E
	APUmgRdqvhbD4XqW6+mlf5ZJuXoHMJLM/yQvM0WWqVfi5CwOdLQnte7v9RQ2U0R+ixZdGq
	XssoWbijqk2+iojMvyTcaHFmBBzXWZM+YhDHV5nVPvcP7A3lgLxS+i77xxxSCPfStyrLi4
	AQ/j2c+ufgz9pdTbfD4NL3BSFCWlh9hurQQgFnT6ZyvWLaiFuP+CAzpAWABUFg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1748274931;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=p1EPlxVeEMXO3cWyc2Jc4qL1oDnaXLhcOpSYI9w2uKs=;
	b=NznP2auWi73KP43kuJk8qDAHohExnF4SHrmhDU/c3FW2etdWCSCziNqTy3nsdzgYzlped5
	UmeNG4Joo4yiZYCg==
To: linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Andr=C3=A9=20Almeida?= <andrealmeid@igalia.com>,
	Darren Hart <dvhart@infradead.org>,
	Davidlohr Bueso <dave@stgolabs.net>,
	Ingo Molnar <mingo@redhat.com>,
	Juri Lelli <juri.lelli@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Valentin Schneider <vschneid@redhat.com>,
	Waiman Long <longman@redhat.com>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [[PATCH v3] 1/4] man/man2/prctl.2, man/man2const/PR_FUTEX_HASH.2const: Document PR_FUTEX_HASH
Date: Mon, 26 May 2025 17:55:20 +0200
Message-ID: <20250526155523.1382465-2-bigeasy@linutronix.de>
In-Reply-To: <20250526155523.1382465-1-bigeasy@linutronix.de>
References: <20250526155523.1382465-1-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

The prctl(PR_FUTEX_HASH) is queued for the v6.16 merge window.
Add some documentation of the interface.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 man/man2/prctl.2                   |  3 +
 man/man2const/PR_FUTEX_HASH.2const | 92 ++++++++++++++++++++++++++++++
 2 files changed, 95 insertions(+)
 create mode 100644 man/man2const/PR_FUTEX_HASH.2const

diff --git a/man/man2/prctl.2 b/man/man2/prctl.2
index cb5e75bf79ab2..ddfd1d1f5b940 100644
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
diff --git a/man/man2const/PR_FUTEX_HASH.2const b/man/man2const/PR_FUTEX_HA=
SH.2const
new file mode 100644
index 0000000000000..c27adcb73d079
--- /dev/null
+++ b/man/man2const/PR_FUTEX_HASH.2const
@@ -0,0 +1,92 @@
+.\" Copyright, the authors of the Linux man-pages project
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
+.BI "int prctl(PR_FUTEX_HASH, unsigned long " op ", ...);"
+.fi
+.SH DESCRIPTION
+Configure the attributes for the underlying hash used by the
+.BR futex (2)
+family of operations.
+The Linux kernel uses a hash to distribute the unrelated
+.BR futex (2)
+requests to different data structures
+in order to reduce the lock contention.
+Unrelated requests are requests which are not related to one another
+because they use a different
+.I uaddr
+value of the syscall or the requests are issued by different processes
+and the
+.B FUTEX_PRIVATE_FLAG
+option is set.
+The data structure holds the in-kernel representation of the operation and
+keeps track of the current users which are enqueued and wait for a wake up.
+It also provides synchronisation of waiters against wakers.
+The size of the global hash is determined at boot time
+and is based on the number of CPUs in the system.
+Due to hash collision two unrelated
+.BR futex (2)
+requests can share the same hash bucket.
+This in turn can lead to delays of the
+.BR futex (2)
+operation due to lock contention while accessing the data structure.
+These delays can be problematic on a real-time system
+since random processes can
+share in-kernel locks
+and it is not deterministic which process will be involved.
+.P
+Linux 6.16 implements a process-wide private hash which is used by all
+.BR futex (2)
+operations that specify the
+.B FUTEX_PRIVATE_FLAG
+option as part of the operation.
+Without any configuration
+the kernel will allocate 16 hash slots
+once the first thread has been created.
+If the process continues to create threads,
+the kernel will try to resize the private hash based on the number of thre=
ads
+and available CPUs in the system.
+The kernel will only increase the size and will make sure it does not exce=
ed
+the size of the global hash.
+.P
+The user can configure the size of the private hash which will also disabl=
e the
+automatic resize provided by the kernel.
+.P
+The value in
+.I op
+is one of the options below.
+.TP
+.B PR_FUTEX_HASH_GET_IMMUTABLE
+.TQ
+.B PR_FUTEX_HASH_GET_SLOTS
+.TQ
+.B PR_FUTEX_HASH_SET_SLOTS
+.SH RETURN VALUE
+On success,
+these calls return a nonnegative value.
+On error, \-1 is returned, and
+.I errno
+is set to indicate the error.
+.SH STANDARDS
+Linux.
+.SH HISTORY
+Linux 6.16.
+.SH SEE ALSO
+.BR prctl (2),
+.BR futex (2),
+.BR PR_FUTEX_HASH_GET_IMMUTABLE (2const),
+.BR PR_FUTEX_HASH_GET_SLOTS (2const),
+.BR PR_FUTEX_HASH_SET_SLOTS (2const)
--=20
2.49.0


