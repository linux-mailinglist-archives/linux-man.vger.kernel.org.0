Return-Path: <linux-man+bounces-3018-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9D6AC42A9
	for <lists+linux-man@lfdr.de>; Mon, 26 May 2025 17:55:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF9771763CF
	for <lists+linux-man@lfdr.de>; Mon, 26 May 2025 15:55:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47940214A64;
	Mon, 26 May 2025 15:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="RO4ttSoh";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="mdB1nHJ5"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5912D214A69;
	Mon, 26 May 2025 15:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748274936; cv=none; b=FQ6C7IwuOufCo1j+wyzfpqB0ORMRau9TIBekWykjhvrUHCArkiPRAd4T2umcGE+bnqovJ/fYhHwxSkXAdz9I3KjKzlmadRcdaIsIsB4TTtXS7x2skFj3sFI8bOVgaBiEfqNCmwmtwGgfc5eCfakhWqIq15mch3npbKIsuFQiBE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748274936; c=relaxed/simple;
	bh=M0u8lVHfk86RCl8jnWhZS9vpqkeG8OWSljXRHiE5MvI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a1l1TndnUMs+DlPoQEZoaXsUQdmYR3JCjYspWhzpf2lWR1ijFLb5TDp2mRd+Us4JDf/l+7AHvukNWoWpBSwsne8V8oX37rmj9AQj8NNqqRtvYM5voCoJnxHdB+I4zKRrCK2Oa90lHNUpPBHIpB6fL5iSThbgHB8Q8O2JnZELMzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=RO4ttSoh; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=mdB1nHJ5; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1748274932;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AHUrfwTUHlnHY0MYxACneOEKDSyBg+c5GdC7Ae+wMH8=;
	b=RO4ttSohTHX00mK3J4Spqj3xTPfu2ADmlf1AGxb+LZmGEeO5kg1V/rO9g/ZSTju8u4HwKw
	1kSXZLoo/Fo/BzeJnTdDLwt3k64FKYZXGh0ZUIOu+wdi5B0CXjyoVF4fCJ+0q/GK4Tssf6
	BM1RYYLl6nHzNsK2LdMvS2LKzrkd8Df5AjR1t4efmKeKB2lN2vnQY4kN1rDmDCMUzepGlW
	yx8sJTj/hweTl71warLG6SIPrdxamcSOBpIWBjBEAjd4EeP74PMadVD6vI+wknPjW1jIqi
	fbMNdeKQ3WzBmCKwP8geyyImvHdhaVKqvtON/IAFzI+uttC1/2wSmXfNVAAKVQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1748274932;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AHUrfwTUHlnHY0MYxACneOEKDSyBg+c5GdC7Ae+wMH8=;
	b=mdB1nHJ5rQ6GVLA1XQ7DlDfQAYc7pH/8zN7h6hy6MObIYaeRW2CaTWWROb1J5LMUedOUk2
	oDqVqCymvIZgcdDg==
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
Subject: [[PATCH v3] 3/4] man/man2/prctl.2, PR_FUTEX_HASH_GET_SLOTS.2const: Document PR_FUTEX_HASH_GET_SLOTS
Date: Mon, 26 May 2025 17:55:22 +0200
Message-ID: <20250526155523.1382465-4-bigeasy@linutronix.de>
In-Reply-To: <20250526155523.1382465-1-bigeasy@linutronix.de>
References: <20250526155523.1382465-1-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const | 37 ++++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const

diff --git a/man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const b/man/man2const/P=
R_FUTEX_HASH_GET_SLOTS.2const
new file mode 100644
index 0000000000000..f5c6380ef1fe7
--- /dev/null
+++ b/man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const
@@ -0,0 +1,37 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH PR_FUTEX_HASH_GET_SLOTS 2const (date) "Linux man-pages (unreleased)"
+.SH NAME
+PR_FUTEX_HASH_GET_SLOTS
+\-
+return the size of the private hash
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
+.B #include <sys/prctl.h>
+.P
+.B int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_GET_SLOTS);
+.fi
+.SH DESCRIPTION
+Return the current size of the private hash.
+.SH RETURN VALUE
+A value of 0 means that a private hash has not been allocated
+and the global hash is in use.
+A value >0 specifies the size of the private hash.
+On error, \-1 is returned, and
+.I errno
+is set to indicate the error.
+.SH STANDARDS
+Linux.
+.SH HISTORY
+Linux 6.16.
+.SH SEE ALSO
+.BR prctl (2),
+.BR PR_FUTEX_HASH (2const),
+.BR PR_FUTEX_HASH_GET_IMMUTABLE (2const),
+.BR PR_FUTEX_HASH_SET_SLOTS (2const)
--=20
2.49.0


