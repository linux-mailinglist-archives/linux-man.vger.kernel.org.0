Return-Path: <linux-man+bounces-5222-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCclJWwunmmkTwQAu9opvQ
	(envelope-from <linux-man+bounces-5222-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 25 Feb 2026 00:04:12 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D1618E050
	for <lists+linux-man@lfdr.de>; Wed, 25 Feb 2026 00:04:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D3EB93030482
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 23:04:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58D0A2DCF74;
	Tue, 24 Feb 2026 23:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="n24eUnaJ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF9329E113
	for <linux-man@vger.kernel.org>; Tue, 24 Feb 2026 23:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771974246; cv=none; b=qtPmi3PbXys75aOAoRkyNaJsnT22GOAjCpOwRVHS2F+ZQzezvQ1CIYU5vmqEIfpWVvvGJPIEDPRD2wVkt+i50UWIjupooeJKzo86447P1F/fO+rPyefOiqxpWVs8GJbouZdWQIZbliMfqMkqie7mnyKW0WGbpzBCy72BY3v6MbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771974246; c=relaxed/simple;
	bh=QG3EqNwhcVPOXiT31Jbb6lB9kNaByz14YknvmTF7SgE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Nt/6ps5LBakl2LQmIZBshCGBrBcHNvUtPsqC1MBMKtn1Z22Ru2yRevJXgjPmGbJBCCZsVCluQb4JCoIOtqaQtstP4KQfVV4d8iZ3Y7EOcw2llwWSASs2Ru4Hlo6E7o4RouGYQbmp3rI2MFiGItvo75Xi/gr9DOk9IPDw2eb65RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=n24eUnaJ; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 46D173C011BCE;
	Tue, 24 Feb 2026 15:04:04 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id 6MwCnYHUtN1b; Tue, 24 Feb 2026 15:04:04 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 1ED1B3C011BD7;
	Tue, 24 Feb 2026 15:04:04 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 1ED1B3C011BD7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1771974244;
	bh=QG3EqNwhcVPOXiT31Jbb6lB9kNaByz14YknvmTF7SgE=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=n24eUnaJUsFrD2grQ9KuAHlBYOA88IeWgEEXkpqSBJGobfl0GEoaTPgz9DhneqRke
	 RdeUY2e6N8EVzAoJrZGiLhx/xr0Ia46nTRo36EPH9Lo6QxpmWqIHk1eSm76DMUFBBL
	 MmqsZuFrRuNYqvADvNvolfowAjXoeU6lKzghg18gNyI0k257jpj1W2GiyFoYETSUh/
	 BnNhajSmPiSk1PeUtNnELdRNwWnAUHPSRw2X3Tcqwtc9YMd/83qSXBthwl144u8KCL
	 NMOIDo4fTk0zURmVZ6z+IhZqZMvl6npXRs/BMHOWrJxzvwozZul9Qh2EsZgI7+6i2A
	 jWhdFNk3NYIXg==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id jdEKQoli6xBg; Tue, 24 Feb 2026 15:04:04 -0800 (PST)
Received: from [131.179.64.200] (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 049A33C011BD0;
	Tue, 24 Feb 2026 15:04:04 -0800 (PST)
Message-ID: <c66fb0f4-5814-4979-a556-b480c5222ba8@cs.ucla.edu>
Date: Tue, 24 Feb 2026 15:04:03 -0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: QChar and QVoid for strchr(3), memchr(3), et al.
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <aZ2xBQcy7mMEXW_b@devuan>
 <67824728-313a-4f73-be2c-ad41697925b5@cs.ucla.edu> <aZ4YhDCzMOnokXH9@devuan>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Autocrypt: addr=eggert@cs.ucla.edu; keydata=
 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
Organization: UCLA Computer Science Department
In-Reply-To: <aZ4YhDCzMOnokXH9@devuan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[cs.ucla.edu,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[cs.ucla.edu:s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5222-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cs.ucla.edu:mid,cs.ucla.edu:dkim];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[cs.ucla.edu:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eggert@cs.ucla.edu,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: E1D1618E050
X-Rspamd-Action: no action

On 2026-02-24 13:31, Alejandro Colomar wrote:
> How would you document strchr(3)?

I'd do what the standard does rather than reinvent this particular wheel.

