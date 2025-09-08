Return-Path: <linux-man+bounces-3839-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 101B6B49095
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 15:59:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8744718859DE
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 13:59:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDEA430C609;
	Mon,  8 Sep 2025 13:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="TfbF2qVO";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="Y0XBFn8x"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FA42FF153;
	Mon,  8 Sep 2025 13:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757339955; cv=none; b=CMbRuy8ggiclCqxGrB4lNBnjzCOxbS3kTv15cJatqhDrU5/2MKAqbwmbBVBlfwhLKfOIR/zCRqX5CBd6OeWuFhQ8JCsP7GeXabepvdBFTemmVyT28JJZ76LXXI2/Lnpj6p4SMrBsLfnM5Iud9Wk0z/MI5C6HLWk4o/yzo6Zfphs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757339955; c=relaxed/simple;
	bh=iFyUXcmEykQitZsLjr+FkVMwj9ZHT2H574kIsAr3Tds=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QqVscl1f6Imm5YNP2AvV1/QeHJ/8dUT4rdEK1QBqi475hIIE20D7BgPfVPq0yOIz6fR3BOCaAQLV0GgyINnr96kugoJRuYEzPWdzcWMYGw3BB7C1uD4rYGTXkmGu7ZUh6sns4WDHi5KutM3jGLZ91cU+agMcL4EbMwE3Z/FWpGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=TfbF2qVO; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=Y0XBFn8x; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Mon, 8 Sep 2025 15:59:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1757339952;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PcSWLJ2cXY3jAW+7IdjUZYKw0QQ7stFAB8lPS8UQS9U=;
	b=TfbF2qVOsPu03FiZoJP+o6wk1F09/Df896DgTe3pX+GGPHf477bUcjxaB0dtkAZfcN2C/5
	1aqolBWqspaoH3gfF4JYzzkiPabgH5Nu+3SeMTJRCD3ICLY5GllkT6Xe1XQvxSMQ26doAO
	9Kw9Ur49TVYJEyXGVVQ/ijJe7UfEbkYe7dFOhvmYJvN5o3ON13hYUQBfK1d9j9DTnHXG2y
	mpg9WEYgUgafrYeEuH27T1OwjIFLWzvwsCuTKIImPiL+JhVLkfFbKrFjgC6Jai0BdlVYkr
	GR/rcKwqi+651KRtHUCisKw+CgjmaxAtb0TAHzIGuXvNL3YZkSNBBt7//+8Tpg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1757339952;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PcSWLJ2cXY3jAW+7IdjUZYKw0QQ7stFAB8lPS8UQS9U=;
	b=Y0XBFn8xfUnRE6X23K6Y0rk+XmQX88ieglrOwXzZCHuBilU2yMVm1olCy6gxitcM1uSJdF
	N5lDgyqF1UcY+zDg==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Juri Lelli <juri.lelli@redhat.com>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
	Alejandro Colomar <alx@kernel.org>,
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>,
	Darren Hart <dvhart@infradead.org>,
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Valentin Schneider <vschneid@redhat.com>,
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH 1/4] man/man7/sched.7: Update the real-time section
Message-ID: <20250908135911.oX2hZuRU@linutronix.de>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-2-bigeasy@linutronix.de>
 <aLabrBwH4Mz8seCu@jlelli-thinkpadt14gen4.remote.csb>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aLabrBwH4Mz8seCu@jlelli-thinkpadt14gen4.remote.csb>

On 2025-09-02 09:24:28 [+0200], Juri Lelli wrote:
> Hi!
> 
> On 29/08/25 18:01, Sebastian Andrzej Siewior wrote:
> 
> ...
> 
> > -The FIFO and RR scheduling policies are then used to run a thread
> > +The
> > +.BR SCHED_FIFO ,
> > +.BR SCHED_RR ,
> > +and
> > +.B SCHED_DL
> 
> I believe SCHED_DEADLINE would be more correct?

yes, thanks.

> Thanks,
> Juri

Sebastian

