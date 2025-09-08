Return-Path: <linux-man+bounces-3838-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A2CB4906E
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 15:55:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 47BA01B23AA8
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 13:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3067E30ACE7;
	Mon,  8 Sep 2025 13:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="okKxiTWp";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="RmKMqWDL"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B05F2F3C28;
	Mon,  8 Sep 2025 13:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757339499; cv=none; b=ok4VhkUhBYMwPpbQhzFK1yEeGAmey+d+UyZXgcl07PLkOGZAmbc5XTM2h1HG0lz7nFs+YoF29W1Ld2TagTyVrs7DQ/4eYR5LvZd0GKW6RqNvoN8bk11yKJlZ415EtxVyzYqL9kxqYAtRAp8Axq2yg0CrDgfSdvSs8ftZjOC33OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757339499; c=relaxed/simple;
	bh=hAHGNnJ6UW05cW1JsrVGRTxhwwrIDiJxax5peCYniBE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AKmnyzuCdC0xyygASrjda9GamqLZ5MJa+Qy2hupdr/eTLeGbQMtONF3Bl5831D39k4kskzT6opQDHSEPYxX6rrjbv1bX4+YoqlI323ZNjeSiRkaf7GnT5c0gNQKZ2Wj8yYIN+Y/jHZvz4vFV9kJ1/rLXLCTBXA2a1S3V2VlWw4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=okKxiTWp; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=RmKMqWDL; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Mon, 8 Sep 2025 15:51:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1757339495;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=m3Pmue09XkOVf5YzOMv96O7A9Q18FI53zPhhT6F+Evo=;
	b=okKxiTWpq4vuW/aIUYlBRoHeDmat9n1/vmFw8jEQmtjNaNayw9h4PV+UQW2ibIvEvVwSD0
	Jmi3zNdeB2etPVJhZcvRrzOSwKbDMVVirOkuVxPhNoHZ4P6aLFttUOw0ADRJK+mU5K3pgn
	0kWRAxOxrSI4AVQzW4yAcU7oVxT3BhKcFTlKZBlOjROrAc1UdK2TsNjNqUtDq9CzpgZKMO
	bIcWMuiymdM2iYtN34f/DB8Vc+FhLlvh8Vx4R/s5l5iA2LMP1wXn724x1utzDxn+hsdtFy
	dDuWtN9OKA3vPw9ZvYz0UJISsKXtl6SkvsSgfyXLmJifjEaqiIJ9ctWLCZr9sA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1757339495;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=m3Pmue09XkOVf5YzOMv96O7A9Q18FI53zPhhT6F+Evo=;
	b=RmKMqWDLov4f/IhpfPpHekw+O85G48aNO6gTzA4M0yVBOU7EINhdbnLBmKaZkT63QEN312
	ElEe4UwepFlYAiAQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
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
Subject: Re: [PATCH 2/4] man/man7/sched.7: Update the documentation references
Message-ID: <20250908135134.lMIYucZP@linutronix.de>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-3-bigeasy@linutronix.de>
 <20250830072857.mw224c532jj5xdlj@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250830072857.mw224c532jj5xdlj@illithid>

On 2025-08-30 02:28:57 [-0500], G. Branden Robinson wrote:
> Hi Sebastian,
Hi Branden,

> > -.I \%Documentation/\:scheduler/\:sched\-nice\-design\:.txt
> > +The Linux kernel documentation for the scheduler
> > +.IR https://docs.kernel.org/\:scheduler
> >  .P
> >  Worth looking at:
> >  .UR https://wiki.linuxfoundation.org/\:realtime/\:start
> 
> This is not a gating/blocking suggestion.
> 
> You might consider adding a real hyperlink similar to the one at the
> bottom of the context.
> 
> Thus, something like (hand-written diff):
> 
> -The Linux kernel source files
> -.IR \%Documentation/\:scheduler/\:sched\-deadline\:.txt ,
> -.IR \%Documentation/\:scheduler/\:sched\-rt\-group\:.txt ,
> -.IR \%Documentation/\:scheduler/\:sched\-design\-CFS\:.txt ,
> -and
> -.I \%Documentation/\:scheduler/\:sched\-nice\-design\:.txt
> +.UR https://docs.kernel.org/\:scheduler
> +Linux kernel scheduler documentation
> +.UE

Thank you for the suggestion. I keep The UR macro as you suggested but I
move the description before the UR macro. The reason is that once it is
as suggested, `man' does not show the link anymore. I can click on the
link via `man -H' but I would prefer to see it right away.

Sebastian

