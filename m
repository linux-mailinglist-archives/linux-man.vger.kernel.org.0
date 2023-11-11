Return-Path: <linux-man+bounces-35-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6C67E8CBE
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 21:55:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 910EE280DF0
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 20:55:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D1E01CAA1;
	Sat, 11 Nov 2023 20:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="LEvlbv1D"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CEB1B274
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 20:55:47 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AC7A1718
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 12:55:45 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40839652b97so23749635e9.3
        for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 12:55:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699736144; x=1700340944; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4nbPFt8nCKaHWTYZL7ZwH2Q7TRq1/qXgIGEyWm0aWp4=;
        b=LEvlbv1DK9PIRfJ5fsO1hSjzKXtg3+SIxBhiSwGpkKCTWLeqLPZ16cKu0ea73U7T4J
         AmrlU19BUp9pG3oHfoefF8rGb/gl/JLd+yKkRM210ERhJjbOK5Xc3P1DXwkVLk71BRJ4
         wmIcgsLkUkedsA+ReXwVmyKFjzUmBYMbE6WFtxbTKAWBGJDWRaEI120o8n4N/3JZ65Mb
         hFJ9bTd0IMpbi6xUyXMlhT6hqY0S2nhn12UrDF/5k/Pkq3yTbXOXfH2fLQ48TyOUppcz
         uYiHcPBrO1V7Mla6SAjZ74IzC2LDGU6ngbc/gDKMGVUsfwE2v5CMLuUyTE3kVXzfvj0l
         s8Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699736144; x=1700340944;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4nbPFt8nCKaHWTYZL7ZwH2Q7TRq1/qXgIGEyWm0aWp4=;
        b=EobOBE/EE8Y8/BLdLhdlealpkIDfpaMiFMtCNq64HxpCyNfsluJDfm/4kUwS1BP0MN
         cmxbsMvrzIcUnUfxvXM2xP7HnXZ17pWNwYaLbZUQftvPmiiWV9CISHBmfiCriIwHsNF2
         /n7O1LzvRJMVsPOrbZ3tTNll2YQNbebu/nZH3jj8/hZhECh7khqHBVh0OohVZaPp2W5B
         4ujQRflCZtIcKsNgBS24zqYLZFLX1ZaIKens77wDNPjf9BrfERJucUian4oXxZ0lSY9R
         +I4AghnIbVLQoiRr8EhrYi8F/0euYBYqtpO460ao0B7O7YpG+QxlnYiB0s8aOupo3Y/d
         1+jw==
X-Gm-Message-State: AOJu0YzOdt6HZmvaINC9s+M5FHWUVO5EDl7hNa9PtRpIgIcIe52KfUFE
	EqwBL7yKadK1N4JBkCovUK0ctg==
X-Google-Smtp-Source: AGHT+IFt7LLknX+JbpiXAmKtu7t/Yn10npZGgKMUARBXjaHWyy3nrE9qsgeAcy9oDDy1UTylpu5Oxg==
X-Received: by 2002:a05:600c:5108:b0:401:a0b1:aef6 with SMTP id o8-20020a05600c510800b00401a0b1aef6mr2428193wms.2.1699736143459;
        Sat, 11 Nov 2023 12:55:43 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id d1-20020adfe841000000b0032dba85ea1bsm2129679wrn.75.2023.11.11.12.55.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Nov 2023 12:55:42 -0800 (PST)
Message-ID: <fb0e2940-3446-4d44-95d7-f7be1f26096f@jguk.org>
Date: Sat, 11 Nov 2023 20:55:41 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Jonny Grant <jg@jguk.org>
Subject: Re: strncpy clarify result may not be null terminated
To: Matthew House <mattlloydhouse@gmail.com>,
 Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian> <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan> <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian> <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <ZUzPNydLkFPEvvsa@debian> <20231110160602.352085-1-mattlloydhouse@gmail.com>
