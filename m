Return-Path: <linux-man+bounces-2889-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF3CAB1826
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 17:16:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 576C89E6AD7
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 15:13:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B76423498E;
	Fri,  9 May 2025 15:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tycho.pizza header.i=@tycho.pizza header.b="EtrwTEWf";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="NNYBFFt6"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-b6-smtp.messagingengine.com (fout-b6-smtp.messagingengine.com [202.12.124.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D476235040
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 15:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746803608; cv=none; b=taD/CegUsErJH46FzTJDwU3qwl+EcOteEysaYZmjAXFqBg9nT+ZIYIcAvRThn5/9PcwQcHp20usf804CBYQ8EccySBknkGGvofL9p0MkIB6mu2KGwip82FIyvf3dK7PsSAi5Eqc8oFvcGXOfpJc4qqJ38vrhD9OWtDpj47xjUvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746803608; c=relaxed/simple;
	bh=qUxGjeS+bmsFVZKAdKQSMWenla+O9A+U5BZIrl7AZMA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ATI4kLKvhpK7nvPvHJX3bB46jhLTUI4pjx1kJeuMyFW4agBJHs+W/fNN20Ywu9NrVYdpGJjO8fPRaCakFxoRm2H+8UWmb5al80nQtwfNksEpO8axTpDf5iSqsxE1y+L4EenhKC2CFYomkE1mCQbeUwZY6LX5r7WszGF4i20ueoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tycho.pizza; spf=pass smtp.mailfrom=tycho.pizza; dkim=pass (2048-bit key) header.d=tycho.pizza header.i=@tycho.pizza header.b=EtrwTEWf; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=NNYBFFt6; arc=none smtp.client-ip=202.12.124.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tycho.pizza
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tycho.pizza
Received: from phl-compute-01.internal (phl-compute-01.phl.internal [10.202.2.41])
	by mailfout.stl.internal (Postfix) with ESMTP id 1D09F1140134;
	Fri,  9 May 2025 11:13:25 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Fri, 09 May 2025 11:13:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tycho.pizza; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1746803604; x=1746890004; bh=pietJOfbT8
	KrXKyQT0jwKz08yPKRiyPzbRVNq9Csz8I=; b=EtrwTEWf7QdeaP0qQbjc6aamcT
	CxY3mIf/gI7myruf7H8z7x5MZ8ixUbPMbg7TsEk491/sxiL7ZlOjxffUUrNUOeI7
	36Xa5Sbm5+mZc5KsBz7ta/kn/mu5QeXE4G90DYaF+ATPHTWCT9F7z7VVgTXukW3P
	BoqUdYE689LWl/PMpVzE9i6MGxWSDfrL0xgJrsgqXGHw1lL6j7kGCs9BS2kahIed
	yCdu3uBF3aTPOnd2PEpa2l1cvENYW4tCcdvdZ7CNlpq5naMqq/8tyq2axMRiiRVI
	z1MSlOuc8azWijuhbUjfs0unAyEEueWqyCNU0RYyK57JLbirQrC+E3WEYxhA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1746803604; x=1746890004; bh=pietJOfbT8KrXKyQT0jwKz08yPKRiyPzbRV
	Nq9Csz8I=; b=NNYBFFt6tJy2iGnktsxe12NEBdaWHWazSHhONRv7XvQMpVYA8uL
	M1ZsZz8dB1K81IIdP96e9LHkYeDcVpL9OackcMTC4d4cly/wpORwZ5zrxsMY9CzV
	5d0ULSSxMYsC1DP+nXxjuLV2FW7+zCTjNwxognDFZTxWMw3OOP71kiiJtGyc/YQo
	M+YMLMyUfdplddoWWD/sglznkNFe27044pNifYRYIHkDeWYPwDFlSFSQHWqgIA+/
	r5Jwp04R4zxtcvKlBJtpayAgXgYzzuQo8JUwgRTNPiuCB7DU85Si3q8nSUSOK0Gp
	rkXEV0v2dd5lmRQXFBHJ0WWNh6GUbf3S8UA==
X-ME-Sender: <xms:lBseaHnqm5cA-xyV7rIR7BuZZ-s9jcpOszSQs-3ydkIUkyQO5JsQdg>
    <xme:lBseaK2njf8aArnR45Hb02FpOcAmsCmEnsiJahExBameEqujoobHwyJYnJfOczzRZ
    p6JdWWRavgEbJOUIrg>
X-ME-Received: <xmr:lBseaNoq0qQ5VYOk8Wya4CGF7XV6N5-Jhz6RmI9NeAYIukzYitcPHsXQHIAc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvledvleehucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
    pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
    gvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesthdtredttddt
    vdenucfhrhhomhepvfihtghhohcutehnuggvrhhsvghnuceothihtghhohesthihtghhoh
    drphhiiiiirgeqnecuggftrfgrthhtvghrnhepleevudetgefhheekueekhfduffethfeh
    teeftdfhvefgteelvedvudevteeufeehnecuffhomhgrihhnpehkvghrnhgvlhdrohhrgh
    enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehthigt
    hhhosehthigthhhordhpihiiiigrpdhnsggprhgtphhtthhopeegpdhmohguvgepshhmth
    hpohhuthdprhgtphhtthhopegrlhigsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehl
    ihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheptggrrh
    hlohhssehrvgguhhgrthdrtghomhdprhgtphhtthhopehgrdgsrhgrnhguvghnrdhrohgs
    ihhnshhonhesghhmrghilhdrtghomh
X-ME-Proxy: <xmx:lBseaPmG19HVsbiBZVnbsXgXCGEDmlsxqfT9vorVl9cy5JaReFrzbQ>
    <xmx:lBseaF3y15PRITz6cjfCka_Ztl6LMthAB_ZYUU1lD7X0SwXVVhM1EA>
    <xmx:lBseaOtbVIsywOxaeE_LtX8jRZS-Q5ZzwNkJGIaPLsE6ZjoH8QEVhQ>
    <xmx:lBseaJXWwRZvbPOzBsGiaWDddcUaqgFVpPcHeRj-De7t-gwNq7XBVQ>
    <xmx:lBseaOvzlFpVevKAQloEDkDrXcoMEYsCHoQfoDAMi7E3jEM37r_iPLYf>
Feedback-ID: i21f147d5:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 9 May 2025 11:13:24 -0400 (EDT)
Date: Fri, 9 May 2025 09:13:23 -0600
From: Tycho Andersen <tycho@tycho.pizza>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <aB4bk7udjMKo336Q@tycho.pizza>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>

Hi Alex,

On Fri, May 09, 2025 at 02:54:31PM +0200, Alejandro Colomar wrote:
> Hi all,
> 
> I've added to BCC everyone whose copyright notices have been removed
> (those that noted an email).  The full thread for this discussion can be
> found here:
> <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznrudgioox3nn72@57uybxbe3h4p/T/#u>
> 
> Please let me know if it's okay to you to transform your copyright
> notices to make them uniform?  That is, do you approve
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=9f2986c34166085225bb5606ebfd4952054e1657>
> in what affects you?

(thanks for clarifying about posting on-list.)

Yes, I approve. (Though I have changed to using tycho@tycho.pizza as
my primary e-mail address, it would be handy if you could make that
correction during this process as well, but not required.)

Cheers,

Tycho

