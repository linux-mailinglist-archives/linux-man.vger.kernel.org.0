Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F1762FA5BA
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 17:12:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406378AbhARQM3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 11:12:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406302AbhARQMV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 11:12:21 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73B79C061574
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 08:11:41 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id q18so17014807wrn.1
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 08:11:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3+pQ8FC1IEfCP/ThigNsi6mzzJzfKR4Vs/WKN8S/kpA=;
        b=M3JNNTUqETq45F8BEuTsN9ahzaDdUtO/eTCCUwBRRmsUXVm1G0w01n1/SuIH+BaoIZ
         gctgJ3jyKrSzONZ7wnskBpIcDZcQw7lfjoNUFKE+217EqJrdXTXgJoGfhOtrj1ePjnqx
         uRfqi2gemCil0xe/BwJHjpwakF4WCeuaIT/zJhOljw5jGWIncCK8vzkFCxQMikn2Awrj
         yv4GBJ+cLl5GL92eKRDtvpRSgT6ip0iAnrxoS1IVNxq1eI2VZE+4C6dQh0SHnG3qIFaR
         nHapY+ZPwlnBLOllMQ7IyF6AdsIVNy+ZLviQ8KMYi6etUQrw4ayD5+ces70DjWyIgB+2
         xEaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3+pQ8FC1IEfCP/ThigNsi6mzzJzfKR4Vs/WKN8S/kpA=;
        b=a02a+fQIZqf06c+AoeuERKnEgux0m7EtPDwAUFZJBdRkRXlTExE9x5+heLkUJr+PCa
         t19B5X2r5CwOpWP+oYZqd5DoRz7tJ49QU34OsRMhb4fsfJwoHtKy+bt7OVnKBnQXB8EC
         zhIMICJi3zSWUTJD35Spd/3mVdGryjtPp2m8C++0/1saT0ypjJPg8n5xLbBfac3jssp6
         EqcyElWEwXmnxSxmmAVlULI9JgnUR46AS5+Gxqj8b2QtvYC2Rt8vGC8RJaM17L9vFIwB
         CpVtfDogb+VTy/V2gk53g4wA1BNSpLN+nKXH4HQFybiBibEfsej6P2nOmb8WIi1WCfM6
         PPAw==
X-Gm-Message-State: AOAM531AQfZNkrI4z2nmC47/YUtS5VYWX2Gw85OLAuGbaGIme3H6wy/V
        cmYuO60aHVB2LckYl7Ue+Pjm0lkybGc=
X-Google-Smtp-Source: ABdhPJxmQldGeAIpyR+oajYoMvBrT1M5anqszrJIJUJKx/6IjO9/xvLtJZuINmU8GyyqRihAk3aGsg==
X-Received: by 2002:adf:b257:: with SMTP id y23mr169100wra.371.1610986300244;
        Mon, 18 Jan 2021 08:11:40 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id f14sm31161032wre.69.2021.01.18.08.11.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 08:11:39 -0800 (PST)
Subject: Re: Ping: [PATCH v4] system.3: Document bug and workaround when the
 command name starts with a hypen
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210104180420.74092-1-alx.manpages@gmail.com>
 <20210108142209.61938-1-alx.manpages@gmail.com>
 <a89dea2b-5b26-040a-2f12-3e096756f118@gmail.com>
 <e6ee2473-9096-0d6e-b793-c90e03bc6dfc@gmail.com>
 <99aa567a-67d5-d7c1-ddf3-de4141f3c1ff@gmail.com>
 <bafaf8cf-7d9d-8bf4-a95c-653ac0049e7c@gmail.com>
 <e1a37ef8-72b7-aeb5-dd0f-36bec4597a6a@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <9c00f2b3-bd56-0f75-0053-ef17bec26085@gmail.com>
