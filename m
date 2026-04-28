Return-Path: <linux-man+bounces-5441-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJ6fKxVF8WmxfQEAu9opvQ
	(envelope-from <linux-man+bounces-5441-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 01:39:01 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB6048D52D
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 01:39:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 74312301AAB4
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 23:38:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 202FF44CAFC;
	Tue, 28 Apr 2026 23:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmlxxJEI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D489F44B675;
	Tue, 28 Apr 2026 23:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777419268; cv=none; b=Cj7L6sQcBEYE3ONpr4g7Q4bzHT9SyElxfkh4YR0Wt8UE7djdcDrBGZ2e6Da4lk2JRBm8Y+i4HFht8WHpGAC+7bMJkI0jubgbTtocvmkDHs+HXtC4YltyAq3l4z1XXyGjaf+SqzBTgMmCnAA6XXKQD6GXn5fcKKMoxm+0RNCk++Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777419268; c=relaxed/simple;
	bh=qF5P88ZpPi9v84Qdsyp2IIlMFiao/NGHMWllPD/x1bw=;
	h=Date:Message-ID:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type; b=B5CFNnO+owZAu/TntPBFBIwwqeTef4zK7cvGSmLTaHrpR2jOkvpTEm8yErUmFlKwLDTj84N/cuQgMRD2UWXny8aexpNf8LRXwbgrl2cX/F+leKuYAvonTvTea27ZDDqn8VYQc4NHdDA1PDTV9NFLxh8OBCvzZkV18UA9pvO7eqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmlxxJEI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2893CC2BCAF;
	Tue, 28 Apr 2026 23:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777419268;
	bh=qF5P88ZpPi9v84Qdsyp2IIlMFiao/NGHMWllPD/x1bw=;
	h=Date:From:To:Cc:Subject:References:From;
	b=TmlxxJEI76GrXqYVc5oqf7nL1R9DbPA5j0WzrkVRxK2MC6SMsGXZMR97I13+BPwp5
	 C8+L7ECtGMozURoMEB8vNOKpYpbFEChtHOJPRECUVQ9PS9tV0PyZ9fYwrsqR/KviJ+
	 fNwWla1y5AN3XxVRdA6AdT1uPGaGo/mOjKSqGorfoopF/Lr93EtfDz9CE3wpWLjsis
	 qRSuFemaOOYlQA+vbHuUn8JQW9oyZjfCto6JKyUsw6HurudobURtrAt6u7VmQGxQPC
	 b+za0pPqrQngtm+TAkSrUK0qGzNJlaoLl2ZHC1hH04VhNCtyG0G1k/uId3xJhMtuHs
	 bX5+Xz9e8BJrA==
Date: Wed, 29 Apr 2026 01:34:25 +0200
Message-ID: <20260428224428.009121296@kernel.org>
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
Subject: [patch 10/10] selftests/rseq: Expand for optimized RSEQ ABI v2
References: <20260428221058.149538293@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Rspamd-Queue-Id: 4FB6048D52D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5441-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,run_legacy_check.sh:url,run_syscall_errors_test.sh:url,librseq.so:url,run_timeslice_test.sh:url]

Update the selftests so they are executed for legacy (32 bytes RSEQ region)
and optimized RSEQ ABI v2 mode.

Fixes: d6200245c75e ("rseq: Allow registering RSEQ with slice extension")
Signed-off-by: Thomas Gleixner <tglx@kernel.org>
Cc: stable@vger.kernel.org
---
 tools/testing/selftests/rseq/Makefile              |    7 ++-
 tools/testing/selftests/rseq/check_optimized.c     |   17 +++++++++
 tools/testing/selftests/rseq/param_test.c          |   22 +++++++----
 tools/testing/selftests/rseq/run_param_test.sh     |   39 +++++++++++++++++++++
 tools/testing/selftests/rseq/run_timeslice_test.sh |   14 +++++++
 tools/testing/selftests/rseq/slice_test.c          |    2 -
 6 files changed, 89 insertions(+), 12 deletions(-)

--- a/tools/testing/selftests/rseq/Makefile
+++ b/tools/testing/selftests/rseq/Makefile
@@ -17,11 +17,11 @@ OVERRIDE_TARGETS = 1
 TEST_GEN_PROGS = basic_test basic_percpu_ops_test basic_percpu_ops_mm_cid_test param_test \
 		param_test_benchmark param_test_compare_twice param_test_mm_cid \
 		param_test_mm_cid_benchmark param_test_mm_cid_compare_twice \
-		syscall_errors_test slice_test legacy_check
+		syscall_errors_test slice_test legacy_check check_optimized
 
 TEST_GEN_PROGS_EXTENDED = librseq.so
 
