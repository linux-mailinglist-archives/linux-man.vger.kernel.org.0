Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB47B278405
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 11:30:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727819AbgIYJaW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 05:30:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727535AbgIYJaW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 05:30:22 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD8D9C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 02:30:21 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id l15so1459084wmh.1
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 02:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=q6LYTkC4m/m+WSiMBFh5RZBv+aP4MgSfwOK5DZxwDJU=;
        b=u8/ZWMt8r4aFiFOuMKWNiKMv12clQeCY8GkCdy2jcIe0B9Xbmo6atKRKnPqdFB1NxG
         hyO+PtO+CXY/XLXzQAtWVBUzmUbXzXS+xUnPAZkeuDVeAQYKJsptQNXZF9RctLlkMbC3
         49E3Nu7FsNgD6U8iiRvduygKr+3/K8pzb5vXg8mHYKcpdGjVHzwZIOn5apEXX3FCMVOV
         1aXUcsjvfgj3av/ioc+loo3/DqNweUWpJd/djZ3xDni7059IdMPwfqL5XXloUBqcBfg4
         BcjUGjRxGHv2KxWoX4K0mfkXHKwnQkd6IekH08fxMY+0gryWWoPGB1zdu00m4nTRAuFT
         3bsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=q6LYTkC4m/m+WSiMBFh5RZBv+aP4MgSfwOK5DZxwDJU=;
        b=e7ZgO1qqS0sEuEzAB/zTtkoi6+TY4UhQ1UqCZuxXeCveZmIvjJmc6+hWhJQCsNHQ1g
         YlvTYCsDZuIRqvel+6hl2jEJowjjd3cJb/v5vPotoHaRBet+7hOb8iLK273K1c6VlVzK
         T91ghjcd5IJewKUaVntj+EDaIyFsJmNgCwjojnlqOWiKIgLVVcQtoj6ME30yYjMtuni2
         E5lddmFPcVPNN1yMzNaTJyKspSYVvqcfZ6UMj0JF2Wp8r2Pj2BcSSyNj1GQX80QHKOSJ
         mN+fggAsqsrb+C31AD0AKx5z+hKpkVXr9pkomxnYxnlEO86OyYjL3GnN0EzdO1iJ51LF
         J5lw==
X-Gm-Message-State: AOAM532OtL99R+FEwdCb83hKHGTBi5g3W7oGgjitOOzMN3AhPhyNBWMG
        +/HrOOdRpNmS7CvVZ2FhMe/PSqdOihI=
X-Google-Smtp-Source: ABdhPJxS5yH7KXe3XyWsecEdMbGKxCEErYFBqXBR8DMjahvKpjuc028w0P4Qgh+nHfpyE9sOwY64pg==
X-Received: by 2002:a1c:e3c3:: with SMTP id a186mr2231391wmh.189.1601026220377;
        Fri, 25 Sep 2020 02:30:20 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id s26sm2163065wmh.44.2020.09.25.02.30.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 02:30:19 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 04/10] system_data_types.7: Add float_t
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
 <20200925073140.173394-5-colomar.6.4.3@gmail.com>
 <5090c977-c75f-66a4-848f-e7ed94510d16@gmail.com>
 <fff82316-9b02-33d9-eeb2-4ab6e73ecbd6@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <94936b66-4d20-1168-546f-64ac63018845@gmail.com>
Date:   Fri, 25 Sep 2020 11:30:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <fff82316-9b02-33d9-eeb2-4ab6e73ecbd6@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/25/20 10:22 AM, Alejandro Colomar wrote:
> Hi Michael,
> 
> On 2020-09-25 10:13, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> A few comments here that also apply for the double_t patch.
>> Could you revise please?
>>
>> On 9/25/20 9:31 AM, Alejandro Colomar wrote:
>>> +The implementation's most efficient floating type at least as wide as
>>> +.IR float .
>>
>> The C standard is rather terse here. Perhaps we could make the
>> reader's life a little easier. How about something like:
>>
>> [[
>> This a type that is intended to be the implementation's
>> most efficient floating type that is at least as wide as
>> .IR float .
>> ]]
> 
> I removed the "intended" part to simplify it a bit. Do you prefer to 
> keep it?

Well, as long as you are going to lift the detail about "most
efficient" from the C standard, I'd be inclined to keep 
the word "intended" from the standard as well. But I do not feel
strongly about it.

>>> +Its type depends on the value of the macro
>>> +.BR FLT_EVAL_METHOD :
>>> +.RS
>>> +.IP *
>>> +0;
>>> +.I float_t
>>> +is
>>> +.IR float .
>>> +.IP *
>>> +1;
>>> +.I float_t
>>> +is
>>> +.IR double .
>>> +.IP *
>>> +2;
>>> +.I float_t
>>> +is
>>> +.IR "long double" .
>>> +.IP *
>>> +Other implementation-defined values.
>>> +.RE
>>
>> I think we can format this better as a hanging list.
>> Something like this:
>>
>> [[
>> .TP
>> 0
>> .I float_t
>> is
>> .IR float .
>> .TP
>> 1
>> .I float_t
>> is
>> .IR double .
>> .TP
>> 2
>> .I float_t
>> is
>> .IR "long double" .
>> .IP
>> For other values of
>> .BR FLT_EVAL_METHOD ,
>> the type of
>> .I float_t
>> is implementation-defined.
>> ]
> Yes, I wasn't convinced by my formatting.  Thanks!
> 
> I'll fix this patch, and the srcfix that depends on this too.

Okay.

> BTW, I'll also add a note that FLT_EVAL_METHOD is defined in <float.h>
> Would you add that to "Notes", or as part of the description?

As part of the description I think. (And I don't mind if it's 
repeated in the double_t description.)

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
