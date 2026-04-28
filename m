Return-Path: <linux-man+bounces-5437-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIlUNzpJ8WnAfgEAu9opvQ
	(envelope-from <linux-man+bounces-5437-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 01:56:42 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0E948DA14
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 01:56:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 40EDB3151666
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 23:38:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B42653FE37B;
	Tue, 28 Apr 2026 23:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJn92r1c"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D9C3FE656;
	Tue, 28 Apr 2026 23:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777419248; cv=none; b=Jt5BMR8xSr/MLGIzfYglYiKFutwetVw5226/49Z8OE5pTpONXwCVPO2bM7oKmINoBu3jQHyelfPRlun7cq7lboEmK2/wysap1OSJvkb32+fC9cmcVslX/cDfJDWP8DdinIAMxuLA0HpFZPXfvmDysMTzVSoxI4uCREB5gJE29ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777419248; c=relaxed/simple;
	bh=6Z4Fvlhn1E/ZUyj6g65xXQMFk9cke6Pn2IK07mAJm4s=;
	h=Date:Message-ID:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type; b=F8HhWky/PJ4SHDgxRp2QFw1NnI/tcI+eOsEfjMqyEN+aZu88H3evW1zMQ+qJkXM64nCcIGDUbFsVrxuEBXfjl+ZxSYKvbPH4iFJldjYVjj7OqrzSfr4bUFS28Ogiutb6NfLV1HIncgo1bHpGYZrBMOFK8WXCpLdgZCJnNOcJuYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJn92r1c; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A92FC2BCB3;
	Tue, 28 Apr 2026 23:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777419248;
	bh=6Z4Fvlhn1E/ZUyj6g65xXQMFk9cke6Pn2IK07mAJm4s=;
	h=Date:From:To:Cc:Subject:References:From;
	b=DJn92r1cQ2NaDF2elSfTIevpQ3P9L8TsnL9Ax+ATAIJgiubxPAVFCnwAYliuxMrOl
	 jlYD5/YrZ92jwY7omBDAT+JGzWM+CrjJeBPw8VzjQkrpUxjfVeVJ3RK34z4PBfD9Nb
	 uAufRqM9ksLhSbQDxCZDyBBqtz8HTsKO81sFXWtzrBXgQQg41BkcGi9MTve/bJkxCz
	 qolcQCXPFdjDNPTb2UQAH1jefZXOwL+Z+vc+aHg7Aez2N5Jjg98eHUHHRtijtJWH8y
	 iyEmBuMM29Bt9cjbr6MlRBpR24txJfo3WDsTmkps8ABBoho8UtAF5GWBXM6iBVcG8e
	 vCY3VueHatiSg==
Date: Wed, 29 Apr 2026 01:34:04 +0200
Message-ID: <20260428224427.677889423@kernel.org>
User-Agent: quilt/0.68
From: Thomas Gleixner <tglx@kernel.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Mathias Stearn <mathias@mongodb.com>,
 Dmitry Vyukov <dvyukov@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 linux-man@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Chris Kennelly <ckennelly@google.com>,
 regressions@lists.linux.dev,
 Ingo Molnar <mingo@kernel.org>,
 Blake Oler <blake.oler@mongodb.com>,
 Florian Weimer <fweimer@redhat.com>,
 Rich Felker <dalias@libc.org>,
 Matthew Wilcox <willy@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Torvalds <torvalds@linuxfoundation.org>
Subject: [patch 06/10] selftests/rseq: Make registration flexible for legacy
 and optimized mode
References: <20260428221058.149538293@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Rspamd-Queue-Id: 3E0E948DA14
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5437-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

rseq_register_current_thread() either uses the glibc registered RSEQ region
or registers it's own region with the legacy size of 32 bytes.

That worked so far, but becomes a problem when the kernel implements a
distinction between legacy and performance optimized behavior based on the
registration size as that does not allow to test both modes with the self
test suite.

Add two arguments to the function. One to enforce that the registration is
not using libc provided mode and one to tell the registration to use the
legacy size and not the kernel advertised size.

Rename it and make the original one a inline wrapper which preserves the
existing behavior.

Fixes: 566d8015f7ee ("rseq: Avoid CPU/MM CID updates when no event pending")
Signed-off-by: Thomas Gleixner <tglx@kernel.org>
Cc: stable@vger.kernel.org
---
 tools/testing/selftests/rseq/rseq-abi.h |    7 ++++-
 tools/testing/selftests/rseq/rseq.c     |   39 ++++++++++++++------------------
 tools/testing/selftests/rseq/rseq.h     |    8 +++++-
 3 files changed, 31 insertions(+), 23 deletions(-)

--- a/tools/testing/selftests/rseq/rseq-abi.h
+++ b/tools/testing/selftests/rseq/rseq-abi.h
@@ -192,9 +192,14 @@ struct rseq_abi {
 	struct rseq_abi_slice_ctrl slice_ctrl;
 
 	/*
+	 * Place holder to push the size above 32 bytes.
+	 */
+	__u8 __reserved;
+
+	/*
 	 * Flexible array member at end of structure, after last feature field.
 	 */
 	char end[];
-} __attribute__((aligned(4 * sizeof(__u64))));
+} __attribute__((aligned(256)));
 
 #endif /* _RSEQ_ABI_H */
