Return-Path: <linux-man+bounces-3846-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E92F3B49430
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 17:49:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 578374C26B4
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 15:47:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 342E8311581;
	Mon,  8 Sep 2025 15:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="ILX77fbK";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="KpmAKFGm"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7005630F54F
	for <linux-man@vger.kernel.org>; Mon,  8 Sep 2025 15:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757346259; cv=none; b=dQJK4CNjFTXLzoDQW4MPCCXNOU1Qt6ZW+7bFJCyQXOEG3LKqgUT3oDr5RlcmAK9yw94SgKXTN6p/V9UEjMCMvuiQbj5qkYWEjIbRgk+JiTqyxrDv8/GXhg8i6EInkrFuEgzAAl8Kb41vw1wqLn981q0VyM3eOI50IUEVmCV2M10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757346259; c=relaxed/simple;
	bh=6ox6r8ERrED4x9nneCIdkbp1ZYZDPjvC3kiZkXKWNSg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qx0Lo/OJUm47mQwKxykIQm4MheolF68/Dog9J2ePF4p1q2Pxu4Iijk8EiIYA9k+M4r3fWGTDcwvvEw4UotXq3MH36mmyEG1nTckiYJtmUa/Ua6t9E/MSnWnFIzztU4aG+GLz1vVBJiTb70JBFgJ2FTm4pVAA+M3Qv/UBrQdpxy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=ILX77fbK; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=KpmAKFGm; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Mon, 8 Sep 2025 17:44:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1757346255;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tKpdCdpcft3Y9FdGb56a/56kytHTPYlko3RyhbYYFzA=;
	b=ILX77fbKYE5bG56EQxoeqT0Mmn6558I1PiXTPPpUhC5Z5xtqiHm1XCt/dzby/OSQP1g4zc
	vZ2xr+4JblKKrs/4jKLHivTJWfMgbK9vgM8p3O3oRUuXfuTep3Qx3ASlRLbkVR93IlkcZ8
	Up4WY1WS+k17TO2EuoZrFfIDXUfGEGdNPG83ACNLS4ptMyHb9rYwpfnfrPjKrlObr92Zuc
	IFZnBfITaRGShdgkRK7kLzYigetHJE/zzbXZK/yqtXjCYlXzQe257dii6BI35WnmPwKwFj
	+jNmE9ANjovRjjBy9Tz8J71FznfH9z3zwiBcbtaQS8F70k+6iMQwGdwEJ99vIw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1757346255;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tKpdCdpcft3Y9FdGb56a/56kytHTPYlko3RyhbYYFzA=;
	b=KpmAKFGmz95HGUB0Ylpte8Kshg9IerBQs04QNad4IKA5Br6rPAT1RROGWl83ogEcfeJZJZ
	CdK3lzgYmi8U0uBA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH 2/4] man/man7/sched.7: Update the documentation references
Message-ID: <20250908154413.cJIo12oU@linutronix.de>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-3-bigeasy@linutronix.de>
 <20250830072857.mw224c532jj5xdlj@illithid>
 <20250908135134.lMIYucZP@linutronix.de>
 <20250908141102.ie4yoo5xasiimybe@illithid>
 <20250908142508.QWJtvSuJ@linutronix.de>
 <20250908142915.gse3a3wde3jyruxh@illithid>
 <20250908143411.hXW9GRME@linutronix.de>
 <20250908150248.a2inbo66jrukhncb@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250908150248.a2inbo66jrukhncb@illithid>

On 2025-09-08 10:02:48 [-0500], G. Branden Robinson wrote:
> Hi Sebastian,
Hi Branden,

> There are a number of workarounds while the community sorts out an
> end-to-end solution that will involve cooperation between grotty(1) [on
> my plate], ncurses/terminfo, and, ideally, terminal emulator
> maintainers.  (Strictly speaking, the last group doesn't _need_ to be
> involved; anybody could submit patches to ncurses's terminfo database to
> advertise relevant terminal types' support for a so-far-unnamed
> capability representing OSC 8 support.)  Beyond those mentioned at the
> top of the foregoing mail, here's another approach you could put in your
> (more or less POSIX-conforming) shell's startup file.
> 
> case "$TERM" in
> xterm*) MANROFFOPT=-rU0 ;;
> *) ;;
> esac
> export MANROFFOPT

I see. TERM says xterm-256color so that will work. It also works for
screen.xterm-256color and tmux-256color. 

Do you suggest everyone should use that?
Is this something that regressed recently (you mentioned that Debian
stable is using 2.13.1 and more people use it than expected) or was this
always like this?
I could try to route this towards Debian in case it helps.

> (I don't see a terminal type entry for "lxterminal" in ncurses's
> "terminfo.src" file; this isn't a problem as long as lxterminal _very
> faithfully_ emulates xterm.  If it doesn't, an lxterminal developer or
> power user should probably submit a type description.  This is true
> irrespective of OSC 8 support.)

Based on $TERM I would hope so ;)

> I'm sorry for the difficulty; advancing the terminal emulation state of
> the art takes the work of multiple pairs of hands.

No worries. Would you _now_ say that you would prefer the "title" before
UE macro (as suggested) or before the UR macro (without a URL
description).

> Regards,
> Branden

Sebastian

