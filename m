Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3279D3C36F9
	for <lists+linux-man@lfdr.de>; Sat, 10 Jul 2021 23:37:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229674AbhGJVjo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 10 Jul 2021 17:39:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbhGJVjo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Jul 2021 17:39:44 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7AEBC0613DD
        for <linux-man@vger.kernel.org>; Sat, 10 Jul 2021 14:36:58 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id p8so17955673wrr.1
        for <linux-man@vger.kernel.org>; Sat, 10 Jul 2021 14:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FWAXJlvmjmw379ImXQ3+PpYqIvlYYEp6OwA8iOlB0DY=;
        b=d6+4VyNnujCo0owyTzbxjANzM/YfgLJBRHnOQ8A6v1zIq+S7Z0U1tNKebGhNzsYGq/
         /R499enxx2djXWVuTWJqt9/0WdjX02ZSAtbBL3Wf4Xe+5ulHEQDorF5Xz1Tfcf7fLhJZ
         uhRFhuEQatwRMRBNOCtBoXEH5PSh0va6X9rANnzlsswGzSJ1TCvyacylWP6GwSw44xBl
         QxbdIPbm5krgAXSksnXPE228578U+ggkU1mLtkDMeTS+TEXW5hPWsX5Q81YtHF0SyenS
         HQifjib6IG8+sma8T94mOuMqZyx/tbexGpihYYgzQMko5/3owbZYXgsi47xTwuM1e0a2
         C0pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FWAXJlvmjmw379ImXQ3+PpYqIvlYYEp6OwA8iOlB0DY=;
        b=gNiQviyWcwJeuQHz1vD6GZ2Qs7EXmeI6mPdGq6+8UrIe3wQylkB/G7McnzZNfnVipR
         epWVJPFB2UpycKVY2A59N1SbmZ2UzAkSAkJQ2QYXkqOzoD0u3b4U+B/K4rDmR5SBrNcX
         cmV8hFN3k1FdiKgZmIImVp5IbbdhcdnUCnaeGNo44szsN1UsnRxy1i1fa+Y5MB8HKYca
         Hl4XW5r3GluGS4YpyXQ6AENHYTvvsB737QE9G5IFvkSZ2mc6i1FIHDHb3CT0ImVsrGb2
         1Es/ADFz8MwWg9XGfLBAkUj/u6MxyXZTvbwehcFM1kLm3A0V7gX9ZdSU5sj36QLzAYYU
         G5zg==
X-Gm-Message-State: AOAM532AmYwuRsSWeVjdSiyLZ6lVzqf8d6K/wasbHvtS5FiplP41o1zi
        oQX+i0YOtgmWqfhCP3InduU=
X-Google-Smtp-Source: ABdhPJx2aR0vuBLFlFDCcMddZCXMMfkBH4dW5teq1xgIkXYP67iqS7Nni4nUqT8LQdjs0UMvn1Mj4Q==
X-Received: by 2002:adf:c448:: with SMTP id a8mr29636031wrg.103.1625953017389;
        Sat, 10 Jul 2021 14:36:57 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id s17sm9434233wrv.2.2021.07.10.14.36.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jul 2021 14:36:56 -0700 (PDT)
Subject: Re: strlen
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Florian Weimer <fw@deneb.enyo.de>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
 <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
 <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
 <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
 <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
 <19f7f15f-f425-5e23-87e0-65b8313c08f6@jguk.org>
 <3bf01638-1d53-82f9-d66b-6e4365ef1ff2@gmail.com>
 <1d1a4318-654e-e071-efb3-fef9aa9a8b27@jguk.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <7d6af9f7-d672-724b-0ab2-4616ee9f6f14@gmail.com>
Date:   Sat, 10 Jul 2021 23:36:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <1d1a4318-654e-e071-efb3-fef9aa9a8b27@jguk.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/10/21 10:49 PM, Jonny Grant wrote:
> On 10/07/2021 19:37, Alejandro Colomar (man-pages) wrote:
>> diff --git a/man3/wcslen.3 b/man3/wcslen.3
>> index af3fcb9ca..868f748a8 100644
>> --- a/man3/wcslen.3
>> +++ b/man3/wcslen.3
>> @@ -58,5 +58,12 @@ T}	Thread safety	MT-Safe
>>   .sp 1
>>   .SH CONFORMING TO
>>   POSIX.1-2001, POSIX.1-2008, C99.
>> +.SH NOTES
>> +.SS wcsnlen(3)
>> +If there is a known buffer size,
>> +it is probably better to use
>> +.BR wcsnlen (3),
>> +which can prevent some cases of buffer overrun/overflow.
>>   .SH SEE ALSO
>> -.BR strlen (3)
>> +.BR strlen (3),
>> +.BR wcsnlen (3)
>>
> 
> Hi Alex
> 
> Thank you for making the updates!
> 
> As "buffer overrun" refers to writing to a buffer, my 2 cents would be to express as:
> 
> "which will prevent reading beyond the end of the character buffer"

I wrote both overrun and overflow on purpose.
I was thinking of something like:

const char *src;
char dest[5];

src = "This is a very ... long valid string";
len = strnlen(src, 5 - 1);
/* strlen(s) wouldn't overrun, but the next call would overflow */
memcpy(dest, src, len);
dest[len] = '\0';


But after thinking about it a second time, I think I'll remove it, and 
keep only overrun (and I like your text, I'll copy part of it), as the 
overflow is a problem of considering that the size of the buffers is 
going to be the same, and the solution is not to use strnlen(3), but to 
differentiate both sizes, which allows to detect truncation.

If the input string is known but the output buffer is small, I'd call 
strlen(str) and then MIN(len, bufsiz)  (this is kind of equivalent to 
what strlcpy(3bsd) does).
And if the input string is untrusted, I'd call strnlen(str, strsiz) and 
MIN(len, bufsiz) (this is kind of what strncpy_s(3) does).



> 
> Any thoughts about adding the following?
> 
> NOTES
>      Calling strlen with a NULL pointer is undefined behavior.


I'm waiting for Michael and/or Florian to comment on my proposal.

I don't want to fix a page and have 296 broken...  I want to fix them 
all at once, but am not sure which solution to apply.

But yes, adding a line like that one is likely.

Thanks!

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
