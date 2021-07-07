Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C7343BE7C5
	for <lists+linux-man@lfdr.de>; Wed,  7 Jul 2021 14:25:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231454AbhGGM2D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Jul 2021 08:28:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231528AbhGGM2A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Jul 2021 08:28:00 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01645C061762
        for <linux-man@vger.kernel.org>; Wed,  7 Jul 2021 05:22:59 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id d2so2902968wrn.0
        for <linux-man@vger.kernel.org>; Wed, 07 Jul 2021 05:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+lew+9uDXTPoHPUmmZHwV+KYUkLBavMUoG7cqP+08oI=;
        b=N6HUk26XBCuOXAIgNS8vS31PRqxYsKywECzJPBKdl669P3DJWMHICQHT6sVPxnOMJv
         JeTh4yiSvSZMFra2pmRc5jEJOo+GFXUG6mObVY5O2Ah4ShD1uzIypClDU1FH/yXdFnoV
         8UwFUbvSNeMA9AWYj5AmIaP7RvWjkrD01zS3XtE5BJIm2OF7SbhtKBiVL4ccv064hRKM
         HoWmeTN7JDi5ZwIcsPPY7/sHejGZK6wxr4DVp07Oc5YJ/k/4MHwSe7e30S1F8xkAdoWy
         GU+PSnnpZpoTpzBbhLSsHREfC393wA44FIO7WAgvhtda59oOEYStNfanrIzmxoSU7eSW
         MUJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+lew+9uDXTPoHPUmmZHwV+KYUkLBavMUoG7cqP+08oI=;
        b=Y+6ygrexG84nXvd5Joq5OHZ6Y6eK/l4mOzhQN91sqGEnqy6L7imDdSvbxsAN1KUTu3
         z/5wUj+7tFHT7CrYQmLfu2ERlvqPteU6CiJSyD6kxozCNUA7HROt3f9BHQXk4RA5EGic
         Qm26k7UtTYIaMAMYudL/rOH6U+Rdhk/75q2SopJUlBUuy751SZR9szgNmorp6v06foUf
         n2kNxpPbvnOA6LFYiRWcEbiPocUxsCli0Ig3fJNJUe+J8nd/TxVXkYoMyYBNeVmMQOcb
         NpTVysM/fWoJOUtX1Pp6CY/iJKsQRP1ywoosERrNgNyPdizApY6TMMQ+ZIymJmnyENa2
         /sjw==
X-Gm-Message-State: AOAM532aRQIhuehq76wxTtItL07KpkxIWgiyDxEJvvgaSA4AdbyO75ea
        yESbQSWohfYm88N088kETHPcu6o8U3Q=
X-Google-Smtp-Source: ABdhPJzeJ2r25Tquu8h3rsgE+nRBQKd/IUYyjEKHk6zTQrzAypriq8+t9y5Ib78+WX6ljHm93fpHlw==
X-Received: by 2002:a5d:5252:: with SMTP id k18mr27516822wrc.315.1625660577566;
        Wed, 07 Jul 2021 05:22:57 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id v15sm6285455wmj.39.2021.07.07.05.22.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 05:22:56 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: strlen
To:     Jonny Grant <jg@jguk.org>, Florian Weimer <fw@deneb.enyo.de>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
Date:   Wed, 7 Jul 2021 14:22:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jonny,

On 7/7/21 1:36 PM, Jonny Grant wrote:
> 
> 
> On 06/07/2021 23:11, Florian Weimer wrote:
>> * Jonny Grant:
>>
>>> The reason it does not crash appears to be because of this warning
>>> which removes the call to strlen due to the return not being
>>> checked?
>>
>> GCC uses the information that the argument to strlen cannot be null on
>> that particular path.
> 
> It's a shame GCC doesn't give a warning
> 
> It may be GCC is using '__builtin_strlen'
> 
> <string.h> marks the param as nonnull. However, I am surprised this does not trigger the GCC warning -Werror=nonnull

[[gnu::nunnull]], aka __attribute__((nonnull)), is only triggered by 
compile time NULL.  That is: passing NULL (either hardcoded or through a 
macro)

