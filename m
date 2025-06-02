Return-Path: <linux-man+bounces-3079-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BE19CACB033
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 16:01:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A93C5402BFA
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 14:01:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A202E2222DA;
	Mon,  2 Jun 2025 14:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="fblVALSm";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="p/Ph2A2x"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A21882C327E;
	Mon,  2 Jun 2025 14:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748872871; cv=none; b=coYKb33Uoodi1iSw55+s748KQCcSjxg011LlrPoeBw376g32k4havAVaAF5zhpoBsez+3/Yp+XmOM71anYcsHp/1Cle1XOBf/zIrzxq4Q3CAK+X1dKGDVNOxpV2Y++Ry8V+JQXlXNCP3S3huZv1P7EzOLNR6GerjngxsZwrMvRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748872871; c=relaxed/simple;
	bh=HUcczS7kF+nDU707roRjQQJDLKJgw1PMxAfm7beuSjU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nfUYSjCqua42tnYqvM/kImG/IAx4sEfn6JUn3RPco4Za5unDaAoHX3APqkAcPm0ccrXiykdkhrE+0Ju3K0vJ375A1BMUE9YHEmCAgt7/hTW6sZvfgHnnKBHcUyEn5T4a3b3EYo+h73FCziPy0VzkB4umh8HxF2JqAr3M12x/qN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=fblVALSm; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=p/Ph2A2x; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1748872867;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Owk2aippojDeHXRPl4IzFpvfST1YewhCtUMATmqlZR0=;
	b=fblVALSm8kKqlhBosy5pnJKptznWE1yB6Fuwp7GnUMy9gLmEQyx00PWpJaBEbckbUpk/xP
	24LCjGDwrufbT6scBoGDSfpUcaNbYQC4uA+h4jiT2eyIspbfp3EXWWMTGMnCFpgHuUBFY8
	S0CNILw1KwY8NrxysiZOKsA+btsrxDR3CnFhjOrMyIXqgSuLTzA2q+C0QzgOHkFasJoMch
	mndpyDBpDJ3wKHRlQuPFjaDdM3pAaH1yonwx4bxohXQsLyiAFWKK5VIki/DUfCMcoL++XA
	xABxsmzy/E8HpMs39wB4fqUK51AruirCdpN3JxqDplLJEL1S7brxFUPSsKQzCA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1748872867;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Owk2aippojDeHXRPl4IzFpvfST1YewhCtUMATmqlZR0=;
	b=p/Ph2A2x0+B2FWLjTq+Zj2iCNuOQtWCBv0Qmyro4An3Jx+ij6a/Gap16odIMrA0PWDX7XE
	PeylWAnpU+4Xw5DA==
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
Subject: [PATCH v4 1/4] man/man2/prctl.2, man/man2const/PR_FUTEX_HASH.2const: Document PR_FUTEX_HASH
Date: Mon,  2 Jun 2025 16:01:01 +0200
Message-ID: <20250602140104.2769223-2-bigeasy@linutronix.de>
In-Reply-To: <20250602140104.2769223-1-bigeasy@linutronix.de>
References: <20250602140104.2769223-1-bigeasy@linutronix.de>
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
 man/man2const/PR_FUTEX_HASH.2const | 89 ++++++++++++++++++++++++++++++
 2 files changed, 92 insertions(+)
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
index 0000000000000..08511b18335b2
--- /dev/null
+++ b/man/man2const/PR_FUTEX_HASH.2const
@@ -0,0 +1,89 @@
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
+because they use a different futex word.
+The data structure holds the in-kernel representation of the operation and
+keeps track of the current users which are enqueued and wait for a wake up.
+It also provides synchronisation of waiters against wakers.
+The size of the global hash is determined at boot time
+and is based on the number of CPUs in the system.
+Due to hash collision,
+two unrelated
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
+The user can configure the size of the private
+hash which will also disable the
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


