Return-Path: <linux-man+bounces-5430-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGbxDJfW8GnJZwEAu9opvQ
	(envelope-from <linux-man+bounces-5430-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 17:47:35 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C86F1488310
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 17:47:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 05B82302FEA5
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 15:46:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 647C63C1406;
	Tue, 28 Apr 2026 15:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaPEGNLx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250DD3A9638;
	Tue, 28 Apr 2026 15:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777391209; cv=none; b=cDwpkEPhvaJtCdEF3yZL0Nm7qxD/YeMY9TnDVQeafiE1FPFhsONLQf5foky75TETWFkkmltYg4QnPYUni0MK5T4NZqYhpaeR1UO/mrlPItMRo7OuXPgate9nm4CjWOy8tdFOc3rOHPQpRoU0nqDSwmvCl8/xxcBEXMd0mgMwF0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777391209; c=relaxed/simple;
	bh=iIS5d7fRxW7S6odCsDl4X3HcZxpkS42TgfE7jbXgS5M=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=ThFiWC0Cj/Y6A2KLfFSR2eYGF1rVAssF06+b88FtR+kuJOwamFyzHmvZmfYsCIm0TbiqG9kXsK7YhodqpeoJ/XCV0fo/IeVHt5A9E1iVWe4tQ68Mrwo+Kde4HnfxJrjOmQoZkWtWkCo2q3PxMof45fGX8r4UdlcJUTmZ3it+c0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaPEGNLx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFB59C2BCAF;
	Tue, 28 Apr 2026 15:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777391208;
	bh=iIS5d7fRxW7S6odCsDl4X3HcZxpkS42TgfE7jbXgS5M=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=AaPEGNLxjE3kpd7p7WWA7METjdMWHxdcavEm3IEmYD7Hti59vrDJNEsPgQ2evF9oa
	 NFe7GsExS2H3E2LVaKiX6YA2Hi1LlJ7myR4/rNcIW8Fyi80VLWqr6WTAqUCXFVVxS8
	 EtzFCVQ8+5jJrftAotTK72ch1UKXlegYMwdaIr3/U7ABCujwDFNsVYoPHBevsXFyVi
	 m94J7eUo4986XvPtJKmp4C/hmmQeVLo//Lg9Td/Ts77F01liXkQan6rqeNvcH0TY4e
	 nd/+L9cpG2bkkQMQWwaiJtdAV8h0QQXDzSaXLzEIzAibpRymVmXhy+mcoA4cZ57Cuz
	 iTMrXoCMey7Og==
From: Thomas Gleixner <tglx@kernel.org>
To: Mathias Stearn <mathias@mongodb.com>, Dmitry Vyukov <dvyukov@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Jinjie Ruan
 <ruanjinjie@huawei.com>, linux-man@vger.kernel.org, Mark Rutland
 <mark.rutland@arm.com>, Mathieu Desnoyers
 <mathieu.desnoyers@efficios.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Boqun Feng
 <boqun.feng@gmail.com>, "Paul E. McKenney" <paulmck@kernel.org>, Chris
 Kennelly <ckennelly@google.com>, regressions@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Ingo
 Molnar <mingo@kernel.org>, Blake Oler <blake.oler@mongodb.com>, Florian
 Weimer <fweimer@redhat.com>, Rich Felker <dalias@libc.org>, Matthew Wilcox
 <willy@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Torvalds <torvalds@linuxfoundation.org>
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
In-Reply-To: <CAHnCjA2sCwOumOjWm=wW=Kj0C83KVW5zS+51=9=YSeAzuEaVQA@mail.gmail.com>
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
 <CACT4Y+ZofNqpeDdgde969LzLznxbRb8CPB6m=CS2RiSmkSYPQQ@mail.gmail.com>
 <878qa7zexc.ffs@tglx> <875x5bzeeb.ffs@tglx>
 <CACT4Y+b_RH2eZMuh1YUyqnoK-5KUpdWW4z1q2ZQWkY_GcBqmNw@mail.gmail.com>
 <CAHnCjA2sCwOumOjWm=wW=Kj0C83KVW5zS+51=9=YSeAzuEaVQA@mail.gmail.com>
Date: Tue, 28 Apr 2026 17:46:44 +0200
Message-ID: <87wlxrxf2z.ffs@tglx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: C86F1488310
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.84 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5430-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_CC(0.00)[infradead.org,huawei.com,vger.kernel.org,arm.com,efficios.com,kernel.org,gmail.com,google.com,lists.linux.dev,lists.infradead.org,mongodb.com,redhat.com,libc.org,linuxfoundation.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.962];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]

On Tue, Apr 28 2026 at 15:31, Mathias Stearn wrote:
> On Tue, Apr 28, 2026 at 11:54=E2=80=AFAM Dmitry Vyukov <dvyukov@google.co=
m> wrote:
>>
>> On Tue, 28 Apr 2026 at 10:18, Thomas Gleixner <tglx@kernel.org> wrote:
>> >
>> > Is there a pre-compiled version of those tcmalloc tests somewhere?
>>
>> I've attached an archive with 2 tests that I used.
>
> Here is an additional test. It is the stress test I used to show that
> it could result in two live allocations getting the same address. It
> will run for up to a minute or until the first double allocation gets
> detected (usually within 30ms on 6.19).

Thanks to both of you for providing those binaries.

I've run all three binaries now on my latest version in parallel for
quite same time and it seems to hold up. Mark just told me privately
that these plus the arm64 fix he's working on survive that double
allocation test.

Let me go and write a cover letter and post the pile.

Thanks,

        tglx

