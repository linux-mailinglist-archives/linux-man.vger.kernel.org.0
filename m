Return-Path: <linux-man+bounces-2989-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7801ABD572
	for <lists+linux-man@lfdr.de>; Tue, 20 May 2025 12:47:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A45343A10F3
	for <lists+linux-man@lfdr.de>; Tue, 20 May 2025 10:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81C8A279902;
	Tue, 20 May 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="ONIy7QxZ";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="TZr3igxw"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777B12701B6;
	Tue, 20 May 2025 10:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747737773; cv=none; b=OFVqaHQX9bEP2B+AdpmT/tOYanra2aGBSQ/eyFNHLh+YZKUGAI3/2Eh/PXCUf4ghyCKgp2D1NJE3rLMgNmMX1iId3MByE322eSonhlqZX7XxrG/kVIkXhNY1qcuYGSIQWui765plL7vpohz/Gbbfjpj5+mXNG03DpdpFboUH2UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747737773; c=relaxed/simple;
	bh=T189RjTrntINPu365l3ja6YhxwdP6P6S4tUmnB9uCEo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JfaVqWF0Xn85jhmpY13DHm4gbQzRn9skLrkKVkF2+hvAEdQfBzTauvDD7AuuubTgTnwRCLKb9IWhK24jBWDf3qWehcLwsTssH3SGukn2xlrLXUvsr17XDTlv2S88WtcLoxb/INtI3cNIfR39mZ5i9VVS6UFOC2EwqsDG1p7LLJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=ONIy7QxZ; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=TZr3igxw; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Tue, 20 May 2025 12:42:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1747737768;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aKAey3wDze0P9HqHy2EvYY9m+3GTRLbM7rCWmYob5VM=;
	b=ONIy7QxZ4R15uE7nU7fEe+g/zox8fjOaYpwcvJP+t344Nz1n4EwDiYsalpuPb5L91DSV/4
	CUn7RcEA+84x5aijy/Mon8wIC7KXE7pvV+rJoT5l0GaZFWcLjBSZsSf3fTenJm2Y+kSoEE
	/3z9ZTpBklTZBSKuqIxKri3eyabSX7CzkDu84hhqTswycc1PRYa/eQ8IIAkcvToxGKa/uv
	T3C+++T5z+I1YRJ/7u3Q/mhu2+gyO84XCpib8Jq71ZkTCYIuop6/86wFTS1bTTeZyXJwZD
	tBiZhbLEJ+dETLEPsfBtMLwb87wPyCkvoBAidWen6QiEDYjXPvDDCYHJdgU26A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1747737768;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aKAey3wDze0P9HqHy2EvYY9m+3GTRLbM7rCWmYob5VM=;
	b=TZr3igxw/tKyEhPNivxzCl9sC6gRcqhpxVyS/aV6+4CiArn5hQkd/yIhMRLYjLoqu7y5aL
	i7SlCbU4ABE/jQCg==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>,
	Darren Hart <dvhart@infradead.org>,
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>,
	Juri Lelli <juri.lelli@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Valentin Schneider <vschneid@redhat.com>,
	Waiman Long <longman@redhat.com>
Subject: [PATCH v2] prctl: Add documentation for PR_FUTEX_HASH
Message-ID: <20250520104247.S-gVcgxM@linutronix.de>
References: <20250516161422.BqmdlxlF@linutronix.de>
 <fuudjpar7kv7liwj4aucekktkzuhkalzkhsz5gv3mxzletlstk@tzokaret52cv>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <fuudjpar7kv7liwj4aucekktkzuhkalzkhsz5gv3mxzletlstk@tzokaret52cv>

The prctl(PR_FUTEX_HASH) is queued for the v6.16 merge window.
Add some documentation of the interface.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
v1=E2=80=A6v2: https://lore.kernel.org/all/20250516161422.BqmdlxlF@linutron=
ix.de/
  - Partly reword
  - Use "semantic newlines"

 man/man2/prctl.2                   |   3 +
 man/man2const/PR_FUTEX_HASH.2const | 122 +++++++++++++++++++++++++++++
 2 files changed, 125 insertions(+)
 create mode 100644 man/man2const/PR_FUTEX_HASH.2const

