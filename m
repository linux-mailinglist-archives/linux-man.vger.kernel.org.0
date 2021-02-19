Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8502231F998
	for <lists+linux-man@lfdr.de>; Fri, 19 Feb 2021 13:57:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbhBSM5Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Feb 2021 07:57:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbhBSM5U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Feb 2021 07:57:20 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 505E6C061574;
        Fri, 19 Feb 2021 04:56:40 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id o24so7543603wmh.5;
        Fri, 19 Feb 2021 04:56:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KCN+29Syg4w9hAdlVwpkNVkJKwwDEWH4RoNs/k/mTDA=;
        b=Ip2FTj4MrUGTUhEGCG7a026vKhpQlhE8D3qd9jAqfLxQz3s0uIyPz4KGHl+WbuQcEZ
         gvfQxFyfCjkwOlINh14F0cHIycZyBMQvhfRICxoN15+Gu4hMMLGNkWlg+6UqgRJ6DlZl
         /afOmHbKucmC5HpPP1SCyzz0y+/wS/QRHtwInvZ+KDz5Oyom2OJ1YMDL1On21lRTnw0Q
         z0pKF/cJDlk0dMJxHPEAmXBQ9hl56o8tiBalca1HXCTi2S6DbBg50sPyEkpZ42M+ihfe
         yviZot+udJ1AujJELNjsZeBq8pakS9dSG5X8ajFt1z3c64vRkvTjuqTqOOf8U5X0jyiZ
         qmTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KCN+29Syg4w9hAdlVwpkNVkJKwwDEWH4RoNs/k/mTDA=;
        b=Vw0LKfF9Ur7mPk+/9oEJ+YpyldWUHzKD2GYtdq74xeHW5TC6J+Wd/E/W4YIT6vmLcm
         aYTj0Qox4CdokCYhkGQvLVDr1iH8UZvO8uqCdt108/JVeR5u7Y9Qn+YFw9Tqp+TXr4R4
         mIDYyu2CF7RcctvKMM240hahbYDtY8dcAhiGJ62+jFvn/seh66gAB8N9r2qbgjPIuVvw
         wP2NhOh7sBAlpbJmN4jqhULyUL3x0/7LfzPXIkNIzf9oznjctzAaaQXhefco8ETTfX6m
         1bgYi1ve6LBCRrr0TOuT5NnHpqzQEF7BXdhMQ1YE4zzY5tdOnylRs91Y/VfiUI5wEN//
         SZ+g==
X-Gm-Message-State: AOAM533vkp7rEdFbf2mRz0gPy29EOg/XXFdHQWPeVOaZRzZy6Cx33lhD
        InJriDUUpbon00O/YXXfGak9JjfPDk6jKA==
X-Google-Smtp-Source: ABdhPJzroqTel4tdvNgeRR6BskGhxjV5ctoFcK5MORezir4Svgkwc+C1L5mFCfsyJu4sOuk2cniTJg==
X-Received: by 2002:a05:600c:41d6:: with SMTP id t22mr8207076wmh.74.1613739399036;
        Fri, 19 Feb 2021 04:56:39 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id b2sm13839223wrn.2.2021.02.19.04.56.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Feb 2021 04:56:38 -0800 (PST)
Subject: Re: [RFC v2] execve.2: SYNOPSIS: Document both glibc wrapper and
 kernel sycalls
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Florian Weimer <fweimer@redhat.com>,
        linux-kernel@vger.kernel.org
References: <938df2c0-04b5-f6a4-79c3-b8fe09973828@gmail.com>
 <20210218151341.51095-1-alx.manpages@gmail.com>
 <db155b69-e58c-32c2-6fc7-89b8329fbf2c@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ca34c574-72f1-f174-1de4-e2c1b7600640@gmail.com>
