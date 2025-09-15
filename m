Return-Path: <linux-man+bounces-3865-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7FAB57E7F
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 16:13:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E206203F5C
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 14:13:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C14E931CA65;
	Mon, 15 Sep 2025 14:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="mJlsOC9j";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="6k+c4iBC"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D401231B828;
	Mon, 15 Sep 2025 14:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757945591; cv=none; b=f2xaGTZGsbk5LaLT5FTgKt2RtmS4j5EXmLB8aCdSWhF64EC4CqY63L/7VHLpa/xuUvtvTUVMzVzzvsa3Swb0QfZ1Wqro4f/oslLsr8oe2NaeHMtGC3GK6CEkmvgDD74tct/bJq3pEM+n8O/I+ldr5SE1zXgWjW2cWPnQgVXmaqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757945591; c=relaxed/simple;
	bh=FkIQ/D+qjr2VukEpgI4XQgMfbuYPEeEYZTJPk4Q6FBk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MQfdT3rBC92iuAf/0KV+pA83wAtMdubSeCZm6pcgX/OfYdNRpNjyyxVQ9NB1zGksoAsaatd/dyfQbgXqWKuuqO0H3b/S3ll7wwb4km8ntWKG33KkMyMWp2DAYGMxX4/tDTvDUoy/XOpXLwE46sb9T6PbQQthzhtcG0ukvEXTb54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=mJlsOC9j; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=6k+c4iBC; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1757945587;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OJP1JQxJAMmaNtt20+x0eFfFxE9Jzbze9SVWc83JM6A=;
	b=mJlsOC9jfa6XsW8lrLYsG0Ul5H32MoB+pPcjMjeAuaFDqfwWAG5SekbMJX7juabwvMWOhv
	2x60X/DSRx76UlQB5mu863XIXDggHd3hLU64u3m48BNZ+5vZwSb9SYhN2jG6s68HRgIOeO
	+yxdL0MX6ajPuNGL0grDvpvUS3FVSfXFYdXNr2a7nSeA1Ui3CydyQqQagw3j6zHFEpzsdk
	Kh3lki65jEaChUHsAiTY60uSjmHehMtyvaFE8bnhX3+FtjmzH2JTlaqdZ1+58ZFqquAGJc
	uXNIAmUZY8NuPx7PYh3BQ8ZTKipHSlevOcErQtPWEuBZTDC/jUgZD+n3VqfMcQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1757945587;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OJP1JQxJAMmaNtt20+x0eFfFxE9Jzbze9SVWc83JM6A=;
	b=6k+c4iBCe399vX3nZs12hYKFJL33L9gM+XC4Pj4GqJ+B61BDyR4pTw0rynYx8UaH7CalYW
	2QAPQJ+KDtfaeZCw==
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
Subject: [PATCH v2 1/5] man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const: Document PR_FUTEX_HASH_SET_SLOTS
Date: Mon, 15 Sep 2025 16:13:01 +0200
Message-ID: <20250915141305.906440-2-bigeasy@linutronix.de>
In-Reply-To: <20250915141305.906440-1-bigeasy@linutronix.de>
References: <20250915141305.906440-1-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const | 67 ++++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const

diff --git a/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const b/man/man2const/P=
R_FUTEX_HASH_SET_SLOTS.2const
new file mode 100644
index 0000000000000..1605c18c6985b
--- /dev/null
+++ b/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
@@ -0,0 +1,67 @@
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
+.BI "          unsigned long " size ", unsigned long " flags ");
+.fi
+.SH DESCRIPTION
+Set the number of slots to use for the private hash.
+.TP
+.I size
+Specify the size of private hash to allocate.
+.RS
+.TP
+.I 0
+Use the global hash.
+This is the behaviour used before 6.17.
+.TP
+.I >0
+Specify the number of slots to allocate.
+The value must be power of two, and the lowest possible value is 2.
+The upper limit depends on the available memory in the system.
+Each slot requires 64 bytes of memory.
+Kernels compiled with
+.I CONFIG_PROVE_LOCKING
+will consume more than that.
+.RE
+.TP
+.I flags
+.RS
+The argument must be 0.
+.SH RETURN VALUE
+On success,
+0 is returned.
+On error, \-1 is returned, and
+.I errno
+is set to indicate the error.
+.SH ERRORS
+.TP
+.B EINVAL
+An argument is invalid.
+.TP
+.B ENOMEM
+Failed to allocate memory.
+.TP
+.B EBUSY
+The global hash is in use and can not be changed.
+.SH STANDARDS
+Linux.
+.SH HISTORY
+Linux 6.17.
+.SH SEE ALSO
+.BR prctl (2),
+.BR PR_FUTEX_HASH (2const)
--=20
2.51.0