Date:   Mon, 18 Jan 2021 17:11:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <e1a37ef8-72b7-aeb5-dd0f-36bec4597a6a@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/18/21 4:58 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 1/18/21 4:45 PM, Alejandro Colomar (man-pages) wrote:
>> [removed some CCs]
>>
>> On 1/18/21 4:37 PM, Michael Kerrisk (man-pages) wrote:
>>> On 1/18/21 4:28 PM, Alejandro Colomar (man-pages) wrote:
>>>> Hi Michael,
>>>>
>>>> Ping!
>>>>
>>>> And now I noticed a typo in the subject:
>>>> s/hypen/hyphen/
>>>
>>> D'oh! I missed that.
>>>
>>> In cases like these, where there's already two amendments to the patch,
>>> perhaps better is a new complete patch, rather than a ping :-).
>>
>>
>> Yup, I considered that for a moment...
>> Should've listened to myself :/
>>
>> BTW, I don't understand why you ffixed to use .RS/.RE.
> 
> 
> Cause that's what we do around code blocks. See man-pages(7),
> and all of the other pages :-).
> 
> The conclusion of the mail thread on this topic was that .RS/RE don't 
> do correct relative indents, IIRC.

Ahhh, I read the diff the other way.
I thought you changed .in -> .RS.
But you did .RS -> .in.

So forget what I said :-)

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
> 
>> See
>> https://lore.kernel.org/linux-man/eaee2c6e-cbb7-94b2-f6c4-9039d184e129@gmail.com/T/
>>
>> Thanks,
>>
>> Alex
>>
>>>
>>> Thanks,
>>>
>>> Michael
>>>
>>>
>>>> On 1/8/21 3:28 PM, Alejandro Colomar (man-pages) wrote:
>>>>>
>>>>>
>>>>> On 1/8/21 3:22 PM, Alejandro Colomar wrote:
>>>>>> man-pages bug: 211029
>>>>>>  https://bugzilla.kernel.org/show_bug.cgi?id=211029
>>>>>>
>>>>>> Complete workaround
>>>>>
>>>>> Maybe a bit more readable:
>>>>> Complete workaround example
>>>>>
>>>>>
>>>>>> (it was too long for the page, but it may be useful here):
>>>>>>
>>>>>> ......
>>>>>>
>>>>>> $ sudo ln -s -T /usr/bin/echo /usr/bin/-echo;
>>>>>> $ cc -o system_hyphen -x c - ;
>>>>>> #include <stdlib.h>
>>>>>>
>>>>>> int
>>>>>> main(void)
>>>>>> {
>>>>>>     system(" -echo Hello world!");
>>>>>>     exit(EXIT_SUCCESS);
>>>>>> }
>>>>>>
>>>>>> $ ./system_hyphen;
>>>>>> Hello world!
>>>>>>
>>>>>> Reported-by: Ciprian Dorin Craciun <ciprian.craciun@gmail.com>
>>>>>> Cc: Florian Weimer <fweimer@redhat.com>
>>>>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>>>>>> ---
>>>>>>
>>>>>> D'oh!
>>>>>>
>>>>>>  man3/system.3 | 20 ++++++++++++++++++++
>>>>>>  1 file changed, 20 insertions(+)
>>>>>>
>>>>>> diff --git a/man3/system.3 b/man3/system.3
>>>>>> index 753d46f7d..ead35ab30 100644
>>>>>> --- a/man3/system.3
>>>>>> +++ b/man3/system.3
>>>>>> @@ -255,6 +255,26 @@ are not executed.
>>>>>>  Such risks are especially grave when using
>>>>>>  .BR system ()
>>>>>>  from a privileged program.
>>>>>> +.SH BUGS
>>>>>> +.\" [BUG 211029](https://bugzilla.kernel.org/show_bug.cgi?id=211029)
>>>>>> +.\" [Glibc bug](https://sourceware.org/bugzilla/show_bug.cgi?id=27143)
>>>>>> +.\" [POSIX bug](https://www.austingroupbugs.net/view.php?id=1440)
>>>>>> +If the command name starts with a hyphen,
>>>>>> +.BR sh (1)
>>>>>> +interprets the command name as an option,
>>>>>> +and the behavior is undefined.
>>>>>> +(See the
>>>>>> +.B \-c
>>>>>> +option to
>>>>>> +.BR sh (1).)
>>>>>> +To work around this problem,
>>>>>> +prepend the command with a space as in the following call:
>>>>>> +.PP
>>>>>> +.RS 4
>>>>>> +.EX
>>>>>> +    system(" \-unfortunate\-command\-name");
>>>>>> +.EE
>>>>>> +.RE
>>>>>>  .SH SEE ALSO
>>>>>>  .BR sh (1),
>>>>>>  .BR execve (2),
>>>>>>
>>>>>
>>>>
>>>>
>>>
>>>
>>
>>
> 
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
