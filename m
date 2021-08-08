Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73B643E37CB
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 03:20:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229882AbhHHBVM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 21:21:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229865AbhHHBVL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 21:21:11 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80A7EC061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 18:20:53 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id bh7so3662324plb.5
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 18:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JwLLbQMrbwWY9rrlMaKN3kONE0cNw51olVH06SKkvpE=;
        b=Yj1uumbNGPsg7AqHmFmYi0xs2P8oWKaW3e3LOPMkiiBFLa+oAUaqWf0irsScHodhAH
         p6K3nhEzt8/vUjHBypWBB7CuwDMPCtABkEHJyBqn+Gjn2W3Surd3RplPHNCkSskCn50q
         r3iU5WAPA38x+ZdLmZMRStoNhQuC+IlxlfRNxeJ0OGUp803d06Oc7BQP1u4SWBQuxJfj
         xu7erjR1E4rKl8QP7sVv1tkdLsvBDekAwDKZaZ+5dr/UrctVOqq6VwKrgkl6HZE0CDAs
         7euMfRzisYR1PGpOSEsnD7k0gvyt0pEaibtoxxq7a+9v3Bqpracmo2ziB9736glEikKz
         Nr/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JwLLbQMrbwWY9rrlMaKN3kONE0cNw51olVH06SKkvpE=;
        b=ttP/qW+LSordrRAB0LcAf/CCEiT4gDiDz/jyrXD7usGufNzX+PY+zbVVKCRp8z5xSq
         iJF/Um6pDge2ueISkPgbZUmsvWIro4O+MYAQUAThqm9wwYm+VksLi4GsOFqUTFQNZ7oy
         53XQX8b34Eq8I5h4rTvC/z4RbcR1jRyGCEmLUQbaoiTcih2TbfeD+bH9ayYzxr3LXUYP
         61W5n2i2cJ9WtlmDH0Tc97GI6bTNlE5sFKLVglrnLmXhkBXVFrEDKIGal+n6bmBkgKbv
         SHxzZ4R9E0mqE7LWRhhFvdn5sCZZvdpaTO8qI5O2rM77I4OWzlsOwHV0NcszE79ify+Q
         WMWQ==
X-Gm-Message-State: AOAM5306n2ju2lj2DDnVF6KJDVLHEjw0srK6XEYxZnkl1tYT9cTstDgJ
        280yjBCrbX7P4ZbcHVO5aYQ=
X-Google-Smtp-Source: ABdhPJx9+/P9uYIdkBUCYXBGO2NeHlGaKkQyZIUh3ntXcyzbw/GLFICwrh7QcXq1xDKy2ESZi55krQ==
X-Received: by 2002:a63:480b:: with SMTP id v11mr83282pga.413.1628385652793;
        Sat, 07 Aug 2021 18:20:52 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id u16sm17482702pgh.53.2021.08.07.18.20.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 18:20:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jonny Grant <jg@jguk.org>
Subject: Re: [PATCH 30/32] strlen.3, wcslen.3: Add recommendations for safer
 variants
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-31-alx.manpages@gmail.com>
 <0b8006d4-82d3-3896-5ee9-c1efe04a8583@gmail.com>
 <cd053311-f9f3-d7d2-2f2f-400bc8048f0a@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <dae44ff3-1f4a-ddfe-819b-d1be9d2cc2e7@gmail.com>
Date:   Sun, 8 Aug 2021 03:20:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <cd053311-f9f3-d7d2-2f2f-400bc8048f0a@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 8/8/21 2:16 AM, Alejandro Colomar (man-pages) wrote:
> Hi, Michael!
> 
> On 8/8/21 1:45 AM, Michael Kerrisk (man-pages) wrote:
>> Hello Alex,
>>
>> I see there was a rather long mail thread that led
>> to this patch. The patch definitely deserves a commit
>> message.
>>
>> See also below.
>> On 7/28/21 10:20 PM, Alejandro Colomar wrote:
>>> Reported-by: Jonny Grant <jg@jguk.org>
>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>>> ---
>>>  man3/strlen.3 | 6 ++++++
>>>  man3/wcslen.3 | 9 ++++++++-
>>>  2 files changed, 14 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/man3/strlen.3 b/man3/strlen.3
>>> index dea4c1050..78783c446 100644
>>> --- a/man3/strlen.3
>>> +++ b/man3/strlen.3
>>> @@ -66,6 +66,12 @@ T}	Thread safety	MT-Safe
>>>  .sp 1
>>>  .SH CONFORMING TO
>>>  POSIX.1-2001, POSIX.1-2008, C89, C99, C11, SVr4, 4.3BSD.
>>> +.SH NOTES
>>> +.SS strnlen(3)
>>> +If the input buffer size is known,
>>> +it is probably better to use
>>> +.BR strnlen (3),
>>> +which can prevent reading past the end of the array.
>>
>> I hesitate slightly about this. strlen() is in the C standard, but
>> strnlen() is not. What do you think; do we need to care?
> 
> I have some doubts about this patch, but in a completely different sense:
> 
> I don't know if I'm being a bit paranoid in treating user input.  I've
> always been taught that I should program deffensively, but as time
> passes by, I realize myself that I was programming too much
> deffensively, and even introducing bugs in the error handling code.  And
> in many cases, strings will always be NUL-terminated, so maybe I'm just
> passing around a wrong recommendation.
> 
> What do you think about this?

How about a sentence something like:

[[
In cases where the input buffer may not contain a terminating null byte,
.BR strnlen (3)
should be used instead.
]]

What do you think?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
