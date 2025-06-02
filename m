Return-Path: <linux-man+bounces-3082-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3A9ACB030
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 16:01:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 881E37A53B2
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 14:00:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52D84222599;
	Mon,  2 Jun 2025 14:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="EMyzIbE3";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="R04n6eXk"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86216221714;
	Mon,  2 Jun 2025 14:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748872872; cv=none; b=gQI12duYQWoTWxDXAwyH8/JV007eWtrLw2wiet9t1LwxwgWDoSuIzk+AsWjp+2A/27v5/GXX/7mjr7Xslf1CJbCSSxtnXM07g4zZFvBGSd/P5xkazRJU8qcitM3qCI9DW8BDRbpdwdRO4o0DCpcXawieMgWZ/kkdr3erK8VCDjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748872872; c=relaxed/simple;
	bh=HFadHxt3ZPc7jVqNx+6waDnSIalwI+Z4mKEuHJEM2aE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DwlQSJQPmS1VmKS3NYNP2EDOU9QNelRaAX8bEzmHq76yi1rcTnuCKYYZBDgAN0eMYJT22Ja/E7dD9vT24rB8EUMZQ/oMpewDyn0znu0uAGZyaMzDNCNVXn4knBRwG7iN7+amLUlsYSOqQa0CPwxobe1uk7uEtCXGbzZ1mRI50Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=EMyzIbE3; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=R04n6eXk; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1748872868;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gV9RGv3nWaomjE7+wzJk/Yy4YwoIuUIXST07ItsIWSk=;
	b=EMyzIbE3PW3Wb+R/B3hFLMroAMz6Z3mCDXCGeb+cGaQluCqYmjkP3/Cs43qFiD0rtgj9rI
	Z6JjkZl/Dnw9AAWSUfCM9Lzy2MSHfn2o8TEBQA45uAbOQnG9RoqOknD1t4pzaAQgDz3mVq
	qoUrx8UMugu3uQ0AEESqJ1glLWMWsIM5dNhUKvkB+a4A8RTTvI9fd7ViOkprEmr+/JsDtp
	PQMOAotxNicqqdswMgMhVCnMOXn1t5V8OYM8JKqBCauLebYh647Wsat0n+Ixd2r5qpeaMj
	EY9MDxDHkY6sN08sg8rnTAE1qLo9fiL1GtlaAwvd3nl2tx5vowkqiFU1Gh7Mmw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1748872868;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gV9RGv3nWaomjE7+wzJk/Yy4YwoIuUIXST07ItsIWSk=;
	b=R04n6eXkNXG/qoRA/uid3pm+UmbQdcEcIq09VulzjH/N7pg4DDVAs2KOJAL2IolKwFUYor
	VM0A8sGG3czoAgAw==
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
Subject: [PATCH v4 3/4] man/man2/prctl.2, PR_FUTEX_HASH_GET_SLOTS.2const: Document PR_FUTEX_HASH_GET_SLOTS
Date: Mon,  2 Jun 2025 16:01:03 +0200
Message-ID: <20250602140104.2769223-4-bigeasy@linutronix.de>
In-Reply-To: <20250602140104.2769223-1-bigeasy@linutronix.de>
References: <20250602140104.2769223-1-bigeasy@linutronix.de>
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
 man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const | 37 ++++++++++++++++++++
 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const |  7 ++--
 2 files changed, 40 insertions(+), 4 deletions(-)
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
diff --git a/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const b/man/man2const/P=
R_FUTEX_HASH_SET_SLOTS.2const
index 1f08d1bb30485..531e3bcca112d 100644
--- a/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
+++ b/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
@@ -29,7 +29,7 @@ Specifies the size of private hash to allocate.
 Use the global hash.
 This is the behaviour used before 6.16.
 The operation implies the
-.I FH_FLAG_IMMUTABLE
+.B FH_FLAG_IMMUTABLE
 flag.
 .TP
 .I >0
@@ -38,7 +38,7 @@ The value must be power of two and the lowest possible va=
lue is 2.
 The upper limit depends on the available memory in the system.
 Each slot requires 64bytes of memory.
 Kernels compiled with
-.I CONFIG_PROVE_LOCKING
+.B CONFIG_PROVE_LOCKING
 will consume more than that.
 .RE
 .TP
@@ -46,7 +46,7 @@ will consume more than that.
 .RS
 The following flags can be specified:
 .TP
-.I FH_FLAG_IMMUTABLE
+.B FH_FLAG_IMMUTABLE
 The private hash can no longer be changed.
 By using an immutable private hash
 the kernel can avoid some accounting for the data structure.
@@ -54,7 +54,6 @@ This accounting is visible in benchmarks if many
 .BR futex (2)
 operations are invoked in parallel on different CPUs.
 .RE
-.RE
 .SH RETURN VALUE
 On success,
 0 is returned.
--=20
2.49.0


