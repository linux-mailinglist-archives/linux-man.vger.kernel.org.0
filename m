Return-Path: <linux-man+bounces-5451-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGkcAIjR8WlrkgEAu9opvQ
	(envelope-from <linux-man+bounces-5451-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 11:38:16 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA8F492164
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 11:38:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 07599300AB10
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 09:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D64AB3CA4A3;
	Wed, 29 Apr 2026 09:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="hgUoysgV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4FA3C3C12
	for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 09:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.176
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777455351; cv=pass; b=rCIRVY4Vx8K5E0v7eWjjQsePk7OtPKkW+1Joy4IE1yZ2Sw8AvB0UjGs2FWmZ0Q71C214JTuHolHw7qtK2Q8jv5I9zujktuB9l50opYGsC604jtFbW4xIWL7FdU05fEgcBdQUlg00By0cvoQlRhS5SF5eHdcQabN43Ar+vXCCruU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777455351; c=relaxed/simple;
	bh=R0OvMTCArEa6VcQHf94Bjb5fVmkI+2ZMgw6rEAreSHI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cJIxCd9uSycYcKr45bekJvoOu2FdzddozvHRfzU6sBZVF3Iat6HENzgYhDtrp87fDH7Q6y1XUskJO824mEdFjurIaDlLO4QFdvxEJEoPy16SbUe4SLZFDdUEm+u2kaWhZlXAHc6gZwPljvFas0O7LpstK1vX+xBguxcVAJNV3b0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=hgUoysgV; arc=pass smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-38e9653b580so137832071fa.2
        for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 02:35:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777455348; cv=none;
        d=google.com; s=arc-20240605;
        b=eVIEpIsCFL9EwP6E/jCYYXOzjHwePWcYc3KJiN7aYjR38dijI7BEXOH3eRNUlfWwb+
         WBT179h7EZitA60kV9T3TSsZ5JEUnMJ0F2SQyUkZdHKa2qLNKk58lXTOzL9cZZVo3gHF
         uUCJc7N8eVhi0NoKfThAcF/eil25aOfVOsEVXUlyNYFMcrhrMEzikjubvf5fMTapGVwr
         NLIrxZ7GlnkTX7ktverDPrYRxv1mcTrP+r++1aea0uhskT+TaHcxEV4OGUdHT3F8soiT
         bU1FikSUpTD/CvNXeXSYu8Yk8krYWOMdqBE15HGK0J7TyjugL2ytSJkpPcpiWm+pNarE
         Xl3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=euQZZG6zQp/9wRvxqq+lTd5t7Vj1Lm8yoSr7I+5xZqI=;
        fh=FfOgotzw2omV0UvXB88QFBK0UrcpF9/UFzGz1QxEGgk=;
        b=PJa0FLP70WT36g9Bycrx5SDQoD/t2m5ry4q5MgQCeMQS1zQX+vNu1X25gNaPPsXyJF
         Cy7IzOSU+HcldSIYv1gaNAdZrIl+OQq0EP6M6d4HGj3oSeQdrRcK2c6erFOraypBcQOw
         kp9+ifjZ8BiescBk58c5EBEprWsD7wMWJzUjGhvtrDZcdYCLN8BgEG/Of17LQYmBxY2Z
         EMPXJzTyuf8A8aLYs9EJ2v3/+f4rbzWMe1xBa/p3bxPHZIi95EVJMIMR7CwQPTsiHTJb
         k3tEzKeHmJ2lPwMLrtCMa/L/6pvL116aDsuv5IleR551bkZo3rQfiDoFhPAYKU9y+GSR
         oU0g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777455348; x=1778060148; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=euQZZG6zQp/9wRvxqq+lTd5t7Vj1Lm8yoSr7I+5xZqI=;
        b=hgUoysgVb37C9xdKF760wpOB7FKTePyg/UHbY31YkIaQmLYy9wY9bDJoGTu8Lm3QoM
         bw7xNCKNTed9vTdQ0Cm0Gpd60zpgCOiEnhWkwM7gnJibkcncfAvhamAwOq9J57+lfy01
         L3ko5fjvtWx+JFlnz3Q8oGZEjIYVrvfS8TMO4qyhVe6XTafCTKmxBqJz8WdWg6Vj40ji
         1U4z1vAEH+sCGVydBRwD5kOEqEZKWzBW830KnF1KUcajwWVAExGphHwbd7Gc/z4GseA/
         ohabZdJWuNeAIjzCXQialyJb6h5n6nwv9SAvP15GUpntzX6LfvBJKSMpS0y8CWN5tCTV
         q8hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777455348; x=1778060148;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=euQZZG6zQp/9wRvxqq+lTd5t7Vj1Lm8yoSr7I+5xZqI=;
        b=FL8DqgHim07VDpSjLdVwEIBA/Gjm1nv9X2z6EUhVs5AD9WxHZbTdgHfsLHfEM69FNC
         4nNl6SqqQnhCq0HD4B1p5hJfNmZOfG5i+BKy8MHgFXC141oAMz3Aypx/dWJmf9KZHEfm
         lCAIjCHhH9jGshC8Sp5Ax78THng61ZIJTNBk1KiVmIA/jzEuefwGIjKA9VFtvZnrNW99
         7ODJzzjpH3AQneY7ooiaydPvi+EK/H8IBreHe8ByjPLZdYKGFx8tgICLpQt0VvYZgsRP
         8QKi7ARTqgNoei7seVEiFW0U3cpKZEdRM2jkxWzlmyX30JgzYjTcDDT/sMsmosniSRyq
         RSkQ==
X-Forwarded-Encrypted: i=1; AFNElJ+WDCaJNLfjYgmJbo1j6C84KQ/XLNDfaVTg9dYQKDCQ6QtIJAlW82zdC2fKgqCC+nu8LhPwYg4PrWc=@vger.kernel.org
X-Gm-Message-State: AOJu0YzlqAJfyT3MldHbf6ZotQ564Pz4GznNuDJGGpE6m8Nr2CJsWGbA
	W4MU5iWZ5xZ7OMSaDZq/3c1DNMCe1rv3Nab7cH++VhpXTzY6J+8LnB49nIGtkF48j1Gj6CtLXwS
	qrKq20C4MNKWtPZEvF4b7vhTsJyKXAoIy0mmC7y7j
X-Gm-Gg: AeBDies0nZC5LmEGtjZMOAOgc4uuuyuYd5PRfJckT+QGPyomY2aqkVdh8TA7imCGv0U
	lCQrdV4HmpkhLdYKthqLqskdME6MimQDE8MFMr0f+FHb3XZXzwHOv4BekG7e1UkQgd//jFatNC8
	jgOL7/i8/NT3Ma59ibmTEAQMNZ8wZC0c3/SDfdCNnP1E9KJHgDbAGdyp7FdAVXnN9dDtG6VqHoK
	3dyHdoJwAid+221NKMzGNxJ/W0/GjE8TrkmMmugKwzJm9D9b3fDLYusN87NGTSDmAPIjSOIIMfe
	CB/daenZT24AY1yX/tgBPYL0XR7eEupjhDiy/H/ex5rvK+AlAUy4mZ0y1yMECnSd2l/agJ6xYAn
	RdZbHZD/lyhcjYdLJldRTyaiCi5GG
X-Received: by 2002:a2e:bc11:0:b0:38e:b7ba:106e with SMTP id
 38308e7fff4ca-3924bd35c34mr13008161fa.31.1777455347704; Wed, 29 Apr 2026
 02:35:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260428221058.149538293@kernel.org> <20260428224428.009121296@kernel.org>
In-Reply-To: <20260428224428.009121296@kernel.org>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 29 Apr 2026 11:35:35 +0200
X-Gm-Features: AVHnY4JZrVwQtMXb6Hn_c8EdH4qaAGhGec_kmcU19r2l_sbiixjINIDQ5dbikno
Message-ID: <CACT4Y+ZVmKfHiMCSM6gbRXcc=n-cgCJWUGsxLmg-oV-HGXGMgg@mail.gmail.com>
Subject: Re: [patch 10/10] selftests/rseq: Expand for optimized RSEQ ABI v2
To: Thomas Gleixner <tglx@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Mathias Stearn <mathias@mongodb.com>, 
	Peter Zijlstra <peterz@infradead.org>, linux-man@vger.kernel.org, 
	Mark Rutland <mark.rutland@arm.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Chris Kennelly <ckennelly@google.com>, regressions@lists.linux.dev, 
	Ingo Molnar <mingo@kernel.org>, Blake Oler <blake.oler@mongodb.com>, 
	Florian Weimer <fweimer@redhat.com>, Rich Felker <dalias@libc.org>, 
	Matthew Wilcox <willy@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Linus Torvalds <torvalds@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 7EA8F492164
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5451-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dvyukov@google.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,librseq.so:url]

