Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B51512A0EE8
	for <lists+linux-man@lfdr.de>; Fri, 30 Oct 2020 20:55:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726163AbgJ3Tzz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Oct 2020 15:55:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726072AbgJ3Tzz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Oct 2020 15:55:55 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49E4DC0613CF;
        Fri, 30 Oct 2020 12:55:55 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id w14so7715872wrs.9;
        Fri, 30 Oct 2020 12:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zpVQTZD78OFj17EEqoZI735YgM/3UTX6XH/7k9Whf2U=;
        b=sLn5EyrRI+HXn2QKUwzYzIBkHbpBFnyBhAblOjMkvzQxL6W6S9vUEgx1xl6qGurkZ8
         5F1r+y2W6T1sVf2BXy7NpTBNufgQ8HFA+KX8VOpsJvyGb1pA6gtj+atqQy2U1fL01Bn4
         pronZdO2RC1SqiFsc7+wwwo4qdCEAaATMKr8sWM+7grwnPy9rFYhI9Eovl8lahgFdmvT
         Sd9KzQKlLVaUGixS7DTiVR+BypwEV0VzOwTtE1NIE63ZY+F4RT9T4xrdXARMC7EUWRzO
         VihobCoVfhJTjNGh+wCGvalOLhs9xwyLFFOJD4gna3QihS28cNmghg5ECR0krYqS3Vvj
         vtfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zpVQTZD78OFj17EEqoZI735YgM/3UTX6XH/7k9Whf2U=;
        b=WgmDo/JvuSNmHK+lIA/q11nw4HE5uZWurIyUVB9DoDYRxwWyaB6tOXO6ASyoHyaFBT
         dA2BjuSmAYNxDiEJvhCr4f7WhFxVR09jeS3WxugWxRNdVY8xC3VElBRsM7a4Ryi8DJ/T
         dyGklFI4Lah7W6bFke8YM859vKZkM6MHcQ3blsXdSK5N8aYgFDcsPEVNQDawcBG8/2mq
         XBG8YGSWDyHhf8UNO312V3uv+iM6RLAMSLo5TzUA9l18UHCkUR3/hwHQis0AG0Y0LBN3
         mAiAW0moY51AJXQyCnmT84nm9BEsz92U3rI+fLNKxjNgn7VfP3j45uufAJ4hnhGWgnA6
         ZZhA==
X-Gm-Message-State: AOAM530aZBcS4yoRhptwGTyBY97Sxpn9RmI0k9e0zQwYMQ3MI/ruO9ys
        uDTHd9vQ4w18ffk9ETb7R5W/UdL2yj4=
X-Google-Smtp-Source: ABdhPJx9lYgf0Ot8qdXeswlsg3TuED5/IA6AqVFo/gIDTHXwLsCwlDTjylnofYeA8rSvh8sILF1DDg==
X-Received: by 2002:adf:ce0b:: with SMTP id p11mr5123884wrn.318.1604087753322;
        Fri, 30 Oct 2020 12:55:53 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id q2sm11387412wrw.40.2020.10.30.12.55.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 12:55:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] futex.2: Use appropriate types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201030123956.36169-1-colomar.6.4.3@gmail.com>
 <20201030123956.36169-2-colomar.6.4.3@gmail.com>
 <bfffdeae-26e6-0469-f9af-f48b3b60a363@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fc43c725-163c-ebcf-df33-a9a9aef188d8@gmail.com>
Date:   Fri, 30 Oct 2020 20:55:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <bfffdeae-26e6-0469-f9af-f48b3b60a363@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/30/20 2:46 PM, Alejandro Colomar wrote:
> BTW, apparently the kernel doesn't use 'const' for 'utime'
> ('timeout' in the manual page),
> but effectively, it doesn't modify it, AFAICS.
> 
> Should the kernel use 'const'?
> Is there a reason for the kernel not using 'const'?
> Should we do anything about it in the manual page?

I'm not sure about the kernel, but I think we don't need to 
worry in the manual page.

Thanks,

Michael

