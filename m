Return-Path: <linux-man+bounces-5431-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJNOLDFG8WkcfgEAu9opvQ
	(envelope-from <linux-man+bounces-5431-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 01:43:45 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCDF48D64B
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 01:43:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C64F3285314
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 23:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D0423D6487;
	Tue, 28 Apr 2026 23:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="empWNvUD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BF273CD8D3;
	Tue, 28 Apr 2026 23:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777419216; cv=none; b=L9up/RqHKbsS5VR7pNWte+eB5iuL8fGc7N4gNJ5W0nKNq7FJpC7iGmpYMEHNeFg/xik72oXPUkVUerq3jXnAkz87IFf/X/esb8GS/AV8A+RxGvxKXqkaZMjXWtJ1AR1SN6oYv+QQ7WBA2TemkKb8YAINrP/j4yR1nYIXZBIsW6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777419216; c=relaxed/simple;
	bh=QhWQTeIjll8FnQkwo7iOYgrMHne1/N0D/l+10UovomU=;
	h=Date:Message-ID:From:To:Cc:Subject; b=Ww0LOxiIl/qEiG0a8j74JJz69geUKM0NZ2fDlz/3pbVrTscSFU0t5jRiXAC1QDP+6UNMLRnsKCd/GsvGDulkReYPCr0q6vb/wufMB3IIjhTdUiLiGtOrvNfsuf8FqS5xJ+UcPitbtTgkxhKWT48+yn9aAKB+99dYpuybKc7V0MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=empWNvUD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0D1FC2BCB7;
	Tue, 28 Apr 2026 23:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777419215;
	bh=QhWQTeIjll8FnQkwo7iOYgrMHne1/N0D/l+10UovomU=;
	h=Date:From:To:Cc:Subject:From;
	b=empWNvUDe4gJU3gNTAOyjwtn0lHC17xvNPK+0cAdzsCCyPzw+OWSQ6nGhpzaXq5fJ
	 lggw8e43aS0jIkbmOGntojha4NSzClAlQ/hygBDeqnwDeqNnMc/nD7lBvGCkGpSLtx
	 qt/ZhUyx1vcyHbiQz0oGXO++x/HaPhTtFXggVSqUtFDeLSHVdQFkFov+/Y3qpMnYuV
	 BoSeALlsKI2EotB06jtumi6V3OnP7yeKHTDRHXpYxh0K2FzZRtwqfila7Xt4GcuOHs
	 2YKsgVVeS4KzxZHZLtqJiHraFqNeusr/t3cvmHp9GmhhcD+p950Rin6HEbQQSGykNI
	 uG6q0+I24XsCQ==
Date: Wed, 29 Apr 2026 01:33:31 +0200
Message-ID: <20260428221058.149538293@kernel.org>
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
Subject: [patch 00/10] rseq: Cure refactoring regressions 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 1CCDF48D64B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	SUBJECT_ENDS_SPACES(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5431-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

Mathias reported that as of Linux 6.19 TCMalloc fails to work with RSEQ,
which is related to the non-ABI conforming usage of RSEQ by TCMalloc:

  https://lore.kernel.org/CAHnCjA25b+nO2n5CeifknSKHssJpPrjnf+dtr7UgzRw4Zgu=oA@mail.gmail.com

How we got there:

  1) The original RSEQ implementation updates the rseq::cpu_id_start field
     in user space more or less unconditionally on every exit to user
     space, whether the CPU/MMCID have been changed or not.

     That went unnoticed for years because nothing used rseq aside of
     Google and TCMalloc. Once glibc registered rseq, this resulted in a
     up to 15% performance penalty for syscall heavy workloads.

  2) The rseq::cpu_id_start field is documented as read only for user
     space in the ABI contract and guaranteed to be updated by the
     kernel when a task is migrated to a different CPU.

  3) TCMalloc abuses the sub-optimal implementation (see #1) and scribbles
     over rseq::cpu_id_start for their own nefarious purposes.

  4) As a consequence of #4 tcmalloc cannot be used together with any
     other facility/library which wants to utilize the ABI guaranteed
     properties of rseq::cpu_id_start in the same application.

  5) tcmalloc violates the ABI from day one and has since refused to
     address the problem despite being offered a kernel side rseq
     extension to solve it many years ago and despite claiming to
     be happy to accomodate.

  6) When addressing the performance issues of RSEQ the unconditional
     update stopped to exist under the valid assumption that the kernel has
     only to satisfy the guaranteed ABI properties, which in turn broke
     TCMalloc.

Due to that everyone is in a hard place and up a creek without a paddle.

After various solutions had been discussed and explored, it turned out that
this can be solved sanely with the following focus points:

  1) Keep it as simple as possible and avoid expensive workarounds for the
     sake of TCMalloc

  2) [Re]enable the wider ecosystem to leverage the full potential of RSEQ

There are some unavoidable downsides which come with this:

  1) TCMalloc compatible mode is mutually exclusive with the performance
     optimizations which broke it in the first place

  2) As a collateral damage older GLIBC versions, which do not implement
     the variable sized RSEQ registration suffer from #1

  3) Existing (time slice extensions) and future extended RSEQ features
     can't be enabled for #1 and #2

The required effort for solving these problems, the resulting maintenance
burdens and the thereby inflicted road blocks for further improvements on
the v2 ABI requirements are severe enough to accept that the unwillingness
of a single entity to collaborate with the larger ecosystem for many years
causes the collateral damage described in #2 and therefore #3.