diff --git a/man/man2/prctl.2 b/man/man2/prctl.2
index f29b745b12578..a884064a40b7d 100644
--- a/man/man2/prctl.2
+++ b/man/man2/prctl.2
@@ -150,6 +150,8 @@ with a significance depending on the first one.
 .B PR_GET_MDWE
 .TQ
 .B PR_RISCV_SET_ICACHE_FLUSH_CTX
+.TQ
+.B PR_FUTEX_HASH
 .SH RETURN VALUE
 On success,
 a nonnegative value is returned.
@@ -262,4 +264,5 @@ so these operations should be used with care.
 .BR PR_SET_MDWE (2const),
 .BR PR_GET_MDWE (2const),
 .BR PR_RISCV_SET_ICACHE_FLUSH_CTX (2const),
+.BR PR_FUTEX_HASH (2const),
 .BR core (5)
diff --git a/man/man2const/PR_FUTEX_HASH.2const b/man/man2const/PR_FUTEX_HA=
SH.2const
new file mode 100644
index 0000000000000..c7aa36064b79e
--- /dev/null
+++ b/man/man2const/PR_FUTEX_HASH.2const
@@ -0,0 +1,122 @@
+.\" Copyright, The authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH PR_FUTEX_HASH 2const (date) "Linux man-pages (unreleased)"
+.SH NAME
+PR_FUTEX_HASH
+\-
+configure the private futex hash
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
+.B #include <sys/prctl.h>
+.P
+.BI "int prctl(PR_FUTEX_HASH, unsigned long " op ", ...);"
+.fi
+.SH DESCRIPTION
+Configure the attributes for the underlying hash used by the
+.BR futex (2)
+family of operations.
+The Linux kernel uses a hash to distributes the
+.BR futex (2)
+users on different data structures.
+The data structure holds the in-kernel representation of the operation and
+keeps track of the current users which are enqueued and wait for a wake up.
+It also provides synchronisation with users who perform a wake up.
+The size of the global hash is determined at boot time and is based on the
+number of CPUs in the system.
+Since the mapping from the provided
+.I uaddr
+value to the in-kernel representation is based on a hash, two unrelated ta=
sks
+in the system can share the same hash bucket.
+This in turn can lead to delays of the
+.BR futex (2)
+operation due to lock contention of the data structure.
+These delays can be problematic on a real-time system since random tasks c=
an
+share in-kernel locks and it is not deterministic which tasks will be invo=
lved.
+.P
+Linux v6.16 implements a process wide private hash which is used by all
+.BR futex (2)
+operations which specify the
+.B FUTEX_PRIVATE_FLAG
+as part of the operation.
+Without any configuration the kernel will allocate 16 hash slots once the =
first
+thread has been created.
+If the process continues to create threads, the kernel will try to resize =
the
+private hash based on the number of threads and available CPUs in the syst=
em.
+The kernel will only increase the size and will make sure it does not exce=
ed
+the size of the global hash.
+.P
+The user can configure the size of the private hash which will also disabl=
e the
+automatic resize provided by the kernel.
+.P
+The following values for
+.I op
+can be specified:
+.TP
+.BI "int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_SET_SLOTS, unsigned long " has=
h_size ", unsigned long " hash_flags ");
+Set the number of slots to use for the private hash.
+.P
+.RS
+.TP
+.I hash_size
+Specifies the size of private hash to allocate. Possible values are:
+.RS
+.TP
+.I 0
+Use the global hash.
+This is the behaviour used before v6.16.
+The operation can not be undone.
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
+By using an immutable privat hash the kernel can avoid some accounting for=
 the
+data structure.
+This accounting is visible in benchmarks if many
+.BR futex (2)
+operations are invoked in parallel on different CPUs.
+.RE
+.RE
+.TP
+.BI "int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_GET_SLOTS);
+Returns the current size of the the private hash.
+A value of 0 means that a private hash has not been allocated and the glob=
al
+hash is in use.
+A value >0 specifies the size of the private hash.
+.TP
+.BI "int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_GET_IMMUTABLE);
+Return 1 if the hash has been made immutable and not be changed.
+Otherwise 0.
+.\"
+.SH RETURN VALUE
+On success,
+these calls return a nonnegative value.
+On error, \-1 is returned, and
+.I errno
+is set to indicate the error.
+.SH STANDARDS
+Linux.
+.SH HISTORY
+Linux 6.16.
+.SH SEE ALSO
+.BR prctl (2) ,
+.BR futex (2) ,
+.BR futex (7)
--=20
2.49.0