> On 2020-10-30 13:39, Alejandro Colomar wrote:
>> The Linux kernel uses the following:
>>
>> kernel/futex.c:3778:
>> SYSCALL_DEFINE6(futex, u32 __user *, uaddr, int, op, u32, val,
>> 		struct __kernel_timespec __user *, utime, u32 __user *, uaddr2,
>> 		u32, val3)
>>
>> Since there is no glibc wrapper, use the same types the kernel uses.
>>
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>   man2/futex.2 | 27 ++++++++++++++-------------
>>   1 file changed, 14 insertions(+), 13 deletions(-)
>>
>> diff --git a/man2/futex.2 b/man2/futex.2
>> index 837adbd25..73de71623 100644
>> --- a/man2/futex.2
>> +++ b/man2/futex.2
>> @@ -26,12 +26,13 @@ futex \- fast user-space locking
>>   .nf
>>   .PP
>>   .B #include <linux/futex.h>
>> +.B #include <stdint.h>
>>   .B #include <sys/time.h>
>>   .PP
>> -.BI "int futex(int *" uaddr ", int " futex_op ", int " val ,
>> +.BI "long futex(uint32_t *" uaddr ", int " futex_op ", uint32_t " val ,
>>   .BI "          const struct timespec *" timeout , \
>>   " \fR  /* or: \fBuint32_t \fIval2\fP */"
>> -.BI "          int *" uaddr2 ", int " val3 );
>> +.BI "          uint32_t *" uaddr2 ", uint32_t " val3 );
>>   .fi
>>   .PP
>>   .IR Note :
>> @@ -581,8 +582,8 @@ any of the two supplied futex words:
>>   .IP
>>   .in +4n
>>   .EX
>> -int oldval = *(int *) uaddr2;
>> -*(int *) uaddr2 = oldval \fIop\fP \fIoparg\fP;
>> +uint32_t oldval = *(uint32_t *) uaddr2;
>> +*(uint32_t *) uaddr2 = oldval \fIop\fP \fIoparg\fP;
>>   futex(uaddr, FUTEX_WAKE, val, 0, 0, 0);
>>   if (oldval \fIcmp\fP \fIcmparg\fP)
>>       futex(uaddr2, FUTEX_WAKE, val2, 0, 0, 0);
>> @@ -1765,11 +1766,11 @@ Child  (18535) 4
>>   #define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \e
>>                           } while (0)
>>   
>> -static int *futex1, *futex2, *iaddr;
>> +static uint32_t *futex1, *futex2, *iaddr;
>>   
>>   static int
>> -futex(int *uaddr, int futex_op, int val,
>> -      const struct timespec *timeout, int *uaddr2, int val3)
>> +futex(uint32_t *uaddr, int futex_op, uint32_t val,
>> +      const struct timespec *timeout, uint32_t *uaddr2, uint32_t val3)
>>   {
>>       return syscall(SYS_futex, uaddr, futex_op, val,
>>                      timeout, uaddr2, val3);
>> @@ -1779,9 +1780,9 @@ futex(int *uaddr, int futex_op, int val,
>>      become 1, and then set the value to 0. */
>>   
>>   static void
>> -fwait(int *futexp)
>> +fwait(uint32_t *futexp)
>>   {
>> -    int s;
>> +    long s;
>>   
>>       /* atomic_compare_exchange_strong(ptr, oldval, newval)
>>          atomically performs the equivalent of:
>> @@ -1794,7 +1795,7 @@ fwait(int *futexp)
>>       while (1) {
>>   
>>           /* Is the futex available? */
>> -        const int one = 1;
>> +        const uint32_t one = 1;
>>           if (atomic_compare_exchange_strong(futexp, &one, 0))
>>               break;      /* Yes */
>>   
>> @@ -1811,13 +1812,13 @@ fwait(int *futexp)
>>      so that if the peer is blocked in fpost(), it can proceed. */
>>   
>>   static void
>> -fpost(int *futexp)
>> +fpost(uint32_t *futexp)
>>   {
>> -    int s;
>> +    long s;
>>   
>>       /* atomic_compare_exchange_strong() was described in comments above */
>>   
>> -    const int zero = 0;
>> +    const uint32_t zero = 0;
>>       if (atomic_compare_exchange_strong(futexp, &zero, 1)) {
>>           s = futex(futexp, FUTEX_WAKE, 1, NULL, NULL, 0);
>>           if (s  == \-1)
>>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