-TEST_PROGS = run_param_test.sh run_syscall_errors_test.sh run_legacy_check.sh
+TEST_PROGS = run_param_test.sh run_syscall_errors_test.sh run_legacy_check.sh run_timeslice_test.sh
 
 TEST_FILES := settings
 
@@ -62,3 +62,6 @@ include ../lib.mk
 
 $(OUTPUT)/slice_test: slice_test.c $(TEST_GEN_PROGS_EXTENDED) rseq.h rseq-*.h
 	$(CC) $(CFLAGS) $< $(LDLIBS) -lrseq -o $@
+
+$(OUTPUT)/check_optimized: check_optimized.c $(TEST_GEN_PROGS_EXTENDED) rseq.h rseq-*.h
+	$(CC) $(CFLAGS) $< $(LDLIBS) -lrseq -o $@
--- /dev/null
+++ b/tools/testing/selftests/rseq/check_optimized.c
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: LGPL-2.1
+#define _GNU_SOURCE
+#include <assert.h>
+#include <sched.h>
+#include <signal.h>
+#include <stdio.h>
+#include <string.h>
+#include <sys/time.h>
+
+#include "rseq.h"
+
+int main(int argc, char **argv)
+{
+	if (__rseq_register_current_thread(true, false))
+		return -1;
+	return 0;
+}
--- a/tools/testing/selftests/rseq/param_test.c
+++ b/tools/testing/selftests/rseq/param_test.c
@@ -38,7 +38,7 @@ static int opt_modulo, verbose;
 static int opt_yield, opt_signal, opt_sleep,
 		opt_disable_rseq, opt_threads = 200,
 		opt_disable_mod = 0, opt_test = 's';
-
+static bool opt_rseq_legacy;
 static long long opt_reps = 5000;
 
 static __thread __attribute__((tls_model("initial-exec")))
