Return-Path: <linux-man+bounces-3081-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F69EACB036
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 16:02:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 821E23A1F30
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 14:01:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52A16222593;
	Mon,  2 Jun 2025 14:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="jvJOyfhN";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="1NDtcM6O"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86278221F10;
	Mon,  2 Jun 2025 14:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748872872; cv=none; b=usRzCXs6PbaepZl42egfdXCxmci/W95gl00cJc5V1ViNBhSnmmVDcvMXsPDpDtTmlDR0ZcYIwhqK5GmJCMjULX9h1/o+F9X/V22tMop5y/nCeSKCM4zMdpQvvKn1Kd6MnpH4UaVmvZchKRC//n1nwUCP2mi9+ux3ymvkgBExDg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748872872; c=relaxed/simple;
	bh=YpXHqkOfYbjmBfWYsT9XlirLT3FOYSkAoPbRE2/wJro=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QjlGGBgOgonTY3bhPJEn/+QWPzz/fiP37o1Q5iJa6Iohae97hgqjf47B+vp0lJqt4goqJ7oyXc59CUodQumtwekhylrrttpVP2sPZ77NIH1X4ve9KSOHwoyDLDiROGzJNBSGNmGWOWtWy6e24GLKGKU5HMt9x/vUYvovoudlTMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=jvJOyfhN; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=1NDtcM6O; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1748872868;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7tpspZ5z5yJcrONoYAmjpEX6uY8u62SOLKRvr2PGBuk=;
	b=jvJOyfhNKpDM2tj+S6xtzVuVVJ+vDa/qaZ4o5/ZCiBNx8vyWLCAbqsXgKwLk0f3XOP8TNC
	8iqOP/rKJA4k/UTq6On7KbIfTW70DPQPhTrfSuWfKMTeML35LO+4S7HMW3qsVGXIcphHrm
	IfJUF9wT6QN8pyEWCBvyx4obNDGduw0bkteDk87NhMbh0uzge4zSWQwfh9g55z9IO5/iUw
	SlLUHq215gd01QU650fFObw6hlQa+MYO/x5YjdfU6MMiAq5Q9MqgjQHtQ0yRLt9WoWgaE0
	4DCY1QhlqLaxuwenhwehHLTLh2qJQihE6VoGOMzp6qWXle6PZ3uVO/xCD9fWzw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1748872868;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7tpspZ5z5yJcrONoYAmjpEX6uY8u62SOLKRvr2PGBuk=;
	b=1NDtcM6OpxyUs5J22yFSw8edNvsA6mnkqQ9OlCq+oCgjmtUM9+4u43Q4pH5aZr6+ZF74rj
	RAWrO3ztarX53nDw==
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
Subject: [PATCH v4 4/4] man/man2/prctl.2, PR_FUTEX_HASH_GET_IMMUTABLE.2const: Document PR_FUTEX_HASH_GET_IMMUTABLE
Date: Mon,  2 Jun 2025 16:01:04 +0200
Message-ID: <20250602140104.2769223-5-bigeasy@linutronix.de>
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
 .../PR_FUTEX_HASH_GET_IMMUTABLE.2const        | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 man/man2const/PR_FUTEX_HASH_GET_IMMUTABLE.2const

diff --git a/man/man2const/PR_FUTEX_HASH_GET_IMMUTABLE.2const b/man/man2con=
st/PR_FUTEX_HASH_GET_IMMUTABLE.2const
new file mode 100644
index 0000000000000..d3b9e95ccbc98
--- /dev/null
+++ b/man/man2const/PR_FUTEX_HASH_GET_IMMUTABLE.2const
@@ -0,0 +1,39 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH PR_FUTEX_HASH_GET_IMMUTABLE 2const (date) "Linux man-pages (unreleased=
)"
+.SH NAME
+PR_FUTEX_HASH_GET_IMMUTABLE
+\-
+check if the private hash is immutable.
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
+.B #include <sys/prctl.h>
+.P
+.B int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_GET_IMMUTABLE);
+.fi
+.SH DESCRIPTION
+Check if the private hash is immutable.
+.SH RETURN VALUE
+If the hash is immutable,
+it returns 1;
+otherwise,
+it returns 0.
+.P
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
+.BR PR_FUTEX_HASH_GET_SLOTS (2const),
+.BR PR_FUTEX_HASH_SET_SLOTS (2const)
--=20
2.49.0