Date:   Fri, 19 Feb 2021 13:56:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <db155b69-e58c-32c2-6fc7-89b8329fbf2c@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2/19/21 1:39 PM, Michael Kerrisk (man-pages) wrote:
> Hey Alex,
> 
> On 2/18/21 4:13 PM, Alejandro Colomar wrote:
>> Until now, the manual pages have (usually) documented only either
>> the glibc (or another library) wrapper for a syscall, or the
>> kernel syscall (this only when there's not a wrapper).
>>
>> Let's document both prototypes, which many times are slightly
>> different.  This will solve a problem where documenting glibc
>> wrappers implied shadowing the documentation for the raw syscall.
>>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> 
> This patch also changes madvise.2, I suppose accidentally.

I forgot to change the commit msg.

I said in the previous email[1] that I'd add a syscall without wrapper 
to the RFC.

[1]: 
<https://lore.kernel.org/linux-man/938df2c0-04b5-f6a4-79c3-b8fe09973828@gmail.com/T/#mceefe007c2e4eb0419833583d893eb37dd02b235>

> 
> I'm still not sure whether I consider this change worthwhile
> for cases like this where the differences between the libc
> wrapper and the syscall are minor enough to probably
> be irrelevant to user-space programmers. But, if we do
> add something like this, I thing a sentence or two
> of English is desirable as well. Something like
> 
>     The kernel system call differs slightly from the glibc
>     wrapper, in the addition of 'const' to two parameter
>     declarations:
>      
>          syscall(...)
> 
> But, before we go down this track, I'd like to get a sense
> of how many cases there are like this where there are these
> small differences between the glibc wrapper and the syscall
> interface. I'm not meaning you should check every system call
> now.  But maybe you can let me know something like: of the first
> 20 system calls I checked, there X system calls that had
> such differences.

Don't worry, I'm first fixing the prototypes of man3.  This is only a 
prototype, and I'm not yet sure about which way is better to go.  I'm 
only showing ideas.

In a few days, I'll compare side to side the syscalls and their wrappers 
to see that.  If you want to have a look yourself, you can use these 
side by side:


  For reading the glibc wrappers:

  .../gnu/glibc$ man_lsfunc ../../linux/man-pages/man2 \
    |while read -r syscall; do
            echo "=============================  ${syscall}";
            grep_glibc_prototype ${syscall};
    done \
    |sed -e 's/\bextern //' -e 's/\b_*//g' \
    |less;

  For reading the kernel syscalls:

  .../linux/linux$ man_lsfunc ../man-pages/man2/ \
    |while read -r syscall; do
            echo "=============================  ${syscall}";
            grep_syscall ${syscall};
    done \
    |less;

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
>> ---
>>   man2/execve.2     | 15 +++++++++++++--
>>   man2/membarrier.2 | 14 +++++---------
>>   2 files changed, 18 insertions(+), 11 deletions(-)
>>
>> diff --git a/man2/execve.2 b/man2/execve.2
>> index 027a0efd2..318c71c85 100644
>> --- a/man2/execve.2
>> +++ b/man2/execve.2
>> @@ -41,8 +41,8 @@ execve \- execute program
>>   .nf
>>   .B #include <unistd.h>
>>   .PP
>> -.BI "int execve(const char *" pathname ", char *const " argv [],
>> -.BI "           char *const " envp []);
>> +.BI "int execve(const char *" pathname ",
>> +.BI "           char *const " argv "[], char *const " envp []);
>>   .fi
>>   .SH DESCRIPTION
>>   .BR execve ()
>> @@ -772,6 +772,17 @@ Thus, this argument list was not directly usable in a further
>>   .BR exec ()
>>   call.
>>   Since UNIX\ V7, both are NULL.
>> +.SS C library/kernel differences
>> +.RS 4
>> +.nf
>> +/* Kernel system call: */
>> +.BR "#include <sys/syscall.h>" "        /* For " SYS_* " constants */"
>> +.B #include <unistd.h>
>> +.PP
>> +.BI "int syscall(SYS_execve, const char *" pathname ,
>> +.BI "            const char *const " argv "[], const char *const " envp []);
>> +.fi
>> +.RE
>>   .\"
>>   .\" .SH BUGS
>>   .\" Some Linux versions have failed to check permissions on ELF
>> diff --git a/man2/membarrier.2 b/man2/membarrier.2
>> index 173195484..25d6add77 100644
>> --- a/man2/membarrier.2
>> +++ b/man2/membarrier.2
>> @@ -28,13 +28,12 @@ membarrier \- issue memory barriers on a set of threads
>>   .SH SYNOPSIS
>>   .nf
>>   .PP
>> -.B #include <linux/membarrier.h>
>> +.BR "#include <linux/membarrier.h>" "   /* For " MEMBARRIER_* " constants */"
>> +.BR "#include <sys/syscall.h>" "        /* For " SYS_* " constants */"
>> +.B #include <unistd.h>
>>   .PP
>> -.BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id );
>> +.BI "int syscall(SYS_membarrier, int " cmd ", unsigned int " flags ", int " cpu_id );
>>   .fi
>> -.PP
>> -.IR Note :
>> -There is no glibc wrapper for this system call; see NOTES.
>>   .SH DESCRIPTION
>>   The
>>   .BR membarrier ()
>> @@ -295,7 +294,7 @@ was:
>>   .PP
>>   .in +4n
>>   .EX
>> -.BI "int membarrier(int " cmd ", int " flags );
>> +.BI "int syscall(SYS_membarrier, int " cmd ", int " flags );
>>   .EE
>>   .in
>>   .SH CONFORMING TO
>> @@ -322,9 +321,6 @@ Examples where
>>   .BR membarrier ()
>>   can be useful include implementations
>>   of Read-Copy-Update libraries and garbage collectors.
>> -.PP
>> -Glibc does not provide a wrapper for this system call; call it using
>> -.BR syscall (2).
>>   .SH EXAMPLES
>>   Assuming a multithreaded application where "fast_path()" is executed
>>   very frequently, and where "slow_path()" is executed infrequently, the
>>
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
