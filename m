Return-Path: <linux-man+bounces-5414-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SM5iNtVE72kx/gAAu9opvQ
	(envelope-from <linux-man+bounces-5414-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2026 13:13:25 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4075D47184A
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2026 13:13:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B92D30626E2
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2026 11:03:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFBD33B6BFA;
	Mon, 27 Apr 2026 11:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otd0/abj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7058339FCBF;
	Mon, 27 Apr 2026 11:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777287816; cv=none; b=Uo9VDE0C7bjW9b9Ce7lIDmXXvHELmsxhRdjGt8PFE/AjznVcfdzYeHCmMcGNdGGuWv7H1aS4hjah0avh2YbMmCQai5YCuffz/515sDWBTjf5TXDeE/KbERFpEmvp9BkUNNpn5j+lTChBo/8xJ92KCkSmlpy4KsrN13sGpRAjVLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777287816; c=relaxed/simple;
	bh=mfBAB9FOwkm1Dop7GmMwc5djKkLgtg5prbiveNDEdfI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=IeXZmzCGl5FxKv5BafxHNNsJd6X3+XVPLoFZ8lyuT7yAbaJQQGLw1zJ+gUC8E16DGmPdILEuUuWSJ31fdCGx2bXop3WO4Pw9/G9LeqO+yEVOV3UrZAE0vCzviAG3bBwLJljGSvta4/ZzNHZkyZTTT0IpbMI9+l8jRtUdQHnUSuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otd0/abj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 579ACC2BCB6;
	Mon, 27 Apr 2026 11:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777287816;
	bh=mfBAB9FOwkm1Dop7GmMwc5djKkLgtg5prbiveNDEdfI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=otd0/abjUvw83JPGQOA2ciEwz7mgMnJ3o+QFjuaxPsN8ubpwpOxV9sHQbzcm8jOv/
	 2EaWRp+AzJjyJDmuGRGuqtVXjqmLLqRSUYP6qLpo3SmOYNNOUc61RQdmt3SGB/g5D4
	 Dr0LeH5zkb3vAWr0/LJDfuCVK6FPnLHng4CzEjBemuBmrdVfBeVDQCoyB8ii3Bn6X1
	 SHgxf1ryl6sPypmZYS+ccHOZWr1+xdFe7fj2EnwJPbT3aYAhXZ2pKHly5nHzURbFoE
	 8DA0/mz3h362AGfaBATTWHfXod8o5mHpRv3safu6kJ4CvsXEV2xvboDPilL0fE4u/m
	 tTx+VMWL4/K5w==
From: Thomas Gleixner <tglx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Mathias Stearn
 <mathias@mongodb.com>, Dmitry Vyukov <dvyukov@google.com>, Jinjie Ruan
 <ruanjinjie@huawei.com>, linux-man@vger.kernel.org, Mark Rutland
 <mark.rutland@arm.com>, Mathieu Desnoyers
 <mathieu.desnoyers@efficios.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Boqun Feng
 <boqun.feng@gmail.com>, "Paul E. McKenney" <paulmck@kernel.org>, Chris
 Kennelly <ckennelly@google.com>, regressions@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Ingo
 Molnar <mingo@kernel.org>, Blake Oler <blake.oler@mongodb.com>, Rich
 Felker <dalias@libc.org>, Matthew Wilcox <willy@infradead.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Linus Torvalds
 <torvalds@linuxfoundation.org>, criu@lists.linux.dev
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
In-Reply-To: <lhujyts4zr8.fsf@oldenburg.str.redhat.com>
References: <aekPXvvuKHKlETjm@J2N7QTR9R3.cambridge.arm.com>
 <87wlxy22x7.ffs@tglx> <c5331cd6-76c8-430d-978e-fcad164e48f6@huawei.com>
 <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
 <87ik9i0xlj.ffs@tglx>
 <CAHnCjA0UBNXfjHw=Y34OrAyGRNUtVF+zWd3ugyX6pd_mCk8K9w@mail.gmail.com>
 <87a4ut1njh.ffs@tglx>
 <CACT4Y+bBD7uCHXKqGo=epBXeEmsZ67Og2YO9kjNMT3ryjUY_sA@mail.gmail.com>
 <CAHnCjA1LqbaUGkPe79EeP6Mpaki8QWeR-JBSbrG0z6pTm9CmUg@mail.gmail.com>
 <87v7dgzbo7.ffs@tglx>
 <20260424150318.GE641209@noisy.programming.kicks-ass.net>
 <87se8kywhb.ffs@tglx> <87jyttz8cf.ffs@tglx>
 <lhujyts4zr8.fsf@oldenburg.str.redhat.com>
Date: Mon, 27 Apr 2026 13:03:32 +0200
Message-ID: <87h5owzmuz.ffs@tglx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Queue-Id: 4075D47184A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.34 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5414-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,body];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[infradead.org,mongodb.com,google.com,huawei.com,vger.kernel.org,arm.com,efficios.com,kernel.org,gmail.com,lists.linux.dev,lists.infradead.org,libc.org,linuxfoundation.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On Mon, Apr 27 2026 at 09:40, Florian Weimer wrote:
> * Thomas Gleixner:
>> The real question is how to differentiate between the legacy and the
>> optimized mode. I have two working variants to achieve that:
>>
>>    1) The fully safe option requires a new flag for RSEQ
>>       registration. It obviously requires a glibc update. (Suggested by
>>       PeterZ)
>
> Without glibc changes, RSEQ would keep working, but with the old,
> problematic performance, right?

