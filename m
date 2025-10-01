Return-Path: <linux-man+bounces-4028-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A06BB1A0D
	for <lists+linux-man@lfdr.de>; Wed, 01 Oct 2025 21:37:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD97E3BB4ED
	for <lists+linux-man@lfdr.de>; Wed,  1 Oct 2025 19:37:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93503277CBF;
	Wed,  1 Oct 2025 19:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=landley.net header.i=@landley.net header.b="X1qY303Y"
X-Original-To: linux-man@vger.kernel.org
Received: from olivedrab.birch.relay.mailchannels.net (olivedrab.birch.relay.mailchannels.net [23.83.209.135])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AA0335C7
	for <linux-man@vger.kernel.org>; Wed,  1 Oct 2025 19:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=23.83.209.135
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759347465; cv=pass; b=QJNu6rVbGyNTqNVwiF5PV389T7fa1kIYDyNeR3RbPL5nYmTZppCc44Lq6E2NGEYCmbWi7AXEVyD6HxNt9CMmDxFoGgd83kA9TB3Wn4KEwW51/6riaKj9cWXCP4L5vYGmk8AKxlUJ+6nxzEYurW+ufgGdv2OUVvBFHvEwYC0+it4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759347465; c=relaxed/simple;
	bh=r9ijTdsiM75EyRv7al+7bBvUTwY6zdhEGwL+Z9UicLc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iryXimcXBTkYB3AZbSA6xf7qtkdcL7nRO6GUE0laIEhccQC7uzkiMvJSF4pVPmF5O/6+8ccB6ZjaGD07a2TjRyCcw3I/DIj7wOgM+p/sjsGor8FjF/T3nPZ86rXRjaszMC9VFseJJK7GHJfUTODcUdq1m7GEZKEJZCR8ulMXMuc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=landley.net; spf=pass smtp.mailfrom=landley.net; dkim=pass (2048-bit key) header.d=landley.net header.i=@landley.net header.b=X1qY303Y; arc=pass smtp.client-ip=23.83.209.135
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=landley.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=landley.net
X-Sender-Id: dreamhost|x-authsender|rob@landley.net
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 17C4570230A;
	Wed, 01 Oct 2025 19:37:36 +0000 (UTC)
Received: from pdx1-sub0-mail-a237.dreamhost.com (100-110-226-221.trex-nlb.outbound.svc.cluster.local [100.110.226.221])
	(Authenticated sender: dreamhost)
	by relay.mailchannels.net (Postfix) with ESMTPA id B67B570203A;
	Wed, 01 Oct 2025 19:37:33 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1759347453; a=rsa-sha256;
	cv=none;
	b=EU3c6BJy8gqnYNXqQUXBVBqYfEVjc7vl35X/7JpTkXB/gSaN7/SyjKBMWOgGS3ohkOGIDr
	npKgfrna6DTzjAd1lACynIZZRCDmhhlpZ/oBBQXRfKOEm7Cu45+Fly7GVTXffHCjMZ0IYv
	QJiocScq7x51/kO5QtGbOdQVz0axcm7WDc2HQUMLiw0YJrGd7z/XrqX8aW8zOvHiKxrvlV
	YQDxTLlAy8zbTd1oAfpPS5mAH69Y9/x1Yh4+JyqknBbYX7fhHjCbG1IghFrrPFkUbZgDbe
	ulHd6mJmR7u1E+mIg/ra6ZzfMnHXzE8vLUnDLDKa2dB3SU6BZIFW3GiokCL8nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1759347453;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Z3DFN4BJPLDY4yfWjDkQ1JR/HUP5tcTmxcAIIrr1u7M=;
	b=fSiiflyNCNb3ybvP+iMhO38JjEP9ebt1GtlCHmO3Zo3q1G1XTombH/NDBi4N7Wtz15EpGH
	ycpXby/+Yn2gPWH4uDLGOj4kGVQtxbAkx/F9vyHPM7zNoONpekRjNHxmm32DGvMIVPp8yT
	k/WEUOJRUNiFHEwEvbkRyysDluN8ES41kkA7fysab2YA3Vlvdhr3KReG9C5tl5NWO3dljo
	uWPPrIkLhzXtbMGMcMJkNXZ+Xtb0Sqv5UvOj1ue8tY9RvjGw3NTkvHbaRiRTQL9HjZRiPB
	Hi9OwqLBFWERUpA1NBxkxG7d+e+JQj3RI8kRvZ+R4M+vnfvqFmLciWUv27qh2w==
