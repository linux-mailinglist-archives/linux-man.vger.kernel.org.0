Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A7AC2EF2F4
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 14:22:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726535AbhAHNWj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 08:22:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726508AbhAHNWj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 08:22:39 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15079C0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 05:21:58 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id c5so8975211wrp.6
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 05:21:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QQMUBqyllewq/2T0qxIt5bO7/FBpNg94kl0/1FnB1Mo=;
        b=QSrJYXu1ygOoBq5AKKR+q2Uqtue1Kgmzm9azcv4bAypiioJ7htdtAQ1ClssEM92AQ6
         l/k94GRCWN2ASbwk3aSzNbKGmXj8971joB7aLW9jwBAlrldnnzIkbKEbPB3pTEnkzU47
         WPVJ3mxVwnfX6XeFi3xMBShsTsYvek1ErMC6yblSlI2MeLqBP3Wp49EYyCjzxhRphAaF
         ZVhzjp8S3XAFmdtNi2ZX5yi94Z5WcRuGg4RlkTmbwUupuiDd99MA6ppjwwaDkdlU4dUc
         YSpMOuIbrXmSm5HrdVADU79xVjNF8mqh+2R5wCgVtTmh8V3Ybu+dGScm9oPisfsD1WBf
         XHDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QQMUBqyllewq/2T0qxIt5bO7/FBpNg94kl0/1FnB1Mo=;
        b=FD7lX7C9XBwyt/mMeJAlwC6VY1mxpbkuM967lCrq9N8xUZVq/9cyWfAHeSuhi3t/WM
         Cs4Flgy6tRd6OzToP+qRdaUG06sPhnZ+YgRmtrcUsGEb0OkzRbDvvwl7PokuggHztxYf
         QVB0RXwlwOyE/+I7b407l6TdiIA26vpfgAbNqLVuoFP5L7OC0QNfsIi3TFQjuov5cMHo
         /8vlXEFYBAc8ZTBhxYTLz0vc+RbwzyVjsFSLf2ZYZ19dvQ1D/bN/5/EmKCi4z2k1Ou4d
         sCmg54M4kKWag4+EpBu0O55xn7A/bRPzUpPKW+HO6GsjdWFH+7OIH52Ty9ZUE1i8UVfh
         7bRw==
X-Gm-Message-State: AOAM532nccVWZEAnOus6t7xBovjsQKh9Jv1mjxw7uep7xVBpdQ74KJbm
        sTniD2kl4tCc90zoZZuP2qA=
X-Google-Smtp-Source: ABdhPJzcVCzMUCwhvTevD4AcrrXPwRJKnNofdTlNtnR4gxurtw3ECnEB7xCqXqqv9VGYOycA6LPfNg==
X-Received: by 2002:adf:f58f:: with SMTP id f15mr3671725wro.388.1610112116781;
        Fri, 08 Jan 2021 05:21:56 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id f9sm15430794wrw.81.2021.01.08.05.21.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 05:21:56 -0800 (PST)
Subject: Re: setlocale.3: Wording issues
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Bruno Haible <bruno@clisp.org>
References: <e198d995-5a85-bda1-1a82-57260b9d4efe@gmail.com>
 <25b829b8-ad0e-06f0-c97a-31277f71f1ef@gmail.com>
 <ed25f72d-e88e-e2c5-66de-3cf70c0cdfc5@gmail.com>
 <c82aef04-b42c-dcc7-0c40-3bf46d88f471@gmail.com>
 <51d1c9c9-5d86-264b-e86c-7cccd9401f7b@gmail.com>
 <879e52c6-e4f7-e5ea-5766-4893d01038db@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <0e50d381-73aa-970e-43b7-42519fcd8540@gmail.com>
Date:   Fri, 8 Jan 2021 14:21:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <879e52c6-e4f7-e5ea-5766-4893d01038db@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 1/8/21 2:17 PM, Michael Kerrisk (man-pages) wrote:
> [CC += Bruno]
> 
> Hi Alex,
> 
> On 1/8/21 2:05 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
>> On 1/8/21 1:45 PM, Michael Kerrisk (man-pages) wrote:
>>> On 1/8/21 12:41 PM, Alejandro Colomar (man-pages) wrote:
>>>> Hi Michael,
>>>>
>>>> On 1/8/21 10:26 AM, Michael Kerrisk (man-pages) wrote:
>>>>> Hi Alex,
>>>>>
>>>>> On 1/7/21 7:32 PM, Alejandro Colomar (man-pages) wrote:
>>>>>> Hi Michael,
>>>>>>
>>>>>> I don't understand what this paragraph means, I think it needs some wfix.
>>>>>>
>>>>>> Around setlocale.3:179:
>>>>>> [
>>>>>>        On  startup  of  the main program, the portable "C" locale is
>>>>>>        selected as default.  A program may be made portable  to  all
>>>>>>        locales by calling:
>>>>>>
>>>>>>            setlocale(LC_ALL, "");
>>>>>>
>>>>>>        after  program  initialization,  by using the values returned
>>>>>>        from a localeconv(3) call for  locale-dependent  information,
>>>>>>        by  using the multibyte and wide character functions for text
>>>>>>        processing if MB_CUR_MAX > 1, and by  using  strcoll(3),  wc‐
>>>>>>        scoll(3) or strxfrm(3), wcsxfrm(3) to compare strings.
>>>>>>
>>>>>> <<<Especially these last 2 lines
>>>>>>
>>>>>> ]
>>>>>
>>>>> I see what you mean. I had to read that a few times to parse it.
>>>>> It looks like the text was added in 1999. I think the following
>>>>> clarifies and preserves the meaning:
>>>>>
>>>>> [[
>>>>>        On startup of the main program, the portable "C" locale is select‐
>>>>>        ed  as  default.  A program may be made portable to all locales by
>>>>>        calling:
>>>>>
>>>>>            setlocale(LC_ALL, "");
>>>>>
>>>>>        after program initialization, and then:
>>>>>
>>>>>        (a) using the values returned from a localeconv(3)  call  for  lo‐
>>>>>            cale-dependent information;
>>>>>
>>>>>        (c) using the multibyte and wide character functions for text pro‐
>>>>>            cessing if MB_CUR_MAX > 1; and
>>>>>
>>>>>        (c) using strcoll(3), wcscoll(3) or strxfrm(3), wcsxfrm(3) to com‐
>>>>>            pare strings.
>>>>> ]]
>>>>>
>>>>> What do you think?
>>>>
>>>> Much better.
>>>>
>>>> But I still don't get why [A, B or  C, D].  What does it mean?
>>>
>>> I don't read it that way. I see it as: [A and (B and/or C and/or D].
>>> Do you see what I mean?
>>
>> About the three lines (a) (b) (c) as a whole, yes, I understand that part.
>> About [strcoll(3), wcscoll(3) or strxfrm(3), wcsxfrm(3)], nope, I still
>> can't understand the punctuation there.
>> So I can't parse the inner contents of (c).
> 
> Ah sorry. Now I see what you mean. I'm not sure of this, but I suspect
> that it's supposed to mean:
> 
>     Use [strcoll(3)+strxfrm(3)] for non-wide-char strings and 
>     [wcscoll(3)+wcsxfrm(3)] for wide char strings.
> 
> Maybe Bruno can help.

Yes, that was my first thought (after a few trials), but I preferred to
check with you :)

I don't know how to express it.
Maybe [A and B, or C and D]?

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
