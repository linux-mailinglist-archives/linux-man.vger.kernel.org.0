Return-Path: <linux-man+bounces-5448-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CANDO7R8Wm3kgEAu9opvQ
	(envelope-from <linux-man+bounces-5448-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 11:39:58 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2355D492210
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 11:39:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EF823303753C
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 09:36:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C24C43C456F;
	Wed, 29 Apr 2026 09:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="IWHoOlk4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2B43B27CA
	for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 09:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.171
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777455318; cv=pass; b=tBsef0jg+5ozV5Xg5PZkYy07jrEKBU4NQQmbpJjNHqHF9s3nNojzy2gOlQLc7/Rk0EbyVfyglaa2U78VCaFXGHnLJRZfL5veH0pJ/jLe078tsBfwvBfLRWINKyWlnoujhviKULHcLg4JSWUel1aW/5jVhB87w79FflIiBwojyMg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777455318; c=relaxed/simple;
	bh=jZK37VZshc9OTqRuTuWNDdNF5ufm1Ubrk/MXTADk71w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TCmUWAOKxI6e7dGJ6Hg6uO1+Jt9kqtRfqUQwW36Vsf6uDQ32qZdmhOuOgSPD9wZAqAvSLSkvI6jIjSxfOfHezFwxDrkHyGtBlZbPU68ucfU6b6uUN3EomIDjg+1NNUuHLGzqMxZmpYNtUZ6uWBOeyIMJ+Uivg0rSrsZxTxoSrkI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=IWHoOlk4; arc=pass smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-38be5e86918so138347851fa.3
        for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 02:35:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777455315; cv=none;
        d=google.com; s=arc-20240605;
        b=AaxEklOukMxYRnOfl0PfVi/n9LuV6zOGExXdKBM8lU9bUcFhqm8YAkKJX6vthOSy6r
         toCMFfVL8MwGySmBf8zTPXkAyXeQX+ySO1LOMfgevkmdt41pzjxe4uGxTJHsRtPsxNaQ
         QnSWglTZb6M02G0Gtt+62x9GBCr6pdJqdl18yHb0ocH0GcvFqIc4KArTxiJLZmS2Q8Ed
         vs2XKXMLawLM6WTg5tHmoa1hSAPyyX3ksIiK5yMN1+nQ2mgoC4Gn8EYC7zNjn6afHXRj
         xeNFwWpGj2T2yw2aitZGzUf9lU+HoW1bzy0af0TL2p6AarOyZCyr47BKzWVHeVSZXSTy
         GQ9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CTqPTZBHD/9uChXCry7snoC28fLQYhte0n0Yls8tPQA=;
        fh=ZZYFamuDeE/tY2F3ccbpt5I171VB5mN03T6KCNOg5Ww=;
        b=N6/AO7JX0bj0Otj+UbFgmol7LfnkxlNyZEKTL8l5LupjsKVVGtJ0vuk0DQRh+K6SnO
         T3nbXPUJcKG2X0CvaI8mho2pY7tuEz5QgfolG1WrzLmJZjE1bNUA14j7v+AYQ+bSgxjo
         /r8U3Ko6EjgM+vStfqHvArCHEPiTbdcuTBo0gx5FiJTp+ZYxiZKMERQGk+GkDNQNKEaF
         Fh9brSbDPAp1yi3OXfnDl+8HV9+2++eRHDwLKsxiUo3rdx/wDfdbdu1aA0AIUcCS00Jd
         Q/D5mfRiq/DkYt+Q1084W2U8YCAjV7EsHlslu4oRRzvIyPyojMCW7QM6oEk+Edi6oDNZ
         HMhw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777455315; x=1778060115; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CTqPTZBHD/9uChXCry7snoC28fLQYhte0n0Yls8tPQA=;
        b=IWHoOlk4CMWwjyrnI6THyP0WxJUl57JptxaC87eLnfn1W4j4o+bAVoGegnnQWzXLc1
         hkrVlvzKPLcl4nSOKR2I3X6itF7q3+dMqlL8yEEXXHN5LzU8revkTvcy3NddYZL0yTTl
         fBjF9BqQ09gbgwztKSZGY8FyEwF4vuTCYO1A/gFmUN73Cop8H5bt59VlL+Ht7E4Dkl2x
         3NzMDDjuSaAkoSBc8Cctwc9wMY4RlwmiwEgw80Q4q5bn13Ld4vswFZsSQ979x8GlaRGq
         9WjgyYE+6C2+S6W8pGMQNvN7C+rWtaE+BgUXIQaNFxW6emlPp90Zxxh3huOLFhFJBshy
         hApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777455315; x=1778060115;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CTqPTZBHD/9uChXCry7snoC28fLQYhte0n0Yls8tPQA=;
        b=CWVkZp9cguENbxo7LQEpRnPANLJR3voPihhLHu/r9QIASzDhs8lXMAB0E8/WqR/SCk
         0yrpXV7bimmaylxTgtNpHErDOA9nd/sHebPsNRp3Uh8Ty/OimG8ApQmcfEbPwAT9aALx
         aVJ7Z/cw6nrd/9LepaDjFhlJei832GA7sfyQPreSyrTjdIhbwRnCS3qLYniw6tBpEBJo
         b9N81jtRpD3ihpKtiCDHfm80M0HqvG1VB0a9RPiLIkHxg/qfM4DBH3CDQmnWuX/ymtJU
         Y0C23JzHJynNky6E9s0EPxL3ATLbyKIFTVASg4K29PaDoQhXvAREGMmvy3MJghUsMQcD
         dmrw==
X-Forwarded-Encrypted: i=1; AFNElJ95gWCVeJBRC9hxb+vjXIzzB+QfAdlSQIIjikIIGHe2zt1XP4zDLdnZPbFi49SUHG1HcKpZMtEE0RM=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmt4yL4NPsoprwZL2CsllIBgQt30zlM+ww7KczRm/ZuN7Fnij4
	xneVfb5JPH2FrHmsKPVE/bG6oRKJPlB9VoczJ4Z+T1n3UXj9hdfDLZW8PThMuzQuFHNdIJSJGn9
	r6b/oIKIiRTiI3ehSNDa0vDdUebSKyy6COZXAI0I8
X-Gm-Gg: AeBDieuAc++zOYHAPk5hKvaxz9xlMXqUkUuhe0XS7io4Ueaf9KV4g6XhHhy4D9y7Ou1
	Kc6+7RrdyfTJ8AdAdbvFnlKDVaj+ctky3dORsMwJTJ9tWNWAo6cnkS86un4nRotqoeL496H6ayw
	e+q6jG45LsdDQbNvouoxtt2asUypc9y2e8RoMIPAA6xBPRK/anjMzYvskhY7KOvurLE1Nq1WL+T
	eTj/yr26nqLHARQiXX5x5eCvTBH0t8nJ7iua7VYrHYMgbDMOakA06RXUKlBbcI4hCMqcna1lg+B
	E++UePl1mzQB0xeyzPkkY+IZRqF0VBqqcERYD6S65ItNlQYOoPsMGh9KlLQt0kICO9jH5TSv2RB
	DeMGr3lWRK2NqqTApGA==
X-Received: by 2002:a2e:be26:0:b0:38e:85a3:fdf5 with SMTP id
 38308e7fff4ca-3924bcb5941mr14376271fa.18.1777455314041; Wed, 29 Apr 2026
 02:35:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260428221058.149538293@kernel.org> <20260428224427.764705536@kernel.org>
In-Reply-To: <20260428224427.764705536@kernel.org>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 29 Apr 2026 11:35:02 +0200
X-Gm-Features: AVHnY4IMP8uHm-SXEy98XanPm7zT4kZoyO_P9yeQ1Vn6pCoq6MY0VbVg44eXqdU
Message-ID: <CACT4Y+YEyR9X0D6ap94ttUv3byM7gSn+zJUsfGQ69-eSREnBPw@mail.gmail.com>
Subject: Re: [patch 07/10] selftests/rseq: Validate legacy behavior
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
X-Rspamd-Queue-Id: 2355D492210
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5448-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,librseq.so:url,mail.gmail.com:mid,run_syscall_errors_test.sh:url,run_param_test.sh:url,run_legacy_check.sh:url]

