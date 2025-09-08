Return-Path: <linux-man+bounces-3844-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A8BB491AD
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 16:37:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 801047B7169
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 14:35:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7E4530C62B;
	Mon,  8 Sep 2025 14:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="iU+kTLXa";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="AIj5+YN5"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2289630BF4B
	for <linux-man@vger.kernel.org>; Mon,  8 Sep 2025 14:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757342056; cv=none; b=uTWImijOLxkuMXtdIPBdRJr9rPoCnfYx8m6rWQlirhP3pSZX+UHTcOhSDdLq/2JNnqpLDgkcciYr1bJ8EHb4TBQF2/RO5NBMxbHD6JEYIAjR2K+p/k9cxMlFjwWgbkoR0FQ9UfB935C/Xy/BhibnUVPqpKOZyhc8D3Rh2DfD9uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757342056; c=relaxed/simple;
	bh=2a6M5hGliKS3fDbB5Q2zALRjIsvTOJpKL1Bmb9YZPuw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K1BgXcLLGXXtQp2afwee+/l3x3k+p0PSDvxZ+hYmCSXCLu9d8Y+QTaRe8XgVr/wA6Hcm79TCj53gzXjKs1Lpj3+Eqjdi9iWIolmypqKyMugESvHnmTK38sSN1Dp3j6MWoz7TwMiE7gNVv8iZVaQd6Wd19PlKyOc7xylw7gC5iPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=iU+kTLXa; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=AIj5+YN5; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Mon, 8 Sep 2025 16:34:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1757342052;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EnrQM16vbZ33CUtiR8IIUXo1WYSM1teFvcxODfH5K3w=;
	b=iU+kTLXadhKRuNtw2gf5JSsc1qPD9bYSuJw5lqLJQJSjwj9zbwzs0N1taQixwmuIDlKA1i
	hvshE7fAIRyL6nDGcD94EMmvvvtfcxSsCcx1MkQetIfFaTa1qctgI/TG6S8J4hiVIrshDg
	BVsahSsIgWaVB35DHaJZHEtsfBNghjaeTOWls7xC5ws7psSLFM4qJgbj6vu7X9B1bg5StG
	ozD54vo7ybs+g24cMPLTXENvl7SWhUoWe+GnFI1qdweFTtJe1i004HUvlCV5NaiUFZHUkg
	3MWH8vQOLaFkiwL6AcKcYi7Czd0P5FplZx6D677r0hr6zL9+itDcRhE215x9ug==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1757342052;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EnrQM16vbZ33CUtiR8IIUXo1WYSM1teFvcxODfH5K3w=;
	b=AIj5+YN51JbvC022FPd9zHcyv/C4KteNuOOTXxRjTLUtkCF5RGO9ytstpg7uV1NTAeTBua
	+1lfPpp6pejUA6CA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH 2/4] man/man7/sched.7: Update the documentation references
Message-ID: <20250908143411.hXW9GRME@linutronix.de>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-3-bigeasy@linutronix.de>
 <20250830072857.mw224c532jj5xdlj@illithid>
 <20250908135134.lMIYucZP@linutronix.de>
 <20250908141102.ie4yoo5xasiimybe@illithid>
 <20250908142508.QWJtvSuJ@linutronix.de>
 <20250908142915.gse3a3wde3jyruxh@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250908142915.gse3a3wde3jyruxh@illithid>

On 2025-09-08 09:29:15 [-0500], G. Branden Robinson wrote:
> Hi Sebastian,
Hi Branden,

> > > $ man --version # This will fail if it's mandoc(1)'s "man".
> > > $ groff --version
> >=20
> > man 2.13.1
> > GNU grops (groff) version 1.23.0
> > GNU troff (groff) version 1.23.0
>=20
> Okay.  What terminal type are you using?  xterm, gnome-terminal, Linux
> VT, etc.?

lxterminal 0.4.1-1

> Also, try this:
>=20
> $ MANROFFOPT=3D-rU0 man $your_sched_page

So this renders is as

| The Linux kernel documentation for the scheduler =E2=9F=A8https://docs.ke=
rnel.org/scheduler=E2=9F=A9

which would be okay. So the problem is more on my end then?

> Regards,
> Branden

Sebastian

