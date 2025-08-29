Return-Path: <linux-man+bounces-3749-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C854B3BE94
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 16:57:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49138A400DB
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 14:57:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C8EF320CCA;
	Fri, 29 Aug 2025 14:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="V/mAqSRr";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="n7VmNH+P"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A4DA31B11B
	for <linux-man@vger.kernel.org>; Fri, 29 Aug 2025 14:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756479424; cv=none; b=WO4izUHPZGru0cl8M/waOfmt4Sp/l/SfLxD7233aoeMHGhdus6cMXN0nY7mKweHZBW/JmWCohqiDTsQpXJl0JinqW135x/V/IljyUrpIeLLkPqmj6FpSx43Vto25k4VdFNMnlMOyL/lgbm7BaQuSRFRb4vcAC9/O97scRnfZO0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756479424; c=relaxed/simple;
	bh=8bSbkevf/G92cKQ5VDtBplC+twor4PMT3qW4D6vLW6I=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=AAS6ZqMA2VNNm2rR2rig1deQpozM7BkCVywELQvGilHKWGjl/BDeH2IRj+rm1eK8k9pc4Yyv7M+AtxNihl09i3kzDMIlUCIKaHrvxHOvzwo9lOel5cUvhep8wRwmf1a54OkC0zM/Q4c84IaKtZwIyl0ngJdBlZK/5Y+8MItL59Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=V/mAqSRr; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=n7VmNH+P; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Fri, 29 Aug 2025 16:56:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1756479420;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=kr4sRakylDNKuYzFWgiGyKtWIDzSJvd1PY5Ehr6iK/0=;
	b=V/mAqSRr1w+2nSnxGgJw0slH3XAw5QyajnalK4IHWN2FMghn1AJzsw/pU0immglXbqsG3v
	LCQN4A+XqkknJOLAZwPMiHeaKIUWkab/gLKKLBkiYLwZkFZIHxZqKfuAIvFc+3S1D3+nMt
	z7CsGJeSKG8Iw3R9ONXuoWd9DkDph2PBjraSvEriTWse1dcqBhgkc7FqkpbGqkvv6FHbyO
	7vqKKzVT1gfBOQMsA0Vm6caX0qBksgSu0SFGwi7s7dPWdZN+2bQnF/K9qJU6A8NfEKZF9M
	ZPZU2CJFl6uuWkiAxOHXA8Xt8Q3NBdQIfUN1VCWMZA/bK2wjbMziSgGfVieihA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1756479420;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=kr4sRakylDNKuYzFWgiGyKtWIDzSJvd1PY5Ehr6iK/0=;
	b=n7VmNH+PUJvNcE2wRng3WVnEghJ3MXrjaHK/1IpfIkwrq1NleMsvg0uH8KfxXW7otzLa0T
	24RvUZUD6eeSBGAQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: libc-alpha@sourceware.org
Cc: John Ogness <john.ogness@linutronix.de>, linux-man@vger.kernel.org,
	linux-rt-devel@lists.linux.dev,
	Thomas Gleixner <tglx@linutronix.de>
Subject: Real-time and pthread_cond_*() API
Message-ID: <20250829145659.KhM4kIoQ@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi,

I am in the process of reading man-pages and updating, when outdated, in
the futex corner.

There is one part which mentions pthread_cond_.*() using
FUTEX_WAIT_REQUEUE_PI, FUTEX_CMP_REQUEUE_PI and being subject to
unbounded priority inversion because the internal data lock (of
pthread_cond_t) which is non-PI. This issue was tracked in 
   https://sourceware.org/bugzilla/show_bug.cgi?id=11588

but got nowhere. Eventually the code was rewritten as of commit
   ed19993b5b0d0 ("New condvar implementation that provides stronger ordering guarantees.")

and the problem appeared to gone with the removal of the internal data
lock.
Browsing through the code, there is __condvar_acquire_lock(). This one
acquires a lock and if the lock is already acquired it will wait via
FUTEX_WAIT. 

The problematic case: producer P and a consumer C. Scheduling priority
of P > C:

  C                                                              P
  pthread_cond_timedwait(c, m, t);
  -> err = __futex_abstimed_wait_cancelable64() // ETIMEDOUT
  -> __condvar_cancel_waiting()
    -> __condvar_acquire_lock()
      -> atomic_compare_exchange_weak_acquire(, 1); // acquired
         /* preempted by the scheduler */
                          
			                                        pthread_cond_signal(c)
								-> __condvar_acquire_lock()
                                                                  -> atomic_compare_exchange_weak_acquire(, 2);
                                                                  -> futex_wait_simple();	// wait for a wakeup.

Once C (SCHED_OTHER) gets preempted then P (SCHED_FIFO) has to wait
until C gets back on the CPU and leaves the critical section. Other
tasks may get on the CPU with a priority less than P's. There is no
guarantee when P will be scheduled again.

The situation improved a lot by the rewrite because the internal lock is
almost always acquired by the signaler and only in corner cases by the
waiter. 
Two signaller shouldn't have the problem because they should have same
priority.

I think this behaviour should be documented and because of this I don't
think it can be recommended for real-time purposes. Only
pthread_cond_wait() should work as I didn't find a case where it
would block on the lock in the wait-case.

But then! I continued browsing and noticed that struct __pthread_cond_s
has two unused members. Couldn't we use __unused_initialized_1 for PI
locking? Instead the atomic operation on __g1_orig_size it would require
to use that u32 and in case of contention fallback to kernel with
FUTEX_LOCK_PI instead.
Is this an option?

Sebastian