On Wed, 29 Apr 2026 at 01:34, Thomas Gleixner <tglx@kernel.org> wrote:
>
> The RSEQ legacy mode behavior requires that the ID fields in the rseq
> region are unconditionally updated on every context switch and before
> signal delivery even if not required by the ABI specification.
>
> To ensure that this behavior is preserved for legacy users in the future,
> add a test which validates that with a sleep() and a signal sent to self.
>
> Provide a run script which prevents GLIBC from registering a RSEQ region,
> so that the test can register it's own legacy sized region.
>
> Fixes: 566d8015f7ee ("rseq: Avoid CPU/MM CID updates when no event pending")
> Signed-off-by: Thomas Gleixner <tglx@kernel.org>
> Cc: stable@vger.kernel.org

Reviewed-by: Dmitry Vyukov <dvyukov@google.com>

> ---
>  tools/testing/selftests/rseq/Makefile            |    4 -
>  tools/testing/selftests/rseq/legacy_check.c      |   65 +++++++++++++++++++++++
>  tools/testing/selftests/rseq/run_legacy_check.sh |    4 +
>  3 files changed, 71 insertions(+), 2 deletions(-)
>
> --- a/tools/testing/selftests/rseq/Makefile
> +++ b/tools/testing/selftests/rseq/Makefile
> @@ -17,11 +17,11 @@ OVERRIDE_TARGETS = 1
>  TEST_GEN_PROGS = basic_test basic_percpu_ops_test basic_percpu_ops_mm_cid_test param_test \
>                 param_test_benchmark param_test_compare_twice param_test_mm_cid \
>                 param_test_mm_cid_benchmark param_test_mm_cid_compare_twice \
> -               syscall_errors_test slice_test
> +               syscall_errors_test slice_test legacy_check
>
>  TEST_GEN_PROGS_EXTENDED = librseq.so
>
> -TEST_PROGS = run_param_test.sh run_syscall_errors_test.sh
> +TEST_PROGS = run_param_test.sh run_syscall_errors_test.sh run_legacy_check.sh
>
>  TEST_FILES := settings
>
> --- /dev/null
> +++ b/tools/testing/selftests/rseq/legacy_check.c
> @@ -0,0 +1,65 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#ifndef _GNU_SOURCE
> +#define _GNU_SOURCE
> +#endif
> +
> +#include <errno.h>
> +#include <signal.h>
> +#include <stdint.h>
> +#include <unistd.h>
> +
> +#include "rseq.h"
> +
> +#include "../kselftest_harness.h"
> +
> +FIXTURE(legacy)
> +{
> +};
> +
> +static int cpu_id_in_sigfn = -1;
> +
> +static void sigfn(int sig)
> +{
> +       struct rseq_abi *rs = rseq_get_abi();
> +
> +       cpu_id_in_sigfn = rs->cpu_id_start;
> +}
> +
> +FIXTURE_SETUP(legacy)
> +{
> +       int res = __rseq_register_current_thread(true, true);
> +
> +       switch (res) {
> +       case -ENOSYS:
> +               SKIP(return, "RSEQ not enabled\n");
> +       case -EBUSY:
> +               SKIP(return, "GLIBC owns RSEQ. Disable GLIBC RSEQ registration\n");
> +       default:
> +               ASSERT_EQ(res, 0);
> +       }
> +
> +       ASSERT_NE(signal(SIGUSR1, sigfn), SIG_ERR);
> +}
> +
> +FIXTURE_TEARDOWN(legacy)
> +{
> +}
> +
> +TEST_F(legacy, legacy_test)
> +{
> +       struct rseq_abi *rs = rseq_get_abi();
> +
> +       ASSERT_NE(rs, NULL);
> +
> +       /* Overwrite rs::cpu_id_start */
> +       rs->cpu_id_start = -1;
> +       sleep(1);
> +       ASSERT_NE(rs->cpu_id_start, -1);
> +
> +       rs->cpu_id_start = -1;
> +       ASSERT_EQ(raise(SIGUSR1), 0);
> +       ASSERT_NE(rs->cpu_id_start, -1);
> +       ASSERT_NE(cpu_id_in_sigfn, -1);
> +}
> +
> +TEST_HARNESS_MAIN
> --- /dev/null
> +++ b/tools/testing/selftests/rseq/run_legacy_check.sh
> @@ -0,0 +1,4 @@
> +#!/bin/bash
> +# SPDX-License-Identifier: GPL-2.0
> +
> +GLIBC_TUNABLES="${GLIBC_TUNABLES:-}:glibc.pthread.rseq=0" ./legacy_check
>

