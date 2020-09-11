Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C681D265E97
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 13:13:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725829AbgIKLNA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 07:13:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725730AbgIKLM6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 07:12:58 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D3A3C061573;
        Fri, 11 Sep 2020 04:12:58 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id a65so4045471wme.5;
        Fri, 11 Sep 2020 04:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qwJP8YlWNcgr4cgyIQwKXfW5zHjsUL7pEHb3diYc4xI=;
        b=tg8qveRPDWNmDM+Y8CjDDiAaX96w2+CFkPbT3D879hTaTv7wGl5MJ9TuARK33REjAn
         KNq4ffMGvriPOKmjhzltuEex6NP+n9UMx0BD8KHJeLgORnJkX3PWsrv7hb2hx1O+6XF3
         KYwv0w6joavd00kWEHtKy4h/3oz6IfTQgG7Hcow4TjFeoRm+rUvq6nciYWGS12HVJBR1
         UyCk80yZH/qaPK5cGLGD3ONdKK+rtcO4fYRyh4xFQvHy+oJ7ZvwL34rgwvgmG4FqFt+p
         GZufk8fXJr/jTJCoo6nHHmXQrauUTUmxmnIeblBDPzjmr/NI5k6LNoSLtlDfEnJFUw82
         G6zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qwJP8YlWNcgr4cgyIQwKXfW5zHjsUL7pEHb3diYc4xI=;
        b=ihva6xQzyYMeh7+WlGojK6oR2qNm4hGklI4u+b5UDCuWZe89WmnO+6W9rW2kZP5EPU
         p6OtqmsS3rmKEnBoDnrr3/UKYFHmykcIGU9MsArGL5EGAOmkmhaLlrFves1s6y4DhHQb
         DzbliDGMy0W7inmVfAOfNFViDzFuxmkzu4o3Z+7Xi6Uv8gJQXNcf4ekXsv6b0Rj3/nJq
         zNIQntFBNHweZGjvnqUKaqbwjrsvWGemivOwM3d6MgFb2iHW2RLY0EUEUNRy+JjFtzNF
         M72qGUDozJ7JMWScJGSA0l9AP4PKIdID8XXnSFN8dIUduPZd/utmuiXcb0W6Q1Afb31G
         Q7vw==
X-Gm-Message-State: AOAM5308fdoGTsqBtWlAqJcZrOWcIomV4udzq+XhlcoKg+6Q/IgmOHml
        FizsbdWWNWR8mQq8U/TMewudtnlWch0=
X-Google-Smtp-Source: ABdhPJxxWzhyKgOqdkAUjgS89qpQS5yE/o7B1r5NiMGkkkXLNbIIN68a06R5x4SvQbRGBVOUG2s+BA==
X-Received: by 2002:a1c:7d16:: with SMTP id y22mr1799214wmc.104.1599822776471;
        Fri, 11 Sep 2020 04:12:56 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id b194sm3718739wmd.42.2020.09.11.04.12.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 04:12:55 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 19/24] pthread_setname_np.3: ffix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-20-colomar.6.4.3@gmail.com>
 <e651f418-ada8-19e1-359e-9906994108eb@gmail.com>
 <2c2150bc-d4df-e821-1717-6450540b6c71@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b6902713-54f0-3d9f-2c02-92eb94b278a6@gmail.com>
Date:   Fri, 11 Sep 2020 13:12:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <2c2150bc-d4df-e821-1717-6450540b6c71@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/11/20 10:32 AM, Alejandro Colomar wrote:
> Hi Michael,
> 
> The indentation in the original code was a bit weird (specifically, the 
> 'do {' part had one more indentation level than the closing '} while'), 
> so I simply chose something nice.  See the original page, and if you 
> think it's ok keep it, else find something nice :)

Sorry -- I was being a bit slow. Now I see what you mean.
I've fixed it, but in a different way.

Thanks,

Michael

> On 2020-09-11 09:58, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 9/10/20 11:13 PM, Alejandro Colomar wrote:
>>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>>> ---
>>>   man3/pthread_setname_np.3 | 5 +++--
>>>   1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> What's the rationale for this patch?
>>
>> Thanks,
>>
>> Michael
>>>
>>> diff --git a/man3/pthread_setname_np.3 b/man3/pthread_setname_np.3
>>> index b206f66c0..4dc4960cd 100644
>>> --- a/man3/pthread_setname_np.3
>>> +++ b/man3/pthread_setname_np.3
>>> @@ -164,8 +164,9 @@ THREADFOO
>>>   
>>>   #define NAMELEN 16
>>>   
>>> -#define errExitEN(en, msg) \e
>>> -            do { errno = en; perror(msg); exit(EXIT_FAILURE); \e
>>> +#define errExitEN(en, msg) do \e
>>> +        { \
>>> +            errno = en; perror(msg); exit(EXIT_FAILURE); \e
>>>           } while (0)
>>>   
>>>   static void *
>>>
>>
>>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
