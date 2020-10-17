Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F10CC291278
	for <lists+linux-man@lfdr.de>; Sat, 17 Oct 2020 16:36:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438384AbgJQOgC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Oct 2020 10:36:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2438360AbgJQOgB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Oct 2020 10:36:01 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58F9BC061755
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 07:36:01 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id z22so3017447wmi.0
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 07:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wBY0mfMF5AWF+1bitdK3nWdqTRhdca9W7HdMzfiCjGo=;
        b=CgaIxKkCpmMyl7r+Tr7ccdBjx8TxhYybHFkvjg25dZiJoOS7Or8iSqCNMoaDyHJZwH
         41jXudf8gasBdLqLC36hCf1xe2UjlBXtFFX9BfsqC3lwkIc+WpOxvLjKwuRt4dInv4Qo
         o3z3tvI2EODsTOnLHJYL3LXl6YoQT4IKoMuApWCuy4wMnqGvL3YNtti9vk8BEwl6/ivn
         0XaXdmWq89OmrgGyJPNyAa23iASnmkLrAyb+5zxMHVJta5YKRYR3/mOSBmxGYRSqZ2lg
         9c7jj7zKq4zpGP7gCln/el6+tmu1gmcxE6LBNQ/kbcnKbQ2PXe1gScrdy7QLl4MJyYv2
         sTGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wBY0mfMF5AWF+1bitdK3nWdqTRhdca9W7HdMzfiCjGo=;
        b=PB5KZbT3icdBeKciVBAZ91y1W0F3VoyfqXt5xC5/M3IlldXxvevY7ZeFf5yJ9Fx88l
         MebLm9QRhfx2Rx+ipxuxyC6xONFGctaFrQefeZcMP3tI2+G3X9GbmrR4y4J1/MTeo7NZ
         SS8CyWkisEkUBfDS8r5Up0Fsa+BT0tTpIhsXr4UpbQQhBwVUMpYMbL5Drxr9mpwJNQMl
         JOAjrs71N7wg4CvIuX4Ru0GmlLwF3K2V5+gUdX+F8IP47QgRpm/SPLzFPdM1ROY2Q24D
         BuHtnyIDeJLJFvXBjDwnKKMa4w5zWbC/R+5ZI3SqKY98TfLRrYlL3whX0dB8c2r79+89
         2g0A==
X-Gm-Message-State: AOAM530lj3g5kZaIDEzu7OaDhTj3AvJSc3Zo7knhxV9d8r2AOdRPKoRQ
        ejFnDNnhnqDLDO7TvThz3ME=
X-Google-Smtp-Source: ABdhPJwfm/25BAOwsoQiizyhD7wgCZ421xJcEfvJ7c1ynm49YcjzojGr8BBOWLIHbifWO1Y0KUpQOg==
X-Received: by 2002:a7b:c10c:: with SMTP id w12mr9221735wmi.175.1602945360000;
        Sat, 17 Oct 2020 07:36:00 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id i126sm8504806wmi.0.2020.10.17.07.35.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2020 07:35:59 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2] regex.3: Add example program
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <efc1c2c5-3cf9-e755-cab3-c19e100f210b@gmail.com>
 <20201017132748.150322-1-colomar.6.4.3@gmail.com>
 <6d7ea902-357d-9581-83dc-fdeb14a592b4@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b9f5c938-4a00-0ced-5633-e00a57be252b@gmail.com>
Date:   Sat, 17 Oct 2020 16:35:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <6d7ea902-357d-9581-83dc-fdeb14a592b4@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/17/20 3:37 PM, Alejandro Colomar wrote:
> Oops,  I should've used \e instead of \\ (see below).
> Please fix that :)

Applied and fixed. Thanks Alex!

Cheers,

Michael

> Alex
> 
> On 10/17/20 3:27 PM, Alejandro Colomar wrote:
>> $ gcc -Wall -Wextra -Werror -pedantic regex.c -o regex
>> $ ./regex.3
>> String = "1) John Driverhacker;
>> 2) John Doe;
>> 3) John Foo;
>> "
>> Matches:
>> #0:
>> offset = 25; length = 7
>> substring = "John Do"
>> #1:
>> offset = 38; length = 8
>> substring = "John Foo"
>>
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>
>> Hi Michael,
>>
>> Now it's much better :)
>>
>> Cheers,
>>
>> Alex
>>
>>  man3/regex.3 | 42 +++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 42 insertions(+)
>>
>> diff --git a/man3/regex.3 b/man3/regex.3
>> index 7c5132995..72e576cc6 100644
>> --- a/man3/regex.3
>> +++ b/man3/regex.3
>> @@ -337,6 +337,48 @@ T}	Thread safety	MT-Safe
>>  .TE
>>  .SH CONFORMING TO
>>  POSIX.1-2001, POSIX.1-2008.
>> +.SH EXAMPLES
>> +.EX
>> +#include <stdint.h>
>> +#include <stdio.h>
>> +#include <stdlib.h>
>> +#include <regex.h>
>> +
>> +#define ARRAY_SIZE(arr) (sizeof((arr)) / sizeof((arr)[0]))
>> +
>> +static const char *const str =
>> +        "1) John Driverhacker;\en2) John Doe;\en3) John Foo;\en";
>> +static const char *const re = "John.*o";
>> +
>> +int main(void)
>> +{
>> +    static const char *s = str;
>> +    regex_t     regex;
>> +    regmatch_t  pmatch[1];
>> +    regoff_t    off, len;
>> +
>> +    if (regcomp(&regex, re, REG_NEWLINE))
>> +        exit(EXIT_FAILURE);
>> +
>> +    printf("String = \\"%s\\"\en", str);
> 
> 
> Here (twice)
> 
>> +    printf("Matches:\en");
>> +
>> +    for (int i = 0; ; i++) {
>> +        if (regexec(&regex, s, ARRAY_SIZE(pmatch), pmatch, 0))
>> +            break;
>> +
>> +        off = pmatch[0].rm_so + (s \- str);
>> +        len = pmatch[0].rm_eo \- pmatch[0].rm_so;
>> +        printf("#%d:\en", i);
>> +        printf("offset = %jd; length = %jd\en", (intmax_t) off, (intmax_t) len);
>> +        printf("substring = \\"%.*s\\"\en", len, s + pmatch[0].rm_so);
> 
> 
> And here (twice again)
> 
>> +
>> +        s += pmatch[0].rm_eo;
>> +    }
>> +
>> +    exit(EXIT_SUCCESS);
>> +}
>> +.EE
>>  .SH SEE ALSO
>>  .BR grep (1),
>>  .BR regex (7)
>>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
