Return-Path: <linux-man+bounces-5422-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIytAotr8GlmTQEAu9opvQ
	(envelope-from <linux-man+bounces-5422-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 10:10:51 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC3C47FABE
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 10:10:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E35D3307C2C7
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 08:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75000331A53;
	Tue, 28 Apr 2026 08:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="TeID8aFq"
X-Original-To: linux-man@vger.kernel.org
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97C5A34F27B;
	Tue, 28 Apr 2026 08:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=90.155.92.199
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777363453; cv=none; b=Gc+cPWrUsziaefvp0v45E86m09uNRpgdtevyY9e4ZQ2DyoBYQxBJ/BHQPZFZoFZ454M2bTsa9wBvm1o9k/Ns9TZHB/+pHqambZ2dyFCmi9U/nO+Ro8nkaD36xnpUCZamRTXui7WuHL6Q1YKmCFI1wXuJC46SR/Fz5wHTmPO5XUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777363453; c=relaxed/simple;
	bh=HrHvz6p2egb5XfEYj1cV1dwO4N5ZIX8W2t7qiksw3HY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=doJCHXVAXSPi9AqA0bCa8MzKJSfP3HB9rR2j9T+5jJV63/8jfVH7eqF3o+SWzAw6rN/r7otZJdv1VryoaAaCrt0asrL9pu4aQkoFjDZ0GfbP+1ddNIjaKSU6aFjy5aZaKwzl4+DBLiSdncuuK+0FS/+nAyCHpXr1zdgIiLHtAEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=none smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=TeID8aFq; arc=none smtp.client-ip=90.155.92.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=3OaSAgTxjK2QR1QU0n+b0SIWBdszlU+aMsuYQB2OmPg=; b=TeID8aFq3/o1MU7dAA0ZD5tQ4e
	sJexAflc0AubSphjKCeh8h+XA92B8ybTs7Jd2NQGp9ap+wkST6tykVFBs3VTiU4lpmCBub2DrOC/j
	RT+ZkfpgNSxXdXAfMPKK/wme/PPAYKCXVFnhNjVWzPluO7vYSkDlC2EcWt1yhPCuS6zxIV9pC2L8Y
	flWWh7ed5kDhru4zofOYYPcIDVjb4fWj/csMrYhgBlb8aCHGfoLI5zpOn86dU+sXRdT6C+3E1tjD1
	SjgSMYAcFLyH+Ky/l9IX9VT5u26fTLI3dxgJWwtbZZJE7Wi4WTe5X8y8DcfjC1KYtWIFP0FVBxIZZ
	ObGgwntQ==;
Received: from 2001-1c00-8d85-4b00-266e-96ff-fe07-7dcc.cable.dynamic.v6.ziggo.nl ([2001:1c00:8d85:4b00:266e:96ff:fe07:7dcc] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHdQG-00000002LuV-3bGW;
	Tue, 28 Apr 2026 08:04:01 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
	id 5DB3E301CEB; Tue, 28 Apr 2026 10:03:59 +0200 (CEST)
Date: Tue, 28 Apr 2026 10:03:59 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Thomas Gleixner <tglx@kernel.org>
Cc: Mathias Stearn <mathias@mongodb.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Jinjie Ruan <ruanjinjie@huawei.com>, linux-man@vger.kernel.org,
	Mark Rutland <mark.rutland@arm.com>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Chris Kennelly <ckennelly@google.com>, regressions@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Ingo Molnar <mingo@kernel.org>, Blake Oler <blake.oler@mongodb.com>,
	Florian Weimer <fweimer@redhat.com>, Rich Felker <dalias@libc.org>,
	Matthew Wilcox <willy@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Linus Torvalds <torvalds@linuxfoundation.org>
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
Message-ID: <20260428080359.GI3126523@noisy.programming.kicks-ass.net>
References: <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
 <87ik9i0xlj.ffs@tglx>
 <CAHnCjA0UBNXfjHw=Y34OrAyGRNUtVF+zWd3ugyX6pd_mCk8K9w@mail.gmail.com>
 <87a4ut1njh.ffs@tglx>
 <CACT4Y+bBD7uCHXKqGo=epBXeEmsZ67Og2YO9kjNMT3ryjUY_sA@mail.gmail.com>
 <CAHnCjA1LqbaUGkPe79EeP6Mpaki8QWeR-JBSbrG0z6pTm9CmUg@mail.gmail.com>
 <87v7dgzbo7.ffs@tglx>
 <20260424150318.GE641209@noisy.programming.kicks-ass.net>
 <87se8kywhb.ffs@tglx>
 <87jyttz8cf.ffs@tglx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87jyttz8cf.ffs@tglx>
X-Rspamd-Queue-Id: 8EC3C47FABE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[infradead.org,none];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=desiato.20200630];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5422-lists,linux-man=lfdr.de];
	FREEMAIL_CC(0.00)[mongodb.com,google.com,huawei.com,vger.kernel.org,arm.com,efficios.com,kernel.org,gmail.com,lists.linux.dev,lists.infradead.org,redhat.com,libc.org,infradead.org,linuxfoundation.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[infradead.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peterz@infradead.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,infradead.org:dkim]

On Mon, Apr 27, 2026 at 12:04:48AM +0200, Thomas Gleixner wrote:

> +Optimized RSEQ V2
> +-----------------
> +
> +On architectures which utilize the generic entry code and generic TIF bits
> +the kernel supports runtime optimizations for RSEQ, which also enable
> +enhanced features like scheduler time slice extensions.
> +
> +To enable them a task has to register the RSEQ region with at least the
> +length advertised by getauxval(AT_RSEQ_FEATURE_SIZE).
> +
> +If existing binaries register with RSEQ_ORIG_SIZE (32 bytes), the kernel
> +keeps the legacy low performance mode enabled to fulfil the expectations
> +existing users regarding the original RSEQ implementation behaviour.
> +
> +The following table documents the ABI and behavioral guarantees of the
> +legacy and the optimized V2 mode.
> +
> +.. list-table:: RSEQ modes
> +   :header-rows: 1
> +
> +   * - Nr
> +     - What
> +     - Legacy
> +     - Optimized V2
> +   * - 1
> +     - The cpu_id_start, cpu_id, node_id and mm_cid fields (User mode read
> +       only)
> +     - Updated by the kernel unconditionally after each context switch and
> +       before signal delivery
> +     - Updated by the kernel if and only if they change, i.e. if the task
> +       is migrated or mm_cid changes
> +   * - 2
> +     - The rseq_cs critical section field
> +     - Evaluated and handled unconditionally after each context switch and
> +       before signal delivery
> +     - Evaluated and handled conditionally only when user space was
> +       interrupted. Either after being preempted or before signal delivery
> +       in the interrupted context.
> +   * - 3
> +     - Read only fields
> +     - No strict enforcement except in debug mode
> +     - Strict enforcement
> +   * - 4
> +     - membarrier(...RSEQ)
> +     - All running threads of the process are interrupted and the ID fields
> +       are rewritten and eventually active critical sections are aborted
> +       before they return to user space.  All threads which are scheduled
> +       out whether voluntary or not are covered by #1/#2 above.
> +     - All running threads of the process are interrupted and eventually
> +       active critical sections are aborted before these threads return to
> +       user space. The ID fields are only updated if changed as a
> +       consequence of the interrupt. All threads which are scheduled out
> +       whether voluntary not are covered by #1/#2 above.
> +   * - 5
> +     - Time slice extensions
> +     - Not supported
> +     - Supported

I'm sure its cute when rendered, but when read as text this is nigh on
unreadable.

> +The legacy mode is obviously less performant as it does unconditional
> +updates and critical section checks even if not strictly required by the
> +ABI contract. That can't be changed anymore as some users depend on that
> +observed behavior, which in turn enables them to violate the ABI and
> +overwrite the cpu_id_start field for their own purposes. This is obviously
> +discouraged as it renders RSEQ incompatible with the intended usage and
> +breaks the expectation of other libraries in the same application.
> +
> +The ABI compliant optimized mode, which respects the read only fields, does
> +not require unconditional updates and therefore is way more performant. The
> +kernel validates the read only fields for compliance. If user space
> +modifies them, the process is killed. Compliant usage allows multiple
> +libraries in the same application to benefit from the RSEQ functionality
> +without disturbing each other.
> +

