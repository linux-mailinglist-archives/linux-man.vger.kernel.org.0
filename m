Return-Path: <linux-man+bounces-5632-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLfJFLWUGWrVxggAu9opvQ
	(envelope-from <linux-man+bounces-5632-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 15:29:25 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F22602DCD
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 15:29:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1CD9E303988D
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 13:28:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4FAD2D8393;
	Fri, 29 May 2026 13:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXyW0W5P"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9598A28134C
	for <linux-man@vger.kernel.org>; Fri, 29 May 2026 13:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780061309; cv=none; b=TZuUtF82xVuh8POyPcsFNPuNnV4tCnzwdqPY21hpZa826QNYMETZfjcsYrUEv3wFR6t2iEWoZABDIk/CTb9nxOiDv7FeNNsfxa5Ov8Up4GtqSo3RyoZjqVaxn+dyzBgjdOU28bX/7I3EpxZXlF8Ql5dqszk9iqrfgTI3qUmxNkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780061309; c=relaxed/simple;
	bh=HpoOD7NQULXqpytBDxAx4v9vaC48KvikDzX+2d4PY8U=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=r7THweqWePL7G1nvtiGvuzmYmFPQmxDYwTOoNeKAENyYx7TTzZnTwopUfbgFD9qlLpS/q3DL9IWJk0pT9k9iVcu34xgGcqTPjci8fw/28D298t7eX+Np8PjGgifdt4G8gih7hBy6WXvI1URDUtUI4SPoD8ijzlL6Oabc2MSnxhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXyW0W5P; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EEE41F00898;
	Fri, 29 May 2026 13:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780061308;
	bh=U/54XJZUNKpM396oZp/2xzG+YBPtmgGgSlVSoaMI+3I=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=EXyW0W5PMa5BRrgRDYCASb7qJXDA8iF2eo0VA18rJUtom7RcUwgN2hl9eue2azE7r
	 G6qft75WExqQ9KIVL0oZBtU7P2hJUHeaNH9jMFK2p+yVG3BB1SfkW6Eo8lz+UA2pog
	 JOwWXn4fHcy3BHNXjB/TUJZiLOdttS3uyEO5p4nWBw31FVI6WxW0djIu++wLYhqfs8
	 xQjFHXS1zP4IWkqXgYPv5W2UGx+WGTKJzCEzzuOifNl0bGfiiL8u/5aytDWnbAswvo
	 NR+ZkkIqQJi+TTt5oy5pjjEhfGXcNIElC+vaMe+OasJ7CfpovHSBJcKIeEzRp56yRy
	 BbVB8vRlu8ljQ==
From: Pratyush Yadav <pratyush@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Pratyush Yadav <pratyush@kernel.org>,  David Hildenbrand
 <david@kernel.org>,  Daniel Verkamp <dverkamp@chromium.org>,  Jeff Xu
 <jeffxu@google.com>,  Pasha Tatashin <pasha.tatashin@soleen.com>,  Baolin
 Wang <baolin.wang@linux.alibaba.com>,  Hugh Dickins <hughd@google.com>,
  linux-man@vger.kernel.org,  linux-mm@kvack.org
Subject: Re: [PATCH] man/man2const/F_{ADD,GET}_SEALS.2const: document
 F_SEAL_EXEC
In-Reply-To: <ahmPrpekhMwD-8fD@devuan> (Alejandro Colomar's message of "Fri,
	29 May 2026 15:12:39 +0200")
References: <20260529124047.1483026-1-pratyush@kernel.org>
	<ahmPrpekhMwD-8fD@devuan>
Date: Fri, 29 May 2026 15:28:25 +0200
Message-ID: <2vxzjysm2vly.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5632-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pratyush@kernel.org,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: E1F22602DCD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29 2026, Alejandro Colomar wrote:

> Hi Pratyush,
>
> On 2026-05-29T14:40:44+0200, Pratyush Yadav wrote:
>> From: "Pratyush Yadav (Google)" <pratyush@kernel.org>
>> 
>> F_SEAL_EXEC was added in Linux v6.3. It seals the exec bits of the
>> memfd. Document it.
>> 
>> Signed-off-by: Pratyush Yadav (Google) <pratyush@kernel.org>
>> ---
>> 
>> Notes:
>>     I discovered this was missing when working on [0]. I had to look at the
>>     code to figure out how it was supposed to behave.
>>     
>>     Disclaimer: I used help from Gemini to write this patch, mainly because
>>     I don't know the man page syntax. If the man-pages project also uses the
>>     AI-assisted tags as Linux, feel free to add:
>>     
>>     Assisted-by: Gemini:gemini-3.1-pro
>
> 	$ head -n13 CONTRIBUTING.d/ai 
> 	Name
> 		AI - artificial intelligence policy
>
> 	Description
> 		It is expressly forbidden to contribute to this project any
> 		content that has been created or derived with the assistance of
> 		AI tools.
>
> 		This includes AI assistive tools used in the contributing
> 		process, even if such tools do not directly generate the
> 		contributed code but are used to derive the contribution.  For
> 		example, AI linters, AI static analyzers, and AI tools that
> 		summarize input are forbidden.

Oh, well, that's a bummer :-(. I do understand the concerns, especially
the copyright one, but unfortunately I'm bummed about redoing an
otherwise perfectly good patch. These AI tools do make this sort of
stuff a tad bit easier.

Anyway, as you say, the amount of text is relatively small so I can redo
it by hand.

>
> If you only used it for formatting, and the text is entirely yours, I
> guess you'll be able to write it again from scratch easily (it's not
> a lot of text, anyway).
>
> To proceed clean, you should remove the patch entirely, and write it
> again from scratch, only looking at surrounding code and other pages,
> but not looking at the contaminated patch.
>
> If you have any doubts about the man(7) language, I can help, or even
> fix things for you (as long as it's reasonably easy to do so).
>
> Thanks!
>
>
> Have a lovely day!
> Alex

-- 
Regards,
Pratyush Yadav

