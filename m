Return-Path: <linux-man+bounces-3125-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BD6AD4ED3
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 10:49:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15A6D3A6F5F
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 08:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FC782367AA;
	Wed, 11 Jun 2025 08:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="zOq0+O9L";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="6jkCKTmY"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FBC242D84;
	Wed, 11 Jun 2025 08:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749631641; cv=none; b=Ek3ptFOVOQCbf5tDC9l5LxVwnQogW8O/ufLX3a/Yn9sDqEFTCM9aq+bDSGMpwAN04PT6wz5OaikonryVsQch0jsGR3C2YNIhCSAdEQ688lJ42q26nrn856N9YdGg7Mq06NgKrrCYAwcM1VO1igDD50c7XhiFcmsIlnbp5a2oYo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749631641; c=relaxed/simple;
	bh=YApmuAVlHMJa5TYUuIvqedmJcT7o4DmiCC1RKGKA3xw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uleY+jpKwHre0qCekUa8iny8klQCEuAY5PL3hNxfh93ELCXXryc9QeyAf3po8Mfj2RGlbwSEiOMsC1XZn53fYkB/An81WC5ycQU78Ai0vTdJftz1FPNeo36bAwlPinftygcJTVarafUCCYACehRLnjmAJVuR72mye12d8X0c3bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=zOq0+O9L; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=6jkCKTmY; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Wed, 11 Jun 2025 10:47:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1749631638;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Ww+3r2ZSbNjFuxSR7NpFQ2gc1ncMKNmOev/rBrQ2YYg=;
	b=zOq0+O9LmN9lrumJv/Nj5vMffm4ywJtQRIqYb1WiAT8KxkArQiDCWqEfIt8fCINusRuwXr
	wSWJMFfKxBVabM480DYhbOYh7hByax71gSCqq29MSeayuOUs28oHqJvAr8YukvcJV3ynHR
	Wv/W1ueww6HD1Y68uYPBjiXxDyVz0EWKKMLrkXRkF8UN7USqEFh1RyLrN8R44fUIv64+Oq
	YDdxgiS5EYebdceOykjnI6lBNP1PEP0Ok10xad0WR4Hyzet6+UfKLK0YMWI2Kq7D+YyJPV
	nzLw9eMJl+EivG29kwpXIMHjrk+B3R1GaGXNZiwe2CwEss3HYlyA6uU19IDvqQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1749631638;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Ww+3r2ZSbNjFuxSR7NpFQ2gc1ncMKNmOev/rBrQ2YYg=;
	b=6jkCKTmYC/smUJ/9UyWjoHUiSNzs0qWJdZpYMwPolHRfjJ92oDxJ+jsRwy/Ht8b6bbWoME
	uLl4zvhMDNUZ97BQ==
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
Subject: Re: [PATCH v4 1/4] man/man2/prctl.2,
 man/man2const/PR_FUTEX_HASH.2const: Document PR_FUTEX_HASH
Message-ID: <20250611084716.xboKOTHN@linutronix.de>
References: <20250602140104.2769223-1-bigeasy@linutronix.de>
 <20250602140104.2769223-2-bigeasy@linutronix.de>
 <qgp2ueiyfwfd6t3fpwvnryrhnpy6rro5npsqjqzvkovhyawiyb@kl6igspxexqn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <qgp2ueiyfwfd6t3fpwvnryrhnpy6rro5npsqjqzvkovhyawiyb@kl6igspxexqn>

On 2025-06-11 10:43:07 [+0200], Alejandro Colomar wrote:
> Hi Sebastian,
Hi,

> On Mon, Jun 02, 2025 at 04:01:01PM +0200, Sebastian Andrzej Siewior wrote:
> > The prctl(PR_FUTEX_HASH) is queued for the v6.16 merge window.
> > Add some documentation of the interface.
> > 
> > Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> 
> LGTM, thanks!  Please let me know when this is merged into Linus's tree.

This is in v6.16-rc1 since last Monday. We do regression handling now
but I think it will stay. I can poke you once v6.16 is out in case we
need a last minute revert of this.

> Have a lovely day!
> Alex

Sebastian

