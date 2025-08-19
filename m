Return-Path: <linux-man+bounces-3484-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2546AB2BAAB
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 09:26:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77DDE7BA2D6
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 07:20:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46FB831A07D;
	Tue, 19 Aug 2025 07:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="VFBTVU4O";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="yZnH4BD/"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9123F311942;
	Tue, 19 Aug 2025 07:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755587856; cv=none; b=bP/pMgN9vZMWLiSkNFczxTVnimrmLIfrLi785jiKNTNOR53DQhTxdDPpmVVzDIsdwpoi+oOVgeQCuqYo46xbR6AfHPvU6tBopuPfTFnSkNdmjlVX95DkxugBrsQ1pghE3fU6NdkdKzJHMtWyH1Ulld938/vJmmQ1xhr8QGwykTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755587856; c=relaxed/simple;
	bh=Z9n7TfezIWoFKCHxBhL2Y3iTe6Cu/tEI1g4PW/nGVAw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qRD20pLxjOIrDSJK6kCgpHadAtrWef97/rqBqaW+HD1dlQy99m5v4y4DQCos2ltXKRwUpJz79NJsQ534y3FwSSan93NpAN8m6YqWixycbM+KbAvajfPWvDZd51a9dm17MwzAsJzV39gum0qTWA+NGKonYWn3vCBWT871dWKkAO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=VFBTVU4O; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=yZnH4BD/; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1755587852;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RUoBzjfJkaeeFgM0ucvyN6K7QcI/6/Z64U3J3djYtCA=;
	b=VFBTVU4O6dE/cWxcNR974vdsBjOnRG6QRZeit16yhSC5RalWDT7RI5GxDOElWMFIHsfnaE
	+dZ6qg7IwPOJ9MY0amMJD4nm/H4lqSp3OZTnef8nvcGpYPst4+GGPdIK4FH3MvRBNnMbFk
	If7zNo9AZTynogznZRjHWNKCxJz9qCH9nibbn6hcfTJXVwba1EZyol4E1UpjYM4BpKSsFT
	Li17MZ+shnrkCoxg8M9SbZ8Na8vixQgjVhEvpXx2p/hPLMRMxx3sq3SvIBamHBJKn/xbj8
	PQfWz3r7nR9gJDGUNna+LN1/npAIbAx25EyAgmsB3umuqYlbyElICX55Y+hkbg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1755587852;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RUoBzjfJkaeeFgM0ucvyN6K7QcI/6/Z64U3J3djYtCA=;
	b=yZnH4BD/PTKDMHDmvGqLF2XfeNKZRjsjFlljTSZ6zKHcFZi2c3sBf1At7c5vX/bgE1sXlT
	VOft+wbjwEnA0FDA==
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
Subject: [PATCH v5 3/3] man/man2/prctl.2, PR_FUTEX_HASH_GET_SLOTS.2const: Document PR_FUTEX_HASH_GET_SLOTS
Date: Tue, 19 Aug 2025 09:17:28 +0200
Message-ID: <20250819071728.1431543-4-bigeasy@linutronix.de>
In-Reply-To: <20250819071728.1431543-1-bigeasy@linutronix.de>
References: <20250819071728.1431543-1-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Reviewed-by: Alejandro Colomar <alx@kernel.org>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const | 35 ++++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const

diff --git a/man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const b/man/man2const/P=
R_FUTEX_HASH_GET_SLOTS.2const
new file mode 100644
index 0000000000000..dfeffa57930ab
--- /dev/null
+++ b/man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const
@@ -0,0 +1,35 @@
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
+Linux 6.17.
+.SH SEE ALSO
+.BR prctl (2),
+.BR PR_FUTEX_HASH (2const),
--=20
2.50.1


