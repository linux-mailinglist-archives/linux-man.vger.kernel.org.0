Return-Path: <linux-man+bounces-98-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2238F7F0390
	for <lists+linux-man@lfdr.de>; Sun, 19 Nov 2023 00:21:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB27BB209B9
	for <lists+linux-man@lfdr.de>; Sat, 18 Nov 2023 23:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB69F1E535;
	Sat, 18 Nov 2023 23:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="D2atkLQP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF672B6
	for <linux-man@vger.kernel.org>; Sat, 18 Nov 2023 15:21:03 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3316ad2bee5so1099626f8f.1
        for <linux-man@vger.kernel.org>; Sat, 18 Nov 2023 15:21:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1700349662; x=1700954462; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NdT5hMSGnlBltXflLSZTR30hBM3TChCs/2vKDMf7RWU=;
        b=D2atkLQPKnwJ/JSgwG0yW0cAtSY8OEeFPXogLRjm+B2KfpEBWibuxhYy72xPsTznNm
         awfNqs7RqVvo9LWkOWZAvBVR4DBg9mmV9K+0Ozo4yvQtvNbMq015H85NDZDCkbNXPemU
         /y44bGg5sX/o1oNX2PFxuMYrSCKhHh3y+QzGkyXYAdPQsSt4FD32pR0VSQN3SNpLNah7
         Jm8cwip9RRe6gG2mrGraWou8UC/EsuEY7pm85t00/S9OJAQd5fO4jVMMPk4RKjxUCshs
         OvZQDVCEYPpQw/w0ItoB1TW0UX7qiN/D56ChzHTafIIHg3Q4RSWQRdsoV61QJBBlln8b
         pbdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700349662; x=1700954462;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NdT5hMSGnlBltXflLSZTR30hBM3TChCs/2vKDMf7RWU=;
        b=Y2vY8KQn0++IESsQNtr3rc5yxQHOkdGf13lAss6TM5qNwUCuXMJXWEYJqm67Ua/7IL
         MLFL9QT6VF+rgBhwAM1nRlV4smLhIMi2DB8g3i8zeJFYam+HadKBmpS9PQV+7AWcg5o1
         gZkwIrwq+M52r0Qi1dSyhEbwgk02QuXI0+re3R+wiXXhVxBh/Wibz+3FXygPfqbOxj0/
         eLCkxmRWbIZWFCoZVu+617DEdyYveDt5Dip9WufYy73n3yGC1OMj3L0eM+sPYOKBTTqC
         kHqyPxGlli/rjkUMbcqEl6BBuPNuFdmKd95TSCuGuauRkAW2loLC0bYNrJdhld820GTc
         aq4w==
X-Gm-Message-State: AOJu0YyOS+/EawLB7VB1kmmpjXtcEbwxVxmwzIkV7x1a1HfMhmGB6QUv
	bm9AzZaBcX1qLKCrp/mJ1+FKGw==
X-Google-Smtp-Source: AGHT+IEsXTyYBAsHjdOIegDEEvWaYq8EK5CEh42Dy/vCFAY7wsLbHhWAaJevogG9/JjFQV2uaXQEZQ==
X-Received: by 2002:a5d:6c66:0:b0:31f:a0ab:26b5 with SMTP id r6-20020a5d6c66000000b0031fa0ab26b5mr3318899wrz.8.1700349661700;
        Sat, 18 Nov 2023 15:21:01 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id bf14-20020a0560001cce00b0032dde679398sm6515757wrb.8.2023.11.18.15.21.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Nov 2023 15:21:01 -0800 (PST)
Message-ID: <e35720d5-3a52-4092-a134-6edb4297e783@jguk.org>
Date: Sat, 18 Nov 2023 23:21:00 +0000
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
References: <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com> <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com> <ZUzPNydLkFPEvvsa@debian>
 <20231110160602.352085-1-mattlloydhouse@gmail.com>
 <fb0e2940-3446-4d44-95d7-f7be1f26096f@jguk.org>
 <bb41a959-eb58-4376-b2b7-6b6ad7a7dd5a@jguk.org> <ZVAB2S-IxKLABk_w@debian>
 <17ca7ec2-b542-4043-a311-bc0c2a7ddf78@jguk.org> <ZViHm8HyxefeJ_SW@devuan>
From: Jonny Grant <jg@jguk.org>
In-Reply-To: <ZViHm8HyxefeJ_SW@devuan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 18/11/2023 09:44, Alejandro Colomar wrote:
> Hi Jonny,
> 
> On Fri, Nov 17, 2023 at 09:46:47PM +0000, Jonny Grant wrote:
>>> Regarding other string-copying functions, NULL is not inherent to them,
>>> so I'm not sure if they should have explicit NULL checks.  Why would
>>> these functions receive a null pointer?  The main possibility is that
>>> the programmer forgot to check some malloc(3) call, which should receive
>>> a different treatment from a failed copy, normally.
>>
>> Perhaps it's just my point of view. In safety critical software I always do my best to ensure no code calls an API with the null pointer constant - when it's expecting a valid pointer. Given that the null pointer constant is defined in the C standard, even if APIs have undefined behaviour if they require a pointer but are passed a NULL. So the converse is I make APIs check for NULL (if they require a valid pointer) and reject with an error. Covers all bases (there can be corrupt data files occurring that we can't anticipate), so issues can be logged, and no core dump. I'd rather display a "USB device error 51" message on a UI than suffer a core dump which turns off a piece of safety critical equipment or sends it into a restart death loop.
>>
>> I recall you mentioned [[gnu::nonnull]] aka __attribute__((nonnull)) which is an optimizer hint the API will always be called with a valid pointer. There is also returns_nonnull.
>>
>> The difficulty is the optimizer will remove any NULL pointer constant checks within those APIs (if there were any). The side effect is a useful compiler warning, if the compiler figures out someone is passing NULL.
>>
>> So in a safety critical system we must wrap all such APIs, to put back in the null pointer constant checks.
> 
> There's Clang's qualifier _Nonnull, which is not a hint to the
> optimizer.  It is an attempt to have null correctness similar to how we
> have const correctness.  It still has little support, even from Clang
> itself.  It has some important problem: it applies to the pointer, not
> to the pointee, but pointer qualifiers are discarded easily.  A better
> design would make it a pointee qualifier.  Hopefully, this will some day
> be there to end all NULL discussions.  Until then, yeah, NULL is a
> dangerous part of the language.
> 
> Cheers,
> Alex
> 

I saw Christopher Bazley was talking about this. As I understand it, _Nonnull is milder than attribute nonnull. _Nonnull probably helps with static analysis, but doesn't optimize out any code checking if(ptr == NULL) return -1;

Saw this, did you get traction with your proposal?

https://discourse.llvm.org/t/iso-c3x-proposal-nonnull-qualifier/59269?page=2


You're right NULL is a dangerous part of the language, there is part of the C spec that does state functions which don't document supporting arguments that are NULL, are undefined behaviour. It's implementation defined, and most don't check for it, which is fine, it's their choice. NULL is pretty easy to check for in a wrapper, simpler than catching use-after-free pointers at runtime, like valgrind or address sanitizer does.

Paul Eggert drew my attention to this in C23:

7.1.4  Use of library functions


"If an argument to a function has an invalid value (such as a value outside the domain of the function, or a pointer outside the address space of the program, or a null pointer, or a pointer to non-modifiable storage when the corresponding parameter is not const-qualified) or a type (after default argument promotion) not expected by a function with a variable number of arguments, the behavior is undefined."
 
Kind regards
Jonny




