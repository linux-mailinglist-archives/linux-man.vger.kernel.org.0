Return-Path: <linux-man+bounces-170-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8E77FA31F
	for <lists+linux-man@lfdr.de>; Mon, 27 Nov 2023 15:40:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5729A2817CB
	for <lists+linux-man@lfdr.de>; Mon, 27 Nov 2023 14:40:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBB962DF92;
	Mon, 27 Nov 2023 14:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=owlfolio.org header.i=@owlfolio.org header.b="F3RhLfAC";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="Gb2aE5f+"
X-Original-To: linux-man@vger.kernel.org
X-Greylist: delayed 387 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 27 Nov 2023 06:40:48 PST
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com [64.147.123.26])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2D64D6
	for <linux-man@vger.kernel.org>; Mon, 27 Nov 2023 06:40:48 -0800 (PST)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailnew.west.internal (Postfix) with ESMTP id 52F802B003A5;
	Mon, 27 Nov 2023 09:34:18 -0500 (EST)
Received: from imap45 ([10.202.2.95])
  by compute5.internal (MEProxy); Mon, 27 Nov 2023 09:34:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=owlfolio.org; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1701095657; x=1701102857; bh=4C
	h/iF3ksKzm2y27n5O3lbVXrldiG39IV9lZSlDJY0k=; b=F3RhLfACbK4bx1w5JJ
	7gek4V42iRX3w16L+pP1bDMYQO2uJzXYA54T2zMUcEZbXp538SkDtXlKNxDa2Od9
	nSZA1CziP66a3JwY5XFXMkKWulPzsqIGnFt4QgMAehkoiivaoBcsmsODSpYU9gAm
	O2hfVqxloxp2uM6jiIOnSTXCt7gY2Y+BG9s+fgP/9IlBrsBEIla9XvMNW+EykOtd
	Jei+J8y6u4ZQmkE1IKWY2LgqfuvkzYoyiwqFRP1w8Yf0fJLbl4OeTs75Lb7TdD4n
	8T49kea2YkSVIxUQ54WIpl35E0mwNJ9BmQVXqtt1fpyeuGt7EC5Bj9ua8jA1ZYBH
	URMA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1701095657; x=1701102857; bh=4Ch/iF3ksKzm2
	y27n5O3lbVXrldiG39IV9lZSlDJY0k=; b=Gb2aE5f+mYdSPFMTFH/oo7cSBxVuT
	xIT0GkO5G4YfGuDHjVJd95jgoRV0+eN4Llag0RDbbSMZWozvxly7KI0H4YbOjBS8
	0W52S1QKFy/4olDvFbPjZQxmyCnOyHaVap5w3BKtUNjWvt3gewDTT0Mzxjsidqja
	vvdqpFRd+uQYpyU28UGohJJ25QvZFQaSOQBXd4lB+L9bUfnlQrfRWZG3gofK7V4w
	tklwkW5VeM4cBMjzp5ugrSoS7V70Z8/eKteEx/3RORsEBzbcUgCzValLnvvP/HGJ
	6ZUqDjAvy3Dk5DHhN5U7KvRNT4aiM2wM86FBDYmOmn9vFDkxmLbuskSXA==
X-ME-Sender: <xms:6ahkZTYo9xGTa1tQzV14nxCu3vytfeh3SC9fsR5spq8M2IwiB8lt4w>
    <xme:6ahkZSa_GuJ8WhRsendBmq4ym64Y0mJM-NerDNKaP8vXGCzajcWzhnEcxF5n2r-5I
    V9lA6zI6U2dwWCFa3Y>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeiuddgieejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    gogfegvdekqdduudculdeftddtmdenucfjughrpefofgggkfgjfhffhffvvefutgesthdt
    redtreertdenucfhrhhomhepfdgkrggtkhcuhggvihhnsggvrhhgfdcuoeiirggtkhesoh
    iflhhfohhlihhordhorhhgqeenucggtffrrghtthgvrhhnpeevkeeggffhkeduiedukeet
    udekuddvudduteevfeffvddutedtleeuffekjeffueenucffohhmrghinhepghhoohhglh
    gvrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhho
    mhepiigrtghksehofihlfhholhhiohdrohhrgh
X-ME-Proxy: <xmx:6ahkZV_fh29fQqKN_XvG8p-PsbfMRlNL0iW-3OXxPJFmpwmo4Tc85Q>
    <xmx:6ahkZZrhACKiFABFzYtNgwGHE5BExrikRdZ0KmsJbCKX8AXgWWDHlA>
    <xmx:6ahkZeouTAdd9JX1XycArGwgFzRVvwH0ZEfb_W4lkPDj3a0mAQgy9g>
    <xmx:6ahkZRUCIhkDRLpAknOLttUAEQSjNPAnBrwc5e9nkgR-3a-W0u1m6XAk0WU>
Feedback-ID: i876146a2:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 09246272007B; Mon, 27 Nov 2023 09:34:17 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1234-gac66594aae-fm-20231122.001-gac66594a
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-Id: <4a9a3209-ad1f-44be-b0bf-bba23a9cb085@app.fastmail.com>
In-Reply-To: <ZUy9qNSzok2Dtf_N@debian>
References: <ZUpjI1AHNOMOjdFk@devuan> <ZUsoIbhrJar6ojux@dj3ntoo>
 <ZUtaH35V3koxTSL0@debian>
 <16cc15a4-cfc0-49f4-9ebf-ecf0901700ce@app.fastmail.com>
 <ZUukRqsFNr7v_2q7@debian> <d213e504-9b2a-1526-ded8-2d283a226b4d@redhat.com>
 <ZUwHr2-l1WADR57b@debian> <8ebee0fc-1e77-41d9-8feb-8c1083a30a93@cs.ucla.edu>
 <ZUwn82bp6wHceMS1@debian> <bc621e0c-2e00-4cda-b888-637fd48ec32b@jguk.org>
 <ZUy9qNSzok2Dtf_N@debian>
Date: Mon, 27 Nov 2023 09:33:56 -0500
From: "Zack Weinberg" <zack@owlfolio.org>
To: "Alejandro Colomar" <alx@kernel.org>, "Jonny Grant" <jg@jguk.org>
Cc: "Paul Eggert" <eggert@cs.ucla.edu>, "Carlos O'Donell" <carlos@redhat.com>,
 "GNU libc development" <libc-alpha@sourceware.org>,
 'linux-man' <linux-man@vger.kernel.org>
Subject: Re: catenate vs concatenate (was: strncpy clarify result may not be null
 terminated)
Content-Type: text/plain

[all attribution deleted because it was so tangled I couldn't make
sense of it]

>> Rather than "catenation", in my experience "concatenation" is the
>> common term
...
> We began fighting this pomposity before v7. There has only been
> backsliding since. "Catenate" is crisper, means the same thing,

[English pedant mode on]

"Concatenate" is the correct term; "catenate" means something completely
different, probably "hang between two posts like a chain".  You can't
chop prefixes off a Latinate word and have it still mean the same thing.

[English pedant mode off]

Also, and much more importantly, "concatenate" is used at least 100x
more often than "catenate" in modern English, and that means it's the
word that a randomly selected reader of the manpages is more likely to
know, and, therefore, the word that the manpages should be using.

https://books.google.com/ngrams/graph?content=concatenate%2Ccatenate&year_start=1800&year_end=2019&corpus=en-2019&smoothing=3

zw

