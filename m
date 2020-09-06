Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79D8225EDF3
	for <lists+linux-man@lfdr.de>; Sun,  6 Sep 2020 15:22:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726501AbgIFNWl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 6 Sep 2020 09:22:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726931AbgIFNWh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 6 Sep 2020 09:22:37 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44744C061573
        for <linux-man@vger.kernel.org>; Sun,  6 Sep 2020 06:22:23 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id e17so10785094wme.0
        for <linux-man@vger.kernel.org>; Sun, 06 Sep 2020 06:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6QMjT9Kd9JOYsPgkk9qdEoAJo27qFMG4ZLbholproxk=;
        b=LEDpEiZclj+7CR3G0951DGjDTcIb/nJNgIEMeT5ahAguRzvRcOLLMfSLrv+CaDmnr+
         H7hnrAO1SFO/PI0GpzGyMaxLpS+k8BF+xZnsyh0qoqnaBfiZFMvyi8RAnoMBe3xmMo27
         C+VauRGqEto6u1GUW53LBtLiak0DTAORh2OBPgkXHl+UDnLAmPAYEjTOXQKps8Tj1C6h
         s2gEpiVurJDFrN0q4MHS4ZAGovGte5pXBg9AK+g/YyAsjACfngrKsPq1UdcOiJe/8o7u
         iU65/GLfDYgqPbrsZCag3YPiqzJTVki6rld9pVu8PcriXiTAj2RUFiogJ2CMQ0u4Dc7H
         XjVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6QMjT9Kd9JOYsPgkk9qdEoAJo27qFMG4ZLbholproxk=;
        b=bLmCS5AvA6/b5AmUpaDCuBixrsmNAsOevCFBLzFykxTkYi6cCptPoX8/2MAhzyiEFV
         zbLm7N5jQp1cdA7b6VkMSlqx4r4hVre1QBZMwt/DpvzmFxPDJsvaSu0EYuCpMFtsSyis
         U50RgmWms3EXGlohqOKzSdYAspie9YfzzJYiu+ollyc1y6/XAgubfBQGa+61ML7BIJOz
         up6LCdfsqI1dbrfOLA/c1SKden6IB/6qcFV+iOSfV68gB1cfXXYo+6PmhdEQ8Cf7NoCl
         8dTLy2B4stO8yMRT6e7oDkDsb7N4PVCZEf6jHDjFRw/icrWPAkRlqjqP+kD5W867j9Wf
         Bs5A==
X-Gm-Message-State: AOAM533BQ79kPTdu+jXxIAFig1DoNJ88yDONuow03elaWb0UuYb97qsO
        9lMUGaeU355qfNZ8sV1tWgJNSy4pExo=
X-Google-Smtp-Source: ABdhPJzvkyxZnLYZoJm1XBcTLxWcXds5+tiTY9M4949f5uaDvV3EM6/5Cce2HL8P2cmfL4yIGrFJCA==
X-Received: by 2002:a05:600c:245:: with SMTP id 5mr16616126wmj.33.1599398534480;
        Sun, 06 Sep 2020 06:22:14 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id t203sm23164725wmg.43.2020.09.06.06.22.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Sep 2020 06:22:14 -0700 (PDT)
Subject: Re: [PATCH 5/7] dlopen.3: Remove unneeded cast
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
 <20200905151501.609036-6-colomar.6.4.3@gmail.com>
 <e2a7096a-5678-245f-f5c2-0fa37d10ecbf@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <0e29a44e-f3a5-aa28-a6dd-76f38c6295ec@gmail.com>
Date:   Sun, 6 Sep 2020 15:22:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <e2a7096a-5678-245f-f5c2-0fa37d10ecbf@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hola Michael,

On 9/6/20 3:02 PM, Michael Kerrisk (man-pages) wrote:
> Hello Alex,
>
> On 9/5/20 5:14 PM, Alejandro Colomar wrote:
>> Casting `void *` to `double (*cosine)(double)` is already done
>> implicitly.
>> I had doubts about this one, but `gcc -Wall -Wextra` didn't complain
>> about it.
>> Explicitly casting can silence warnings when mistakes are made, so it's
>> better to remove those casts when possible.
>>
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>  man3/dlopen.3 | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man3/dlopen.3 b/man3/dlopen.3
>> index 8e18f70c0..2de358ea3 100644
>> --- a/man3/dlopen.3
>> +++ b/man3/dlopen.3
>> @@ -581,7 +581,7 @@ main(void)
>>
>>      dlerror();    /* Clear any existing error */
>>
>> -    cosine = (double (*)(double)) dlsym(handle, "cos");
>> +    cosine = dlsym(handle, "cos");
>>
>>      /* According to the ISO C standard, casting between function
>>         pointers and 'void *', as done above, produces undefined results.
>
> This cast really is needed. See the comment just below, and also try
> compiling the code with your patch applied:
>
> cc -pedantic -Wall prog.c
> d.c: In function ‘main’:
> d.c:21:19: warning: ISO C forbids assignment between function pointer
and ‘void *’ [-Wpedantic]
>    21 |            cosine = dlsym(handle, "cos");
>       |                   ^

Hmmm, not sure about it.

The thing is, standard C doesn't allow this, no matter how.  POSIX does
allow it, however.

The only thing with the casts is to avoid the warning, but they don't
avoid the possible undefined behaviour (only in non-POSIX systems).
But that warning, `-pedantic`, is specifically targeted to warn about
whatever code that is not strict standard C, which this code isn't,
so the warning is legit IMHO, and anyone using `-pedantic` would
probably be warned about this line, and anyone not wanting to be warned
about this line should probably disable `-pedantic`.

So, in POSIX, without `-pedantic`, that line without casts will result
in correct code and no warnings, as expected.

And in non-POSIX, with `-pedantic`, that line without casts will
correctly result in a warning.

And more importatnly, in non-POSIX, with `-pedantic`, that line with
casts will result in no warnings but undefined results.

I'd say that no casting is less problematic than casting, although both
have their problems.


Saludos,

Alex
