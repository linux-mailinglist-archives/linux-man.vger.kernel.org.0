Return-Path: <linux-man+bounces-3841-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A2AB49143
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 16:22:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 94F0D3401E7
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 14:22:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 892A430DD07;
	Mon,  8 Sep 2025 14:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="WSC+Qma6";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="UeoyFI+Z"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96EF30C63B;
	Mon,  8 Sep 2025 14:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757341293; cv=none; b=I1laEHwEqWqtZ9oLeXKVqGeHTRPXEWcfD5oDoXuNfnOPQrKD2LWYm9Hp8RaEqThmuXJMEbhNzF9RoK2Cz8L8eGRVmA3GGcqnpOiGAppwrCfcqHX4KnU93vXFsUwudtO2u3OQLnx9cnifix750U4rMRdf+zz7JMXw+Z/r5uFtWII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757341293; c=relaxed/simple;
	bh=ESIQA0nX/DCU8Xslb2ku6ObdT57xdGnh1kp/DXH1dtE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e2tLO8ELIrclrmuMK0gflayO9/fCpYc14PyR8tdLduTd/e6l94faXuggcUOC8YS7voE8OriXQKM/nymSc8LR2JdWk0psYZO4+xk/PP0jgIOalfhENIQ+BtjjJWxWr0mjyggoSKLc0OxbQlRoNSfKgQFgSPWC1fjxYkrCE+GttrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=WSC+Qma6; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=UeoyFI+Z; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Mon, 8 Sep 2025 16:21:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1757341290;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=M2aXQHgqfK3sE5W83r8THuL/vQNj4SX4a/pKzmta4yA=;
	b=WSC+Qma67qg6xcfmBxngR0YmE6xvkm/IgiaUGJrkMw3ia1ZdxKOcNNymdue6su7kNZJuJ0
	XxKfT5G3qSPoR67SlUv2Nn2/tmsYlxNsONCSHe7Jnus6tO1llC8fG2zVqQdkM9WgWG49Ep
	AULyRVI373Tx5hTfo1ct7RHaLkgWO07T3iwqA2nJqEQahZy3yNku1fpFSWw0lrbiMNVXbE
	4tHx8SdcnwlL8E15h1gmTd1tlAhHI93IsKiSlUJcm/t5A9ehh7/iOxuF0jXeKz+ZPVJWp8
	xLtLVhVZYh6YMvNU27HO9dUbMheY34aML0YgKKh4GBUwEplwNpC6I/v/86ZuxQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1757341290;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=M2aXQHgqfK3sE5W83r8THuL/vQNj4SX4a/pKzmta4yA=;
	b=UeoyFI+ZIu8iCQIUctUeRHL9Ya5s9OklwQUs0ZQf0WHwYLZH3v1S4QHjSpoDYIjTVnQv15
	Z+j7W93iFX2teRCQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
	Alejandro Colomar <alx@kernel.org>,
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>,
	Darren Hart <dvhart@infradead.org>,
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>,
	Juri Lelli <juri.lelli@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Valentin Schneider <vschneid@redhat.com>,
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH 4/4] man/man2/futex.2: Add a pointer to Linux'
 memory-barrier
Message-ID: <20250908142128.nciFBdjQ@linutronix.de>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-5-bigeasy@linutronix.de>
 <1b4b0a00-3e80-49a9-bee4-2c7a90e85941@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1b4b0a00-3e80-49a9-bee4-2c7a90e85941@redhat.com>

On 2025-08-29 13:46:19 [-0400], Carlos O'Donell wrote:
> On 8/29/25 12:02 PM, Sebastian Andrzej Siewior wrote:
> > The "totally ordered with respect to concurrent operations" part refers
> > to memory ordering/ atomic update and has nothing to do with the inner
> > workings of the FUTEX code. It simply tries to express that the futex
> > operation will compare the supplied argument with that is written in
> > memory.
> > 
> > This might be a tad too verbose but then there is a fixme asking for
> > details on the sychronisation. Maybe a pointer to the memory barriers is
> > enough in terms of the required synchronisaton. Assuming this is related
> > to the memory value and not the futex internal synchronisation.
> > 
> > Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> > ---
> >   man/man2/futex.2 | 8 +++-----
> >   1 file changed, 3 insertions(+), 5 deletions(-)
> > 
> > diff --git a/man/man2/futex.2 b/man/man2/futex.2
> > index 027e91b826bf1..fe4a239c3812c 100644
> > --- a/man/man2/futex.2
> > +++ b/man/man2/futex.2
> > @@ -84,16 +84,14 @@ on the same futex word.
> >   .\"     would be sufficient? Or perhaps for this manual, "serialized" would
> >   .\"     be sufficient, with a footnote regarding "totally ordered" and a
> >   .\"     pointer to the memory-barrier documentation?
> > +Please see
> > +.IR https://docs.kernel.org/\:next/\:core-api/\:wrappers/\:memory-barriers.html
> > +for the definition of atomic operations and memory ordering.
> 
> This seems out of place with the flow of the rest of the text.
> 
> I suggest adding this as a foot note.
> 
> >   Thus, the futex word is used to connect the synchronization in user space
> >   with the implementation of blocking by the kernel.
> >   Analogously to an atomic
> >   compare-and-exchange operation that potentially changes shared memory,
> >   blocking via a futex is an atomic compare-and-block operation.
> > -.\" FIXME(Torvald Riegel):
> > -.\" Eventually we want to have some text in NOTES to satisfy
> > -.\" the reference in the following sentence
> > -.\"     See NOTES for a detailed specification of
> > -.\"     the synchronization semantics.
> 
> I think it is acceptable to link to Documentation/memory-barriers.rst, but
> the truth is that this document doesn't yet provide all the notes required
> to answer the questions wrt a futex. Fundamentally we use spinlocks for futexes
> (and some arches use more like parisc), and spinlocks are covered in
> "Implicit Kernel Memory Barrires", there isn't any direct connection between
> them in the text (and doing so would create a design requirement).

There might be two things to it. The spinlocks are used in kernel and
synchronize the kernel internal state. The memory barriers might be
important in regard to how the futex word should be updated atomically.

> >   .P
> >   One use of futexes is for implementing locks.
> >   The state of the lock (i.e., acquired or not acquired)

Sebastian

