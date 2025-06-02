Return-Path: <linux-man+bounces-3080-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5A1ACB043
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 16:03:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 247AF482809
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 14:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EE5E222590;
	Mon,  2 Jun 2025 14:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="mMDlqUMz";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="sukAZv3q"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAFB2C3262;
	Mon,  2 Jun 2025 14:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748872872; cv=none; b=tigxqnnDoWmTdD9cxgmocElpcWaaXsWCfewaXP0LqfceBqMvaQM8VTDzeQrpsWE3snRbv7G2l7zbXiPftLa6TDBw3MPC2V/lNoarDwQln8G7FW3tBTPmJF+oqF65hbUFvn9r4BsFg57+TGM6556/lBJkpyDnaUHYv1aS8D3DWZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748872872; c=relaxed/simple;
	bh=xNb2fUmdU6gy1AwVZb1coVyANqdmOtxJQQa65Ddy+zE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bQHl3aZ2I3EToIg7dU5mP6Rop7syGCGzUfQBSYS14GX983NYKz+SW87sibllx4oqf1v+wUk0BkiBypctePHcrlvSQleiXi0AJt5hQwyphrzn1+eX6G/Eq/dbCNrb+2JAmB7G7oV7YbRf5krrrmfH4R1rihHFCrDWc7kDllpxqmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=mMDlqUMz; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=sukAZv3q; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1748872868;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1i7ee9IVUGt54lC8ozjiLfER1RgZIUKwRtYJARj60hA=;
	b=mMDlqUMzRxgjlJVX29aJVQv7ytKThaJOZ7z9gs+OxaBkCzssufYrrEVoPH4ZM+ShbyYNUd
	9T+ML0KXJHE8QCby9fvyHdQMUbGzTYNTWcxpf41jfPSGZjAPqVkEQPsfw2/OeITsPi86oF
	QueMggZJ7EKCy/LUCkQGDKHzoXu8yyGmllAp2ZxDLBC/7m0+TJGXfeYMk15pdHiTm+lHpw
	yyx2C5imhCRNv/t+q6stULNOfJeCiPP7/FRyx+79kuS3Z9WyodCAao0B5pNBfyqevPEw0U
	vJH60myOynbrzTwd0BGWOsyzQiVBPTflN6ZSsr8232hhVV38ndonLpS5MEmDLA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1748872868;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1i7ee9IVUGt54lC8ozjiLfER1RgZIUKwRtYJARj60hA=;
	b=sukAZv3qiD23l3THP2rjJMfKRcr20fGjo5XT61QBpTJIDHYJHvFI1BtlePnpitzzsmCNAW
	/4z6yIWJLbF/jgCg==
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
Subject: [PATCH v4 2/4] man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const: Document PR_FUTEX_HASH_SET_SLOTS
Date: Mon,  2 Jun 2025 16:01:02 +0200
Message-ID: <20250602140104.2769223-3-bigeasy@linutronix.de>
In-Reply-To: <20250602140104.2769223-1-bigeasy@linutronix.de>
References: <20250602140104.2769223-1-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const | 83 ++++++++++++++++++++
 1 file changed, 83 insertions(+)
 create mode 100644 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const

diff --git a/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const b/man/man2const/P=
R_FUTEX_HASH_SET_SLOTS.2const
new file mode 100644
index 0000000000000..1f08d1bb30485
--- /dev/null
+++ b/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
@@ -0,0 +1,83 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH PR_FUTEX_HASH_SET_SLOTS 2const (date) "Linux man-pages (unreleased)"
+.SH NAME
+PR_FUTEX_HASH_SET_SLOTS
+\-
+set the size of the private hash
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
+.B #include <sys/prctl.h>
+.P
+.B int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_SET_SLOTS,
+.BI "          unsigned long " hash_size ", unsigned long " hash_flags ");
+.fi
+.SH DESCRIPTION
+Set the number of slots to use for the private hash.
+.TP
+.I hash_size
+Specifies the size of private hash to allocate.
+.RS
+.TP
+.I 0
+Use the global hash.
+This is the behaviour used before 6.16.
+The operation implies the
+.I FH_FLAG_IMMUTABLE
+flag.
+.TP
+.I >0
+Specifies the number of slots to allocate.
+The value must be power of two and the lowest possible value is 2.
+The upper limit depends on the available memory in the system.
+Each slot requires 64bytes of memory.
+Kernels compiled with
+.I CONFIG_PROVE_LOCKING
+will consume more than that.
+.RE
+.TP
+.I hash_flags
+.RS
+The following flags can be specified:
+.TP
+.I FH_FLAG_IMMUTABLE
+The private hash can no longer be changed.
+By using an immutable private hash
+the kernel can avoid some accounting for the data structure.
+This accounting is visible in benchmarks if many
+.BR futex (2)
+operations are invoked in parallel on different CPUs.
+.RE
+.RE
+.SH RETURN VALUE
+On success,
+0 is returned.
+On error, \-1 is returned, and
+.I errno
+is set to indicate the error.
+.SH ERRORS
+.TP
+.B EINVAL
+One of the supplied argument is invalid.
+.TP
+.B ENOMEM
+Failed to allocate memory.
+.TP
+.B EBUSY
+An immutable hash is already in use
+and can not be changed.
+.SH STANDARDS
+Linux.
+.SH HISTORY
+Linux 6.16.
+.SH SEE ALSO
+.BR prctl (2),
+.BR PR_FUTEX_HASH (2const),
+.BR PR_FUTEX_HASH_GET_IMMUTABLE (2const),
+.BR PR_FUTEX_HASH_GET_SLOTS (2const)
--=20
2.49.0


