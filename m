Return-Path: <linux-man+bounces-5438-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YE9cMH5G8WkcfgEAu9opvQ
	(envelope-from <linux-man+bounces-5438-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 01:45:02 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B716048D68D
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 01:45:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD5AC31F027E
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 23:38:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B735240FDB1;
	Tue, 28 Apr 2026 23:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fihXZBpp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BF03FE656;
	Tue, 28 Apr 2026 23:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777419253; cv=none; b=JqkjSwYRDQlGtqlMyE64wrX4TDSi5py4GkgFQwIcY0JC0HtYtALSRZdylKXNUtV2np8+p6Whpw1zgqhsu9AY358o2ntcZgZ7wzJRXU3lStOmHX7itImIveWS6cknYEbxySASrwYxoiT+giD3jezK15ggviLMkDnvr/prLtc8W6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777419253; c=relaxed/simple;
	bh=KUB0P71GMAxNRyp3vKQf0e41zNk0CHybFJQYtchF264=;
	h=Date:Message-ID:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type; b=CPzwdcH0TRiEW+KiRiCSZlCQzCM8AcnIj74lX5o0hhgDIv1QjPYQXYJEdrqA6fzTmUgk+lTWUlm0IP9QBkgGJbJLgBt5bka+LIHlWcIIHpIFXIQYoBH7KhmMjL6cGkb+PyMDeZ9hMqCQ+AikLaLBYO1aLS72fPEHNFooVSzEL20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fihXZBpp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4BBFC2BCAF;
	Tue, 28 Apr 2026 23:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777419253;
	bh=KUB0P71GMAxNRyp3vKQf0e41zNk0CHybFJQYtchF264=;
	h=Date:From:To:Cc:Subject:References:From;
	b=fihXZBppNUszJdcyOfN//BpAVUbEDaPAR32Xi+EtMeWyZPG4dwPd/FK56wC6s3Bua
	 gzsuw1q5YV94jYI9BaOgd94I5U+xvZdpwB1xPijyXoESVKO1apDSnORVk0rwjJvKXP
	 JYfjGR5+jWCTHO4Yry2WrohDf7i1mmQLH8yCAG/gxXwXf1tYVFI06CW6jcwHCfyUob
	 vARJT5rP3+tI3zeO3d845SEy+GmcLBlzpeK6ToHsWSCeMhlq6zR7uuInGE+G9kbJmL
	 U2dCQmnqeXKuBXpnTOyX6uzPgg4aCtGPGWy7rEOL/yjIesFBI9/H3aauyfihZP0QEV
	 wdK78LixJR8UQ==
Date: Wed, 29 Apr 2026 01:34:10 +0200
Message-ID: <20260428224427.764705536@kernel.org>
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
Subject: [patch 07/10] selftests/rseq: Validate legacy behavior
References: <20260428221058.149538293@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Rspamd-Queue-Id: B716048D68D
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
	TAGGED_FROM(0.00)[bounces-5438-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,run_syscall_errors_test.sh:url,run_legacy_check.sh:url,librseq.so:url,run_param_test.sh:url]

The RSEQ legacy mode behavior requires that the ID fields in the rseq
region are unconditionally updated on every context switch and before
signal delivery even if not required by the ABI specification.

To ensure that this behavior is preserved for legacy users in the future,
add a test which validates that with a sleep() and a signal sent to self.

Provide a run script which prevents GLIBC from registering a RSEQ region,
so that the test can register it's own legacy sized region.

Fixes: 566d8015f7ee ("rseq: Avoid CPU/MM CID updates when no event pending")
Signed-off-by: Thomas Gleixner <tglx@kernel.org>
Cc: stable@vger.kernel.org
---
 tools/testing/selftests/rseq/Makefile            |    4 -
 tools/testing/selftests/rseq/legacy_check.c      |   65 +++++++++++++++++++++++
 tools/testing/selftests/rseq/run_legacy_check.sh |    4 +
 3 files changed, 71 insertions(+), 2 deletions(-)

--- a/tools/testing/selftests/rseq/Makefile
+++ b/tools/testing/selftests/rseq/Makefile
@@ -17,11 +17,11 @@ OVERRIDE_TARGETS = 1
 TEST_GEN_PROGS = basic_test basic_percpu_ops_test basic_percpu_ops_mm_cid_test param_test \
 		param_test_benchmark param_test_compare_twice param_test_mm_cid \
 		param_test_mm_cid_benchmark param_test_mm_cid_compare_twice \
-		syscall_errors_test slice_test
+		syscall_errors_test slice_test legacy_check
 
 TEST_GEN_PROGS_EXTENDED = librseq.so
 
-TEST_PROGS = run_param_test.sh run_syscall_errors_test.sh
+TEST_PROGS = run_param_test.sh run_syscall_errors_test.sh run_legacy_check.sh
 
 TEST_FILES := settings
 
--- /dev/null
+++ b/tools/testing/selftests/rseq/legacy_check.c
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: GPL-2.0
+#ifndef _GNU_SOURCE
+#define _GNU_SOURCE
+#endif
+
+#include <errno.h>
+#include <signal.h>
+#include <stdint.h>
+#include <unistd.h>
+
+#include "rseq.h"
+
+#include "../kselftest_harness.h"
+
+FIXTURE(legacy)
+{
+};
+
+static int cpu_id_in_sigfn = -1;
+
+static void sigfn(int sig)
+{
+	struct rseq_abi *rs = rseq_get_abi();
+
+	cpu_id_in_sigfn = rs->cpu_id_start;
+}
+
+FIXTURE_SETUP(legacy)
+{
+	int res = __rseq_register_current_thread(true, true);
+
+	switch (res) {
+	case -ENOSYS:
+		SKIP(return, "RSEQ not enabled\n");
+	case -EBUSY:
+		SKIP(return, "GLIBC owns RSEQ. Disable GLIBC RSEQ registration\n");
+	default:
+		ASSERT_EQ(res, 0);
+	}
+
+	ASSERT_NE(signal(SIGUSR1, sigfn), SIG_ERR);
+}
+
+FIXTURE_TEARDOWN(legacy)
+{
+}
+
+TEST_F(legacy, legacy_test)
+{
+	struct rseq_abi *rs = rseq_get_abi();
+
+	ASSERT_NE(rs, NULL);
+
+	/* Overwrite rs::cpu_id_start */
+	rs->cpu_id_start = -1;
+	sleep(1);
+	ASSERT_NE(rs->cpu_id_start, -1);
+
+	rs->cpu_id_start = -1;
+	ASSERT_EQ(raise(SIGUSR1), 0);
+	ASSERT_NE(rs->cpu_id_start, -1);
+	ASSERT_NE(cpu_id_in_sigfn, -1);
+}
+
+TEST_HARNESS_MAIN
--- /dev/null
+++ b/tools/testing/selftests/rseq/run_legacy_check.sh
@@ -0,0 +1,4 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-2.0
+
+GLIBC_TUNABLES="${GLIBC_TUNABLES:-}:glibc.pthread.rseq=0" ./legacy_check


