Return-Path: <linux-man+bounces-2764-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FC8A83388
	for <lists+linux-man@lfdr.de>; Wed,  9 Apr 2025 23:42:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DE54D7AEA2F
	for <lists+linux-man@lfdr.de>; Wed,  9 Apr 2025 21:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF8BD21481E;
	Wed,  9 Apr 2025 21:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jwilk.net header.i=@jwilk.net header.b="KUpVLlNE"
X-Original-To: linux-man@vger.kernel.org
Received: from 10.mo533.mail-out.ovh.net (10.mo533.mail-out.ovh.net [46.105.72.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3102AC17
	for <linux-man@vger.kernel.org>; Wed,  9 Apr 2025 21:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.105.72.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744234968; cv=none; b=ktEC1kO8zxfqXBrU9SBG3p95RPoTPnnna3g0mao5LyBvCsIYXPGtkjz1SmtFzL5gdNr4z4yrUEuvkcgQdma+cil2f0lsyEqHGQa8n7xA6BKhixWtb41ram/2mQY7jCYiWPbo+869bEmTjkoDcvZJ+fP51EbdUXKRrZXjm46mydE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744234968; c=relaxed/simple;
	bh=eFO1zOrl6BTSNrNDw0EU+j/Sk6LOd9HAGG1jivhbR2g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UZIaW4N26qPRqFDU1vg9sGViABJNnyf3/gi6AkvrgjyuWQ8huI+6UKrSKGJJgFcqaKAnepu//wLKKaOzMonzezZA0jTTpmaT4BNdlKpqro0TA1KTSUfRowXzvhJ3dBAuQoCBOSddzquPzQyLA6IyF4xIwPsrfg24+6vigjfAqqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jwilk.net; spf=pass smtp.mailfrom=jwilk.net; dkim=pass (2048-bit key) header.d=jwilk.net header.i=@jwilk.net header.b=KUpVLlNE; arc=none smtp.client-ip=46.105.72.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jwilk.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jwilk.net
Received: from director2.derp.mail-out.ovh.net (director2.derp.mail-out.ovh.net [79.137.60.36])
	by mo533.mail-out.ovh.net (Postfix) with ESMTPS id 4ZXvbP3zSGz1Tj1;
	Wed,  9 Apr 2025 20:25:53 +0000 (UTC)
Received: from director2.derp.mail-out.ovh.net (director2.derp.mail-out.ovh.net. [127.0.0.1])
        by director2.derp.mail-out.ovh.net (inspect_sender_mail_agent) with SMTP
        for <jannh@google.com>; Wed,  9 Apr 2025 20:25:53 +0000 (UTC)
Received: from mta6.priv.ovhmail-u1.ea.mail.ovh.net (unknown [10.110.113.158])
	by director2.derp.mail-out.ovh.net (Postfix) with ESMTPS id 4ZXvbP2cN0zyFY;
	Wed,  9 Apr 2025 20:25:53 +0000 (UTC)
Received: from jwilk.net (unknown [10.1.6.7])
	by mta6.priv.ovhmail-u1.ea.mail.ovh.net (Postfix) with ESMTPSA id 9F5B5D43CC9;
	Wed,  9 Apr 2025 20:25:51 +0000 (UTC)
Authentication-Results:garm.ovh; auth=pass (GARM-111S0055da57c81-5475-4f80-97fb-45673ac00651,
                    C2CDD821AA5C8083AD722228536C98132DCF5F8A) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:31.0.176.58
Date: Wed, 9 Apr 2025 22:25:48 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: Jann Horn <jannh@google.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	"Liam R . Howlett" <Liam.Howlett@oracle.com>,
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
	Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org
Subject: Re: [PATCH man] mmap.2: Document danger of mappings larger than
 PTRDIFF_MAX
Message-ID: <20250409202548.unp4btmb7ktq2igk@jwilk.net>
References: <20250409200316.1555164-1-jannh@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20250409200316.1555164-1-jannh@google.com>
X-Ovh-Tracer-Id: 15551210988846066793
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvtdeileeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepudeftefhleekkeelvddvgfeiieegffefgeejhefhgfefiedvudeujeekkeekgfffnecuffhomhgrihhnpehsohhurhgtvgifrghrvgdrohhrghenucfkphepuddvjedrtddrtddruddpfedurddtrddujeeirdehkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepkedprhgtphhtthhopehjrghnnhhhsehgohhoghhlvgdrtghomhdprhgtphhtthhopegrlhigsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdhmmheskhhvrggtkhdrohhrghdprhgtphhtthhopegrkhhpmheslhhinhhugidqfhhouhhnuggrthhiohhnrdhorhhgpdhrtghpthhtohepnfhirghmrdfjohiflhgvthhtsehorhgrtghlvgdrtghomhdprhgtphhtthhopehlohhrvghniihordhsthhorghkvghssehorhgrtghlvgdrtghomh
 dprhgtphhtthhopehvsggrsghkrgesshhushgvrdgtiidprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehfeefmgdpmhhouggvpehsmhhtphhouhht
DKIM-Signature: a=rsa-sha256; bh=PlSb+3ER9DX08ffcuHcb/SKT+kBQGPDkv39kOiQ23O0=;
 c=relaxed/relaxed; d=jwilk.net; h=From; s=ovhmo917968-selector1;
 t=1744230354; v=1;
 b=KUpVLlNE/09Vt21bjO5cgh/LgRVyL2UvAic0yS0u/J4tw8rD6WUKpNHDKjsc6k0gBA0VAadP
 xFFuh3PN3VXGIYsTHLwqFBPkx4B4CdJh54jOYbZiLU0i+PPH39POZ8ru19ouKHzy2wCsZY8FXWi
 +/7TPB6dEwkWcJnSoDWRMPOmcOCKiFmL27TiFk4nd1DI1VQPSWSs8NYyyQScN/uZCe2HWVuJk1n
 BEh5PGdQaC+hgx4FHjN4AsqDtCkx7fEFvh1hbHE4AP8lWCv7bm1Lh023Qq44KYHWwiqZbHYLH3P
 N30X+69vFme1LG4zQcEKrlvbEXa008omQsmZI9h03AGYA==

* Jann Horn <jannh@google.com>, 2025-04-09 22:03:
> - glibc malloc restricts object size to <=PTRDIFF_MAX in
>   checked_request2size()

FWIW, this is done only since glibc v2.30 (released in 2019):
https://sourceware.org/cgit/glibc/commit/?id=9bf8e29ca136094f

-- 
Jakub Wilk

