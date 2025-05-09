Return-Path: <linux-man+bounces-2898-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B86AB1E96
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 22:56:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CCDB31BA847F
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 20:56:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CE7E25F7AB;
	Fri,  9 May 2025 20:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tycho.pizza header.i=@tycho.pizza header.b="gCOQhzZz";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="pnrO91OV"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-b8-smtp.messagingengine.com (fhigh-b8-smtp.messagingengine.com [202.12.124.159])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCAB122D9E3
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 20:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.159
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746824170; cv=none; b=lpo0RwA1LFYrfQ02bX0ebY6kK6AZqtgfcifkJ0HVgZbHEpyEHK1gzWMo6gi6JNphh1F4P6hc+mVAcEzsmTdDJsvYtM6oZUW4ae0npXY/ZsWWNuX9rDuj8j8W+wt9cNYTAV6FTNVBfrrT6LM2+1wDl8VEbWvljV6k9aCNWhry0Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746824170; c=relaxed/simple;
	bh=JcUqTccXKkwOJk1YVveqOxsJkSv2QfTPHMJpguvuFio=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JRcXT413WHIN80J3/8zYtNJ8xsy6Xs6VjIEgD2AuaEvqvSOAJjD+QuG+JxXRspTJ8Se6py4EyBwFuP5hyP+/dbs8AYownh+BZAhzqk1rcsUyH4zwaOF9yLVp1g8x6odad+0l/vAqUDEeFWYUFfU6ap3QsgWSHa5zJ3tFQm5Sn0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tycho.pizza; spf=pass smtp.mailfrom=tycho.pizza; dkim=pass (2048-bit key) header.d=tycho.pizza header.i=@tycho.pizza header.b=gCOQhzZz; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=pnrO91OV; arc=none smtp.client-ip=202.12.124.159
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tycho.pizza
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tycho.pizza
Received: from phl-compute-03.internal (phl-compute-03.phl.internal [10.202.2.43])
	by mailfhigh.stl.internal (Postfix) with ESMTP id D4B822540179;
	Fri,  9 May 2025 16:56:06 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Fri, 09 May 2025 16:56:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tycho.pizza; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1746824166; x=1746910566; bh=Gj6zU6SpdC
	5UDi98LLp82zr9B39u2nj1wfS5VlhJC88=; b=gCOQhzZzZaOhwxTIvmDYSNqKTr
	WUMNhI5PhI8fd2daSeRX9ndi84H60ZA+m4GOske/djTTR3L49kxlRZ0+qmMrzsob
	279ps5jqXAgJPJ2ZhfGKtNGh0BRBHRNjfPtBtN93fnG2JpuZDD3icK3jF4y1dQnT
	MMlj6waF1uv1p7glqhUrUneMSkuUqq4p9JnrVvZvftvKVIsVmVnWgf3mlVP1R1jI
	vlWgIF5aIcMi1ITaR53XedsalvQgAIfP3xIFooZ3VFd9IogDPUbxt+MsmppdjfT7
	iXvqcaUm1l+FSk6/CJXbWfKwfewZhU6qfAXRfQyyFF3bhPA3K5jyO4wxkDvQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1746824166; x=1746910566; bh=Gj6zU6SpdC5UDi98LLp82zr9B39u2nj1wfS
	5VlhJC88=; b=pnrO91OVh7sXjvrHROigJ4UjkmfwtBVY1w/serAJR0CuH56Gyw9
	wSWPdvPQte8K6ywq+ZdLj+3//w3K09oJTHSuzSP0Z7O0WG3y4a1lsoQ5eU9WtHOo
	zh82B9X0tVLebZClnKSIKSk/QNl8eyb8K7oX5nf1tHYY91WU9iZ5YsZZKKsCkRtV
	0KlawCePiaAz/0EFpzmTiuB6imdd5/hlLmG8VtHTOLvneaNWDkRmItHUGeTBCsLM
	0pW4LC7BhSXcet3CEoHNnpLtEsXp2/eY+uxOaJ91FRdxZIZKgyGRDrDcE5GWhtJV
	DuLA2DzOihhjO3ZGBiIMdsg0C6x5weN4r4A==
