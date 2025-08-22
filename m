Return-Path: <linux-man+bounces-3540-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 37644B31C35
	for <lists+linux-man@lfdr.de>; Fri, 22 Aug 2025 16:42:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 575261D27009
	for <lists+linux-man@lfdr.de>; Fri, 22 Aug 2025 14:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F49D3093C9;
	Fri, 22 Aug 2025 14:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="PwTi1GFg";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="svngybP/"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8735B3054EB;
	Fri, 22 Aug 2025 14:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755873149; cv=none; b=W/ZeTlTSqhPrvkuqcaWpTToKh1iwyjch0p9oLu7l7N4WrVB3JZt3i3PgOqmauRDxMjsSBXdNkmTfn4Ye+qRRQzbtGPLHmW/C0TgRCKSQFVHq9m4KWBtHgkAuIMau47FiyyybGFii0CcyWJt0oTTjQmG4uVxQATUMmqIfKb4Jxi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755873149; c=relaxed/simple;
	bh=4nxfVrTUmZkQD/0pSjawdJeN71jLT7XxyL7bDo2pBFY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HjCI1gVR2P3FAy7ImA/EFQumit+cksn6rtlnqkb8Y14o3v+dqiamMBz/tW8g35uKIqDwxnJsLZbpxlkBOq//qmT4CzTx1GlZ8/AtLEtOBCQWqpezuyl86TYLkiz61iIBShQuVDsdOUHrz5/428h8vAOX8GVIk44upVAyG8jIzBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=PwTi1GFg; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=svngybP/; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Fri, 22 Aug 2025 16:32:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1755873145;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Eh0RXXaPvoW+a0BtM7LWpr5lUZt+7EO9SDZ1x+KIQdg=;
	b=PwTi1GFgNXwRf44uVbWw7g6ap4yKs/E8jliTeq0OME9oDOw3b5H4teqHku4cXjYjDRBzvP
	Ei7tju7rI6E7TEbHhN/vMt6PXAFuMt61noD1RAFH1QSuZJzJTX1J0s0xaSO6+OoewJtwZn
	gO50rq+l5i5SVsB6LBL86dKLYCrxLSkGngT8VRO+nWaT+Gxm5QlBaoXNI8g45XIp/acbUB
	QHJOcAaXReOzr/uZlLGeRsknq3Ho09xU8lQsQldamkIqmztB0qQ2rVDV3KqLPXUN9hKf6n
	s+FYArIOSnAq+mewXBaGPTG3wHdAeFXrUr7r1Nm6llgI5WGjm2CWD5FbASE7fg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1755873145;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Eh0RXXaPvoW+a0BtM7LWpr5lUZt+7EO9SDZ1x+KIQdg=;
	b=svngybP/Di75pv6GCmaeVpjcnQXf/Irdaq1cFaFDt6hyIvgSjcSEZ7R/3aFFjqv0UCIh5Z
	BIAplMmdvdnxFBCQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>,
	Darren Hart <dvhart@infradead.org>,
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>,
	Juri Lelli <juri.lelli@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Valentin Schneider <vschneid@redhat.com>,
	Waiman Long <longman@redhat.com>
Subject: [PATCH v6] man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const:
 Document PR_FUTEX_HASH_SET_SLOTS
Message-ID: <20250822143224.1fKxH5mb@linutronix.de>
References: <20250819071728.1431543-1-bigeasy@linutronix.de>
 <20250819071728.1431543-3-bigeasy@linutronix.de>
 <c5yimoxm73uwq7xhparfqhohrgk7hznzawgajntbmz3nx6337l@ukuiw4n2hfqh>
 <v5luee7avc6ayyox7hn4lwb6wfvezv52by7noffwejvksypord@kx26fel62kan>
 <20250821140851.z1FYafVm@linutronix.de>
 <wygherozbi27pom3xgfcev6pweliuap44cli2vuqhyaqth3dkf@vrkh2iu75tyn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <wygherozbi27pom3xgfcev6pweliuap44cli2vuqhyaqth3dkf@vrkh2iu75tyn>

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
v5=E2=80=A6v6:
  - hash_size -> size
  - hash_flags -> flags

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
2.50.1


