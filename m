Return-Path: <linux-man+bounces-3529-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A55EB2FC20
	for <lists+linux-man@lfdr.de>; Thu, 21 Aug 2025 16:17:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC0E817B280
	for <lists+linux-man@lfdr.de>; Thu, 21 Aug 2025 14:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F34F2D94B4;
	Thu, 21 Aug 2025 14:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="YUwxt3Hz";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="Q2tHOHju"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97F723D7C9;
	Thu, 21 Aug 2025 14:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755785336; cv=none; b=uY8HNp/krMSdHCTq+4F2DXFw2BWDZFJ24NVVuZRvJ3pUNjP7M1FjWVPyMYB6eNBTQMQfUL7wUy9GCuSmobD6qmpsuN7TwQpoYjpj14aaq5VFtSoAqa9iQYpWHtnyfmqqANxYSy3X8RvisHlRj5xT2x/+9RXp7VKqYXzXfS0deXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755785336; c=relaxed/simple;
	bh=F9nbFiHDB8/NC8K1+G7vT+LnPC0T6L2TUBEH8tEermU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jIbZkJrPVOWutEdGBiALBz6OyC8UhV7388MOvtJomMze0vF/jC2zJZiXCU1FLH1GwsZu18GZcoIU9Ok1wB5KrQDx/beBBQX1hpYRiKQIrSM4Pwre9LnVMAWDbrABRsw4qDEAtsYJqmWxGv6dYZAcYOhfjUgTHQANe37X6taHvwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=YUwxt3Hz; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=Q2tHOHju; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Thu, 21 Aug 2025 16:08:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1755785333;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Rd8XsyniQw3f/ehAYmPjWYaocwhg1RAJfY38Lpc/pmA=;
	b=YUwxt3Hzao4PixMcG1MA0tFbm1Oa7w0UNsRVU/992jeteuvPIYb36P9JPePRfPylpurHo1
	czHTdtjcGROtFQc7YI7Na1TK/6d4fRKWMTIZtGpQSgru1mY5+9fTdYo6EmST5+BQWFloEU
	o1cj1jHqGZmwUXwYT8YX11BO8M8CV49kuehuhvRQ8DkF4VTTaIG6bioa7l+zaEG269u3p/
	nyk757gp49J8oGI77Ycxo2SnAuMp8soGoLWb7HX+bh/WYWqqAm7l/Mz/XLoV7eHW420A7C
	1UhpNHcSfnreH5AS5ptJXvuLn5KraYYztCxyZv3mkZ3OF3mxIv9hu+0m0yqm3w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1755785333;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Rd8XsyniQw3f/ehAYmPjWYaocwhg1RAJfY38Lpc/pmA=;
	b=Q2tHOHjuU/tlaN7vA0SlW7EtvdvWD5zOqQUT+VkEEfpUvBzyuhWXfG7TQqPxyNQCM4A0gY
	HHcyBUICxwDegIBQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>,
	Darren Hart <dvhart@infradead.org>,
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>,
	Juri Lelli <juri.lelli@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Valentin Schneider <vschneid@redhat.com>,
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v5 2/3] man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const:
 Document PR_FUTEX_HASH_SET_SLOTS
Message-ID: <20250821140851.z1FYafVm@linutronix.de>
References: <20250819071728.1431543-1-bigeasy@linutronix.de>
 <20250819071728.1431543-3-bigeasy@linutronix.de>
 <c5yimoxm73uwq7xhparfqhohrgk7hznzawgajntbmz3nx6337l@ukuiw4n2hfqh>
 <v5luee7avc6ayyox7hn4lwb6wfvezv52by7noffwejvksypord@kx26fel62kan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <v5luee7avc6ayyox7hn4lwb6wfvezv52by7noffwejvksypord@kx26fel62kan>

On 2025-08-19 13:19:15 [+0200], Alejandro Colomar wrote:
> Hi Sebastian,
Hi Alejandro,

> > > +.B int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_SET_SLOTS,
> > > +.BI "          unsigned long " hash_size ", unsigned long " hash_flags ");
> 
> I see that it is implemented in the kernel as
> 
> 	static int
> 	futex_hash_allocate(unsigned int hash_slots, unsigned int flags)
> 	{
> 		...
> 	}
> 
> But PR_FUTEX_HASH is implemented as
> 
> 	int
> 	futex_hash_prctl(unsigned long arg2, unsigned long arg3,
> 	    unsigned long arg4)
> 	{
> 		...
> 	}
> 
> Should we document is as a u_int, or a u_long?  Is that mismatch a bug,
> or is it on purpose?

The prctl() interface is long so I started with that. Internally we keep
it as an int since we don't need it that big and it avoids a hole
otherwise (but then there is a hole towards the end of the structure).
Realistically speaking 1 << 31 is the largest value that can be
specified (atm) and it will very likely lead to ENOMEM. If the user
tries the next higher value, 1 << 32, then the upper bits will be
truncated and the global hash will be requested and this will succeed.

The bug could be based on the argument type 1 << 32 will succeed but
it should not. Using 1 << 25 will request ~2GiB of memory and is a bit
far from sane.
I am bit forth and back between forcing an error for anything > 1 << 30,
or updating the docs to int. But this will be the easiest ;)
Any recommendations based on similar cases?

> Cheers,
> Alex

Sebastian

