Return-Path: <linux-man+bounces-3756-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBF4B3C1EF
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 19:39:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 169B4168FF9
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 17:39:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7A3C341AAD;
	Fri, 29 Aug 2025 17:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="3eW1WNOH";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="Y9t6UvRh"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E641EF091;
	Fri, 29 Aug 2025 17:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756489173; cv=none; b=IzL6ktYqRUzIyB2DeXJgoOvOwNi/sKVEB5+plJmCI/hgip2AQh+DnajEUNaNQ1DCVFMdUuNl03kv8ueEnOmaqhWOuEWw/AjcrPI/XKMxgvqmit9JufNBiDkXUsCB8t71G9bUfwwCEYQykQUCMxD5smuyd3xy1gWMxaPT6eMb168=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756489173; c=relaxed/simple;
	bh=M1TqX1G0Z62RwrPHVPO1tgrYo3MJGa630SlsMDc3zPU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MoiP57WNTxyQN6CZTACdNLfOZgG2/agqzGrYWG1cieWm+hc65vsMzSW0DXEnQ7FkTeR9IWs1ruQyCzv/8ROnlxOu4I3W+sso/RJIQfs+7E6zx70DyolQU5JbIQc2qX4QlTv78frOYlHpauFbIivBr/Mt2D8BxWBSM7z/f6oFZEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=3eW1WNOH; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=Y9t6UvRh; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Fri, 29 Aug 2025 19:39:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1756489170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+kPKNqLzCJ+OEI+Dk15NETRdqt/FKwRzKWAqyjW2wmY=;
	b=3eW1WNOH34UsEhV9zEhSPuhnGwWgRbNcGCfI4IwCaID3fpeClPDfrIrPHKhe+v7STfAEpd
	UBADKZ5O4OAmgMml3QE0+fRBbdjDhMjRKbWWmR7l5e3zBxvJRm8fb8jdekfK0Sah1SxqZO
	Mx7vEpApevQHZYaIoHEEIgM9s99pDfcH3x37AYlwHWWYdtsg7V0Aexy86lfQPJkBoCwjCy
	EVqncZqQNvukeCRneO7GX57XcaLUjT0qo4XgY1UiNAkWwZilLVcQP4Xm4kAKVGHw7rMKKP
	8k5aMXD2WoYE10zQDAsFYURzOvzimSKUg/ZCIsS4EpLBUejXsOgwnv/5kym6hg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1756489170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+kPKNqLzCJ+OEI+Dk15NETRdqt/FKwRzKWAqyjW2wmY=;
	b=Y9t6UvRhB5iitC8QuypEp8t5Kia5sD6N2kH67SlmuBkiLqaMx/hf937zL30nV6ku7nyQzC
	C7ORdCQxcQ8ewXDA==
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
Subject: Re: [PATCH 3/4] man/man2/futex.2: Recycle two gmane URLs
Message-ID: <20250829173928.K82VGvOw@linutronix.de>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-4-bigeasy@linutronix.de>
 <1ced3c16-1534-4e43-8025-2301c134bbdd@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1ced3c16-1534-4e43-8025-2301c134bbdd@redhat.com>

On 2025-08-29 12:43:26 [-0400], Carlos O'Donell wrote:
> > index 69df4036ada7f..027e91b826bf1 100644
> > --- a/man/man2/futex.2
> > +++ b/man/man2/futex.2
> > @@ -6,10 +6,10 @@
> >   .\"
> >   .\" FIXME Still to integrate are some points from Torvald Riegel's ma=
il of
> >   .\" 2015-01-23:
> > -.\"       http://thread.gmane.org/gmane.linux.kernel/1703405/focus=3D7=
977
> > +.\"       https://lore.kernel.org/lkml/1422037788.29655.0.camel@triege=
l.csb
>=20
> Wrong link?
>=20
> Should be this link:
> https://lore.kernel.org/lkml/1422037145.27573.0.camel@triegel.csb/
>=20
> Where the discussion is about the unresolved constraint to guarantee FIFO=
 order.

I thought it is the longer email, the second that day, where he made
three points. Didn't read it (yet)=E2=80=A6

Now FIFO ordering you say. Is it glibc's side or kernel side? The kernel
sorts the futex waiters according their (task's) priority. It is not
FIFO unless the tasks are of equal priority.
So a futex requeue will take the task with the highest priority from
uaddr1 and move it to uaddr2.

Sebastian