ARC-Authentication-Results: i=1;
	rspamd-ffff64c9c-nts7w;
	auth=pass smtp.auth=dreamhost smtp.mailfrom=rob@landley.net
X-Sender-Id: dreamhost|x-authsender|rob@landley.net
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|rob@landley.net
X-MailChannels-Auth-Id: dreamhost
X-Well-Made-Broad: 3143b81d3e3f8e07_1759347455904_1201572292
X-MC-Loop-Signature: 1759347455904:498284359
X-MC-Ingress-Time: 1759347455904
Received: from pdx1-sub0-mail-a237.dreamhost.com (pop.dreamhost.com
 [64.90.62.162])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.110.226.221 (trex/7.1.3);
	Wed, 01 Oct 2025 19:37:35 +0000
Received: from [IPV6:2607:fb91:b2c:cd6f:c548:cab3:3d03:f92f] (unknown [172.56.11.73])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	(Authenticated sender: rob@landley.net)
	by pdx1-sub0-mail-a237.dreamhost.com (Postfix) with ESMTPSA id 4ccQDs12RBz5C;
	Wed,  1 Oct 2025 12:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=landley.net;
	s=dreamhost; t=1759347453;
	bh=Z3DFN4BJPLDY4yfWjDkQ1JR/HUP5tcTmxcAIIrr1u7M=;
	h=Date:Subject:To:Cc:From:Content-Type:Content-Transfer-Encoding;
	b=X1qY303YfRA214dNteG9bQMgql3I3Rm+Pv69xz77llXcvzT2x4EF4NerpRhNTaE0a
	 qMeTnPfi+sGS7MKmTgjY5LC2IbXeIOl/JANauEwTAA543Dtt75kZ6lQ2SsaT2yENdA
	 Od8S3WHx6lFSOXMaKc0vdfs1c+soN2D9kMI7MuhIPCtKTHd2lsWJzNw6XtHFjElFJE
	 8dhnMEpZTlnz5wYli8Lv+H6G1pcx/f5ps8hpwyofOY/PYocnrSYcQ4YoIyS68bwOPz
	 j9tqfEAqTog6mT/5Cgsq2OaBzZUkMFqBmBApIPVsq8QkPM+7xifCu83fbD5zv80F3J
	 AxYEp86K2QoQA==
Message-ID: <60d83776-2873-4114-9647-0ec44120969a@landley.net>
Date: Wed, 1 Oct 2025 14:37:31 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Move GNU manual pages to the Linux man-pages project
To: =?UTF-8?Q?Arsen_Arsenovi=C4=87?= <arsen@aarsen.me>
Cc: Alejandro Colomar <alx@kernel.org>, coreutils@gnu.org,
 linux-man@vger.kernel.org
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
 <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
 <87cy7e7hml.fsf@aarsen.me> <e369c200-a7cd-4b92-b700-d9d48d347ce8@landley.net>
 <86tt0jn27n.fsf@aarsen.me>
Content-Language: en-US
From: Rob Landley <rob@landley.net>
In-Reply-To: <86tt0jn27n.fsf@aarsen.me>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 9/30/25 14:57, Arsen Arsenović wrote:
> Rob Landley <rob@landley.net> writes:
>> It wasn't "lucky".
> 
> It was, it was obvious even in first edition Unix - I'll come back to
> that.

So obvious that you need to point it out 50 years later?

> When documetning, these more complex interfaces ought to be decomposed
> into logical units for obvious reasons.  There are also overarching
> themes that aren't simply attached to a single (or handful) of bits of
> the interface.

There's more than one way to explain almost anything.

> In the original Unix v1 programmers manual (or, at least, the copy I
> could find), the term "file descriptor" is used 30 times, and defined
> (poorly) twice.

And nobody ever bothered writing down what "inode" meant so I had to ask 
Dennis Ritchie.

https://lkml.iu.edu/hypermail/linux/kernel/0207.2/1182.html

The downside of documentation being written by people who already know 
the material. "Beginner's mind" is hard to recapture after the fact. (I 
say this as someone who's been trying for decades.)

> To clarify, I don't mean to imply that an OS-level manual should teach
> the reader about basic networking concepts, but it is still useful to
> briefly recap said concepts in order to clarify possibly-ambiguous
> terminology and set up standards for your documentation.

A tutorial and a reference are not the same thing. That's tech writing 101.

Half of teaching is figuring out what your audience already knows so you 
can connect to their knowledge base and fill in gaps without boring them 
to tears repeating what they already know. It's _hard_, and no canned 
source will get it right for every individual.

> Also, in my opinion, it is obvious

No comment.

Rob