If after optimizations the compiler realizes that an argument is NULL at 
compile time, it may (but also may not) trigger the warning.  However, 
if you optimize too much, the expression may vanish, and the warning be 
silenced again.  The -fanalyzer option of GCC may (but also may not) 
realize of more NULL cases.

I managed to trigger the following, but only with '-O0 -fanalyzer':

[[
<source>:17:20: error: use of NULL 's' where non-null expected [CWE-476] 
[-Werror=analyzer-null-argument]
    17 |     int x = strlen (s);
       |             ~~~~~~~^~~
   'void f(const char*)': events 1-2
     |
     |   16 |     const char *s = NULL;
     |      |                 ^
     |      |                 |
     |      |                 (1) 's' is NULL
     |   17 |     int x = strlen(s);
     |      |             ~~~~~~~~~~
     |      |                   |
     |      |                   (2) argument 1 ('s') NULL where non-null 
expected
     |
In file included from <source>:4:
/usr/include/string.h:385:15: note: argument 1 of 'size_t strlen(const 
char*)' must be non-null
   385 | extern size_t strlen (const char *__s)
       |               ^~~~~~
]]


It is undefined behavior to pass NULL to a nonnull parameter, and it is 
a problem that the caller should check before the call.  The compiler 
may warn you of the most obvious ones, but in the end, the 
responsibility is on the programmer.

See 
<https://stackoverflow.com/questions/42035769/how-to-generate-warning-of-non-null-argument-for-my-custom-function>.

> 
> /* Return the length of S.  */
> extern size_t strlen (const char *__s)
>       __THROW __attribute_pure__ __nonnull ((1));
> 
> Perhaps that is just a macro that is not actually used......

It _is_ being used:

/usr/include$ grep -rn 'define __nonnull' -B3 -A1
x86_64-linux-gnu/sys/cdefs.h-290-/* The nonull function attribute allows 
to mark pointer parameters which
x86_64-linux-gnu/sys/cdefs.h-291-   must not be NULL.  */
x86_64-linux-gnu/sys/cdefs.h-292-#if __GNUC_PREREQ (3,3)
x86_64-linux-gnu/sys/cdefs.h:293:# define __nonnull(params) 
__attribute__ ((__nonnull__ params))
x86_64-linux-gnu/sys/cdefs.h-294-#else
x86_64-linux-gnu/sys/cdefs.h:295:# define __nonnull(params)
x86_64-linux-gnu/sys/cdefs.h-296-#endif

> 
> If I add another function -Werror=nonnull does give a warning
> void test(const char * const p) __attribute__((nonnull));
> 
> https://godbolt.org/z/x37sbfWaG
> 
> <source>:15:9: error: argument 1 null where non-null expected [-Werror=nonnull]
>     15 |     test(NULL);
> 
>>
>>> strlen.c:11:3: warning: statement with no effect [-Wunused-value]
>>>     11 |   strlen (str);
>>>        |   ^~~~~~~~~~~~
>>>
>>> https://godbolt.org/z/caoes5nGa
>>
>> That site probably uses different library headers.
>>
>> As posted, with Debian's GCC 8.3, I get this for the main function:
>>
>> main:
>> 	xorl	%eax, %eax
>> 	ret
>>
> 
> 
> In that case maybe https://man7.org/linux/man-pages/man3/strlen.3.html should have a "NOTES" section stating something similar to your wording ?
> 
> NOTES
> 
> The behavior of strlen(NULL) is depends on different things. It may cause a SEGV exception, or the compiler may optimize and remove the code path handling NULL.
> 

I disagree with this.  It is likely that the behavior is that, given the 
current implementation of Linux/GCC/glibc.  But it is undefined 
behavior, and anything can happen.  You should just try harder to avoid 
it, and not rely on any possible outcome of it.  GCC people may decide 
tomorrow to change the behavior to do some more agresive optimizations, 
and the documentation shouldn't preclude such a thing, as long as it's 
legal according to the relevant standards, and sane.


Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