Content-Language: en-GB
In-Reply-To: <20231110160602.352085-1-mattlloydhouse@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/11/2023 16:06, Matthew House wrote:
> On Thu, Nov 9, 2023 at 7:23 AM Alejandro Colomar <alx@kernel.org> wrote:
>>> So one can interpret strncpy(3) as copying a prefix of a character sequence
>>> into a buffer (and zero-filling the remainder), in which case you're
>>> correct that truncation cannot be detected. But the function is fomally
>>> defined as copying a prefix of a string into a buffer (and zero-filling the
>>> remainder), in which case the string has been truncated if the buffer
>>> doesn't end in a null byte afterward. It's just that one may not care about
>>> the terminating null byte being truncated if the user of the result just
>>> wants the initial character sequence.
>>
>> Yes, with the ISO C definition of strncpy(3), you can detect truncation.
>> The problem is that while my definition of it is complete, the
>> definition by ISO C makes it an incomplete function (to complete its
>> functionallity in copying strings, you need to add an explicit '\0'
>> after the call).  So I prefer mine, and for self-consistency, it can't
>> report truncation.
> 
> Personally, I'm a pragmatist, and I like to see it as kind of a duality: it
> can be used as part of a routine that copies part of a string and reports
> truncation, and it can also be used as a complete routine that copies part
> of a character sequence but can't report truncation. That reflects how it's
> used in practice. And it would hardly be the first such duality in C,
> either, given things like the fundamental practice of manipulating
> arbitrary objects as if they're character arrays.
> 
> (Some of these other dualities are similarly infamous in their room for
> error, e.g., forgetting to multiply by the element size when calling
> malloc(3), which I have often been guilty of myself. And still, a worrying
> amount of code neglects to test for multiplication overflow when doing
> this, even when the length comes from an untrusted source. Yet somehow I
> haven't seen any calls for a mallocarray(3) function to replace it. Ditto
> with memset(3), which can and has caused actual hard-to-notice bugs due to
> the first few elements looking correct even if the provided length is too
> short.)
> 
> But you're entitled to your opinion on how it ought to be best represented
> in the man page, as long as the immediate shortcoming of the function w.r.t
> producing strings is made very clear, even to readers who aren't in the
> habit of contemplating formal definitions. I'm satisfied by your patch in
> that regard.
> 
>>> That's a nice library that I didn't know about! Unfortunately, I don't
>>> think it's a very viable option for the long tail of small libraries I've
>>> referred to, which generally don't have any sub-dependencies of their own,
>>> apart from those provided by the platform.
>>>
>>> Going from 0 to 2 dependencies (libbsd and libmd) requires invoking their
>>> configure scripts from whatever build system you're using (in such a way
>>> that libbsd can locate libmd), ensuring they're safe for cross-compilation
>>> if that's a goal, ensuring you bundle them in a way that respects their
>>> license terms, and ensuring that any user of your library links to the two
>>> dependencies and doesn't duplicate them. At that point, rolling your own
>>> strlcpy(3) equivalent definitely sounds like less mental load, at least to
>>> me.
>>
>> Yes, if you had 0 deps, it might be simpler to add your implementation.
>> Although it's a tricky function to implement, so I'd be careful.  If you
>> need to roll your own, I would go for a simpler function; maybe a
>> wrapper over strlen(3)+strcpy(3).
> 
> Such a wrapper would indeed be useful for detecting truncation, but a full
> strlcpy(3) equivalent would be necessary for permitting the truncation and
> continuing, which is the behavior of the majority of existing strncpy(3)-
> based code.
> 
> I don't deny that this truncation behavior is often done dubiously and
> rarely receives enough scrutiny, but a significant chunk of the uses really
> are just building an informative string which won't cause any harm if
> truncated, and installing additional control flow to handle truncation
> errors in places where there currently isn't any can introduce its own
> bugs.

Truncation seems risky, I can't think of many nice use-cases of truncation. Say it's a file path, truncation means the file path isn't accurate any more. Maybe a song title for a music player could be ok truncated, so just display first x characters of the song title etc. Doesn't feel great though. Maybe strings beyond an expected size, as a safety check. So a song title longer than the 255 bytes that the format allows could be truncated. (probably a missing NUL in the file, or a corrupt file)

>>> I didn't see this as an issue in practice when I was reviewing all those
>>> existing usages of strncpy(3). The vast majority were used in the midst of
>>> simple string manipulation, where the destination buffer starts as
>>> uninitialized or zeroed out, and ultimately gets passed into a user
>>> expecting an ordinary null-terminated string.
>>>
>>> (One exception was a few functions that used strncpy(dst, "", len) to zero
>>
>> Holy crap!  Didn't these programmers know bzero(3) or memset(3)?  :D

Perhaps that strncpy might get optimized out, if the memory modified isn't read again after memset(). So may need explicit_memset() for this situation.

>>> out the buffer, which is thankfully pretty obvious. Another exception was
>>> the functions that actually used strncpy(3) to produce a null-padded
>>> character sequence, e.g., when writing a value into a section of a binary.
>>> But in general, I found that it's usually not difficult to tell when a
>>> usage is being clever enough that the null padding might be significant.)
>>>
>>> In fact, the greater confusion came from the surprisingly common practice
>>> of using strncpy(3) like it's memcpy(3), by giving it the known length of
>>
>> It gets better!  :D
> 
> In all these cases, I think the function naming really is having somewhat
> of a psychological effect: the authors are wrangling with strthis(3) and
> strthat(3) for dozens of lines, so they'd find it scary to start mixing it
> up with mem*(3) functions ("I'm working with C strings, not with byte
> arrays!"), or perhaps they don't even consider it. They'd rather remain
> with strncpy(3), even when it means they have to manually append it with a
> null terminator or another string. But I'm no psychoanalyst, so take that
> with a big grain of salt.
> 
> (Meanwhile, in my own code, I try to work with pointer-and-length arrays
> whenever possible instead of fooling around with null terminators and all
> their off-by-one fun, so I've become leery of using any str*(3) functions
> apart from strlen(3) and strnlen(3).)

Do you mean passing a size_t around for the length of the src string? That saves needing to read memory counting bytes, which is a performance boost on big strings. Accessing memory to read or write unnecessarily is a performance drag.

I saw you mention off by 1 errors, I recall seeing some old code bases decades ago where they used to allocate an extra 2 bytes, just to avoid crashes in their buggy code, pretty bad stuff.

Kind regards
Jonny

