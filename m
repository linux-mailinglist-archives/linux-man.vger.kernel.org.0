Return-Path: <linux-man+bounces-2101-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DD59E46A0
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 22:27:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77A14B62442
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 19:30:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 576671A8F90;
	Wed,  4 Dec 2024 19:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlnvRrPS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4E22391B3;
	Wed,  4 Dec 2024 19:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733340633; cv=none; b=DQ6JPY0wjnKzT4n/WrpyHzgJSdBkJ0gQ5xIIhGaflcHr6Jpu4UAM3Hw2VQPEghiN4Si10OWb9xPNUGVY02R0qq/+9Ajv6G7Ysu4WOSPHiORfZdGq+qdBurKvMABsa13xVoDk20anU/OXB3RnTGv41cwO8mxV+glEqAKAaccUf7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733340633; c=relaxed/simple;
	bh=y2zEuzzfPZtxvj5HcANzLaXKKAioU2vXxN59jG0dXZw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OV3hH+z4qbW9vh3SjmFboY3K6xY5FrokEz0HkkYWIwLz1L8WKXgq7Je8UnXSveN1AsHrIPlkiYB4LykC+dCX8NXbdFA92nzfq2/QguIiBoUL9SySSZjjPl5FzKaSg+xbCsvW8clcaOcMmavvzzoyetMSeZNKN/A6fsmP5cVnSoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlnvRrPS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD0B4C4CED1;
	Wed,  4 Dec 2024 19:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733340632;
	bh=y2zEuzzfPZtxvj5HcANzLaXKKAioU2vXxN59jG0dXZw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VlnvRrPSyBb4+p3NFdJmS8uTKaIUQMrPYgYZx2ILR+8rXCVIN48X9p7uHOkFkLy3w
	 w/viwRimzByQ4lg1+5x3C1DQFs+HUl/7GZW3GrFUEv5Q9vErq7Pg7s/jaZ5EDGG8eh
	 nodS9vswPtgR3vkS4V6jAwICWMTpDQLA62s1CL0GqNemhbH2uJrGxJORHPbT8Z1Lb5
	 K823rEdgT0tT3TFh31vh9x0UXpwQPBZ7B94lgaabZvwQj4CerVodzUq42u0wwIkbHB
	 qAjgklG0YOck1noDt6scmlWWZ+ScpM/5nU52nJp1AV2jze+A5riEDbLmrxdTPZTGmi
	 c6zyj+dqVfJzw==
Date: Wed, 4 Dec 2024 11:30:30 -0800
From: Namhyung Kim <namhyung@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>, Vince Weaver <vincent.weaver@maine.edu>,
	=?utf-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	linux-perf-users@vger.kernel.org
Subject: Re: perf_event_open.2: mmap ring buffer requirement for receiving
 overflow notifications
Message-ID: <Z1Ct1nAdC7IPEpAN@google.com>
References: <CAHGiy68y37n-y_b0gR-dArxFRzYOAr93dCw_6bvkNReNWQ37Hw@mail.gmail.com>
 <00910b8e-fdaf-45ae-8dcc-8c926d7fce65@maine.edu>
 <Z04eZN4Cpbqw4Rpe@google.com>
 <20241204122801.GK35539@noisy.programming.kicks-ass.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241204122801.GK35539@noisy.programming.kicks-ass.net>

On Wed, Dec 04, 2024 at 01:28:01PM +0100, Peter Zijlstra wrote:
> On Mon, Dec 02, 2024 at 12:53:56PM -0800, Namhyung Kim wrote:
> > Hi Peter and Ingo,
> > 
> > On Tue, Nov 26, 2024 at 05:13:45PM -0500, Vince Weaver wrote:
> > > On Sat, 23 Nov 2024, Mikołaj Kołek wrote:
> > > 
> > > > findings. In the MMAP layout section of the page, you can find this
> > > > sentence:
> > > > Before Linux 2.6.39, there is a bug that means you must allocate
> > > > an mmap ring buffer when sampling even if you do not plan to
> > > > access it.
> > > > Unless I'm somehow misunderstanding it, this statement does not seem
> > > > to be well worded, or alternatively this bug does not seem to be
> > > > fixed.
> > > 
> > > That text was probably written by me.
> > > 
> > > I tried looking at the 2.6.39 code, my perf_tests, and also PAPI which was 
> > > where the problem was probably noticed but I can't find a firm reference 
> > > for how the issue was fixed.
> > > 
> > > If I recall, the problem was if you were trying to create a sampling event 
> > > without mmap (say you want to get a signal every 100,000 retired 
> > > instructions, but you don't actually want any sample data).  I think 
> > > before 2.6.39 if you tried setting that up you'd get some sort of error 
> > > (an EINVAL?) when trying to start(?) the event.
> > > 
> > > It is possible this wasn't fixed.  I tried to be pretty good 
> > > about putting relevant git commits as comments in the manpage but there 
> > > doesn't seem to be one for that part of the text.  I'm guessing it was 
> > > PeterZ doing the work on this so maybe he remembers.
> > 
> > Do you remember what was the issue exactly on sampling events w/o mmap?
> 
> I can barely remember last release :/ But looking at the code, I don't
> see a reason that wouldn't work today.
> 
> Only the overflow handler should care about there being a buffer, and
> that just NOPs out if there isn't -- expensively, if this is a common
> thing, this could perhaps be optimized a little.
> 
> 
> ---
> diff --git a/kernel/events/core.c b/kernel/events/core.c
> index 4c6f6c286b2d..190b5c3cec10 100644
> --- a/kernel/events/core.c
> +++ b/kernel/events/core.c
> @@ -8117,6 +8117,8 @@ __perf_event_output(struct perf_event *event,
>  
>  	/* protect the callchain buffers */
>  	rcu_read_lock();
> +	if (unlikely(!event->rb))
> +		goto exit;

We have a similar logic in __perf_output_begin() and it checks with the
parent event due to inheritance.  But doing it here would save some
cycles for preparing samples to be dropped.

Thanks,
Namhyung

>  
>  	perf_prepare_sample(data, event, regs);
>  	perf_prepare_header(&header, data, event, regs);

