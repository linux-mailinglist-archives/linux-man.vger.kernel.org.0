Return-Path: <linux-man+bounces-3034-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A32AC4ECE
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 14:42:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D39413BB62C
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 12:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD077269CF6;
	Tue, 27 May 2025 12:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="UN4zVERk"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117ED4315C
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 12:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748349753; cv=none; b=rhHGQOqFAZ67MUdJbYNHzLLffOAJcMTCBjXI25/dwB7aQyw6WEKsxEE7Il59kS0GgKMSW51Mw0d3rtWWydXYuRnjoaau2XIhH5MblT0HcjI3HZ+4ZH4uyZW9d4x5tIEP79aO86R8OUTjjIXb8sCLFvQRuBxexEb5lZkZY4chyo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748349753; c=relaxed/simple;
	bh=S6EelrZd8uJStHsvhsR86UGaw2+3BDghy1h4MsrbLLY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aWWAvm/9/U5Vi5qybJd9LrJmy/CnLicFYHTwVbypqWatTooe1Ble3oV2Iehi2HF6B3TGOIUHhgf2HC41otA/f7ndTxHV/TDa3EjNCRLgle7uy9gOGrb4t0kHp2g4kq/3dPBsUUEuIxqBf+z1PRz11Q6JH2DePK8jHvbNQ2tHyFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=UN4zVERk; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1748349751;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=pFTjs+DDXPUO6T4iiSERt58AWPaywxc8mNQrfeH7cKI=;
	b=UN4zVERkHRFd3Qckjc9BVRSxabUD7BTHGbL70ef2M/k/W6ol742YJfMHkr2JUoS0LRFzvh
	V8D6eg1Tk/7haRLPhQRY6RTwo1+3J0s2gJg3HxU1WKK3WtgMWIKJHXQbe/JsebiJGc1zqA
	suO3VzgmWMvtnQILMlbqPHjwmaqGVIQ=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-617-XXXbWpBtOruCOIDJYNnxtA-1; Tue, 27 May 2025 08:42:29 -0400
X-MC-Unique: XXXbWpBtOruCOIDJYNnxtA-1
X-Mimecast-MFC-AGG-ID: XXXbWpBtOruCOIDJYNnxtA_1748349749
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-476c2d1c582so56642771cf.1
        for <linux-man@vger.kernel.org>; Tue, 27 May 2025 05:42:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748349749; x=1748954549;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pFTjs+DDXPUO6T4iiSERt58AWPaywxc8mNQrfeH7cKI=;
        b=qzNS+DjWy0YWqRk6EA3z8VhY1Z83oseHD/PJpFPe+KHrSpgX2+wpPUAlxGuRoqFUuR
         PmLIQFYijmdvO0wjnw/WDHXJ4sbiXnvIj6+hBKKMwZLw6HsdiVwpGlrbgkRzRsdYGic6
         pPXD6C6nZLLA2XB4Uwhz/8ZS4g82pnY1aLNUeBO00iC3+UeYM+qumICFYFjBAhJZr9sZ
         0PFzQEZ2oHsgqaTlmHjHt5JyO920USbWx+ir+g4paKKfXOCbn3FTVSBPe4t8efm8IyAs
         XM/SqFWDFnG6VgcACnR8R8Q03jamQpZwn7siuAPJ/Sgkl4Wsr6nzRAKBriJ/pQapITb3
         H39Q==
X-Forwarded-Encrypted: i=1; AJvYcCWs9W4Cwz1wd0RkM7xIU9FckPVxwbvEmoev2OKi/Qd28hLYFR/dPRD0MzgG/feYztfsgYDzpOBtDS0=@vger.kernel.org
X-Gm-Message-State: AOJu0YwX9nwUz5IfXVN35chrUKuQnheKvGxZR1yOtMNXXnwht1y7cfV8
	eX55Z9b+hqT0XyI5uMrjGFyagSUAnQC0gclrPHNb215EKh/jd2LjNPt/sZGpkA8J8bi/JcFrKKw
	r7RTadlq5v3p9liBTGMH/qPiMkA0FH2CwtJp1D561U4Ngm+sSvE3f40mgElbTBw==
X-Gm-Gg: ASbGncuJd/hQ11AJ5grCudWpOgEE/r5ya//ODBNjIIPgL9xX98U7NW7GEco8GQEkFF0
	B/CH6YXWVhpg7XuJ3OnrLcj30xd/LtL2cMV1MGuHhuVoUFGF5i39fIpK/NwQYi4B+ga69Hfljx8
	mPmFH2Jk4luOdcgDcQg1yGhTQfgKxDRBArY9iRPBsljJwnUb7d3h1T9MwAIJGPMv6sZr2c5K+Dt
	KhyvVvruWDO9USSmdrfxG7AaE9zc68Lm5n5kd9jmnsoYnpM0LP4nvrm8hTKmvwcwxnggRP1jyTk
	uAZXEK/hLXI3
X-Received: by 2002:a05:622a:418b:b0:494:a241:66b with SMTP id d75a77b69052e-4a2f5191c0bmr7315671cf.2.1748349749075;
        Tue, 27 May 2025 05:42:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmVA/FbVWJcAE0Ecoy64cgJLlhFC3PNDiogqCezwEAcYwCRpRHe27+TzT+He4vxkmOPOjlfA==
X-Received: by 2002:a05:622a:418b:b0:494:a241:66b with SMTP id d75a77b69052e-4a2f5191c0bmr7315431cf.2.1748349748738;
        Tue, 27 May 2025 05:42:28 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cd468b69edsm1731706185a.75.2025.05.27.05.42.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 05:42:28 -0700 (PDT)
