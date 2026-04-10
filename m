Return-Path: <linux-man+bounces-5320-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFeALpJL2WkMoQgAu9opvQ
	(envelope-from <linux-man+bounces-5320-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 10 Apr 2026 21:12:18 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5063DBC9B
	for <lists+linux-man@lfdr.de>; Fri, 10 Apr 2026 21:12:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1E02B3023A43
	for <lists+linux-man@lfdr.de>; Fri, 10 Apr 2026 19:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 369E3225791;
	Fri, 10 Apr 2026 19:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="XhVEUcZ/"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2126E3451B0
	for <linux-man@vger.kernel.org>; Fri, 10 Apr 2026 19:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775848336; cv=none; b=Aa4nmcXxYPaafU8RNnpgmykTEbYQU+9bMSkfElyifEwuvlGsXiaROgCXVQ0EWaQjXBcIi1L+Kwcvf4TrbF4JPKFICiby3RIucRJKGys7WtSZf3oY0+CGbB6fjWPEmjJ04pIJlgvok1j4MBciZnyXHSKR0bM4Kqdco4RuaRWCWyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775848336; c=relaxed/simple;
	bh=CW7OV8ybXtIWx3o8hbRGvQkfKJtjqiZU2hKuEuEEPjE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MFHGg64yfnc1Yh+aHJFMXflgf06DKwqL6Qj/h6OMxsnNwyO8YNf5Wy4z4TFawuCXzoJVbByZjBEb8JPS0Xwxge2VhMtWjyfmdbsCdDA0TMex73aaKI3++EWAxFp3H2umHVZgEbTtEbtiNL7IfsDZxXkWrtV3hClStSRTASsxcAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=XhVEUcZ/; arc=none smtp.client-ip=80.241.56.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4fsmdH5PjLz9tTJ;
	Fri, 10 Apr 2026 21:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1775848323;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Aynb9IoJcme/ilEOxL6w02FC//bbcVpelBP2CLAx/vs=;
	b=XhVEUcZ/plEe9ZrSQuWjwgKeODlFHGiDgC7Q8NEgyKxsfJ/CwHCfcAJlfwzE7GCpyuvl6/
	8WA2lpxtkI/tsTuaqGdYlCNkSNMqsT5c+kuVNiceLBnQRKy1KRkSn74cBDLGMbYDATqZ/8
	ULLhwdaMCxCw3LF3UMA4Q+1fisRFqggWfyp8ACz83YGLIODM71aAW1+lB3BeHFFxhsie5o
	hCmChDisUrLwF81dnGqiJLXHiJD0SGh2itEd7pykaC1vTkpajiPonNY6qTCO6T+n7P+hIZ
	nMJb+Ff5szUFo5gXv0WygUnT0BjPJj7QgfIVgu9TfowupTQLcVzqH4P6k5LBMQ==
Message-ID: <56356afa-99c5-4845-830e-dcf441eb376e@mailbox.org>
Date: Fri, 10 Apr 2026 21:12:02 +0200
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: Missing error values in ftruncate and fallocate man pages?
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <e53daaf2-3658-4645-ba29-fa488bec5ed8@mailbox.org>
 <adk2_jjPuyuQVbKI@debian>
From: Zeno Endemann <zeno.endemann@mailbox.org>
Autocrypt: addr=zeno.endemann@mailbox.org; keydata=
 xjMEaQTnsRYJKwYBBAHaRw8BAQdAaM0iP7BM4cim48CUrxLA/GL1pYCCEzcWwMWZpif6rNXN
 M1plbm8gU2ViYXN0aWFuIEVuZGVtYW5uIDx6ZW5vLmVuZGVtYW5uQG1haWxib3gub3JnPsKW
 BBMWCgA+FiEEmC5dRIssSc8usW9ctw5fyLMNvKkFAmkE57ECGwMFCQWjmoAFCwkIBwIGFQoJ
 CAsCBBYCAwECHgECF4AACgkQtw5fyLMNvKlmYgD+LcbsvEZxyegeAcyvZXvpZBEjHXqkdM90
 C9QVC1CsW3IA/jqxTNUPJZ26XR3/d7XcWMFg5JRZyJdL7dP+7crJeMkGzjgEaQTnsRIKKwYB
 BAGXVQEFAQEHQHFzaxdORLfIxXTm1tjSnTbboFXL9tw5GgcNA4Nz0AQiAwEIB8J+BBgWCgAm
 FiEEmC5dRIssSc8usW9ctw5fyLMNvKkFAmkE57ECGwwFCQWjmoAACgkQtw5fyLMNvKmYmgEA
 xY2IpTWenWoXXSyhGUWu/ZfdRUsUBtYM5wSj7XeayCUA/0/dEWSKHsuxuFgvaetZE92+qjb8
 HkxusIwKIh1rafYI
In-Reply-To: <adk2_jjPuyuQVbKI@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MBO-RS-META: 9cx7fnc8fnssdq7nw8rziyapy4ga6984
X-MBO-RS-ID: 7ac21903dc7dfd146a4
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	SUBJECT_ENDS_QUESTION(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5320-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[mailbox.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zeno.endemann@mailbox.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mailbox.org:dkim,mailbox.org:mid]
X-Rspamd-Queue-Id: 2A5063DBC9B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Alejandro Colomar wrote on 10.04.26 19:47:
> Hi Zeno,
> 
> On 2026-04-10T18:52:29+0200, Zeno Endemann wrote:
>> Hello,
>>
>> I noticed that the man page for truncate(2) does not list the error codes
>> ENOSPC and EDQUOT, but I would think those should be potentially possible
>> when actually expanding a file (may depend on file system?).
>>
>> Similarly, fallocate(2) also does not list EDQUOT (ENOSPC is there however).
>> Finally, posix_fallocate(3) has no EDQUOT as well, and EIO also seems to be
>> missing for this one.
>>
>> Or am I overlooking something?
> 
> Sounds plausible.  If you could either perform some experiments or show
> the relevant kernel sources that make it possible, we could know for
> sure.  If you find out it's possible, would you mind sending a patch?

I ran a quick test, on a FAT32 partition ftruncate can indeed return ENOSPC.
On most other file systems I suspect it will not, as most fs support files
with unallocated space. Not sure there is a file system supporting quotas
but not sparse files, I have never worked with quotas. Maybe someone else
can pitch in there?

As a side note, I think it would be preferable if the allowed error codes
would be agreed upon / specified regardless of whether there is an in-kernel
file system which can currently actually return those, since how things are
implemented can change over time, and there is also FUSE - technically with
my own FUSE file system I can make these functions return any arbitrary errno
value, but a well-behaving FUSE implementation of course would restrict itself
to such a specified "contract". Though I suppose this is likely not the right
place to discuss this further ;)

Cheers,


> 
> 
> Have a lovely day!
> Alex
> 
>>
>> Thanks,
>> Zeno Endemann
>>
>>
> 


