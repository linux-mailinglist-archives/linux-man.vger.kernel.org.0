Return-Path: <linux-man+bounces-896-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9718C0A47
	for <lists+linux-man@lfdr.de>; Thu,  9 May 2024 05:47:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BCD9B2857D1
	for <lists+linux-man@lfdr.de>; Thu,  9 May 2024 03:47:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFB3113C3CC;
	Thu,  9 May 2024 03:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=trouble.is header.i=@trouble.is header.b="VcE5YBai";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="hxl2re1p"
X-Original-To: linux-man@vger.kernel.org
Received: from wfout4-smtp.messagingengine.com (wfout4-smtp.messagingengine.com [64.147.123.147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B5112BEA4
	for <linux-man@vger.kernel.org>; Thu,  9 May 2024 03:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=64.147.123.147
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715226434; cv=none; b=DmwRWnhvyevNeyIdWojQFwP5e+DyJQvT5Fw9Agg2P2Sjl3w/Qt2+dyI4BeV70AJH27Q0jMrs4IY1Zhe1D/88NPZwhz81GngQDRsxp7A6lov40rakghH1KppAKeuXqWiq0gk7OmAnsIakPdbquXUc+oBWYpbORpbX5EySdTuEvys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715226434; c=relaxed/simple;
	bh=zoSR4QXkTuAHxnk6kbBErdaMZ6yt+AdhtNRcFGbF5co=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tIizDiSHtSyxZqEdUvkPo3YkjxsTJVRRHlvDPbVyBloBx0QUkdZANRUcQLxN3BlhC1Mgdqd2C816Cp7sp2mDtpqXmJ6jQc2pKKQ6cECtePm3n1ybE0yfHis5pHrqwNF7KZE9orj7xo0eydkMfgpd9BEXB3r9KsSptF8CKwqSunQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=trouble.is; spf=pass smtp.mailfrom=trouble.is; dkim=pass (2048-bit key) header.d=trouble.is header.i=@trouble.is header.b=VcE5YBai; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=hxl2re1p; arc=none smtp.client-ip=64.147.123.147
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=trouble.is
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=trouble.is
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailfout.west.internal (Postfix) with ESMTP id CCDC71C000FD;
	Wed,  8 May 2024 23:47:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Wed, 08 May 2024 23:47:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=trouble.is; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1715226431;
	 x=1715312831; bh=d77dA7U86NFJYdSlQZz+llldq8Fw0bo3EIDaa/tfwUU=; b=
	VcE5YBaiqBEOU/hokv6r1pKQu2injm66qqRS4valqaXZCmKyqDw3DxNpFf/LXneX
	9sBlGexGb8tvkpmRjPuGDrYINLxy6bvKRoDCdGGwifTN4fesa1a2U+rG+WtH3EHt
	OOuS9tzBJ+mbixTC8iI5jsIsnvRlKiglMlNH60bCW5JAUnUURcgKK3upfYi5qZ3U
	58yTsOuAmi1Ic7xfwe9JMl50fc06neXPNAfmEk4Sk1tTk0zddarg6XJzX8+eFNxK
	iy8XcefA0rv4+eOq1kW2LsnxzJcRIceJNUOIv6ZWeKCzPEzusN1t3h9HStBq/JH/
	VVV2on5F3DEsemBA28YEuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1715226431; x=
	1715312831; bh=d77dA7U86NFJYdSlQZz+llldq8Fw0bo3EIDaa/tfwUU=; b=h
	xl2re1pyjYM8zlAoyVgg8G2j4J31af0RP+4ziaGXm6/A8FFWF3eG5eNuSJj5KtuP
	TMFBcddETbVAE1gPnecM2xUT2vmQGITavoE21zJkRW49UVsYCyiVbZe/brHXX8Cb
	DUhfUEKfVgzpN2gaZhejpdd6BQNUHhnUwhBWYyqfSZjcDYmFBm0n0+M63R6DSSUd
	CnryWb+hRD6m4OceX9jdIcUy8b6nIsThltBgE+Gfd+FceVrDhSya/pP3Zwi+ejyP
	XXtTWuNWLCitU/cNup0ngXNGR7aN27aYNx6P1LnRgIRHRRJsAvPzPK0Rc8QxNkwA
	i/AW75P1ZsZw+DHowFjBA==
X-ME-Sender: <xms:P0c8Zrki5wDP2JaiJM-nORSaSMRHrjNCh8ZDDTrY6FuUN1UldCDOvA>
    <xme:P0c8Zu0aHsTv_W4H3wm3apD4XaOP4jMk3l7MFTGvVWaKOnyKidE9kFvPGU51NBrnM
    xRMAIDQwV8yQjOHk-A>
X-ME-Received: <xmr:P0c8Zhq93tzhU9ntShd82amVL_2NfGlcEpJ7oBvxSRNx-D34FPV3LJJZMLbFIiUENSe3kIYKWHQYGN2q-cdmVwamEeDc0TnHGQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdefuddgieekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffokfgjfhggtgfgsehtkehmtdertdejnecuhfhrohhmpefrhhhi
    lhhiphcurfgrvghpshcuoehphhhilhhiphesthhrohhusghlvgdrihhsqeenucggtffrrg
    htthgvrhhnpeejteeltdetjefgveegjedvhfdutedtfffgveehteffhedthfduieevjeef
    geetkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hphhhilhhiphesthhrohhusghlvgdrihhs
X-ME-Proxy: <xmx:P0c8ZjlMl00jfkC6JqT8q9sm1icUw7Zk0q6r4MRGiYxZlD0zD0JUew>
    <xmx:P0c8Zp1utuYEwxsEgpysBfAA0hHBRHWDpERB3LIJ4bjjmfS6_ecN_Q>
    <xmx:P0c8ZivDsMKd1f2M64rU9AtYeuqzy7PAAnWTv0WGJcJwk1D9ud3grQ>
    <xmx:P0c8ZtVM3VzRI_HAl3Y-mqmA1WVaoEmKe3mKQFU5D5ANF-c5JX3BRQ>
    <xmx:P0c8Zh9Y8-Ub8FgulhCyEeF3Rwwc7zWtJGHDjF1ebLF01p4QbMnu2xTL>
Feedback-ID: i79f94797:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 8 May 2024 23:47:09 -0400 (EDT)
From: Philip Paeps <philip@trouble.is>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Alejandro Colomar <alx@kernel.org>, tz@iana.org, linux-man@vger.kernel.org
Subject: Re: [tz] manual pages in tzdb
Date: Thu, 09 May 2024 11:47:07 +0800
X-Mailer: MailMate (1.14r6030)
Message-ID: <97F03D87-C7C2-4BEE-99C8-89CC4BF590DA@trouble.is>
In-Reply-To: <1305b78e-dbfb-439f-aa83-c75d3340873d@cs.ucla.edu>
References: <vexmpmalky6xddplkpr6md6b7r664gmyt3fthmmiuxnwwiw3fu@55ga4tnb5zuj>
 <b0faabc0-6dcb-4540-b392-56c244b53817@cs.ucla.edu>
 <43C8257A-38BB-49CC-98C1-E5F59867BAAE@trouble.is>
 <1305b78e-dbfb-439f-aa83-c75d3340873d@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2024-05-09 11:41:40 (+0800), Paul Eggert wrote:
> On 2024-05-08 20:36, Philip Paeps wrote:
>> Thinking out loud: would it make sense to rename the files in the Git 
>> repository, but keep the tarballs flat?  I suspect most downstreams 
>> consume the tarballs rather than the Git repository.
>
> You may be right. My impression is that some people do it either way. 
> There would be some pain in the long run if the two methods put files 
> in different places.
>
> We could arrange for the tarballs to contain two hard links or copies 
> of the renamed files, one with the old name and one with the new.

That would likely cause more confusion.

> All in all, though, I'm inclined to think that if we're going to 
> rename the files, we should just do it. The backward compatibility 
> concerns are less with documentation location than with data or code.

I agree with this.  If something is done, it should be done once.

But "doing nothing" also works.  So far, the only request for change has 
been from a consumer of documentation, not code or data.

