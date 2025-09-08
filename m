Return-Path: <linux-man+bounces-3842-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F5BB49158
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 16:27:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 232DA7B1D9D
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 14:23:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A13430CD80;
	Mon,  8 Sep 2025 14:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="dvN5uYdY";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="MBdwMYkX"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D498930B52F
	for <linux-man@vger.kernel.org>; Mon,  8 Sep 2025 14:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757341515; cv=none; b=nOXoyUDpgm9QTminc44gisnAExKvXFz2jfopPNHYlicrc4ZIU90gk3nx3AHyJ8eYo2y2GxZbVw9ehPnSGLsRr+Tb/rgF77eFxJFAKpwsJPF5916drSecCxy46WiLtCckI410dEHlgkldo1qqNmeNQTcDQzVvYdjNCLdX2n+6nfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757341515; c=relaxed/simple;
	bh=T6ZQ53RCcvNZzichuCGlpfH0TvbJKlqz+WS9KklkauU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i5fRRLVuQirvJiT4Dpc6s+bm8QNvlXtOMiKDhlp4qWcNHFpCiEK/eY900ZFjjgUTSqCYY7fJPL9noWj0hzMX6Nc4+eWx3GCfONs0lj8UQi9dewpsS3Y/dGUh7JH0lzWzyH9+4JE35U/4JeWGUlXvTtBsAyIkq+sUSZ7/9TCSbbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=dvN5uYdY; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=MBdwMYkX; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Mon, 8 Sep 2025 16:25:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1757341510;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=dK0xo7wC8myNb+ELHMwA4h9l5K1h5YL+YKNIUjFNonk=;
	b=dvN5uYdYXIJzk9bTNc6pu4QOrsplGutXRFIc2ZwuoPfkWAf858tHptynRSMpZ7UFa+jqvA
	3wu6DYg3b503bBjtW2ZtpVz7EQhGOm+380UC8gHnc5HDKrkw8Q56qYu7tbbG9i/wJzFAew
	m/JInS8WMBA6hhrHj4EOuidGu10ER0m9KkAs3n0Sxz008iLKf2kEWyH0XhRk1qzANCU3Ds
	GmHBdWDFI+fFmLqTgGG2jK5+026bnlN9+oRz1yJlCjl9frAd2cZTY+fdit9uhsxoqzLZoo
	eMZ/SmoHo8FrOIVtBxEaKouDAPctnAim0GKE+q09T9q39+roZPSmxcbD6jPZNA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1757341510;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=dK0xo7wC8myNb+ELHMwA4h9l5K1h5YL+YKNIUjFNonk=;
	b=MBdwMYkXYBI+AoPhiw5u+VOXA+M3Fbfg7mmTBcqPMkWFSam8J2mQT+S7spLdZuNYIpCrxD
	HaHOzG90BIrVgwAw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH 2/4] man/man7/sched.7: Update the documentation references
Message-ID: <20250908142508.QWJtvSuJ@linutronix.de>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-3-bigeasy@linutronix.de>
 <20250830072857.mw224c532jj5xdlj@illithid>
 <20250908135134.lMIYucZP@linutronix.de>
 <20250908141102.ie4yoo5xasiimybe@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250908141102.ie4yoo5xasiimybe@illithid>

On 2025-09-08 09:11:02 [-0500], G. Branden Robinson wrote:
> [CC list pruned heavily]
> 
> Hi Sebastian,
Hi Branden,

> Hmm, that sounds like a bug.  What versions of man(1) and groff is your
> system running?

Just to be clear: The following
| .P
| .UR https://docs.kernel.org/\:scheduler
| The Linux kernel documentation for the scheduler
| .UE
| .P
| Worth looking at:
| .UR https://wiki.linuxfoundation.org/\:realtime/\:start
| .UE

rendered via "man $file" as:
|
|       The Linux kernel documentation for the scheduler
|
|       Worth looking at: https://wiki.linuxfoundation.org/realtime/start

> $ man --version # This will fail if it's mandoc(1)'s "man".
> $ groff --version

man 2.13.1
GNU grops (groff) version 1.23.0
GNU troff (groff) version 1.23.0

> Regards,
> Branden

Sebastian