As Linus decreed the onus is on the lack of ABI compliance enforcement in
the original RSEQ kernel implementation and the clever abuse is fine.
That's technically correct, but in the context of the larger ecosystem a
fundamentally flawed decision. Though that's a completely different
discussion to have as it affects the long term sustainability of the Open
Source ecosystem in general and the ability to protect it against rogue
actors, which are thereby officialy entitled to hold a whole ecosystem
hostage and force the people who provide them their operational base to go
out on a limb to make progress. Despite public statements that they are
aware of the ABI violations and "happy" to adjust as the kernel side
evolves. Truly clever by some definition of clever.

Back to the technical issues and the solution.

Thanks to the laziness or lack of maintenance of various architectures the
uptake of the generic entry code infrastructure is limited.

That caused the optimization rework to keep the original code around pretty
much unmodified plus-minus a few trivial details. So far the optimized code
has been written so that the original code paths are optimized out by the
compiler via compile time constant conditions (Kconfig options).

That allows to replace these compile time constant conditions by runtime
evaluations depending on the ABI mode of RSEQ. With some effort it was
possible to reduce the impact of those runtime conditionals to vanish in
the noise of performance counter based observations.

That's the easy part. The more interesting question was how to distinguish
between a v1 (legacy) and v2 (optimized and extended feature enabled) RSEQ
registration to avoid putting the whole ecosystem back into the performance
stone age.

This came with two options:

     1) A new registration feature flag, which would cause the whole
     	ecosystem to adopt including the resulting consequences for CRIU
     	and others.

     2) Make the ABI variant depend on the registration size.

#2 turned out to be the least horrible choice.

The original RSEQ implementation, which TCMalloc depends on, registers a 32
byte region (ORIG_RSEG_SIZE). This region has a 32 byte alignment
requirement.

The extension safe newer variant exposes the kernel RSEQ feature size via
getauxval(AT_RSEQ_FEATURE_SIZE) and the alignment requirement via
getauxval(AT_RSEQ_ALIGN). The alignment requirement is that the registered
RSEQ region is aligned to the next power of two of the feature size. The
kernel currently has a feature size of 33 bytes, which means the alignment
requirement is 64 bytes.

The TCMalloc RSEQ region is embedded into a cache line aligned data
structure starting at offset 32 bytes so that bytes 28-31 and the
cpu_id_start field at bytes 32-35 form a 64-bit little endian pointer with
the top-most bit (63 set) to check whether the kernel has overwritten
cpu_id_start with an actual CPU id value, which is guaranteed to not have
the top most bit set.

As this is part of TCMalloc's performance tuned magic, it's a pretty safe
assumption, that TCMalloc won't use a larger RSEQ size.

This allows the kernel to declare that registrations with a size greater
than the original size of 32 bytes, which is the case since time slice
extensions got introduced, as RSEQ ABI v2 with the following differences to
the original behaviour:

  1) Unconditional updates of the user read only fields (CPU, node, MMCID)
     are removed. Those fields are only updated on registration, task
     migration and MMCID changes.

  2) Unconditional evaluation of the criticial section pointer is
     removed. It's only evaluated when user space was interrupted and was
     scheduled out or before delivering a signal in the interrupted
     context.

  3) The read/only requirement of the ID fields is enforced. When the
     kernel detects that userspace manipulated the fields, the process is
     terminated. This ensures that multiple entities (libraries) can
     utilize RSEQ without interfering.

  4) Todays extended RSEQ feature (time slice extensions) and future
     extensions are only enabled in the v2 enabled mode.

Registrations with the original size of 32 bytes operate in backwards
compatible legacy mode without performance improvements and extended
features.

The following series implements exactly this and is based on v7.1-rc1. It
applies cleanly to v7.0 and would need some minor tweaks to be backported
to the already EOL v6.19.y kernel.

It's also available from git with the extra benefit that the git branch
contains also the related ARM64 fix, which affects not just the TCMalloc
usage base for the conveniance of testers.

    git://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git core/rseq

The combination in this tree survives:

    - The kernel side (adjusted) selftests

    - The provided TCMalloc tests (only partial for ARM64 as the provided
      main TCMalloc tests are x86 only and TCMalloc is impossible to build
      for mere mortals).

Thanks to everyone involved for feedback, suggestions, testing and test
cases!

Thanks,

	tglx
---
 Documentation/userspace-api/rseq.rst               |   94 +++++++++
 include/linux/rseq.h                               |   35 ++-
 include/linux/rseq_entry.h                         |  110 +++++------
 include/linux/rseq_types.h                         |    9 
 include/uapi/linux/rseq.h                          |    5 
 kernel/rseq.c                                      |  209 +++++++++++++--------
 kernel/sched/membarrier.c                          |   11 +
 tools/testing/selftests/rseq/Makefile              |    7 
 tools/testing/selftests/rseq/check_optimized.c     |   17 +
 tools/testing/selftests/rseq/legacy_check.c        |   65 ++++++
 tools/testing/selftests/rseq/param_test.c          |   22 +-
 tools/testing/selftests/rseq/rseq-abi.h            |    7 
 tools/testing/selftests/rseq/rseq.c                |   39 +--
 tools/testing/selftests/rseq/rseq.h                |    8 
 tools/testing/selftests/rseq/run_legacy_check.sh   |    4 
 tools/testing/selftests/rseq/run_param_test.sh     |   39 +++
 tools/testing/selftests/rseq/run_timeslice_test.sh |   14 +
 tools/testing/selftests/rseq/slice_test.c          |   12 -
 18 files changed, 521 insertions(+), 186 deletions(-)



