Return-Path: <linux-man+bounces-3020-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6263AAC42AF
	for <lists+linux-man@lfdr.de>; Mon, 26 May 2025 17:56:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 26A621897B11
	for <lists+linux-man@lfdr.de>; Mon, 26 May 2025 15:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE5542144DD;
	Mon, 26 May 2025 15:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="mUO+ZsyM";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="NOSftc+Q"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BCB288DB;
	Mon, 26 May 2025 15:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748274943; cv=none; b=cRHMbs+knIdUljS7abtc4B5CcxXt+i8JQ9jIPgIRjmnsP1Myr8mFhQk7stAvW3ZYLi2jTS8jb8gjQnjurheh0IN5y0UzKx0ubXuwDoiNiA45xJoO6KmdjZDxFPUQTV8wdEzEUVWxin6prLqkhHUONSVSdViK5lSa3kn1ZO2Nu7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748274943; c=relaxed/simple;
	bh=p37ePxDF2lBDX76mRz579xeYoozUIkfhRnxxXh8QAV4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gLEERXN3XZigD87u+TK3S69bArliiqkY9GGzN7AhZNmTNkKCWMxCrgGLd+/jl5KBe07EP6RB4x6hUHA1uAKaQDjruTDG7jRxGBJ8gq+abJ1JvWPu/IDAzTuoN5utgFOeKjt3c0tiDBt+AY5WdH/68H5acmOnwn/fbmidWdYSXeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=mUO+ZsyM; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=NOSftc+Q; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Mon, 26 May 2025 17:55:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1748274940;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2tRp8E46LP8WV7k/mxfs8lvZ8NC6UVmuKo+RU3Fuo9Y=;
	b=mUO+ZsyMoqdbqQ18RfMi1L+Tw5T0JCJh7My2mTJdW0w9KOJRobBrEfG/Bvy0SjE6WcNE7c
	ciV+ObwkuwR7ksCYNCrTs6Ec1mvmWvMY/G4NJwv9Nyet4lSRD9te5V7/V23mSqV/MRLZSl
	8rjN4Hmo0bVXRefyYYT5gdT2OsV1RrNvaZnzat0mPHB2wv1Bt6tHRO40T2TW+R/TJyqedy
	nfaQP1l7yssWf5TZpiQpTrwwj69n3BeZXa8VNo0rH+xvbOqa8F8UuZoPJeUsxyL6nXffaI
	MTC1VQPuYzivEY1ynfyAdXQjBf++Vo2a87wrrLM5f1nnqJ4uTS1Z5r3llxNjyA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1748274940;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2tRp8E46LP8WV7k/mxfs8lvZ8NC6UVmuKo+RU3Fuo9Y=;
	b=NOSftc+QaQbSPyEdBQXFGG1FlRFv7+ls249JuWdh62f9qt3wBzezKnIY6R+2XsiC/l9YSg
	ZGnwpoWZ1NXPToBQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>,
	Darren Hart <dvhart@infradead.org>,
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>,
	Juri Lelli <juri.lelli@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Valentin Schneider <vschneid@redhat.com>,
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v2] prctl: Add documentation for PR_FUTEX_HASH
Message-ID: <20250526155539.gpxfT3pS@linutronix.de>
References: <20250516161422.BqmdlxlF@linutronix.de>
 <fuudjpar7kv7liwj4aucekktkzuhkalzkhsz5gv3mxzletlstk@tzokaret52cv>
 <20250520104247.S-gVcgxM@linutronix.de>
 <fzoy24xjr4w3kxt6suya5dfici6uxk6d3gzrjwruujlkca3zwh@3dqnmbah3bxg>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <fzoy24xjr4w3kxt6suya5dfici6uxk6d3gzrjwruujlkca3zwh@3dqnmbah3bxg>

On 2025-05-22 14:22:15 [+0200], Alejandro Colomar wrote:
> Hi Sebastian,
Hi Alejandro,

=E2=80=A6
> > --- /dev/null
> > +++ b/man/man2const/PR_FUTEX_HASH.2const
=E2=80=A6
> > +number of CPUs in the system.
> > +Since the mapping from the provided
> > +.I uaddr
>=20
> This is the only reference in the entire page, and is also not mentioned
> in prctl(2).  I guess it refers to the one passed to futex(2), but I
> think that should be mentioned.

I reworded the sentence and hopefully improved it. And yes, it refers to
the argument passed to futex(2).

Sebastian

