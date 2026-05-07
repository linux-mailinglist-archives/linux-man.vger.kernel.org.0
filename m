Return-Path: <linux-man+bounces-5469-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CbuEDT+/GmxVwAAu9opvQ
	(envelope-from <linux-man+bounces-5469-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 23:03:48 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DEE4EF189
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 23:03:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F29D3010BA1
	for <lists+linux-man@lfdr.de>; Thu,  7 May 2026 21:02:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 824C031E831;
	Thu,  7 May 2026 21:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="iqj5foAo";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="D70l5ydQ"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCDFC2C0F81
	for <linux-man@vger.kernel.org>; Thu,  7 May 2026 21:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778187742; cv=none; b=c/23h1uwRLucpDDJYCVWmQ1DtAFgKKBAFEFvBpCI7nytbM1uHgJ7fF4qIQ42J7wdIJQOoo/CYjw2+NutMYGaDhNvncrl93GLhNI9zcm72kbO7Ksq2ehmKgfNyCXS4oOpuHcf0zJnmRPSR+4SPMzSKWv8DADPK2nj0Kp17TeoiHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778187742; c=relaxed/simple;
	bh=OTrmjtZVAA0ZT147gk9+MkdPy+QoELd8vB5ywb2mKJ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rTa89Zz4og+BbTEjepsUfIZHDXLqVLoOqKgoDM07T2Qh7p2mdUuyYGJ6zXcSiFUKQ2w92gvC3GkM+yzLxRf03igFvO2A3119tSKwJd+IB5SWQ27LOLA0OD05UI98BNKMGc8se+dSDJbP1n8dJbJZJv5P3T4O2wfVwl/8L1hoHUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=iqj5foAo; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=D70l5ydQ; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1778187739;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=67wF4IoZqHAiT8ujonAimt4W05prLDwLUVInIPt7ELc=;
	b=iqj5foAoIv96hxJeo0aGqe+1JUGCxuTFOPIaNfjnb2z/aI7eUUK7AcUnYvrclx4Uy5JeSE
	eTyNYCZQZsofG36p545O98HZatGurh2Recplv7tkh5LpMJ1t2VpNQlSX2j3lQshwkjKbqz
	qbW4mmyN3YxOL8NigvFSnLlxshPsqF8=
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com
 [209.85.167.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-573-uBZTcrBXPLiQhNWleCI0LA-1; Thu, 07 May 2026 17:02:18 -0400
X-MC-Unique: uBZTcrBXPLiQhNWleCI0LA-1
X-Mimecast-MFC-AGG-ID: uBZTcrBXPLiQhNWleCI0LA_1778187738
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-479ef6653bbso1467594b6e.2
        for <linux-man@vger.kernel.org>; Thu, 07 May 2026 14:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1778187737; x=1778792537; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=67wF4IoZqHAiT8ujonAimt4W05prLDwLUVInIPt7ELc=;
        b=D70l5ydQp/NgzUAF2IditDH9ujT3uxkkyTYahbrDnLYOB59w9CV8qgx+M50hlpYqMq
         apntVckA1ScOX1DTjmniG6+vLti9E1JgCenC79nH5vFVUF0cLplJXk2VRqrRkt7lfj/a
         1EWj/CHR9wc3xLak2GJlmDIRJUmz8l6vDVod/x5kIiyPgKWaZ4TwpX21ii6xwiYeyS7R
         oBEKjrxR8Ub3NTxO4CmEUNmohmlhN4glagNa9TGemZJjmrewUaR1Y0SnsbA3OFQI8pju
         Uf8Zce9jZWiFQ2URooXxTM2Et5K2fitPDgLU+iUEC5iMFVrID6qRZHaWTB1TghOwpvJR
         cSxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778187737; x=1778792537;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=67wF4IoZqHAiT8ujonAimt4W05prLDwLUVInIPt7ELc=;
        b=Eh5c3h1GrFBpc2Xj1Y/sjDHqqUSbMxelzNkOFRT/DaGUJJh9FSs58QVApL2wwyCuEC
         KejPfidkXhdyPdYN8yr9A+NtebooWTllzCuRki6y+8oSC9qY8if8H/4JH/mPs35M3ygS
         Yby8fR5nqRbp+04b/f2rnS6LsPxMsVmb802ZPmMAi/YtWtG9IzKgtUCN83dJsy9k20sy
         Rp5OE6TWaMPlZdhwN+lADsF21XsDi1F7k9TY8naOQ7CRT8a+YaF4dRbpaucghFqhGjAS
         zRl0FnE/BNvTGdQ9SbT+s0U+CjhBV8xmVTfdFB1GGXgENZ0NctZWdc140XVMvjdJoeNG
         Uzmw==
X-Gm-Message-State: AOJu0Yyv5ZVUus3ORhISP38cuyCi85g+MxqtqzfPZjfATcEm96BDHdI5
	Pbh8PWBdPL1vu+q4YUnqC51BED46bgmiw32uM8JaQML8hAdnBqCbg6+wPyTwrQOHkt9Wv36tgqW
	u0ftdGS1UFC/69ZDZJfamXaqB2zQb8TRAeQCqn2izqmFjYzI+s8KGlrMrWpQnwRz7+ELzAA==
X-Gm-Gg: AeBDietAmgz2QgS6kYOsj0jhxOwWo4y3SYw+vUc4DJageJW8ORkfZrLSppt+Pk6dRMt
	wveuTSnhORwd9qDThzg5YoV5NqiYPNMfz+nCqU3dG8tZ2U+W9CHz0Itmwnh4WQ0EQgtwJr82AEy
	SjRUOIINz+XEMsnpskhrhTLiUx4JlRdQ9UyN49IysabZdjNPIeNa57olb5YaTorCu77Tz6Y22si
	Y/bnLEXUxFGJg1JmS+oFqmGUvLzoSthTcGGYQ6JQtVnDmVSNjeWGUYdY9KzgB8/PM7kGOMIt9qw
	BFmb8rLRNt7ww9b3RgE2ygCEkNFRH/sH785jmdYdWhfwvc5DeSLnBoDiXN26cK1Xu8jT9FckREn
	qWGdWOBN0jPMpEuuOLDb+HbwzM66p4yZ259akpru/WEYv6pdyC8V62jffmO1OiyHmtSGpjFvVwg
	rmxPsDeKV3qkef97UtPrvtKzHHGj3r2kV2
X-Received: by 2002:a05:6808:23d2:b0:479:eb19:6e71 with SMTP id 5614622812f47-480420dcf28mr6428463b6e.5.1778187737277;
        Thu, 07 May 2026 14:02:17 -0700 (PDT)
X-Received: by 2002:a05:6808:23d2:b0:479:eb19:6e71 with SMTP id 5614622812f47-480420dcf28mr6428413b6e.5.1778187736734;
        Thu, 07 May 2026 14:02:16 -0700 (PDT)
Received: from [192.168.0.116] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-514850cb79bsm7844331cf.6.2026.05.07.14.02.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2026 14:02:16 -0700 (PDT)
Message-ID: <43397b17-d140-4d40-bafb-7a4de5d4da0b@redhat.com>
Date: Thu, 7 May 2026 17:02:15 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] man/man5/core.5: Update compression format for
 systemd-coredump
To: Alejandro Colomar <alx@kernel.org>, Patsy Griffin <patsy@redhat.com>
Cc: linux-man@vger.kernel.org
References: <20260507190508.386186-1-patsy@redhat.com>
 <20260507190508.386186-2-patsy@redhat.com> <afz6oASktRUsElC8@devuan>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat, LLC.
In-Reply-To: <afz6oASktRUsElC8@devuan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 93DEE4EF189
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TAGGED_FROM(0.00)[bounces-5469-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[carlos@redhat.com,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

On 5/7/26 4:59 PM, Alejandro Colomar wrote:
> Hi Patsy, Carlos,
> 
> On 2026-05-07T15:05:08-0400, Patsy Griffin wrote:
>> As of version 246, systemd-coredump defaults to zstd compression
>> for core dumps, rather than lz4.
>>
>> Signed-off-by: Patsy Griffin <patsy@redhat.com>
>> ---
>>   man/man5/core.5 | 8 ++++++--
>>   1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/man/man5/core.5 b/man/man5/core.5
>> index 4da5819b6..ee34eded3 100644
>> --- a/man/man5/core.5
>> +++ b/man/man5/core.5
>> @@ -515,9 +515,13 @@ program:
>>   In this case, core dumps will be placed in the location configured for
>>   .BR systemd\-coredump (8),
>>   typically as
>> -.BR lz4 (1)
>> -compressed files in the directory
>> +.BR zstd (1)
>> +compressed files
>> +.\" Since Systemd 246:
>> +.\" commit ef5924aa313d1892bb491c870ba3c429454dfc76
>> +in the directory
>>   .IR /var/lib/systemd/coredump/ .
>> +Compression on or off is configurable via coredump.conf(5).
> 
> Thanks!  I've reformatted it, and moved the comment to the commit
> message, where it's less noisy.
> 
> 	commit XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
> 	Author: Patsy Griffin <patsy@redhat.com>
> 	Date:   2026-05-07 15:05:08 -0400
> 
> 	    man/man5/core.5: Update compression format for systemd-coredump
> 	
> 	    As of version 246, systemd-coredump defaults to zstd compression
> 	    for core dumps, rather than lz4.
> 	
> 	    systemd.git ef5924aa (2020-05-04; "coredump: add zstandard support for coredumps")
> 	
> 	    Signed-off-by: Patsy Griffin <patsy@redhat.com>
> 	    Message-ID: <20260507190508.386186-2-patsy@redhat.com>
> 	    Reviewed-by: Carlos O'Donell <carlos@redhat.com>
> 	    Message-ID: <eb5c6c20-48a3-46a9-9918-12beffb8e6bc@redhat.com>
> 	    [alx: Minor tweaks]
> 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
> 
> 	diff --git a/man/man5/core.5 b/man/man5/core.5
> 	index 4da5819b..7b02bd5b 100644
> 	--- a/man/man5/core.5
> 	+++ b/man/man5/core.5
> 	@@ -515,9 +515,11 @@ .SS Core dumps and systemd
> 	 In this case, core dumps will be placed in the location configured for
> 	 .BR systemd\-coredump (8),
> 	 typically as
> 	-.BR lz4 (1)
> 	+.BR zstd (1)
> 	 compressed files in the directory
> 	 .IR /var/lib/systemd/coredump/ .
> 	+Compression on or off is configurable via
> 	+.BR coredump.conf (5).
> 	 One can list the core dumps that have been recorded by
> 	 .BR systemd\-coredump (8)
> 	 using
> 
> Carlos, I've kept your Rb tag, as nothing has changed meaningfully.
> Would you all mind confirming this is okay?
  
Absolutely. LGTM.

  
> Have a lovely night!
> Alex
> 
>>   One can list the core dumps that have been recorded by
>>   .BR systemd\-coredump (8)
>>   using
>> -- 
>> 2.51.1
>>
> 


-- 
Cheers,
Carlos.


