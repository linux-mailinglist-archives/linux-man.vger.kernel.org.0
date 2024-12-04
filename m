Return-Path: <linux-man+bounces-2100-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C5B9E39F1
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 13:29:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BCB5528621E
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 12:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B4DF1B87DD;
	Wed,  4 Dec 2024 12:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="IvOuysUc"
X-Original-To: linux-man@vger.kernel.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D12F1B6CE7;
	Wed,  4 Dec 2024 12:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=90.155.50.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733315287; cv=none; b=W7wibehAeLyh5L/npmiOjSyaWtPBt1D2tOk7jVqxL24VIOnaXAE47C/JboqrYr2EnZOUhOYfEetmmacA5GQ2poKxB9QbqGrSSA4yyuappj0jUSarny06ZQcJu3yAm5T2ojCO1HS6iPh9tm+CtdL7uMnUlspyQ+KLMSvf6Eu0XC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733315287; c=relaxed/simple;
	bh=o6CqpoCUEeWNAIPLPWWteXgaMXwpJuUNzpX7qxLKQTU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qhfswCz+is97fZ/NbxBHf2dM80SXKHYoh383Aywg7qOQRLeh71oujgdMJuU64MjxaJFi77pGMQFSyybMCZiwCwrQbgsLAzhSvF1v2EAvwUsx5pveii1sb9FaKT6HzcEoYZiILVuF96SAiPLWtBiz3bNE4jjHnHabDDQKLPAX2dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=infradead.org; spf=none smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=IvOuysUc; arc=none smtp.client-ip=90.155.50.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Co9zNkLnEIMnet5VgPk4dK0LN+6wi7qa5XUeATqzPKE=; b=IvOuysUcO383y3W2WWAXJuWRiG
	hJdieqCeIq5YY0rhuyBFYzxH/Gn4/Kwm7r/05YQQrO3NdElClANi8UB/1y02xKgbRn+zSJ40pvU6i
	t1PT3OOujr2qZ0xMMzMkrrfwuna6EN0MNolxy2vyXNhUVjqCFblZvEYJSMu95tTfC+o5tP8HQb02M
	0burRLYfDA5Y2yOYv62Af73IByUrXwmn20XWGwZvAVYc7snfAXcSQDeOVDD4gXvfvqOr3W15FfcKN
	dXdvmYIU3zY+80KIeoMBivpS/rHY6kUQTUgI3gNaUkh0Nir8B9nwYQmYL43S9JqU6tgJ5som5heOf
	SlF7n5Kw==;
Received: from 77-249-17-89.cable.dynamic.v4.ziggo.nl ([77.249.17.89] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tIoU4-0000000BLfb-3sui;
	Wed, 04 Dec 2024 12:28:02 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
	id 610BB30020F; Wed,  4 Dec 2024 13:28:01 +0100 (CET)
Date: Wed, 4 Dec 2024 13:28:01 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Namhyung Kim <namhyung@kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>, Vince Weaver <vincent.weaver@maine.edu>,
	=?utf-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	linux-perf-users@vger.kernel.org
Subject: Re: perf_event_open.2: mmap ring buffer requirement for receiving
 overflow notifications
Message-ID: <20241204122801.GK35539@noisy.programming.kicks-ass.net>
References: <CAHGiy68y37n-y_b0gR-dArxFRzYOAr93dCw_6bvkNReNWQ37Hw@mail.gmail.com>
 <00910b8e-fdaf-45ae-8dcc-8c926d7fce65@maine.edu>
 <Z04eZN4Cpbqw4Rpe@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z04eZN4Cpbqw4Rpe@google.com>

On Mon, Dec 02, 2024 at 12:53:56PM -0800, Namhyung Kim wrote:
> Hi Peter and Ingo,
> 
> On Tue, Nov 26, 2024 at 05:13:45PM -0500, Vince Weaver wrote:
> > On Sat, 23 Nov 2024, Mikołaj Kołek wrote:
> > 
> > > findings. In the MMAP layout section of the page, you can find this
> > > sentence:
> > > Before Linux 2.6.39, there is a bug that means you must allocate
> > > an mmap ring buffer when sampling even if you do not plan to
> > > access it.
> > > Unless I'm somehow misunderstanding it, this statement does not seem
> > > to be well worded, or alternatively this bug does not seem to be
> > > fixed.
> > 
> > That text was probably written by me.
> > 
> > I tried looking at the 2.6.39 code, my perf_tests, and also PAPI which was 
> > where the problem was probably noticed but I can't find a firm reference 
> > for how the issue was fixed.
> > 
> > If I recall, the problem was if you were trying to create a sampling event 
> > without mmap (say you want to get a signal every 100,000 retired 
> > instructions, but you don't actually want any sample data).  I think 
> > before 2.6.39 if you tried setting that up you'd get some sort of error 
> > (an EINVAL?) when trying to start(?) the event.
> > 
> > It is possible this wasn't fixed.  I tried to be pretty good 
> > about putting relevant git commits as comments in the manpage but there 
> > doesn't seem to be one for that part of the text.  I'm guessing it was 
> > PeterZ doing the work on this so maybe he remembers.
> 
> Do you remember what was the issue exactly on sampling events w/o mmap?

I can barely remember last release :/ But looking at the code, I don't
see a reason that wouldn't work today.

Only the overflow handler should care about there being a buffer, and
that just NOPs out if there isn't -- expensively, if this is a common
thing, this could perhaps be optimized a little.


---
diff --git a/kernel/events/core.c b/kernel/events/core.c
index 4c6f6c286b2d..190b5c3cec10 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -8117,6 +8117,8 @@ __perf_event_output(struct perf_event *event,
 
 	/* protect the callchain buffers */
 	rcu_read_lock();
+	if (unlikely(!event->rb))
+		goto exit;
 
 	perf_prepare_sample(data, event, regs);
 	perf_prepare_header(&header, data, event, regs);

