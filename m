Return-Path: <linux-man+bounces-3483-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E4AB2BA85
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 09:21:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 582673B6CB0
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 07:21:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BB1531A06D;
	Tue, 19 Aug 2025 07:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="YjNmGWRj";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="hj4T8Hza"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A2A311941;
	Tue, 19 Aug 2025 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755587855; cv=none; b=O0AJYp6BPIC9uedxeLIRP+RQEyHBgDR2z19G0lQBSwFyCl73QiiXlk5UZvj249ytVdHRYs34qK3vxN7PcLK/wdRb7mn/YZz1Qqw5nlKlt47D2J1ihycJEU4sB/CBh+bHzl97xcaOALdlkiPI9/1LeZhTqLH23PwYHlQLtp6sXrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755587855; c=relaxed/simple;
	bh=PGJQYm3B5VIwHUqi5OgCXN0zB+HfuCIakUn0rJjc7p8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Uv9vSUgGbC2aT9JGJOr3lnhMgd7bW2jCTktb3lBr639Vob7R0bW2XYo1dIWQyXX5lzKMa72UBkCvuTMx2JjCUybgw6GlGqyjC80Z51lgpow0YfnUZTuzEFkNDqCA0zP2/AKEHOF04jBawCrx1VadX31uMHvipJpJKYHqqTrd+QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=YjNmGWRj; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=hj4T8Hza; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1755587852;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Za4rAwr03keEYCKlJdxGDVcFtG5TbI4ceLeBaBGrh3U=;
	b=YjNmGWRjTrzZSri5EJJV6Hct1oF+AURijX8nH2nCADCnydu2o+B7mKgbPZRtNWiSRyDy6t
	PHD5unIS3yuEZwRJVBdj3X4EWhXbM5hdFAJwaFUEC+7DCDw65bVwqdpX2PTMv6waya+mH8
	1Odq90L3dp0TUBewWg0iOzYTmqON/lmWcc2kbFSNc56RmNF/rNKTlCr65I8NWIniefMKve
	LsArlciKdbE2kMewBxXNGdP7e20xLKx7wwGVCXwRz4VkKBrgHkE2GcsAq0Pg3nRytzkWjw
	P1P3+ohZIf5Sl+eo30luFi1WYSvxPYVRtbQXXEVJvtVUs4yL7tvfLUsXP4G1cg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1755587852;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Za4rAwr03keEYCKlJdxGDVcFtG5TbI4ceLeBaBGrh3U=;
	b=hj4T8HzaVxD6QVU2obX6kgOLqmO7Lq0TBOI9Y/VjXu62J6SJskMTy52D3LrestggVyyDER
	1eua7kO693JORuDA==
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
Subject: [PATCH v5 2/3] man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const: Document PR_FUTEX_HASH_SET_SLOTS
Date: Tue, 19 Aug 2025 09:17:27 +0200
Message-ID: <20250819071728.1431543-3-bigeasy@linutronix.de>
In-Reply-To: <20250819071728.1431543-1-bigeasy@linutronix.de>
References: <20250819071728.1431543-1-bigeasy@linutronix.de>
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
index 0000000000000..93af27cbd5e5e
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
+.BI "          unsigned long " hash_size ", unsigned long " hash_flags ");
+.fi
+.SH DESCRIPTION
+Set the number of slots to use for the private hash.
+.TP
+.I hash_size
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
+.I hash_flags
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
2.50.1