X-ME-Sender: <xms:5mseaIiqQv0NhZxIC4lO9GzPBlynV_8A4-hqXW8L5ck-KbGc6pIf1g>
    <xme:5mseaBDo7ieluFKdrDYMMQWw2-fD4WfaAETu5dZ1oALZvIYidhxu6w24sdiTzumJi
    jAfac5mKUxPq_3jE9U>
X-ME-Received: <xmr:5mseaAGHV2tFGsqrem2mbRWMp-z_91mMsGdDUplmw0-zXYygzxnUmezFST50jkpd3gupDJtFDLvNoqTC3eUe3qutUQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvleefieefucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
    pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
    gvnhhtshculddquddttddmnegfrhhlucfvnfffucdludefmdenucfjughrpeffhffvvefu
    kfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvhigthhhoucetnhguvghrshgvnh
    cuoehthigthhhosehthigthhhordhpihiiiigrqeenucggtffrrghtthgvrhhnpeelvedu
    teeghfehkeeukefhudfftefhheetfedthfevgfetleevvdduveetueefheenucffohhmrg
    hinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
    pehmrghilhhfrhhomhepthihtghhohesthihtghhohdrphhiiiiirgdpnhgspghrtghpth
    htohepgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheprghlgieskhgvrhhnvghl
    rdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdroh
    hrghdprhgtphhtthhopegtrghrlhhoshesrhgvughhrghtrdgtohhmpdhrtghpthhtohep
    ghdrsghrrghnuggvnhdrrhhosghinhhsohhnsehgmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:5mseaJTNXu-lFUTvRL4wV5ysmGv4N-RZxi2QwhvmxkIyL2cUUurOlQ>
    <xmx:5mseaFxExDBKnbCeMVVgHeAYlUeBGrCk0ynPljQubEA51wnOTQNWOA>
    <xmx:5mseaH5fsmYRBTsz9WATfkbRo4pKmB4RfGx1nogH5XwJGtCuWlPdFA>
    <xmx:5mseaCxug7o9zQXy8AvMbrXwTVJ7eaUo5UW9sycuevokz-VlLz0Hpg>
    <xmx:5mseaGpI4OS_fnJUVdXGb8yCk7-kLZ3LIDIEd7KiAEWi2js4uP1f8LJ1>
Feedback-ID: i21f147d5:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 9 May 2025 16:56:04 -0400 (EDT)
Date: Fri, 9 May 2025 14:56:01 -0600
From: Tycho Andersen <tycho@tycho.pizza>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <aB5r4YOVpW5rNKL5@tycho.pizza>
References: <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <aB4bk7udjMKo336Q@tycho.pizza>
 <vaja6de7wo5lbdf7nephc4eb5xpx4nhwv6y6nkdbppry7qz22r@6jw3zqipjunn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <vaja6de7wo5lbdf7nephc4eb5xpx4nhwv6y6nkdbppry7qz22r@6jw3zqipjunn>

On Fri, May 09, 2025 at 08:35:15PM +0200, Alejandro Colomar wrote:
> On Fri, May 09, 2025 at 09:13:23AM -0600, Tycho Andersen wrote:
> > Hi Alex,
> 
> Hi Tycho,
> 
> > 
> > On Fri, May 09, 2025 at 02:54:31PM +0200, Alejandro Colomar wrote:
> > > Hi all,
> > > 
> > > I've added to BCC everyone whose copyright notices have been removed
> > > (those that noted an email).  The full thread for this discussion can be
> > > found here:
> > > <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznrudgioox3nn72@57uybxbe3h4p/T/#u>
> > > 
> > > Please let me know if it's okay to you to transform your copyright
> > > notices to make them uniform?  That is, do you approve
> > > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=9f2986c34166085225bb5606ebfd4952054e1657>
> > > in what affects you?
> > 
> > (thanks for clarifying about posting on-list.)
> > 
> > Yes, I approve. (Though I have changed to using tycho@tycho.pizza as
> > my primary e-mail address, it would be handy if you could make that
> > correction during this process as well, but not required.)
> 
> Thanks!  (I had already added you to CREDITS with that address, unless
> I'm mistaken.  Can you please check if all's good?)

Here I see:

https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/diff/CREDITS?id=9f2986c34166085225bb5606ebfd4952054e1657

tycho@tycho.ws; but it's also fine if you want to keep the commit id
the same.

Cheers,

Tycho

