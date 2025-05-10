Return-Path: <linux-man+bounces-2903-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 038B1AB2598
	for <lists+linux-man@lfdr.de>; Sun, 11 May 2025 00:24:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A4A5F7A442C
	for <lists+linux-man@lfdr.de>; Sat, 10 May 2025 22:23:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BC2420DD72;
	Sat, 10 May 2025 22:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tycho.pizza header.i=@tycho.pizza header.b="Ysyb4CIp";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="S15y5QU8"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-a2-smtp.messagingengine.com (fout-a2-smtp.messagingengine.com [103.168.172.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D01120D500
	for <linux-man@vger.kernel.org>; Sat, 10 May 2025 22:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.145
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746915864; cv=none; b=r3lK/Q1vfRzEj8jqXI7UUrCqcjfS0Xs6p4EjhzEyMPof2u9ISyouOioZkTHuBlzYiSZGDLOfJqU2aRPNZL6LHxyk6OI0Gpa2E+Czf7tWsBJcSQnzqVJheT6eaQCjTLcxZPn01/vRbrWScmUH8zPW8/NjN7ZRaeOdHqvdpcsWPOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746915864; c=relaxed/simple;
	bh=xv00mVxEG45XwsSJDxhkd7R9HruHorToCBxctg38+rs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MLyC8uZ+9pvzV+5Qn+sZ2RjQe6ARNcIRXSfTgi+E2Ny8uCC80BOoAivpq40ZTj04C6vp3GOwc4RREJNOY/A6mAv9ldujk4Rg9AVLGgzkKPmjwRQJRZMKCeibMfLG+nDn82O2rxfAlUB8XhshzfrQ2NvJrg0G2v6kJJcbwJcRuC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tycho.pizza; spf=pass smtp.mailfrom=tycho.pizza; dkim=pass (2048-bit key) header.d=tycho.pizza header.i=@tycho.pizza header.b=Ysyb4CIp; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=S15y5QU8; arc=none smtp.client-ip=103.168.172.145
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tycho.pizza
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tycho.pizza
Received: from phl-compute-06.internal (phl-compute-06.phl.internal [10.202.2.46])
	by mailfout.phl.internal (Postfix) with ESMTP id 401AC13800D3;
	Sat, 10 May 2025 18:24:20 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Sat, 10 May 2025 18:24:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tycho.pizza; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1746915860; x=1747002260; bh=75sb7sE/A0
	uj45zNOTlWxLNKRh3CMYRC8fgZtDlN7Fc=; b=Ysyb4CIpNfvIZvb0Vr26AqBMRu
	H+IjIRd8Um8S5UmTyuaMikWuZbEq+AZSYB1Xa6CGdxTMekOaYqgatyF5e6bMZt3J
	92OfoasWw5EHXaqhTNUp0AeTAYIYTODLgFe7T6a0ynSFb9WVmyI6iSAPMTE5aLK8
	nFZ1jCGv7EbukyZVYjB0ybAJMIGP3hqCb4wcecv97qjmY0U3k7zmvuoj7QL0Ej5m
	LAcYLytOeLP2iHrT50q6usD+9fqutBwmZ4F12TQtOzJGezFPtEgAbVqOlIUO2Hao
	2mOUFyI/Zq6R4nuVZG86fV3QtKYYXL9G8YFIwK0EeKetCLmyLtxXw+MMIAaA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1746915860; x=1747002260; bh=75sb7sE/A0uj45zNOTlWxLNKRh3CMYRC8fg
	ZtDlN7Fc=; b=S15y5QU8GI58LbwAQTTFJJWrv/wPH9PldU7YSz3vB/UhWItrgDL
	tUrvaTtTdfc3zGcvqzoJyyFEDAwGNoLleTAo3qJONYNyutPg+/q2PQ69nkHa+Hjz
	HeyvRQ8ZZcxHv8ny30ZiA12L8t7403xvFUyx/GKffOYTtRCsmmd3PbBB/fzHAiIz
	vBMNmLmHnIdyx/zUiB+y1oo9/tAO6rc8t0l0RCLYF8PW9JX6oIRusseHRkG5xK1o
	xhi7uaC8069Mxh5fwy0tmggECelGOuuLgtRHZZVPM9LYjpfb79I8loCCu7PSbINl
	2C0gX+s83aUvUOJkJTXB6cLMp40z9x/gYYw==
X-ME-Sender: <xms:FNIfaMXu933N7kNnbR2ZKhRH4n7ROBCpBdUKnha4mUbuDaqUa1yKQA>
    <xme:FNIfaAnEp55X8aAQgeCPOHa0NElTMoxlo0g4oBE7eVyUAEr_eLebsSpD63LPsuXGY
    BMNRFICOzwiRJG3RWE>
X-ME-Received: <xmr:FNIfaAbmOsVjSJedb9uCsLFnMg8E03y4A85-WsHzkluZ9ud42xT-sAemag1vw32vWvw9LpTmNlwc1E6W3kU4CM3OUQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvleeijedtucetufdoteggodetrf
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
X-ME-Proxy: <xmx:FNIfaLXAKGviKx-ZQMQ2nMbTyDUmxWTY7m_DZsnUihNEsEnBnPO50Q>
    <xmx:FNIfaGlvnBZzixg4Ww-YDWTXkt_nDUA9jIsQsTCRZvGQNSPek10Xww>
    <xmx:FNIfaAdiZnAhBBf6RHGacF57TJrAwKXbvPmejICYdRDl0ARQ67XlbA>
    <xmx:FNIfaIGYu7oaEIMWpnd7VUio7W-6OBTsjXuzwSGIZwYnJkwpbPflDw>
    <xmx:FNIfaPfSEITuV06Ojugo1tGqwHzk9tcJCJnYqroMGPMUQPUCQp20UwmP>
Feedback-ID: i21f147d5:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 10 May 2025 18:24:19 -0400 (EDT)
Date: Sat, 10 May 2025 16:24:17 -0600
From: Tycho Andersen <tycho@tycho.pizza>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <aB_SEeIelJM0_qUH@tycho.pizza>
References: <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <aB4bk7udjMKo336Q@tycho.pizza>
 <vaja6de7wo5lbdf7nephc4eb5xpx4nhwv6y6nkdbppry7qz22r@6jw3zqipjunn>
 <aB5r4YOVpW5rNKL5@tycho.pizza>
 <dzjwjragsfpbtqs5iozyw3xl2p2hjpzhlwbxbhlvnusc5gtqwo@rlg22rpe53mq>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dzjwjragsfpbtqs5iozyw3xl2p2hjpzhlwbxbhlvnusc5gtqwo@rlg22rpe53mq>

On Fri, May 09, 2025 at 11:11:08PM +0200, Alejandro Colomar wrote:
> Hi Tycho,
> 
> On Fri, May 09, 2025 at 02:56:01PM -0600, Tycho Andersen wrote:
> > > > Yes, I approve. (Though I have changed to using tycho@tycho.pizza as
> > > > my primary e-mail address, it would be handy if you could make that
> > > > correction during this process as well, but not required.)
> > > 
> > > Thanks!  (I had already added you to CREDITS with that address, unless
> > > I'm mistaken.  Can you please check if all's good?)
> > 
> > Here I see:
> > 
> > https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/diff/CREDITS?id=9f2986c34166085225bb5606ebfd4952054e1657
> > 
> > tycho@tycho.ws; but it's also fine if you want to keep the commit id
> > the same.
> 
> Ahh, I see.  There are three commits that touch that file:  The first
> one took the names from "modified by" and similar lines in source code.
> (You don't appear in that one.)  The second one took the names from
> copyright notices.  I picked @tycho.ws in that one.  Then, the third one
> took names from commit Author.  In that one, I updated your main to the
> @tycho.pizza one.
> 
> 	$ git log -p man-pages-6.14 -- AUTHORS CREDITS \
> 	| grep \
> 		-e ^commit \
> 		-e ^Date: \
> 		-e '^    \(CREDITS\|AUTHORS\|\*\|man/\)' \
> 		-e tycho \
> 		-e ^--- -e ^+++
> 	commit 0cf255ac79231999d79cd656f81013089d2d4153
> 	Date:   Fri Apr 11 16:15:50 2025 +0200
> 	    CREDITS: Add commit authors
> 	--- a/CREDITS
> 	+++ b/CREDITS
> 	-Tycho Andersen <tycho@tycho.ws>
> 	+Tycho Andersen <tycho@tycho.pizza>
> 	commit 9f2986c34166085225bb5606ebfd4952054e1657
> 	Date:   Fri Apr 11 02:19:48 2025 +0200
> 	    *, CREDITS: Unify copyright notices
> 	--- a/CREDITS
> 	+++ b/CREDITS
> 	+Tycho Andersen <tycho@tycho.ws>
> 	commit 52b7bab3a44fb5d2d464fa8acd6beee3b62269aa
> 	Date:   Fri Mar 14 14:02:41 2025 +0100
> 	    man/, CREDITS: Move in-source contribution records to CREDITS
> 	--- /dev/null
> 	+++ b/CREDITS

Looks great, thank you.

Tycho

