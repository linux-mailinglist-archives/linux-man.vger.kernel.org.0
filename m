Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A00923E3C8F
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 21:44:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230201AbhHHTpN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 15:45:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230169AbhHHTpM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 15:45:12 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F943C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 12:44:53 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id o7-20020a05600c5107b0290257f956e02dso12997116wms.1
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 12:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=a/iS2tLN/y8CqwzPA/3lBDDZ7eBbzNWjSUrCwJIKsp0=;
        b=VrSRK9Bic8+RwhQPl+sDiGUR4jteoSkrCTlDcx4qmp0iqpLgtjRudbYKSjmu7RqWIy
         lFiCxfUVR1ogVdKph8mtcOMSmx1v78kf7x466K3EOy9RBXwauUvXCE2ohas7HMwFVR8P
         B7hCcvV4+mSDCFzHdvah+Mk3QT8KBCN3p7+LQBcXlfKmPjYwkJ7D0Lims7pv3cYhWroN
         wIIQz9ohTR59Bh+HOEE7RYYK/GVQc/lko7r0SVwGaZBLbMO4LGoGCcJCr4fUX+81kDx+
         sv5d59noJOl3acU4n+e0K9tJXZPPg/gDH/73g/vWrQ9lI1RDXfel7GnSjdXHlUb1oOib
         gTqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=a/iS2tLN/y8CqwzPA/3lBDDZ7eBbzNWjSUrCwJIKsp0=;
        b=RJ0elkKwPG/bDFyn7ySDJOl0pt2DC+QEr2MCXSA7vtSMrApPGYUYu7Y7TIhhFu6Jff
         LcIGvHEFr3/4JEeipfjdoRjr5m15Ym1lhq+d/L3JH6t8HXg7MzHWFSZJPFeDdd1DDrA5
         6QsFOwtIeR8U8r3vdTHwei3q9/KN2LUdVBXiNmE28BoqTLOAV4ZQLFq00oS57wlBQ+xy
         TuS5/KX1Ht/KokcxNY3yMgZTX6LhtOd5BGYvUpy6+qY6vU4/TovDvZ9uyZ6ojfbJYfaw
         ReRB/kLYJ+74rMzm9r9wapIQKk9z4/vK+gvAxIkGbfxWi2VHzX8QZYvRyOHHadJxtyYi
         wrjQ==
X-Gm-Message-State: AOAM532OaJd6AnC5WjBAmY67D3a1sjcwsKHok7ySMnzsG+eR4jnuhBfL
        JyK39RUMZwRhBcI9hv1YVOR7gJsvN09lAg==
X-Google-Smtp-Source: ABdhPJwqpOsyXMsiO6z+by7etfncpb29rern9JDEgLmKmol12sOvl2XcvjelU1UIKDrEAVLCTSGolQ==
X-Received: by 2002:a1c:cc02:: with SMTP id h2mr12993868wmb.39.1628451891905;
        Sun, 08 Aug 2021 12:44:51 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id i5sm16780225wrw.13.2021.08.08.12.44.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 12:44:51 -0700 (PDT)
Subject: Re: [PATCH 30/32] strlen.3, wcslen.3: Add recommendations for safer
 variants
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-31-alx.manpages@gmail.com>
 <0b8006d4-82d3-3896-5ee9-c1efe04a8583@gmail.com>
 <cd053311-f9f3-d7d2-2f2f-400bc8048f0a@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <1b896876-fd0c-96fc-dac4-cf776e589492@jguk.org>
Date:   Sun, 8 Aug 2021 20:44:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <cd053311-f9f3-d7d2-2f2f-400bc8048f0a@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 08/08/2021 01:16, Alejandro Colomar (man-pages) wrote:
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

Seems very important to check.. there are lots of standards that require checking such things. eg ISO 26262 Functional Safety Standard

I know we all know already that many bugs are caused by overruns. A NULL ptr dereference would crash the software. That's a kind of DoS.

Just imagine someone connects a USB device (or any other different) which has a badly formed string, that is not NUL terminated. Or even gets a pointer from HW that is NULL. Unless we check the pointer, the string, we won't know. Typically it will be fine, until it isn't. Users don't want a core dump, they don't want to file a bug report. It's easy enough just to check it is what we expect.  We also check numbers are not zero when dividing by a number to avoid SIGFPE when that number came from an external place outside our module.

Cheers, Jonny


