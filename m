Return-Path: <linux-man+bounces-4934-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JxmL0E1d2nhdAEAu9opvQ
	(envelope-from <linux-man+bounces-4934-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 10:34:57 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9518612F
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 10:34:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4874C302C6DE
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 09:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 290D5329C6F;
	Mon, 26 Jan 2026 09:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b="YSz1zIF3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.nic.cz (mail.nic.cz [217.31.204.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 990D7329384
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 09:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.31.204.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769419854; cv=none; b=aSYCN1fbJ6aEhHUwoQIi4U2W8NFwpuPJoXKjtTRUhv38TygP8S7q+FlH0Wlt3lXnWBhqboCA4KKO85eAaXkxtoA2UoxgZFD2ki9n6W3CD9o21IVbHAAk0TYLqVY0UObMKlxbfPQsnnlAbd7Nrv8GOwbU7aeDQ+tYQEaXCMTj8No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769419854; c=relaxed/simple;
	bh=tI1So02XN6d/0nrMjlsK2WXDfPTY55Zvvz04zwqXRxU=;
	h=Message-ID:Date:MIME-Version:To:Cc:References:Subject:From:
	 In-Reply-To:Content-Type; b=HTEbkoa4dT1Fg4KptRMPLAXKvHZWyVIQOPBxAUdhEcBI6bTEA3MvEAUvcQFRdRV2fJH8o7UmG0TGpCjpIM6U+854tUHwt3Gmjz8jQfjAWWRMDPqlUzBKh7apFELfaRAMLuNAwVpK0mZirY3mQ+Tow3laMkw2aOLJBiWibFEPywk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz; spf=pass smtp.mailfrom=nic.cz; dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b=YSz1zIF3; arc=none smtp.client-ip=217.31.204.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nic.cz
Received: from [IPV6:2a02:768:2d1c:226:1ecc:a24e:b7b7:60fe] (unknown [IPv6:2a02:768:2d1c:226:1ecc:a24e:b7b7:60fe])
	by mail.nic.cz (Postfix) with ESMTPSA id 40F7A1C0581;
	Mon, 26 Jan 2026 10:21:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nic.cz; s=default;
	t=1769419299;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=pXzkERCHAxFJyNW66UefdxkjNtucpTvT2DQs1cueJcM=;
	b=YSz1zIF3+6xXGJu07bf6NbfB8STbor/ypbNVUVij1tKkv9NNOFXMJ9DHTvKdITJykLPIoH
	iYRQ7wjrQnHIO/WYy2y0LtmLcpjQxhwHSXHyLcCxn7EU/HNOMeSfxgD3V4qGWwl0RhjDpC
	Aq1vTHHwd5mvZaxZc5dulilbLdQ1BR8=
Authentication-Results: mail.nic.cz;
	auth=pass smtp.auth=vladimir.cunat@nic.cz smtp.mailfrom=vladimir.cunat@nic.cz
Message-ID: <ade376ba-13c6-4abc-9b28-6fb53c9af36c@nic.cz>
Date: Mon, 26 Jan 2026 10:21:38 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: linux-man@vger.kernel.org
Cc: alx@kernel.org, mario.blaettermann@gmail.com, debian@helgefjell.de
References: <aKs8ipbVrLo_fFC-@meinfjell.helgefjelltest.de>
Subject: Re: Issue in man page resolver.3
Content-Language: cs, en-US
From: =?UTF-8?B?VmxhZGltw61yIMSMdW7DoXQ=?= <vladimir.cunat@nic.cz>
Autocrypt: addr=vladimir.cunat@nic.cz; keydata=
 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
 Jen8akkduxILPhFGNAZku8BEqw==
In-Reply-To: <aKs8ipbVrLo_fFC-@meinfjell.helgefjelltest.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Bar: +++++
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MIXED_CHARSET(1.25)[subject];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nic.cz,reject];
	R_DKIM_ALLOW(-0.20)[nic.cz:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,helgefjell.de];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[nic.cz:+];
	TAGGED_FROM(0.00)[bounces-4934-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.cunat@nic.cz,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+]
X-Rspamd-Queue-Id: 1C9518612F
X-Rspamd-Action: no action

Hello, just my 2c.

 > That is quite confusing, at least to me as a translator

I believe the forward syntax is confusing to C programmers, too.
It's not standard C and it's also not commonly used in code,
from what I see.  (at least so far; maybe in future)


Thanks for maintaining man-pages, by the way :-)
--Vladimir