Correct.

> If we don't have a notification in the auxiliary vector, we'd have to do
> two system calls at process start, which isn't ideal, but is probably
> not a significant issue, either.
>
> I haven't verified this, but it looks like introducing the flag breaks
> CRIU?  In dump_thread_rseq, we have this:
>
>         if (rseqc.flags != 0) {
>                 pr_err("something wrong with ptrace(PTRACE_GET_RSEQ_CONFIGURATION, %d) flags = 0x%x\n", tid,
>                        rseqc.flags);
>                 return -1;
>         }

Yeah. That'd need to be fixed or work around.

> I suppose a workaround could make this behavior flag a prctl flag.  CRIU
> wouldn't dump and restore that until taught about it.  If the new
> behavior is switched on explicitly by the flag, it would be
> backwards-compatible, except that restoring with unpatched CRIU would
> lead to a performance loss.

It's worse. The flag will also enable extended RSEQ features beyond
mmcid and requires that the registered rseq size is >= offsetof(struct
rseq, end)'

>>    2) Determine the requirements of the registering task via the size of
>>       the registered RSEQ area.
>>
>>       The original implementation, which TCMalloc depends on, registers
>>       a 32 byte region (ORIG_RSEG_SIZE). This region has 32 byte
>>       alignment requirement.
>>
>>       The extension safe newer variant exposes the kernel RSEQ feature
>>       size via getauxval(AT_RSEQ_FEATURE_SIZE) and the alignment
>>       requirement via getauxval(AT_RSEQ_ALIGN). The alignment
>>       requirement is that the registered rseq region is aligned to the
>>       next power of two of the feature size. The kernel currently has a
>>       feature size of 33 bytes, which means the alignment requirement is
>>       64 bytes.
>
> There are still glibc builds in use that do not use AT_RSEQ_ALIGN, and
> instead unconditionally reserve a size of 32.  In some builds, the RSEQ
> area is not aligned to a multiple of 64, which makes glibc
> indistinguishable from tcmalloc.

That's how it is. So with a size of 32 this will fallback to legacy mode
and not unlock the extended features independent of the alignment. The
alignment requirements are:

          Size 32:     32 bytes
          Size >32:    64 bytes

> You could look at the location of the thread pointer relative to the
> RSEQ area at registration to tell them apart, but that is perhaps too
> nasty.

*Blink*

> Switching to the new extensible RSEQ allocation code in older glibc
> builds is not entirely trivial, and I would prefer not doing that.
> Registering with a new flag is comparatively simple, and we could
> backport it, except that it might not be compatible with CRIU.

Neither with CRIU nor with the requirement to support additional
features which require the registered rseq memory size to be at least as
large as the kernel requires. That's why we have AT_RSEQ_FEATURE_SIZE.

Otherwise we'd end up with runtime conditionals for every single
feature, which just adds more gunk into the hotpaths and ends up in a
ever growing compatibility nightmare.

So if a process runs on a newer kernel with let's say 40 bytes rseq
size, then it can't be safely migrated with CRIU to a older kernel with
32 bytes rseq size as you don't know whether the process uses some of
the extended features in the newer kernel already. But that's not any
different from extended syscall features etc.

So with the size based detection we end up with the following:

  Size 32:             legacy mode no matter whether that's TCMalloc or
                       glibc. Does not support extended features
  
  Size >= kernel size: optimized mode with support for extended features

Thanks,

        tglx



