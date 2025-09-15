Return-Path: <linux-man+bounces-3869-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F201FB57E88
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 16:14:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F7D7174B4A
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 14:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFA77322C6C;
	Mon, 15 Sep 2025 14:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="xD2Qj/9n";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="DTGgEAgG"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D357B31D74B;
	Mon, 15 Sep 2025 14:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757945594; cv=none; b=Q3FGO/4r+50weACToRPqi01amR8CjVxMCbDIe8w9jvaFZEnmPj6ykzBQwgDzWHi5vs82a6IAHMLh/OKvWU0q8CwzdfRYfQ8Nqc7pfey9liQP33GVX1B3Z8lo9sN0bI58GpRAXcQxm0nCsxbEK6rMymsyY67Sv5GcuKAmIV3pH6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757945594; c=relaxed/simple;
	bh=5Rn9dwSGcgqmXesGq3sO7tJZTHE0jfoqufhzztrn+Ts=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n3Zx2DULNj4qnzhNMn8YhiPt6q+C7PG7JGkr4cNFae0t6QrUmLcXvUOJstJsx6TDaAPTIIDQgRHlncN6BEOc65bclDY+Pou8n0NeWET+PIubsueWbRA0+iM+8IJeQHC8l6ROHCqIfdFAzZvJZBUu/cpcCnsDLyu5QJlhsf+szzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=xD2Qj/9n; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=DTGgEAgG; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1757945589;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5Rn9dwSGcgqmXesGq3sO7tJZTHE0jfoqufhzztrn+Ts=;
	b=xD2Qj/9nhStiXalG126MRVIH+H7mtNx9+9dXlZxaUYv/oDGZumZf1gyA8GGVg/tWYOCNse
	GohE00tI9RCXjC4ivukgM2K2C/QJlD9NUiAIPKyY02/qn+pcxCMgVs5ihvuhJYhaAlcoLm
	bYMrij7HrY3N6gYi0GHWYEYwf4oDiY1CI88mW9EOIiIarZFhNr0CV+dqnKtNdx3n75rs9K
	8UW80dxQbllrwQy0vpNYYdRjNsWqlDldeOJ29jVuSOipjiO3/JZXMsat3Gb9W618sscNmY
	lnPxD5naFIu7MkLdGoknhTIpdkaDYjvLY3aBDmJChKDrMdCoukPl4irvgSbetA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1757945589;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5Rn9dwSGcgqmXesGq3sO7tJZTHE0jfoqufhzztrn+Ts=;
	b=DTGgEAgG/FVG5heWi2lR5XJ44ZUhLlmTbbaY+tsqTsppBjxcbKDLLvYwHErFKdMeKXVc7A
	H0+10gTm92PZJtCQ==
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
Subject: [PATCH v2 5/5] man/man3/pthread_cond_init.3: Add a note regarding real-time usage
Date: Mon, 15 Sep 2025 16:13:05 +0200
Message-ID: <20250915141305.906440-6-bigeasy@linutronix.de>
In-Reply-To: <20250915141305.906440-1-bigeasy@linutronix.de>
References: <20250915141305.906440-1-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

The "old" implementation led to priority inversion and was more or less
easy to trigger. It seems that after the rewrite the issue disappeared
especially since the old workaround does not apply anymore.

Add a note mentioning the old problem and why the issue is not gone
since the rewrite in glibc 2.25 but harder to trigger.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 man/man3/pthread_cond_init.3 | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/man/man3/pthread_cond_init.3 b/man/man3/pthread_cond_init.3
index 0045e7ecee075..779f6de6d064b 100644
--- a/man/man3/pthread_cond_init.3
+++ b/man/man3/pthread_cond_init.3
@@ -115,6 +115,7 @@ if all threads always acquire the mutex before signalin=
g the condition,
 this guarantees that the condition cannot be signaled (and thus ignored)
 between the time a thread locks the mutex
 and the time it waits on the condition variable.
+See NOTES below.
 .P
 .BR pthread_cond_timedwait ()
 atomically unlocks
@@ -240,6 +241,26 @@ Some threads are currently waiting on
 .BR gettimeofday (2),
 .BR nanosleep (2).
 .
+.SH NOTES
+The implementation of the provided functions until
+glibc 2.25 used an internal data lock.
+This lock did not support priority-inheritance and
+was subject to unbounded priority inversion,
+visible on a real-time system.
+After the rewrite of the implementation in 2.25
+the usage of internal lock changed.
+The internal lock is always acquired by
+the signaling functions
+.BR pthread_cond_signal ()
+and
+.BR pthread_cond_broadcast ().
+The waiting function acquires the lock
+if the waiting process was interrupted.
+The interruption can be caused for instance by a specified timeout
+and denoted by the error value
+.B ETIMEDOUT
+or a received signal which is denoted by the error value
+.BR EINTR .
 .
 .SH EXAMPLE
 Consider two shared variables
--=20
2.51.0


