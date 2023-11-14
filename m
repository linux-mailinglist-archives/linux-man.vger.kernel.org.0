Return-Path: <linux-man+bounces-76-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DBE7EAD42
	for <lists+linux-man@lfdr.de>; Tue, 14 Nov 2023 10:47:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 62615281010
	for <lists+linux-man@lfdr.de>; Tue, 14 Nov 2023 09:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B73B7168C6;
	Tue, 14 Nov 2023 09:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b="MOG8YEkn";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="cI4s6M/l"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7B1168C3
	for <linux-man@vger.kernel.org>; Tue, 14 Nov 2023 09:47:42 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46088115
	for <linux-man@vger.kernel.org>; Tue, 14 Nov 2023 01:47:41 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id D37495C0286;
	Tue, 14 Nov 2023 04:47:38 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Tue, 14 Nov 2023 04:47:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm1; t=1699955258; x=1700041658; bh=JU
	RycgJPjKGalocKdRaFJ/tUfw2F7fJxYG1WQpR7en8=; b=MOG8YEknIXeVNGJAhg
	B4TpzWRXjDAuJ4zpOHhw1wjKppM4xx8r+gEgSJjiqaHwNGLTOlnS19WFss8Z3AKg
	I5VsamaqvjzNi5OdOyLaoZ3KLDqfVwNQ11ZaxJRCkjH6mc+obujVspBRurmdhvy5
	sVUrM1Rrtwy76WcH8c4mw8XgW/zzpl40nhKIqSIA+Yy7O6Jfq5/c1qaSE4wd8QAn
	PApkNjExJV23GQoq3k6kFMeZuUvFP2LLWwmyQAQhrrp9mnW1zcMZcXFG3cqzh7pk
	PLSfi6YnbLG8TWXG4YVNqhow0jNiJSz4GiDiCtfX4LKUf9+TofhQJn+yWvAWd8fb
	fKaw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1699955258; x=1700041658; bh=JURycgJPjKGal
	ocKdRaFJ/tUfw2F7fJxYG1WQpR7en8=; b=cI4s6M/lD8PdD8wJOBaafcmEWkpBi
	c+QhpGLmLH6cM7EdNwVxV+YDps4QPIgiajRHtFtxVzSnYGK+pMHcdoVu766uSlYN
	TYXdL7KB2cmy1pMhIctDzdtOaReCAHVa2uzwWLOH5PXhiVDZuS3vemfn5tqvpvCl
	JgmpE0FlF+ElytSRdsRSPcXawFqPpEUP4vFgUIr5D6AAtWMRjIpv6Q3sCMtu5gU5
	u3niNPPCdRGqUOw+ZKoLjcPK/l/6u6W5NYK8gt7Lfs09vyCXHdw3RnHs2z2Mnw44
	4H1/YSctDSmoL3uBpwPlaCZB/nB1Q109YemL4KZKcIcNYe96ibFyw64tQ==
X-ME-Sender: <xms:OkJTZclABhYIKH_SDjAv6y4dqVNODzF_XcA9FEDbEHHAttbzpEgA9g>
    <xme:OkJTZb1HIE7afxcN5fk3j1lbFdNjkbk_Nmvln3xorTkBk_g6KAsNIJE6B0I_veXAi
    FDYrDv7gQiI03VoMQ>
X-ME-Received: <xmr:OkJTZaqxzkM_GHvMudlZS_bW7bphM1_r1fhob99saKIP9Kwc-IsN_Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudefvddgtdejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
    ertddttddvnecuhfhrohhmpeetnhgurhhihicufghtkhhinhcuoegrnhgurhhihigpuhht
    khhinhesfhgrshhtmhgrihhlrdgtohhmqeenucggtffrrghtthgvrhhnpeeihfefteehge
    dtheeutdeivdeivefhtedutefgheeiveefffdtiefhgfehueegheenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhhihigpuhhtkhhinh
    esfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:OkJTZYnNOwyHQLyNQydjpFcc599ecvrrc1oj3Gegq4eUT-BLKrUq0g>
    <xmx:OkJTZa1dr3QixrEyaDKPTJTalJ_GR0j5-DnrfGhN5tJVPHkk22OxeQ>
    <xmx:OkJTZfvsNh-u8I-4AObNBFrGG2mHaOrC6DRh3t_M2T1_jDCvSQtWnQ>
    <xmx:OkJTZf-Z3Inl6x16C-kYozzPGwVTTy2r3ZkfuhryOdGyS6M5-lu-yw>
Feedback-ID: if391498a:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 14 Nov 2023 04:47:38 -0500 (EST)
Date: Tue, 14 Nov 2023 09:47:36 +0000
From: Andriy Utkin <andriy_utkin@fastmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] mbsrtowcs.3: add a note for conversion completion
Message-ID: <ZVNCOHFFdSGn593o@dell>
References: <20231113134857.1639387-1-andriy_utkin@fastmail.com>
 <ZVM8Hzfw9CCRHWwR@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZVM8Hzfw9CCRHWwR@debian>

On Tue, Nov 14, 2023 at 10:21:27AM +0100, Alejandro Colomar wrote:
> mbstowcs(3) has the following:
> 
>      In  order  to  avoid the case 2 above, the programmer should make
>      sure n is greater than or equal to mbstowcs(NULL,src,0)+1.
> 
> We could add that.

That might have enlightened me! I like the wording, and indeed, having
it phrased the same way for these similar functions would be helpful.

> BTW, maybe you want to use mbstowcs(3), which is simpler.

Indeed I should have chosen that.

> I think we could add something saying that mbsrtowcs(3) is a
> restartable version of mbstowcs(3).

It might have helped me, and probably will help others.

Thanks Alejandro!

