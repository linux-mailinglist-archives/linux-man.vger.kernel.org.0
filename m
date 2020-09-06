Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E96B725EE77
	for <lists+linux-man@lfdr.de>; Sun,  6 Sep 2020 17:14:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728873AbgIFPOU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 6 Sep 2020 11:14:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728807AbgIFPOD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 6 Sep 2020 11:14:03 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFACCC061573
        for <linux-man@vger.kernel.org>; Sun,  6 Sep 2020 08:14:00 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id j11so14690868ejk.0
        for <linux-man@vger.kernel.org>; Sun, 06 Sep 2020 08:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Ui3BoxUtdJXE1ltNV1C2GzTayY1fc9EBbEQF1gIWAvQ=;
        b=BzwW3NlEY7rEJMuoKVyd20Q/BkCiZ09wFQz15bahChPGnxASM+UCkdODVWPIZC9/Ws
         1uNcYsM+T1x8q9AnG0TZG0kRn8jik1IMLtVC2pJpXOrRB3VY1afWxXErKOVqJN18Jj3M
         rpvRozwmsxLd4iZD7jQfv0FzHTvib0uzCqpahrIGot48rQ3XCLMKWxhuc1DbzE++i2NI
         FdbmlCE4Gz4dvDjNyURALObTRvQ95qNVVhLFBQrsg3hAGvWwbX6TH/OnFzUZsEza0dL/
         qYPDXiRm0/tJ2ld0MYj8eaj1fmYoKbQG750ijHpsMrca/8X8vL7DJ/LEuRjA6lvETaZC
         kprw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ui3BoxUtdJXE1ltNV1C2GzTayY1fc9EBbEQF1gIWAvQ=;
        b=MCU4Kgh+3hiE5dYbxxst72SDpggzl8Hfz8RpnouEyQucMyAopCgpvdgN3od7uQlpiY
         kIB9dhknvdg+vp42Fqy1a1wW0/1GSX9KYZsVpRaiET/oR1Wo55Asd8bJcxBK1LN9zCig
         qq0vth6lnKM/h12r285SJrOdZClZduHif+10uGc6h7YuoBi5TSstU5rQsvnl63vE8YED
         XBfHZ8LxhO+sicxZRaS5+9n2G6HKljP7i1w0cJsrWj43AW0b9DEW4olfjPF1zm7E5td1
         ShOvM9ceTnUS1XW7xnGIrVOTS5Q6gA2KrBwPZX77mpjWlQAxYKRbq6o3zKnyrGAvTzjz
         OOnQ==
X-Gm-Message-State: AOAM531PAqX+qEaS7sQmwvjr/0zXXWuMzDUx7yVEdlpNhJScCh1Dapv5
        3vOF9JzQIUZT64u9T7ksE24i0NoCvbw=
X-Google-Smtp-Source: ABdhPJyDghe35DrMvRTsWixsK867dp1vTfcc7MZYZHbZ4ASIIioRtmSjdtxBFiZMnpb1b9Si1hZ9Sg==
X-Received: by 2002:a17:906:e4c:: with SMTP id q12mr16726077eji.425.1599405239132;
        Sun, 06 Sep 2020 08:13:59 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id v22sm721564ejj.23.2020.09.06.08.13.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Sep 2020 08:13:58 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 5/7] dlopen.3: Remove unneeded cast
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
 <20200905151501.609036-6-colomar.6.4.3@gmail.com>
 <e2a7096a-5678-245f-f5c2-0fa37d10ecbf@gmail.com>
 <0e29a44e-f3a5-aa28-a6dd-76f38c6295ec@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8e98e43c-665f-6554-0ee6-41e1fcd5e0ba@gmail.com>
Date:   Sun, 6 Sep 2020 17:13:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <0e29a44e-f3a5-aa28-a6dd-76f38c6295ec@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/6/20 3:22 PM, Alejandro Colomar wrote:
> Hola Michael,
> 
> On 9/6/20 3:02 PM, Michael Kerrisk (man-pages) wrote:
>> Hello Alex,
>>
>> On 9/5/20 5:14 PM, Alejandro Colomar wrote:
>>> Casting `void *` to `double (*cosine)(double)` is already done
>>> implicitly.
>>> I had doubts about this one, but `gcc -Wall -Wextra` didn't complain
>>> about it.
>>> Explicitly casting can silence warnings when mistakes are made, so it's
>>> better to remove those casts when possible.
>>>
>>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>>> ---
>>>  man3/dlopen.3 | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/man3/dlopen.3 b/man3/dlopen.3
>>> index 8e18f70c0..2de358ea3 100644
>>> --- a/man3/dlopen.3
>>> +++ b/man3/dlopen.3
>>> @@ -581,7 +581,7 @@ main(void)
>>>
>>>      dlerror();    /* Clear any existing error */
>>>
>>> -    cosine = (double (*)(double)) dlsym(handle, "cos");
>>> +    cosine = dlsym(handle, "cos");
>>>
>>>      /* According to the ISO C standard, casting between function
>>>         pointers and 'void *', as done above, produces undefined results.
>>
>> This cast really is needed. See the comment just below, and also try
>> compiling the code with your patch applied:
>>
>> cc -pedantic -Wall prog.c
>> d.c: In function ‘main’:
>> d.c:21:19: warning: ISO C forbids assignment between function pointer
> and ‘void *’ [-Wpedantic]
>>    21 |            cosine = dlsym(handle, "cos");
>>       |                   ^
> 
> Hmmm, not sure about it.
> 
> The thing is, standard C doesn't allow this, no matter how.  

Agreed.

> POSIX does allow it, however.

Yes, POSIX is explicit on this point, and the specification
gives an example of the use casts in the manner shown in the
manual page.

> The only thing with the casts is to avoid the warning, but they don't
> avoid the possible undefined behaviour (only in non-POSIX systems).

Yes. (But, dlopen() is a "UNIX-only" API, and thus non-POSIX
doesn't matter here.)

> But that warning, `-pedantic`, is specifically targeted to warn about
> whatever code that is not strict standard C, which this code isn't,
> so the warning is legit IMHO, and anyone using `-pedantic` would
> probably be warned about this line, and anyone not wanting to be warned
> about this line should probably disable `-pedantic`.
> 
> So, in POSIX, without `-pedantic`, that line without casts will result
> in correct code and no warnings, as expected.
> 
> And in non-POSIX, with `-pedantic`, that line without casts will
> correctly result in a warning.
> 
> And more importatnly, in non-POSIX, with `-pedantic`, that line with
> casts will result in no warnings but undefined results.
> 
> I'd say that no casting is less problematic than casting, although both
> have their problems.

Two things:

* The standard uses the casts, and allows the extension on top of
what the C standard permits here. So, I think the manuial page
better use the casts also.
* Sometimes people have to compile a large body of code using
certain compiler options, perhaps including "-pedantic", so they
need to at least be aware of the warning that the cast may incur.

To address the second point, I make use of the appropriate pragma,
to eliminate the waring from -pedantic:

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
    funcp = (void (*)(void)) dlsym(libHandle, name);
#pragma GCC diagnostic pop

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
