Return-Path: <linux-man+bounces-3061-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 964FCAC8BE6
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 12:09:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 58C964A6433
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 10:09:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03B7921D5AA;
	Fri, 30 May 2025 10:09:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="BPJmYrLW";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="8Auf3AxE"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECA631C2334;
	Fri, 30 May 2025 10:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748599767; cv=none; b=fEnDIS7DWIR8jBuAu3WehzckyHoh7FKLPddSpOeLRSD7x+W24osER0wg6DY6kdFO/XDZfK3+g+FgUNG8SNiOz44tvKHF+aXyKIFzIPOYbJN0Bh0rB2hbvFNmAULhD8EGphg98m0g/XygpbPDSihy9PBHUxZ4sXaWKQ8YIZiLZQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748599767; c=relaxed/simple;
	bh=7+vncWVhgGu9hOTNBYzlfvyQxnA1QRVtNUr78fBBxJQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gwc3Y7bpd4siPa7N65g6aqkZ/yqp9YLQ9LaIMCH7wS5wWR+q4114kQQ+4MsujbmvkTkNDiSodDFl9AplCuU/c7C47ovJpZEXuaWSiiGqXiSEdrNDyHz3ywr1r/twJiuV4KEJKimyF6TxwcwT4lSzMWrLrUV0IUlOKDOkgUlYnmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=BPJmYrLW; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=8Auf3AxE; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Fri, 30 May 2025 12:09:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1748599758;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Iz0P0ciC0BCOwyUfUHYHmHAGOomd9UFVXAEuM70LZcc=;
	b=BPJmYrLWT1FGZGISXGEloh42Q2s8bkQFvZHtf7/ksrQIP9NWggEcQwbS2l3ALHmhze2zuZ
	xr81rPkknZR8lb2PZ5icKXSyRjt07FHj0QHWmwHwBuGteQSWvE4jXPz6wDHlL7zeV5hfQ3
	rtHxr1tBvaXnaBKUSfpH1YIU9SV6zSbXtcpPO8Yx/PeRBQeR5Y+7sxLgeQUAeDjvkHYBz9
	aFJeqzGlQKcphBE9X7/1/N25jYjZNE3/PvFLKqxy7bxQJS0BZfsbdbfzfcwgT185HMrkHe
	kab/6qEcPjvjBAtljzbTsihlT6E0+/GQknpv1HatD7qk6+tJi5HmKLUCof/mOQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1748599758;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Iz0P0ciC0BCOwyUfUHYHmHAGOomd9UFVXAEuM70LZcc=;
	b=8Auf3AxETh6l/DYurfr+WF69RCJYFiVQi4wRfl5Uu2r+bhndw8G16qMGSk2G+Gn3FM+uw0
	Y3KfOUHFD8DECRDw==
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
Subject: Re: [[PATCH v3] 1/4] man/man2/prctl.2,
 man/man2const/PR_FUTEX_HASH.2const: Document PR_FUTEX_HASH
Message-ID: <20250530100916._unhdZoo@linutronix.de>
References: <20250526155523.1382465-1-bigeasy@linutronix.de>
 <20250526155523.1382465-2-bigeasy@linutronix.de>
 <fs57mucg3z5ay5ga7gqr6kdhlddydtmspwfkbm3rjtpjp57b6y@opvhf34v5xq4>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <fs57mucg3z5ay5ga7gqr6kdhlddydtmspwfkbm3rjtpjp57b6y@opvhf34v5xq4>

On 2025-05-30 11:51:58 [+0200], Alejandro Colomar wrote:
> Hi Sebastian,
Hi Alejandro,

> > diff --git a/man/man2const/PR_FUTEX_HASH.2const b/man/man2const/PR_FUTE=
X_HASH.2const
> > new file mode 100644
> > index 0000000000000..c27adcb73d079
> > --- /dev/null
> > +++ b/man/man2const/PR_FUTEX_HASH.2const
=E2=80=A6
> > +Unrelated requests are requests which are not related to one another
> > +because they use a different
> > +.I uaddr
> > +value of the syscall or the requests are issued by different processes
>=20
> I think 'use a different uaddr value of the syscall' is technically
> incorrect, because two processes may have a different address for the
> same futex word, as their address space is different, right?

A shared futex over shared memory. Yes.
=20
> See futex(2):
>=20
> $ MANWIDTH=3D72 man futex | grep -B7 -A5 different.v
>=20
>      A futex is a 32=E2=80=90bit value=E2=80=94=E2=80=94referred to below=
  as  a  futex  word=E2=80=94=E2=80=94
>      whose  address  is  supplied to the futex() system call.  (Futexes
>      are 32 bits in size on all platforms, including  64=E2=80=90bit  sys=
tems.)
>      All  futex  operations  are  governed  by this value.  In order to
>      share a futex between processes, the futex is placed in  a  region
>      of shared memory, created using (for example) mmap(2) or shmat(2).
>      (Thus, the futex word may have different virtual addresses in dif=E2=
=80=90
>      ferent  processes, but these addresses all refer to the same loca=E2=
=80=90
>      tion in physical memory.)  In a multithreaded program, it is  suf=E2=
=80=90
>      ficient to place the futex word in a global variable shared by all
>      threads.
>=20
> Maybe say 'use a different futex word'?

Oh yes, this would make it simpler to express.

Sebastian

