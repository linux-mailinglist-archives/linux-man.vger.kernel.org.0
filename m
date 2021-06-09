Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED8793A2019
	for <lists+linux-man@lfdr.de>; Thu, 10 Jun 2021 00:31:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229931AbhFIWc5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 18:32:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229925AbhFIWc5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Jun 2021 18:32:57 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B0E7C061574
        for <linux-man@vger.kernel.org>; Wed,  9 Jun 2021 15:30:47 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id e7so13494948plj.7
        for <linux-man@vger.kernel.org>; Wed, 09 Jun 2021 15:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6EKu5oQu/CokJMpmPlDtyN8DmVQCpND8WuYGUAklckk=;
        b=gVmj2cbZDBXJDZ8fDK6zRV8rgVwZ2M9EMWusaeLfpdKXwBTfKOWYJW3PsIWlwHNfc7
         +jlKr5pZCo/JSY8Gpuw3tlaEkP5NKUU7tK208OSuAeu9cUDW3YxoPW1QblEFqJEodt7w
         /wD1v0GYb0saZIPjilIyvnMy6aYklVoufBqSCTDuOx8AiwBmKoRRcOZaUcpXqZ94tT6w
         Uu2Dtp1pD/LFqQYeiHmcjyDMRMVhkFMJkbzUmyCFBVmPQYM5FQZA8/PgFwzKCQgLp9nh
         GBVuwujE0cfN1UH8gNh1fP60dMvwhRVX+WOvXspUMx8yGvUI/jClL0i4dwC/FihRCSTl
         EOfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6EKu5oQu/CokJMpmPlDtyN8DmVQCpND8WuYGUAklckk=;
        b=qrKhRb5u5xKW2xvNS/UlHGhbplzpo2LUNmfw4L9z6pAxgztqFfdXg9ZLgEWUWrBfe7
         hSBTbSYB4qTyc+uSPNfEhYSxMXMQ41TghZD/hddCKaNhFJzS/RREr52SLtCouT3KfRgZ
         UlVuyuS15ooIKWBiTtJYgcrfrcU/jhT+7Lbh5RY/PNCpEdhArD4DtAEf5BROeNKDJyUh
         T495dgHIMkZx7ZZMCGqqTaXq24SHmfEfQX6bgBLE85qSDO18UBBl19NzNzCVb7LgWQQS
         907FNr/sthDWcRet3FOxfD41Kk07BWFtmYc/FCWK4QRU41ITg95MJ4dvhdxwkfrTJogc
         HLmg==
X-Gm-Message-State: AOAM531MkTHiBkTcEF7bBrV/u+vHH+jJIMOOj6cHovxk7ghQTwkD2ZrV
        dK0NKDSVxk5STTZcQ5ceQ68=
X-Google-Smtp-Source: ABdhPJz+Z12gBA0AWi2reLHWnT0HC+sQUuYfR2PZ73U4IcFBWVo/R+h3TUBTTm5JjSHEwTJl+jJz7w==
X-Received: by 2002:a17:903:2403:b029:ef:9419:b914 with SMTP id e3-20020a1709032403b02900ef9419b914mr1924490plo.59.1623277846790;
        Wed, 09 Jun 2021 15:30:46 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id h12sm697210pgn.54.2021.06.09.15.30.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 15:30:46 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Kees Cook <keescook@chromium.org>,
        Tyler Hicks <tyhicks@canonical.com>,
        Will Drewry <wad@chromium.org>
Subject: Re: [PATCH v2 03/10] seccomp.2: Document why each header is needed
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
 <20210524181947.459437-3-alx.manpages@gmail.com>
 <cd876e7c-7236-8530-e0a7-b2940587ad42@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a6d88aea-c4a7-bd08-b43b-1c48427e163d@gmail.com>
Date:   Thu, 10 Jun 2021 10:30:42 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <cd876e7c-7236-8530-e0a7-b2940587ad42@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/25/21 7:34 AM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 5/24/21 8:19 PM, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> Cc: Kees Cook <keescook@chromium.org>
>> Cc: Tyler Hicks <tyhicks@canonical.com>
>> Cc: Will Drewry <wad@chromium.org>
>> Cc: Michael Kerrisk <mtk.manpages@gmail.com>
>> ---
> 
> Please discards this one, for the same reasons as in v1: repeated.
> See 
> <https://lore.kernel.org/linux-man/20210515182254.186607-1-alx.manpages@gmail.com/T/#u> 
> instead.
> 
> That one has a better mail.

Dropped.

Thanks,

Michael

>>   man2/seccomp.2 | 10 +++++-----
>>   1 file changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/man2/seccomp.2 b/man2/seccomp.2
>> index 584a16f22..1be7d6766 100644
>> --- a/man2/seccomp.2
>> +++ b/man2/seccomp.2
>> @@ -30,11 +30,11 @@
>>   seccomp \- operate on Secure Computing state of the process
>>   .SH SYNOPSIS
>>   .nf
>> -.B #include <linux/seccomp.h>
>> -.B #include <linux/filter.h>
>> -.B #include <linux/audit.h>
>> -.B #include <linux/signal.h>
>> -.B #include <sys/ptrace.h>
>> +.BR "#include <linux/seccomp.h>" "  /* Definition of " SECCOMP_* " constants */"
>> +.BR "#include <linux/filter.h>" "   /* Definition of " "struct sock_fprog" " */"
>> +.BR "#include <linux/audit.h>" "    /* Definition of " AUDIT_* " constants */"
>> +.BR "#include <linux/signal.h>" "   /* Definition of " SIG* " constants */"
>> +.BR "#include <sys/ptrace.h>" "     /* Definition of " PTRACE_* " constants */"
>>   .\" Kees Cook noted: Anything that uses SECCOMP_RET_TRACE returns will
>>   .\"                  need <sys/ptrace.h>
>>   .PP
>>
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
