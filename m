Return-Path: <linux-man+bounces-894-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BA58C0A32
	for <lists+linux-man@lfdr.de>; Thu,  9 May 2024 05:36:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2ED411C21E3B
	for <lists+linux-man@lfdr.de>; Thu,  9 May 2024 03:36:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45EEC146D71;
	Thu,  9 May 2024 03:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=trouble.is header.i=@trouble.is header.b="VvTsZ9Kd";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="BXBMQoR1"
X-Original-To: linux-man@vger.kernel.org
Received: from wfhigh6-smtp.messagingengine.com (wfhigh6-smtp.messagingengine.com [64.147.123.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53366D26D
	for <linux-man@vger.kernel.org>; Thu,  9 May 2024 03:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=64.147.123.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715225810; cv=none; b=sRFOuo8cRnBwM+YLqchnmf7c2LhMdiiPk7Eg2fI7UkysLWc1nOS2ABRkREkzF5W329yVi5Ggz0jCgwXlmW6qgckeYG/Aw8VnIfbe0HPWMmxg3ePuKmrXjMNHlpFXDb2BqLL6bm2kLvhg6TJLJ3T/40PlNV4HvGR//0Pa1i700tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715225810; c=relaxed/simple;
	bh=JBafeu6yLBAmfwqYJBEg3gTr9kToN30Hs0h43SMZ2Rs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=p1UEo1YgMXP6jAHi3r36/W1Sbxjiy1cI9A1MGNFNokzwbiECVOmZ1ARRUXYjnxRasjmPCsfmh+6KL/qEvQVEFjibjgDo5hXmagdM1d8aUNKD6gAUoluHzNKnVEMfeJez1+ticlR2BR8LlIc6iDiM6canIDZiqybFu50zsSsTKHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=trouble.is; spf=pass smtp.mailfrom=trouble.is; dkim=pass (2048-bit key) header.d=trouble.is header.i=@trouble.is header.b=VvTsZ9Kd; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=BXBMQoR1; arc=none smtp.client-ip=64.147.123.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=trouble.is
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=trouble.is
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailfhigh.west.internal (Postfix) with ESMTP id 456DF18000E8;
	Wed,  8 May 2024 23:36:47 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Wed, 08 May 2024 23:36:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=trouble.is; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1715225806; x=1715312206; bh=dGgvdcza4+
	p8yGZYq3KDKySXcR47VmQ8OWz+zgc0v28=; b=VvTsZ9Kdh0/c1uyp+UlXCs5VxG
	VQPQlGx+VPv4tDI/v9+u57XE3mo9RwXrF1amoq6zxHJv8NaVv1xsJqJMjuF/RTjc
	uTCuJlslJU8miUu9IBcvVGGPx/1VSADRJJtEnlSdhnch+H7Iy7l2P5oskzekBRRM
	Z0G2txir9MgFEgfTKSZkfJu4ZHm0f2E4UUmnT07PmfMmma/hd/0IvPoBRH+va62i
	/EWNGn0gpKsy6WZL8zHGecMp49jw9AkYZRFQ3PTBTnW8dokUWmfSlvemkdU3xwVT
	INfABb9/2udvPiQAK7pohXv8//Swpg9s7rUx2zw1Wewb+zn/aaeURCwUXqXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1715225806; x=1715312206; bh=dGgvdcza4+p8yGZYq3KDKySXcR47
	VmQ8OWz+zgc0v28=; b=BXBMQoR1idqKsQJKYar49Smg0MP/xAas0BVo2piG4QgV
	NJ4uukqXLGol6sHz5vJpeBO6WG/5FmLV0ucjcyn9r4NQZ+qRldsP8IrxbbW71RMV
	pBwXB5OA9h0bQRG6ojJFSj6e++QavyJx4tXj+jN41HskWHytlf+GA3cxqOSyfZaf
	8NB2pvHkhvo5lsaxSli5tPKr8S8XCokES+wIqzPk970F+QNgLoYdhQhU/0Qfj9N5
	W5OC/lrdN4hzhvZqmZRhiNf0T0WKvRj+u24+KtiDzJxnVwGx6sg9ZLe8+h9ielGh
	z+3J//NnG/Z+am3nCSH4QrY+emS6dGRDV5RQlk3Hhw==
X-ME-Sender: <xms:zkQ8ZsyVxKTkTf4uSVYPhDuq1qKZQVQIY25DzYPgFPfa2UwN6raZsw>
    <xme:zkQ8ZgQsTw4HhvbR5dXdE6qE-7uHHhYw-g8NLGRQpMCxxNxAxGVS-VRFrAncqh5tN
    JDonHYIG_5LIKKq3ZM>
X-ME-Received: <xmr:zkQ8ZuWtUTxxrfRHSsjgY0ZoZwu5bPOfFKo00Ej-jf5LGXqALFT91-Mkkqw6Iz6LNyo7x8uhtdre8sGsyzIJoarhXCURt1YDfQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdefuddgieejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffokfgjfhggtgesthdtmhdtredttdenucfhrhhomheprfhhihhl
    ihhpucfrrggvphhsuceophhhihhlihhpsehtrhhouhgslhgvrdhisheqnecuggftrfgrth
    htvghrnhepffetvdeifeefgeethedvheffleduffehkedvvdejgfefhfehtdffjedutedv
    hfejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepph
    hhihhlihhpsehtrhhouhgslhgvrdhish
X-ME-Proxy: <xmx:zkQ8Zqg0AjvsYeiaEz9SSzeugXGae_RndsbLznaIuT387hhPGPnYHA>
    <xmx:zkQ8ZuAfY5Ij1ntzCvzxusWOpQmWvFxOlAxQw62LEk2c92cRYufOqw>
    <xmx:zkQ8ZrJuPoZCsW61EkvFL9iXE6vxNzsPCDtSZZKOTyxrLfZGP_xCHQ>
    <xmx:zkQ8ZlCfvhruc-a1JU64paOOYZGRLPiz83eH6xQE12ZKI-vydfWgAA>
    <xmx:zkQ8Zl4FjFSy4QEobQz0GSHS0NZNtJ5VkSoe_PD33I-LKdWAvkZTarXb>
Feedback-ID: i79f94797:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 8 May 2024 23:36:45 -0400 (EDT)
From: Philip Paeps <philip@trouble.is>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Alejandro Colomar <alx@kernel.org>, tz@iana.org, linux-man@vger.kernel.org
Subject: Re: [tz] manual pages in tzdb
Date: Thu, 09 May 2024 11:36:43 +0800
X-Mailer: MailMate (1.14r6030)
Message-ID: <43C8257A-38BB-49CC-98C1-E5F59867BAAE@trouble.is>
In-Reply-To: <b0faabc0-6dcb-4540-b392-56c244b53817@cs.ucla.edu>
References: <vexmpmalky6xddplkpr6md6b7r664gmyt3fthmmiuxnwwiw3fu@55ga4tnb5zuj>
 <b0faabc0-6dcb-4540-b392-56c244b53817@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed

On 2024-05-09 00:57:38 (+0800), Paul Eggert via tz wrote:
> On 2024-05-08 09:24, Alejandro Colomar wrote:
>> What do you think of moving the pages in the tzdb repository into
>> man/man*/ directories?  I see your repository is perfectly flat, so I
>> don't know if there are strong reasons for that, or if it's just
>> innertia.
>
> To be fair, inertia itself is a strong reason....
>
> I wouldn't mind renaming the man pages, though I'd get rid of the 
> "new" prefixes while we're at it. However, I worry that other 
> downstream users would be adversely affected. Perhaps others could 
> chime in.

I don't mind the idea, but we (FreeBSD) would have to rework some of our 
tooling.  I suspect other non-Linux distributions are similarly 
affected.

Thinking out loud: would it make sense to rename the files in the Git 
repository, but keep the tarballs flat?  I suspect most downstreams 
consume the tarballs rather than the Git repository.

Philip

