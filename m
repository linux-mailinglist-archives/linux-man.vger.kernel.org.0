Return-Path: <linux-man+bounces-3019-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7112DAC42AA
	for <lists+linux-man@lfdr.de>; Mon, 26 May 2025 17:56:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F1D57189BAE0
	for <lists+linux-man@lfdr.de>; Mon, 26 May 2025 15:56:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 837302144A2;
	Mon, 26 May 2025 15:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="wfwGRsPe";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="+VxzvDku"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB10F288DB;
	Mon, 26 May 2025 15:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748274936; cv=none; b=Vid0/aD+pH0mbDnyt2NJP6dEJkI7AVspo4RGeKtY6muSHZkX4rrvqF9MSfQdHBlIDTOHlV6Aj6cqZn0HM/4LVkWKsj0bTPrWBDJYMJ7Rq9LwVudmJ45qFMzWUHUOwL27wXXDS95CPiOhGnDQwhRhm7LH7Wn0BiUJsUpVJ8xHgrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748274936; c=relaxed/simple;
	bh=Kp2EooeiiHbY/lTF4xNyTkRSbNYmGegsoOcvHjcGhMk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kYdcsL7yxCoD+fuEAEBBW9bpnjAVc0Qo+txHB+jgL9CsprwKCD2vv9Sn3Ha7O4oU0lGPZaQe7fU6/6Ge4VjDaADiiWR7Cz1eUFlMqGwwIfb269PYwC+iv9B1vIvM2PTTpDL/J1EfvGTqcheT6h8tiYnApFLq6HhW+h1d2hauCJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=wfwGRsPe; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=+VxzvDku; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1748274932;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rXXLDNTh6XheffVJ6lgr3mTwIxPbFH4H/p3u0s2IGPU=;
	b=wfwGRsPexIxqINfzY7EASuygtKrsz5Cpk1O4l+zGnC/qqSliCDJ55lLhpK94aNuHadQvtm
	+X7lCj4zv/sl9ItTRccCQ8Wf8eLh+mc9CJjzQEUCV1iG/CvfB7EMKCDddcKfa2nSiipZov
	AIjifCVDLhRK6a64tQEw86DUvL9c2cjRoyc4stj6QQKgyeS+B7W12M7x/R5Y+IIPKtGRGy
	qbF36dGsKXCAGnLe5Rm9PpWgv4ebAUdedHYdbRXF7AOZ+LIA+I2qh/QQXjvzgUr8Z702mM
	oeGfSlsVpdzPetLF0Y8JOowgpVwUucsisDiea0BG3fl+wUyLqdhspWAPqKnoxg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1748274932;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rXXLDNTh6XheffVJ6lgr3mTwIxPbFH4H/p3u0s2IGPU=;
	b=+VxzvDkuoGjTK8dIiDB+z+oVeF+jbfNj1WJPRBN/7Al8KzgXWn07jjJ2h/5Vf9ySTCKpvB
	weaSNSkudxK8x5Ag==
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
Subject: [[PATCH v3] 4/4] man/man2/prctl.2, PR_FUTEX_HASH_GET_IMMUTABLE.2const: Document PR_FUTEX_HASH_GET_IMMUTABLE
Date: Mon, 26 May 2025 17:55:23 +0200
Message-ID: <20250526155523.1382465-5-bigeasy@linutronix.de>
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
 .../PR_FUTEX_HASH_GET_IMMUTABLE.2const        | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 man/man2const/PR_FUTEX_HASH_GET_IMMUTABLE.2const

diff --git a/man/man2const/PR_FUTEX_HASH_GET_IMMUTABLE.2const b/man/man2con=
st/PR_FUTEX_HASH_GET_IMMUTABLE.2const
new file mode 100644
index 0000000000000..be5f457f0dcb6
--- /dev/null
+++ b/man/man2const/PR_FUTEX_HASH_GET_IMMUTABLE.2const
@@ -0,0 +1,37 @@
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
+A value of 1 means that a the hash has been made immutable
+and not be changed.
+Otherwise 0.
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