--- a/tools/testing/selftests/rseq/rseq.c
+++ b/tools/testing/selftests/rseq/rseq.c
@@ -56,6 +56,7 @@ ptrdiff_t rseq_offset;
  * unsuccessful.
  */
 unsigned int rseq_size = -1U;
+static unsigned int rseq_alloc_size;
 
 /* Flags used during rseq registration.  */
 unsigned int rseq_flags;
@@ -115,29 +116,17 @@ bool rseq_available(void)
 	}
 }
 
-/* The rseq areas need to be at least 32 bytes. */
-static
-unsigned int get_rseq_min_alloc_size(void)
-{
-	unsigned int alloc_size = rseq_size;
-
-	if (alloc_size < ORIG_RSEQ_ALLOC_SIZE)
-		alloc_size = ORIG_RSEQ_ALLOC_SIZE;
-	return alloc_size;
-}
-
 /*
  * Return the feature size supported by the kernel.
  *
  * Depending on the value returned by getauxval(AT_RSEQ_FEATURE_SIZE):
  *
- * 0:   Return ORIG_RSEQ_FEATURE_SIZE (20)
+ *   0: Return ORIG_RSEQ_FEATURE_SIZE (20)
  * > 0: Return the value from getauxval(AT_RSEQ_FEATURE_SIZE).
  *
  * It should never return a value below ORIG_RSEQ_FEATURE_SIZE.
  */
-static
-unsigned int get_rseq_kernel_feature_size(void)
+static unsigned int get_rseq_kernel_feature_size(void)
 {
 	unsigned long auxv_rseq_feature_size, auxv_rseq_align;
 
@@ -152,15 +141,24 @@ unsigned int get_rseq_kernel_feature_siz
 		return ORIG_RSEQ_FEATURE_SIZE;
 }
 
-int rseq_register_current_thread(void)
+int __rseq_register_current_thread(bool nolibc, bool legacy)
 {
+	unsigned int size;
 	int rc;
 
 	if (!rseq_ownership) {
 		/* Treat libc's ownership as a successful registration. */
-		return 0;
+		return nolibc ? -EBUSY : 0;
 	}
-	rc = sys_rseq(&__rseq.abi, get_rseq_min_alloc_size(), 0, RSEQ_SIG);
+
+	/* The minimal allocation size is 32, which is the legacy allocation size */
+	size = get_rseq_kernel_feature_size();
+	if (legacy || size < ORIG_RSEQ_ALLOC_SIZE)
+		rseq_alloc_size = ORIG_RSEQ_ALLOC_SIZE;
+	else
+		rseq_alloc_size = size;
+
+	rc = sys_rseq(&__rseq.abi, rseq_alloc_size, 0, RSEQ_SIG);
 	if (rc) {
 		/*
 		 * After at least one thread has registered successfully
@@ -179,9 +177,8 @@ int rseq_register_current_thread(void)
 	 * The first thread to register sets the rseq_size to mimic the libc
 	 * behavior.
 	 */
-	if (RSEQ_READ_ONCE(rseq_size) == 0) {
-		RSEQ_WRITE_ONCE(rseq_size, get_rseq_kernel_feature_size());
-	}
+	if (RSEQ_READ_ONCE(rseq_size) == 0)
+		RSEQ_WRITE_ONCE(rseq_size, size);
 
 	return 0;
 }
@@ -194,7 +191,7 @@ int rseq_unregister_current_thread(void)
 		/* Treat libc's ownership as a successful unregistration. */
 		return 0;
 	}
-	rc = sys_rseq(&__rseq.abi, get_rseq_min_alloc_size(), RSEQ_ABI_FLAG_UNREGISTER, RSEQ_SIG);
+	rc = sys_rseq(&__rseq.abi, rseq_alloc_size, RSEQ_ABI_FLAG_UNREGISTER, RSEQ_SIG);
 	if (rc)
 		return -1;
 	return 0;
--- a/tools/testing/selftests/rseq/rseq.h
+++ b/tools/testing/selftests/rseq/rseq.h
@@ -8,6 +8,7 @@
 #ifndef RSEQ_H
 #define RSEQ_H
 
+#include <assert.h>
 #include <stdint.h>
 #include <stdbool.h>
 #include <pthread.h>
@@ -142,7 +143,12 @@ static inline struct rseq_abi *rseq_get_
  * succeed. A restartable sequence executed from a non-registered
  * thread will always fail.
  */
-int rseq_register_current_thread(void);
+int __rseq_register_current_thread(bool nolibc, bool legacy);
+
+static inline int rseq_register_current_thread(void)
+{
+	return __rseq_register_current_thread(false, false);
+}
 
 /*
  * Unregister rseq for current thread.


