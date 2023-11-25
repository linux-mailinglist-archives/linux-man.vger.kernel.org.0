Return-Path: <linux-man+bounces-163-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF8E7F8763
	for <lists+linux-man@lfdr.de>; Sat, 25 Nov 2023 01:57:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 38BBFB2140F
	for <lists+linux-man@lfdr.de>; Sat, 25 Nov 2023 00:57:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15A84642;
	Sat, 25 Nov 2023 00:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="W6oreLAc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D05B199A
	for <linux-man@vger.kernel.org>; Fri, 24 Nov 2023 16:57:43 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40b2fa4ec5eso17170075e9.2
        for <linux-man@vger.kernel.org>; Fri, 24 Nov 2023 16:57:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1700873862; x=1701478662; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SFRqXVxoogNYNWa1wsZossHMuC/N+ffp9Qf0A7xEe88=;
        b=W6oreLAcD19+tCIIfxWfzYIQ6sp5C+f0rgHb470F/D8EppyezZ+yWyKRTysPnxrIEN
         SssWFllWLY9JZyAbo7+HBdkbwpGpim8wLbliM4Dblx4whJIf4AsFFvIXToVeW7UOxplM
         yfB9n5wfumoEUPdh7VznpX9ShDIm68YHFivuDO4V7kUZNDnIeSPfM+4w93v78+Iv+6oI
         QdavwFb4ISfdKS5Yfu74+gD7P3IcsBBaBklsymAwWVMkJ8YzZfEcwHrL7sQoSDSLkzLn
         zmbletYMaIAcP3bUroNSiReQsvH6tAWHwlDcuyhKmpZk4tlrDdc3bzoqORtEaioTAdQf
         JyOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700873862; x=1701478662;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SFRqXVxoogNYNWa1wsZossHMuC/N+ffp9Qf0A7xEe88=;
        b=blPJ2HH7hq67kJRfrSz7RoqSLc2pkYaCDRi563h/SVXmI5xYiwzaQqpV2pk2jY2eao
         qgLARB4LvG6HTE01ZZAwJSp6+ZyS19UyODkT0zZYA+OMKBV7hJS6BMQ7DffxxnI1IRcO
         QvbSLMkueB1lwqyb4yZ2mAp7WyNByXNEPUSG3AGSasPlgmGRDkcZUeLYRubfzwI6rmTD
         m6C/seDDMZQIK1PbCqwZeWlAMzefS+WBh2CVkvprhSnAZXrspiJHOjfKDRnzvcyaGH4Q
         BOUMHOOGEE89/DyOPq+XcDhFUBdzmfwQAOl8a8UjmjLOdff/I/oPn6w6VpyeZEccB3+2
         0+oQ==
X-Gm-Message-State: AOJu0YwX/MLh4CnrWsebnSJtldrBnihdKMF5dgbBjqpnacYN4D7ra2iQ
	tkMXsFblVUL541qb3nZj6RHw5g==
X-Google-Smtp-Source: AGHT+IGnrG7nCIQYvv863+6JECzWiwcIVaa9LYRX/GvxZtJQ3mn1f/J3xiJmunDa4vkkXYpp2sFnlw==
X-Received: by 2002:a05:600c:458d:b0:40b:3fc7:c88a with SMTP id r13-20020a05600c458d00b0040b3fc7c88amr134429wmo.39.1700873861284;
        Fri, 24 Nov 2023 16:57:41 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id v17-20020a05600c445100b0040b3d33ab55sm2245167wmn.47.2023.11.24.16.57.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Nov 2023 16:57:40 -0800 (PST)
Message-ID: <45de3881-9824-4d1f-9f79-a3a04d06d9a3@jguk.org>
Date: Sat, 25 Nov 2023 00:57:40 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: NULL safety
Content-Language: en-GB
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
References: <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com> <ZUzPNydLkFPEvvsa@debian>
 <20231110160602.352085-1-mattlloydhouse@gmail.com>
 <fb0e2940-3446-4d44-95d7-f7be1f26096f@jguk.org>
 <bb41a959-eb58-4376-b2b7-6b6ad7a7dd5a@jguk.org> <ZVAB2S-IxKLABk_w@debian>
 <17ca7ec2-b542-4043-a311-bc0c2a7ddf78@jguk.org> <ZViHm8HyxefeJ_SW@devuan>
 <e35720d5-3a52-4092-a134-6edb4297e783@jguk.org> <ZWEix_Ua5QDWzv4C@debian>
From: Jonny Grant <jg@jguk.org>
In-Reply-To: <ZWEix_Ua5QDWzv4C@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 24/11/2023 22:25, Alejandro Colomar wrote:
> Hi Jonny,
> 
> On Sat, Nov 18, 2023 at 11:21:00PM +0000, Jonny Grant wrote:
>> I saw Christopher Bazley was talking about this. As I understand it, _Nonnull is milder than attribute nonnull. _Nonnull probably helps with static analysis, but doesn't optimize out any code checking if(ptr == NULL) return -1;
>>
>> Saw this, did you get traction with your proposal?
>>
>> https://discourse.llvm.org/t/iso-c3x-proposal-nonnull-qualifier/59269?page=2
> 
> I didn't follow up with that.  I'd first like to be able to try Clang's
> static analyzer with _Nullable, to be able to play with it.  An
> _Optional qualifier would only be usable by something like -fanalyzer,
> or Clang's analyzer, since it needs to avoid false positives that are
> quite complex.  It's not a warning that you'd want in -Wall.
> 
> And since Clang's analyzer isn't easy to use, I'm not working on that
> until they make it easier.

Ok I see. GCC's -fanalyzer is useful I find, I've not tried Clang.

I made my own compile_assert() that may/may not be of use for the things you are working on, it works in GCC, its just like regular code. I use to check for things like NULL pointers, or overflows at compile time, rather than runtime like assert().

https://github.com/jonnygrant/compile_assert

There will be some false positives on complex areas of code. It's quite simple, and is just using the tooling we have with GCC to catch things at compile time, that static_assert() can't. Anyway, interested to hear any feedback if you do try it.

Cheers, Jonny