On Wed, 29 Apr 2026 at 01:34, Thomas Gleixner <tglx@kernel.org> wrote:
>
> Update the selftests so they are executed for legacy (32 bytes RSEQ region)
> and optimized RSEQ ABI v2 mode.
>
> Fixes: d6200245c75e ("rseq: Allow registering RSEQ with slice extension")
> Signed-off-by: Thomas Gleixner <tglx@kernel.org>
> Cc: stable@vger.kernel.org

Reviewed-by: Dmitry Vyukov <dvyukov@google.com>

> ---
>  tools/testing/selftests/rseq/Makefile              |    7 ++-
>  tools/testing/selftests/rseq/check_optimized.c     |   17 +++++++++
>  tools/testing/selftests/rseq/param_test.c          |   22 +++++++----
>  tools/testing/selftests/rseq/run_param_test.sh     |   39 +++++++++++++++++++++
>  tools/testing/selftests/rseq/run_timeslice_test.sh |   14 +++++++
>  tools/testing/selftests/rseq/slice_test.c          |    2 -
>  6 files changed, 89 insertions(+), 12 deletions(-)
>
> --- a/tools/testing/selftests/rseq/Makefile
> +++ b/tools/testing/selftests/rseq/Makefile
> @@ -17,11 +17,11 @@ OVERRIDE_TARGETS = 1
>  TEST_GEN_PROGS = basic_test basic_percpu_ops_test basic_percpu_ops_mm_cid_test param_test \
>                 param_test_benchmark param_test_compare_twice param_test_mm_cid \
>                 param_test_mm_cid_benchmark param_test_mm_cid_compare_twice \
> -               syscall_errors_test slice_test legacy_check
> +               syscall_errors_test slice_test legacy_check check_optimized
>
>  TEST_GEN_PROGS_EXTENDED = librseq.so
>
> -TEST_PROGS = run_param_test.sh run_syscall_errors_test.sh run_legacy_check.sh
> +TEST_PROGS = run_param_test.sh run_syscall_errors_test.sh run_legacy_check.sh run_timeslice_test.sh
>
>  TEST_FILES := settings
>
> @@ -62,3 +62,6 @@ include ../lib.mk
>
>  $(OUTPUT)/slice_test: slice_test.c $(TEST_GEN_PROGS_EXTENDED) rseq.h rseq-*.h
>         $(CC) $(CFLAGS) $< $(LDLIBS) -lrseq -o $@
> +
> +$(OUTPUT)/check_optimized: check_optimized.c $(TEST_GEN_PROGS_EXTENDED) rseq.h rseq-*.h
> +       $(CC) $(CFLAGS) $< $(LDLIBS) -lrseq -o $@
> --- /dev/null
> +++ b/tools/testing/selftests/rseq/check_optimized.c
> @@ -0,0 +1,17 @@
> +// SPDX-License-Identifier: LGPL-2.1
> +#define _GNU_SOURCE
> +#include <assert.h>
> +#include <sched.h>
> +#include <signal.h>
> +#include <stdio.h>
> +#include <string.h>
> +#include <sys/time.h>
> +
> +#include "rseq.h"
> +
> +int main(int argc, char **argv)
> +{
> +       if (__rseq_register_current_thread(true, false))
> +               return -1;
> +       return 0;
> +}
> --- a/tools/testing/selftests/rseq/param_test.c
> +++ b/tools/testing/selftests/rseq/param_test.c
> @@ -38,7 +38,7 @@ static int opt_modulo, verbose;
>  static int opt_yield, opt_signal, opt_sleep,
>                 opt_disable_rseq, opt_threads = 200,
>                 opt_disable_mod = 0, opt_test = 's';
> -
> +static bool opt_rseq_legacy;
>  static long long opt_reps = 5000;
>
>  static __thread __attribute__((tls_model("initial-exec")))
> @@ -481,7 +481,7 @@ void *test_percpu_spinlock_thread(void *
>         long long i, reps;
>
>         if (!opt_disable_rseq && thread_data->reg &&
> -           rseq_register_current_thread())
> +           __rseq_register_current_thread(true, opt_rseq_legacy))
>                 abort();
>         reps = thread_data->reps;
>         for (i = 0; i < reps; i++) {
> @@ -558,7 +558,7 @@ void *test_percpu_inc_thread(void *arg)
>         long long i, reps;
>
>         if (!opt_disable_rseq && thread_data->reg &&
> -           rseq_register_current_thread())
> +           __rseq_register_current_thread(true, opt_rseq_legacy))
>                 abort();
>         reps = thread_data->reps;
>         for (i = 0; i < reps; i++) {
> @@ -712,7 +712,7 @@ void *test_percpu_list_thread(void *arg)
>         long long i, reps;
>         struct percpu_list *list = (struct percpu_list *)arg;
>
> -       if (!opt_disable_rseq && rseq_register_current_thread())
> +       if (!opt_disable_rseq && __rseq_register_current_thread(true, opt_rseq_legacy))
>                 abort();
>
>         reps = opt_reps;
> @@ -895,7 +895,7 @@ void *test_percpu_buffer_thread(void *ar
>         long long i, reps;
>         struct percpu_buffer *buffer = (struct percpu_buffer *)arg;
>
> -       if (!opt_disable_rseq && rseq_register_current_thread())
> +       if (!opt_disable_rseq && __rseq_register_current_thread(true, opt_rseq_legacy))
>                 abort();
>
>         reps = opt_reps;
> @@ -1105,7 +1105,7 @@ void *test_percpu_memcpy_buffer_thread(v
>         long long i, reps;
>         struct percpu_memcpy_buffer *buffer = (struct percpu_memcpy_buffer *)arg;
>
> -       if (!opt_disable_rseq && rseq_register_current_thread())
> +       if (!opt_disable_rseq && __rseq_register_current_thread(true, opt_rseq_legacy))
>                 abort();
>
>         reps = opt_reps;
> @@ -1258,7 +1258,7 @@ void *test_membarrier_worker_thread(void
>         const int iters = opt_reps;
>         int i;
>
> -       if (rseq_register_current_thread()) {
> +       if (__rseq_register_current_thread(true, opt_rseq_legacy)) {
>                 fprintf(stderr, "Error: rseq_register_current_thread(...) failed(%d): %s\n",
>                         errno, strerror(errno));
>                 abort();
> @@ -1323,7 +1323,7 @@ void *test_membarrier_manager_thread(voi
>         intptr_t expect_a = 0, expect_b = 0;
>         int cpu_a = 0, cpu_b = 0;
>
> -       if (rseq_register_current_thread()) {
> +       if (__rseq_register_current_thread(true, opt_rseq_legacy)) {
>                 fprintf(stderr, "Error: rseq_register_current_thread(...) failed(%d): %s\n",
>                         errno, strerror(errno));
>                 abort();
> @@ -1475,6 +1475,7 @@ static void show_usage(int argc, char **
>         printf("        [-D M] Disable rseq for each M threads\n");
>         printf("        [-T test] Choose test: (s)pinlock, (l)ist, (b)uffer, (m)emcpy, (i)ncrement, membarrie(r)\n");
>         printf("        [-M] Push into buffer and memcpy buffer with memory barriers.\n");
> +       printf("        [-O] Test with optimized RSEQ\n");
>         printf("        [-v] Verbose output.\n");
>         printf("        [-h] Show this help.\n");
>         printf("\n");
> @@ -1602,6 +1603,9 @@ int main(int argc, char **argv)
>                 case 'M':
>                         opt_mo = RSEQ_MO_RELEASE;
>                         break;
> +               case 'L':
> +                       opt_rseq_legacy = true;
> +                       break;
>                 default:
>                         show_usage(argc, argv);
>                         goto error;
> @@ -1618,7 +1622,7 @@ int main(int argc, char **argv)
>         if (set_signal_handler())
>                 goto error;
>
> -       if (!opt_disable_rseq && rseq_register_current_thread())
> +       if (!opt_disable_rseq && __rseq_register_current_thread(true, opt_rseq_legacy))
>                 goto error;
>         if (!opt_disable_rseq && !rseq_validate_cpu_id()) {
>                 fprintf(stderr, "Error: cpu id getter unavailable\n");
> --- a/tools/testing/selftests/rseq/run_param_test.sh
> +++ b/tools/testing/selftests/rseq/run_param_test.sh
> @@ -34,6 +34,11 @@ REPS=1000
>  SLOW_REPS=100
>  NR_THREADS=$((6*${NR_CPUS}))
>
> +# Prevent GLIBC from registering RSEQ so the selftest can run in legacy and
> +# performance optimized mode.
> +GLIBC_TUNABLES="${GLIBC_TUNABLES:-}:glibc.pthread.rseq=0"
> +export GLIBC_TUNABLES
> +
>  function do_tests()
>  {
>         local i=0
> @@ -103,6 +108,40 @@ function inject_blocking()
>         NR_LOOPS=
>  }
>
> +echo "Testing in legacy RSEQ mode"
> +echo "Yield injection (25%)"
> +inject_blocking -m 4 -y -L
> +
> +echo "Yield injection (50%)"
> +inject_blocking -m 2 -y -L
> +
> +echo "Yield injection (100%)"
> +inject_blocking -m 1 -y -L
> +
> +echo "Kill injection (25%)"
> +inject_blocking -m 4 -k -L
> +
> +echo "Kill injection (50%)"
> +inject_blocking -m 2 -k -L
> +
> +echo "Kill injection (100%)"
> +inject_blocking -m 1 -k -L
> +
> +echo "Sleep injection (1ms, 25%)"
> +inject_blocking -m 4 -s 1 -L
> +
> +echo "Sleep injection (1ms, 50%)"
> +inject_blocking -m 2 -s 1 -L
> +
> +echo "Sleep injection (1ms, 100%)"
> +inject_blocking -m 1 -s 1 -L
> +
> +./check_optimized || {
> +    echo "Skipping optimized RSEQ mode test. Not supported";
> +    exit 0
> +}
> +
> +echo "Testing in optimized RSEQ mode"
>  echo "Yield injection (25%)"
>  inject_blocking -m 4 -y
>
> --- /dev/null
> +++ b/tools/testing/selftests/rseq/run_timeslice_test.sh
> @@ -0,0 +1,14 @@
> +#!/bin/bash
> +# SPDX-License-Identifier: GPL-2.0+
> +
> +# Prevent GLIBC from registering RSEQ so the selftest can run in legacy
> +# and performance optimized mode.
> +GLIBC_TUNABLES="${GLIBC_TUNABLES:-}:glibc.pthread.rseq=0"
> +export GLIBC_TUNABLES
> +
> +./check_optimized || {
> +    echo "Skipping optimized RSEQ mode test. Not supported";
> +    exit 0
> +}
> +
> +./slice_test
> --- a/tools/testing/selftests/rseq/slice_test.c
> +++ b/tools/testing/selftests/rseq/slice_test.c
> @@ -124,7 +124,7 @@ FIXTURE_SETUP(slice_ext)
>  {
>         cpu_set_t affinity;
>
> -       if (rseq_register_current_thread())
> +       if (__rseq_register_current_thread(true, false))
>                 SKIP(return, "RSEQ not supported\n");
>
>         if (prctl(PR_RSEQ_SLICE_EXTENSION, PR_RSEQ_SLICE_EXTENSION_SET,
>

