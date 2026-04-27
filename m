Return-Path: <linux-man+bounces-5412-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMdsKh0T72kP5wAAu9opvQ
	(envelope-from <linux-man+bounces-5412-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2026 09:41:17 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C62A446E7D8
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2026 09:41:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E98F7300532C
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2026 07:41:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3613538A711;
	Mon, 27 Apr 2026 07:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="WIBanLo+"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387AF389DE0
	for <linux-man@vger.kernel.org>; Mon, 27 Apr 2026 07:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777275666; cv=none; b=PH8nxK0cUqKxtj842O0K4owyDkDQC1ca1rIAeuM6oc3TNajmbZ85WVCVJBCk2bw3X31NYk3jwwMc9QJoC+91ml20qHU8hXFdzSHjqH+S0KSkz+gOH82Up4a49dydjY3VJ8vzU4Cq17QLH4KfU8sAWYHgVFO8deM682Qb62eEeCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777275666; c=relaxed/simple;
	bh=uJcIvYBSho/JC2TjO7L/9Kp7cP7KBThZDPtdb6eTnxo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=gUBLyy2uIMn7NJEqxrpywv8FTtt+IxE7ddRXE0nBlRRoldvlPWOxpihLItxPQmc/Kze87kAuLQgcBCpjWycN7hBNomRczSxXlOSYVrj0aq4/eDfphJzxpXJtXDxX5opf+v5933v6tXXjVV4OPMBuZOnBvHR40oeLGrkZIuqCXkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=WIBanLo+; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1777275661;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=GpOgCcb4ilQt4GgXVtC95e/+8g1AuEOs4okthTTjNEo=;
	b=WIBanLo+pZR7eyjc7CKWrQ4zBk50uzLrX4yyp0i8GHMtCiOyJlN/Mk5KAAP1SD39w3N4N9
	YKvyRcMF+HyfpIiFufDtOD5pvGKaCdDaEos+7nUGaN1atKQ1vi9dDPzdIbBUfMml/ueC8O
	UDLe4s0NQP79w9QXNTb8/I0c0Xq7b/E=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-119-0IPi-P0tMAayg2A5qbA2ow-1; Mon,
 27 Apr 2026 03:40:57 -0400
X-MC-Unique: 0IPi-P0tMAayg2A5qbA2ow-1
X-Mimecast-MFC-AGG-ID: 0IPi-P0tMAayg2A5qbA2ow_1777275654
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 454E318003F6;
	Mon, 27 Apr 2026 07:40:53 +0000 (UTC)
Received: from fweimer-oldenburg.csb.redhat.com (unknown [10.44.48.4])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AFFEA180047F;
	Mon, 27 Apr 2026 07:40:46 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Thomas Gleixner <tglx@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,  Mathias Stearn
 <mathias@mongodb.com>,  Dmitry Vyukov <dvyukov@google.com>,  Jinjie Ruan
 <ruanjinjie@huawei.com>,  linux-man@vger.kernel.org,  Mark Rutland
 <mark.rutland@arm.com>,  Mathieu Desnoyers
 <mathieu.desnoyers@efficios.com>,  Catalin Marinas
 <catalin.marinas@arm.com>,  Will Deacon <will@kernel.org>,  Boqun Feng
 <boqun.feng@gmail.com>,  "Paul E. McKenney" <paulmck@kernel.org>,  Chris
 Kennelly <ckennelly@google.com>,  regressions@lists.linux.dev,
  linux-kernel@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
  Ingo Molnar <mingo@kernel.org>,  Blake Oler <blake.oler@mongodb.com>,
  Rich Felker <dalias@libc.org>,  Matthew Wilcox <willy@infradead.org>,
  Greg Kroah-Hartman <gregkh@linuxfoundation.org>,  Linus Torvalds
 <torvalds@linuxfoundation.org>, criu@lists.linux.dev
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
In-Reply-To: <87jyttz8cf.ffs@tglx> (Thomas Gleixner's message of "Mon, 27 Apr
	2026 00:04:48 +0200")
References: <aekPXvvuKHKlETjm@J2N7QTR9R3.cambridge.arm.com>
	<87wlxy22x7.ffs@tglx>
	<c5331cd6-76c8-430d-978e-fcad164e48f6@huawei.com>
	<CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
	<87ik9i0xlj.ffs@tglx>
	<CAHnCjA0UBNXfjHw=Y34OrAyGRNUtVF+zWd3ugyX6pd_mCk8K9w@mail.gmail.com>
	<87a4ut1njh.ffs@tglx>
	<CACT4Y+bBD7uCHXKqGo=epBXeEmsZ67Og2YO9kjNMT3ryjUY_sA@mail.gmail.com>
	<CAHnCjA1LqbaUGkPe79EeP6Mpaki8QWeR-JBSbrG0z6pTm9CmUg@mail.gmail.com>
	<87v7dgzbo7.ffs@tglx>
	<20260424150318.GE641209@noisy.programming.kicks-ass.net>
	<87se8kywhb.ffs@tglx> <87jyttz8cf.ffs@tglx>
Date: Mon, 27 Apr 2026 09:40:43 +0200
Message-ID: <lhujyts4zr8.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Rspamd-Queue-Id: C62A446E7D8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[infradead.org,mongodb.com,google.com,huawei.com,vger.kernel.org,arm.com,efficios.com,kernel.org,gmail.com,lists.linux.dev,lists.infradead.org,libc.org,linuxfoundation.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-5412-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fweimer@redhat.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oldenburg.str.redhat.com:mid]

* Thomas Gleixner:

> The real question is how to differentiate between the legacy and the
> optimized mode. I have two working variants to achieve that:
>
>    1) The fully safe option requires a new flag for RSEQ
>       registration. It obviously requires a glibc update. (Suggested by
>       PeterZ)

Without glibc changes, RSEQ would keep working, but with the old,
problematic performance, right?

If we don't have a notification in the auxiliary vector, we'd have to do
two system calls at process start, which isn't ideal, but is probably
not a significant issue, either.

I haven't verified this, but it looks like introducing the flag breaks
CRIU?  In dump_thread_rseq, we have this:

        if (rseqc.flags != 0) {
                pr_err("something wrong with ptrace(PTRACE_GET_RSEQ_CONFIGURATION, %d) flags = 0x%x\n", tid,
                       rseqc.flags);
                return -1;
        }

I suppose a workaround could make this behavior flag a prctl flag.  CRIU
wouldn't dump and restore that until taught about it.  If the new
behavior is switched on explicitly by the flag, it would be
backwards-compatible, except that restoring with unpatched CRIU would
lead to a performance loss.

>    2) Determine the requirements of the registering task via the size of
>       the registered RSEQ area.
>
>       The original implementation, which TCMalloc depends on, registers
>       a 32 byte region (ORIG_RSEG_SIZE). This region has 32 byte
>       alignment requirement.
>
>       The extension safe newer variant exposes the kernel RSEQ feature
>       size via getauxval(AT_RSEQ_FEATURE_SIZE) and the alignment
>       requirement via getauxval(AT_RSEQ_ALIGN). The alignment
>       requirement is that the registered rseq region is aligned to the
>       next power of two of the feature size. The kernel currently has a
>       feature size of 33 bytes, which means the alignment requirement is
>       64 bytes.

There are still glibc builds in use that do not use AT_RSEQ_ALIGN, and
instead unconditionally reserve a size of 32.  In some builds, the RSEQ
area is not aligned to a multiple of 64, which makes glibc
indistinguishable from tcmalloc.  You could look at the location of the
thread pointer relative to the RSEQ area at registration to tell them
apart, but that is perhaps too nasty.

Switching to the new extensible RSEQ allocation code in older glibc
builds is not entirely trivial, and I would prefer not doing that.
Registering with a new flag is comparatively simple, and we could
backport it, except that it might not be compatible with CRIU.

Thanks,
Florian