Message-ID: <30b84225-8965-44a4-8856-3ab2169ba226@redhat.com>
Date: Tue, 27 May 2025 08:42:27 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
To: Alejandro Colomar <alx@kernel.org>
Cc: =?UTF-8?B?SuKCkeKCmeKCmyBHdXN0ZWR0?= <jens.gustedt@inria.fr>,
 Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org,
 Ulrich Drepper <drepper@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 Todd Lewis <todd.lewis@gs.com>, Alexandre Oliva <aoliva@redhat.com>
References: <20250527115303.3304206e@inria.fr>
 <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
 <7d4c29a5-6836-48bd-a6c8-009264be000c@redhat.com>
 <zrwfojd3ddditnyyppbyxwmzc5xoqp32gkitffxws4gxabnvm6@bpm6xy7f2l7w>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <zrwfojd3ddditnyyppbyxwmzc5xoqp32gkitffxws4gxabnvm6@bpm6xy7f2l7w>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/27/25 8:28 AM, Alejandro Colomar wrote:
> Hi Carlos,
> 
> On Tue, May 27, 2025 at 08:12:41AM -0400, Carlos O'Donell wrote:
>>>> This has several issues, the most severe beeing the word `FUTEX_WAIT`.
>>>>
>>>> - How can an operation that only does wakes, ever be equivalent to a
>>>>     wait?
>>>
>>> That seems to be a typo.  It seems to me that it would be equivalent to
>>> FUTEX_WAKE (just like a few sentences before).
>>
>> As noted in my earlier response, this is not a typo?
> 
> See my response to that one for more details.
> 
>>
>>> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=74aa7971e5148f67d5def9977ed87cced638016a>
>>>
>>> 	commit 74aa7971e5148f67d5def9977ed87cced638016a
>>> 	Author: Alejandro Colomar <alx@kernel.org>
>>> 	Date:   Tue May 27 13:07:19 2025 +0200
>>>
>>> 	    man/man2/futex.2: tfix
>>> 	
>>> 	    Fixes: 3dfcc11d4630 (2015-12-15; "futex.2: Expand description of FUTEX_CMP_REQUEUE")
>>> 	    Fixes: 8297383e9eeb (2015-12-15; "futex.2: Clean-ups and FIXME removeal after feedback from Thomas Gleixner")
>>> 	    Reported-by: Jens Gustedt <jens.gustedt@inria.fr>
>>> 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
>>>
>>> 	diff --git a/man/man2/futex.2 b/man/man2/futex.2
>>> 	index 128612ee1..9a15a0fdb 100644
>>> 	--- a/man/man2/futex.2
>>> 	+++ b/man/man2/futex.2
>>> 	@@ -501,7 +501,7 @@ .SS Futex operations
>>> 	 (Specifying the argument as 0 is not useful, because it would make the
>>> 	 .B FUTEX_CMP_REQUEUE
>>> 	 operation equivalent to
>>> 	-.BR FUTEX_WAIT .)
>>> 	+.BR FUTEX_WAKE .)
>>
>> This is incorrect.
>>
>> A value of zero means no tasks are woken.
> 
> I'll show the patch with more context.  It's val2 which is 0, not val.
> 
> 	$ git show -U7
> 	commit 74aa7971e5148f67d5def9977ed87cced638016a (HEAD -> contrib, alx/contrib)
> 	Author: Alejandro Colomar <alx@kernel.org>
> 	Date:   Tue May 27 13:07:19 2025 +0200
> 
> 	    man/man2/futex.2: tfix
> 	
> 	    Fixes: 3dfcc11d4630 (2015-12-15; "futex.2: Expand description of FUTEX_CMP_REQUEUE")
> 	    Fixes: 8297383e9eeb (2015-12-15; "futex.2: Clean-ups and FIXME removeal after feedback from Thomas Gleixner")
> 	    Reported-by: Jens Gustedt <jens.gustedt@inria.fr>
> 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
> 
> 	diff --git a/man/man2/futex.2 b/man/man2/futex.2
> 	index 128612ee1..9a15a0fdb 100644
> 	--- a/man/man2/futex.2
> 	+++ b/man/man2/futex.2
> 	@@ -497,15 +497,15 @@ .SS Futex operations
> 	 The limit value specified via
> 	 .I val2
> 	 is typically either 1 or
> 	 .BR INT_MAX .
> 	 (Specifying the argument as 0 is not useful, because it would make the
> 	 .B FUTEX_CMP_REQUEUE
> 	 operation equivalent to
> 	-.BR FUTEX_WAIT .)
> 	+.BR FUTEX_WAKE .)

Suggest:

(Specifying val as INT_MAX is not useful, because it would make the
  FUTEX_CMP_REQUEUE  operation  equivalent  to  FUTEX_WAKE.)

Suggest:

(Specifying val2 as 0 is not useful, because it may make the
  FUTEX_CMP_REQUEUE operation equivalent to FUTEX_WAKE depending
  on val and val3.)

What do you think?


> 	 .IP
> 	 The
> 	 .B FUTEX_CMP_REQUEUE
> 	 operation was added as a replacement for the earlier
> 	 .BR FUTEX_REQUEUE .
> 	 The difference is that the check of the value at
> 	 .I uaddr
> 
>>
>> The key question here is how do you define or document the semantics
>> of the linked WAKE/WAIT that puts the tasks in the new queue.
> 
> Have a lovely day!
> Alex
> 


-- 
Cheers,
Carlos.