@@ -481,7 +481,7 @@ void *test_percpu_spinlock_thread(void *
 	long long i, reps;
 
 	if (!opt_disable_rseq && thread_data->reg &&
-	    rseq_register_current_thread())
+	    __rseq_register_current_thread(true, opt_rseq_legacy))
 		abort();
 	reps = thread_data->reps;
 	for (i = 0; i < reps; i++) {
@@ -558,7 +558,7 @@ void *test_percpu_inc_thread(void *arg)
 	long long i, reps;
 
 	if (!opt_disable_rseq && thread_data->reg &&
-	    rseq_register_current_thread())
+	    __rseq_register_current_thread(true, opt_rseq_legacy))
 		abort();
 	reps = thread_data->reps;
 	for (i = 0; i < reps; i++) {
@@ -712,7 +712,7 @@ void *test_percpu_list_thread(void *arg)
 	long long i, reps;
 	struct percpu_list *list = (struct percpu_list *)arg;
 
-	if (!opt_disable_rseq && rseq_register_current_thread())
+	if (!opt_disable_rseq && __rseq_register_current_thread(true, opt_rseq_legacy))
 		abort();
 
 	reps = opt_reps;
@@ -895,7 +895,7 @@ void *test_percpu_buffer_thread(void *ar
 	long long i, reps;
 	struct percpu_buffer *buffer = (struct percpu_buffer *)arg;
 
-	if (!opt_disable_rseq && rseq_register_current_thread())
+	if (!opt_disable_rseq && __rseq_register_current_thread(true, opt_rseq_legacy))
 		abort();
 
 	reps = opt_reps;
@@ -1105,7 +1105,7 @@ void *test_percpu_memcpy_buffer_thread(v
 	long long i, reps;
 	struct percpu_memcpy_buffer *buffer = (struct percpu_memcpy_buffer *)arg;
 
-	if (!opt_disable_rseq && rseq_register_current_thread())
+	if (!opt_disable_rseq && __rseq_register_current_thread(true, opt_rseq_legacy))
 		abort();
 
 	reps = opt_reps;
@@ -1258,7 +1258,7 @@ void *test_membarrier_worker_thread(void
 	const int iters = opt_reps;
 	int i;
 
-	if (rseq_register_current_thread()) {
+	if (__rseq_register_current_thread(true, opt_rseq_legacy)) {
 		fprintf(stderr, "Error: rseq_register_current_thread(...) failed(%d): %s\n",
 			errno, strerror(errno));
 		abort();
@@ -1323,7 +1323,7 @@ void *test_membarrier_manager_thread(voi
 	intptr_t expect_a = 0, expect_b = 0;
 	int cpu_a = 0, cpu_b = 0;
 
-	if (rseq_register_current_thread()) {
+	if (__rseq_register_current_thread(true, opt_rseq_legacy)) {
 		fprintf(stderr, "Error: rseq_register_current_thread(...) failed(%d): %s\n",
 			errno, strerror(errno));
 		abort();
@@ -1475,6 +1475,7 @@ static void show_usage(int argc, char **
 	printf("	[-D M] Disable rseq for each M threads\n");
 	printf("	[-T test] Choose test: (s)pinlock, (l)ist, (b)uffer, (m)emcpy, (i)ncrement, membarrie(r)\n");
 	printf("	[-M] Push into buffer and memcpy buffer with memory barriers.\n");
+	printf("	[-O] Test with optimized RSEQ\n");
 	printf("	[-v] Verbose output.\n");
 	printf("	[-h] Show this help.\n");
 	printf("\n");
@@ -1602,6 +1603,9 @@ int main(int argc, char **argv)
 		case 'M':
 			opt_mo = RSEQ_MO_RELEASE;
 			break;
+		case 'L':
+			opt_rseq_legacy = true;
+			break;
 		default:
 			show_usage(argc, argv);
 			goto error;
@@ -1618,7 +1622,7 @@ int main(int argc, char **argv)
 	if (set_signal_handler())
 		goto error;
 
-	if (!opt_disable_rseq && rseq_register_current_thread())
+	if (!opt_disable_rseq && __rseq_register_current_thread(true, opt_rseq_legacy))
 		goto error;
 	if (!opt_disable_rseq && !rseq_validate_cpu_id()) {
 		fprintf(stderr, "Error: cpu id getter unavailable\n");
--- a/tools/testing/selftests/rseq/run_param_test.sh
+++ b/tools/testing/selftests/rseq/run_param_test.sh
@@ -34,6 +34,11 @@ REPS=1000
 SLOW_REPS=100
 NR_THREADS=$((6*${NR_CPUS}))
 
+# Prevent GLIBC from registering RSEQ so the selftest can run in legacy and
+# performance optimized mode.
+GLIBC_TUNABLES="${GLIBC_TUNABLES:-}:glibc.pthread.rseq=0"
+export GLIBC_TUNABLES
+
 function do_tests()
 {
 	local i=0
@@ -103,6 +108,40 @@ function inject_blocking()
 	NR_LOOPS=
 }
 
+echo "Testing in legacy RSEQ mode"
+echo "Yield injection (25%)"
+inject_blocking -m 4 -y -L
+
+echo "Yield injection (50%)"
+inject_blocking -m 2 -y -L
+
+echo "Yield injection (100%)"
+inject_blocking -m 1 -y -L
+
+echo "Kill injection (25%)"
+inject_blocking -m 4 -k -L
+
+echo "Kill injection (50%)"
+inject_blocking -m 2 -k -L
+
+echo "Kill injection (100%)"
+inject_blocking -m 1 -k -L
+
+echo "Sleep injection (1ms, 25%)"
+inject_blocking -m 4 -s 1 -L
+
+echo "Sleep injection (1ms, 50%)"
+inject_blocking -m 2 -s 1 -L
+
+echo "Sleep injection (1ms, 100%)"
+inject_blocking -m 1 -s 1 -L
+
+./check_optimized || {
+    echo "Skipping optimized RSEQ mode test. Not supported";
+    exit 0
+}
+
+echo "Testing in optimized RSEQ mode"
 echo "Yield injection (25%)"
 inject_blocking -m 4 -y
 
--- /dev/null
+++ b/tools/testing/selftests/rseq/run_timeslice_test.sh
@@ -0,0 +1,14 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-2.0+
+
+# Prevent GLIBC from registering RSEQ so the selftest can run in legacy
+# and performance optimized mode.
+GLIBC_TUNABLES="${GLIBC_TUNABLES:-}:glibc.pthread.rseq=0"
+export GLIBC_TUNABLES
+
+./check_optimized || {
+    echo "Skipping optimized RSEQ mode test. Not supported";
+    exit 0
+}
+
+./slice_test
--- a/tools/testing/selftests/rseq/slice_test.c
+++ b/tools/testing/selftests/rseq/slice_test.c
@@ -124,7 +124,7 @@ FIXTURE_SETUP(slice_ext)
 {
 	cpu_set_t affinity;
 
-	if (rseq_register_current_thread())
+	if (__rseq_register_current_thread(true, false))
 		SKIP(return, "RSEQ not supported\n");
 
 	if (prctl(PR_RSEQ_SLICE_EXTENSION, PR_RSEQ_SLICE_EXTENSION_SET,


