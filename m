Return-Path: <linux-man+bounces-4346-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7823AC95BA9
	for <lists+linux-man@lfdr.de>; Mon, 01 Dec 2025 06:49:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 402474E044C
	for <lists+linux-man@lfdr.de>; Mon,  1 Dec 2025 05:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 460AD1DB122;
	Mon,  1 Dec 2025 05:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bernat.ch header.i=@bernat.ch header.b="UwKI8RG/";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="hCGgDS7M"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-b4-smtp.messagingengine.com (fhigh-b4-smtp.messagingengine.com [202.12.124.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BBD125A0
	for <linux-man@vger.kernel.org>; Mon,  1 Dec 2025 05:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.155
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764568187; cv=none; b=JRmZVwNRy3wz9fj05ycNYmyH5XeWL8b4j0mdEGY6nij+J+ydvPBQEzGGALqRTnRK9U2vMaH+ki9s1ZDlzFYgv8B6zQ3+KiBj3wwDSUgt9jIw4RCVckN2YjYjuclsKwsIC1prdTsK2QedSV7JEW412proEHs98LDIIHZDHSzqacs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764568187; c=relaxed/simple;
	bh=bdME+0ztAGlGpdcQ+OEyUvk3WIYkhV0KWAaZVSC8vAY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=ALJ5qqBV5qVLq+JPuNK9ODQTyiSF+zPw2u5eJK2aIHaoSRqvfVobYyMEZi6QpllELgVSFaFlr8GzKF+RaAdiKTCUDqM9InvDFHlq3ygluBR12jrkf5xkQxMLr+3LT2AZY+xzv7Sz2xuQx5xhdrChnx6W8F41oanfHqAht5Pj0J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bernat.ch; spf=pass smtp.mailfrom=bernat.ch; dkim=pass (2048-bit key) header.d=bernat.ch header.i=@bernat.ch header.b=UwKI8RG/; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=hCGgDS7M; arc=none smtp.client-ip=202.12.124.155
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bernat.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bernat.ch
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 47EAD7A0130;
	Mon,  1 Dec 2025 00:49:44 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Mon, 01 Dec 2025 00:49:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bernat.ch; h=cc
	:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1764568184;
	 x=1764654584; bh=MJZnR/dN/I1WA4Ga2HaBSHY9hcWtN4RjUFg8BuaeQ+o=; b=
	UwKI8RG/1PTb56A+WVKVsPnh9oXlgKrLyVJA1EjNWzW1DgB8SDTwiHiIw8j/gwp6
	Y7fh860AT08W1c9jn0WXStkthhaM/kwT3VMSOYIQP6hXRU5e4ziR/AazgoxQ5i/K
	l9R3201WnSpaaKHQmhpGTbvW3nttaEbKtc1OUt9zYDgTk9xVbUJq6oG99tcq9ioh
	Qfc3pAPqxWrq+xjuSrsz6jAIWs173T20dBMCQm0+Zsm4lNYeikvWASvpE5V7z4rF
	sz7j5hkgh7St5EovcVT9ihnEQbqV3uawl9YOC6rjMsKaDh4mjBiYvj4YNc4ih+IQ
	fJQ73D4GA3rT6u46Wgyy5Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1764568184; x=1764654584; bh=M
	JZnR/dN/I1WA4Ga2HaBSHY9hcWtN4RjUFg8BuaeQ+o=; b=hCGgDS7McIwYg04Xy
	q68c0XWKWmManmUYcXBcfna0eAXkF9keTFupvtqH6MG8/HHDTzfyvlqMUwtzhDik
	gvO2tZg/AFvh//wk7oL7YDU2fUeuZnzOOS+0sKMiz+5Yfpjwl/P3RTBXxTVq13+N
	dMOfY1HKzZZ3Gg9L8ffXOeZ3L+X42CNX9GTZp2MK1uOlUj3d/kqis6rD70GhnXzP
	/IFlppG/iSnItDa9t6ajXJ2buThJCVo5kPJNJ8Njvzztrih0jcv+F19tn0c1VX6c
	CkgBmdPx3E3yvLRwcRtaauh7WQ6pAMmecAxONzBew7qErfHZKDzCThkY5LvMXCdb
	UcqGw==
X-ME-Sender: <xms:dywtaT9hZ05c_CxHNXUTr43XS1fedtCqgVeiHAJMO3OtWpl0jtMNnw>
    <xme:dywtaWvCpe7CN29weHRT12XtNvorBxl6Fnds_r1_jxltD9wRTYSpRfGgzza5NXP19
    fL8UHe3FuMMAlfndK-a35RWp7p7IRbtR88GGRIeCS7tqotITB85XSs>
X-ME-Received: <xmr:dywtaWD3zftpOiMTDjRCUqQ5XrimEbzMHEWj9XZLxiMLpaWk-Nlra-4_aYIrvlAcr8VNgmy7yEGD0ZKKzLd2dKY-cf1nsbWfECW0C2MA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvheeileduucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepkfffgggfuffvfhfhjggtgfesthejredttddvjeenucfhrhhomhepgghinhgtvghn
    thcuuegvrhhnrghtuceovhhinhgtvghnthessggvrhhnrghtrdgthheqnecuggftrfgrth
    htvghrnheptdevtdejjeduuddtffeffeekkeefvdehfffhveetvdegheetveeufefgvdfh
    leelnecuffhomhgrihhnpegvsghpfhdrihhonecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepvhhinhgtvghnthessggvrhhnrghtrdgthhdpnhgs
    pghrtghpthhtohepgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepkhgrfhgrih
    esfhgsrdgtohhmpdhrtghpthhtohepkhhrrghighesghhoohhglhgvrdgtohhmpdhrtghp
    thhtoheprghlgieskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnh
    esvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:dywtaeWhkmg0QlDS-D-rshvoQ3PKGSrVDZNjQPhcrputLwDyTVr11g>
    <xmx:dywtaUDiP8a4YmksS8dmSNDN2XeO43G0RipxDG-88EL5rckoWT38aw>
    <xmx:dywtaR8jDzC2GhUY7TIX_TlKaN1v2zCayUIcGHnd8BCrqyPAJjfkLA>
    <xmx:dywtabHhftpRr3XEU4rSEQGc5tfFHh6HkBGGWeV6DurBRYwJSlkiKQ>
    <xmx:eCwtacWAip9cSjrPHEzCcxoo8FT3Dm4jr0RX3ctLbGNcOHzfHPQ1lHRs>
Feedback-ID: id69944f0:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 1 Dec 2025 00:49:43 -0500 (EST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by neo.luffy.cx (Postfix) with ESMTP id D030415E;
	Mon, 01 Dec 2025 06:49:42 +0100 (CET)
Message-ID: <6ebb6367-a98e-4749-9c77-db7a83f5b912@bernat.ch>
Date: Mon, 1 Dec 2025 06:49:42 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] man/man7/socket.7: fix documentation for
 SO_ATTACH_REUSEPORT_EBPF
To: Alejandro Colomar <alx@kernel.org>, Craig Gallek <kraig@google.com>,
 linux-man@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
References: <20251027131711.186482-1-vincent@bernat.ch>
 <20251201054800.3652822-1-vincent@bernat.ch>
Content-Language: en-US, fr
From: Vincent Bernat <vincent@bernat.ch>
Autocrypt: addr=vincent@bernat.ch;
 keydata= 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
In-Reply-To: <20251201054800.3652822-1-vincent@bernat.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2025-12-01 06:44, Vincent Bernat wrote:
> When using eBPF, there are two possible cases depending on the program
> type. Only the first case was described. In the second case, the program
> should not return an index, but a decision (SK_PASS/SK_DROP). The socket
> should be selected using the sk_select_reuseport helper.

I didn't add a "Fix:", as this is an update (introduced in Linux 4.19). 
This is not 100% complete as it does not explain socket migration 
(https://docs.ebpf.io/linux/program-type/BPF_PROG_TYPE_SK_REUSEPORT/) 
but I didn't want to go too much in details.

