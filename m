Return-Path: <linux-man+bounces-4200-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5C9C10C70
	for <lists+linux-man@lfdr.de>; Mon, 27 Oct 2025 20:19:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 513981A641EA
	for <lists+linux-man@lfdr.de>; Mon, 27 Oct 2025 19:14:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65E2230F534;
	Mon, 27 Oct 2025 19:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bernat.ch header.i=@bernat.ch header.b="PFf1pA1H";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="YRp3msOj"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-a5-smtp.messagingengine.com (fhigh-a5-smtp.messagingengine.com [103.168.172.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B5C31D754
	for <linux-man@vger.kernel.org>; Mon, 27 Oct 2025 19:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.156
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761592317; cv=none; b=gZmGI6HtgOnZlJV9gDgGoyAc9yHxBDTn43UnA82e+WzzGuRB6ubKujyOITbtawvSAiyZnrDo8FSwTBfTOZqALWUf/bHEgv5sNYejhU+CmjEEDCMdOGJw0Mk1NZI5SbaJU5er6FYKPdxngdu0BE5MGW6/TRAtacOEYDm9+X1y7mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761592317; c=relaxed/simple;
	bh=AleM+ebnKbl7w0tmR1SCx/SLuBo3rXWF8Wuo6OmTU6E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Krub7cJzteCgxVWLBKRNjsLnODhFf9ITIE+8FgJdBQKRX7Bd5YO5nrueCqK/T+lT03GmZoNdhb8AUpsC0EjmxaW/xPDYRMY8XvBPF0tCxUCClvK8U5PNNoGxMedYJkRAlJfCSm8X8Y1HrUxKGTEwMwOqpR7w6LCOM9aC72v4Q5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bernat.ch; spf=pass smtp.mailfrom=bernat.ch; dkim=pass (2048-bit key) header.d=bernat.ch header.i=@bernat.ch header.b=PFf1pA1H; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=YRp3msOj; arc=none smtp.client-ip=103.168.172.156
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bernat.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bernat.ch
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfhigh.phl.internal (Postfix) with ESMTP id B64B11400140;
	Mon, 27 Oct 2025 15:11:53 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Mon, 27 Oct 2025 15:11:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bernat.ch; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1761592313;
	 x=1761678713; bh=CbHiZI4F1OUx8+Ao/fXeBjUFDjBcZf/uhmPD92xvE/Y=; b=
	PFf1pA1HHTNKpPmmFSRZ1vzrXqaV04Mv4QbNYl1syfz2XOvJxNfHAEiLKgH/9k1A
	SWXKlqRhzePzpbcppfX2rwjEEOfgoAMUGgX3JTWGkIvcQST72qrP/gWEC5ge/f0Z
	/hVQOmHW3k+eD+ugodsFgjxDH9zKZcdHwjZ1Z/k1dbNN+SZchuJi4nN6bPxTrBci
	fF7k6wOHhIQTwxflBpm5uNshPuHnCkPpJiU7Elr63c9Pe8I6CLr7bEeZQ+o3Ypdw
	Mcg27zxyWJa0gULLAEHAZvv7b8N87wNxkNnPTD/RmbPMDIGoeM8MP6JdaUuolTs9
	7ybWGDw7wkRxSoyqi8CK5g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1761592313; x=
	1761678713; bh=CbHiZI4F1OUx8+Ao/fXeBjUFDjBcZf/uhmPD92xvE/Y=; b=Y
	Rp3msOjd1PwOASXB8iIL9gssp72x/6yL3StIdS5AHmqt9e89VjF+LFpZ/dGtBE8s
	Do+97g1a67KuA6gsYiY1FvoOaFgIqcSps6ReRidaTEghtvviefd5I7zlcHlb0kYX
	GBrSeiKRcCO9ostyYOgjpdHm0zi9P/tR05fISeYIC/xN1pRLl51lKNQrADusXKii
	vg6ocuBm9/rJbeomkKX63jJX9nl5d37iGuZaLxgvCwOptfh2/Jnl/WA5P9XkFm0H
	Cp77hW5Rx2WDRfptZ3H+ctHZR6Kz2m4KNzhW0ZlroGWbWD8VlY2nJSxrmhWGPO4k
	nEb3i+JNe5fyLmdy1CmkA==
X-ME-Sender: <xms:-cP_aNRD1WNUAm8dX-eMUtlcfnQ70ybgyZg6ov83Q9j-L8nDavbNnA>
    <xme:-cP_aONQAC7eU1yPp8fglkkdmQUTbGJH1x1LjFwzMV0HXhgRUrtc9gm6lUX1FlbWm
    rgXz1JDZnNk63lqt-2QLk93ACihCN8sWChNuPjTYMQ_XhQCKy50h5s>
X-ME-Received: <xmr:-cP_aANrkH5fV2vrLo7uWjp9R5pop_7CxVFOp5A7B7-MrWnmTzlZbaAtx7ZHWXqjeLcyH8OwjB5IxFDGWDd88R8Vw9ZqR3zbjyOZqBHL>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduheekjeejucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefkffggfgfuvfevfhfhjggtgfesthejre
    dttddvjeenucfhrhhomhepgghinhgtvghnthcuuegvrhhnrghtuceovhhinhgtvghnthes
    sggvrhhnrghtrdgthheqnecuggftrfgrthhtvghrnhepheevkeeutdeiledtffeludehte
    egudffjefftdelffettdfgkeeuleffgfdukefhnecuvehluhhsthgvrhfuihiivgeptden
    ucfrrghrrghmpehmrghilhhfrhhomhepvhhinhgtvghnthessggvrhhnrghtrdgthhdpnh
    gspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepkhhrrghi
    ghesghhoohhglhgvrdgtohhmpdhrtghpthhtoheprghlgieskhgvrhhnvghlrdhorhhgpd
    hrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:-cP_aOvFMM0HU0qFH8vvMRkBbXRuUu1Y9FNvLfQSDYZ5S6-TK8aOlA>
    <xmx:-cP_aKXimtiZOaH38T5-6CJz4HYAtjuoTIK9nANMp3_4YGUGE3uVpQ>
    <xmx:-cP_aGs_QHJih-6QMLWT9-nhry809a_KxkLt-cDbWAsDHibJ5F5Xeg>
    <xmx:-cP_aGUszAzvJyu-aMamfsk_6a0cEzdcsbll1acfw8TK--8w_umW-g>
    <xmx:-cP_aLG-GfvtW1Ya972wMtJichxxe4JpjYtPi9N2w92L0ZVsr0GGK3qF>
Feedback-ID: id69944f0:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 27 Oct 2025 15:11:53 -0400 (EDT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by neo.luffy.cx (Postfix) with ESMTP id 5D5B4423;
	Mon, 27 Oct 2025 20:11:51 +0100 (CET)
Message-ID: <6bb1b90e-1b1e-4cf0-b1c6-fe96adbb3e58@bernat.ch>
Date: Mon, 27 Oct 2025 20:11:51 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] man/man7/socket.7: fix documentation for
 SO_ATTACH_REUSEPORT_EBPF
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Craig Gallek <kraig@google.com>
References: <20251027131711.186482-1-vincent@bernat.ch>
 <pqnvi6iojjw5inryoevybyz3ujmwpknn4rwo2jmtycadgcvutk@2o2wuutlsbrn>
Content-Language: en-US, fr
From: Vincent Bernat <vincent@bernat.ch>
Autocrypt: addr=vincent@bernat.ch;
 keydata= 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
In-Reply-To: <pqnvi6iojjw5inryoevybyz3ujmwpknn4rwo2jmtycadgcvutk@2o2wuutlsbrn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2025-10-27 14:24, Alejandro Colomar wrote:

> On Mon, Oct 27, 2025 at 02:17:00PM +0100, Vincent Bernat wrote:
>> When using eBPF, the program should not return an index, but a
>> decision (SK_PASS/SK_DROP). The socket should be selected using the
>> sk_select_reuseport helper.
>>
>> Cc: Craig Gallek <kraig@google.com>
>> Signed-off-by: Vincent Bernat <vincent@bernat.ch>
> 
> Would you mind adding a Fixes: tag for the commit that introduced the
> incorrect text?

This is 1fa871f5378e (2016-03-01; "socket.7: Document some BPF-related 
socket options")
> Also, do you have a guess of why the wrong text was written?  It would
> be useful to have an idea of that.

Not a clue, but maybe let's wait when Craig comes back from vacation so 
he could say if there was a change or not and tell if I am correct.

