Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 75D6D29EA33
	for <lists+linux-man@lfdr.de>; Thu, 29 Oct 2020 12:12:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726789AbgJ2LMP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Oct 2020 07:12:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726025AbgJ2LMP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Oct 2020 07:12:15 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE5EFC0613D2;
        Thu, 29 Oct 2020 04:12:14 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id s9so2283453wro.8;
        Thu, 29 Oct 2020 04:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nGF0VX0ft+3zZ98jIc8cmGnrE2OnEnOJbC/9MRqxrP4=;
        b=lcytXYluLRoRzXVFjZZofXemnZRoRahsCBmS28cG/t3hY7qXqwDAoNwtP9FTAv54+j
         i0LkohCGn/W1oir3UcvAwSy3naBJws9p68iI1rUvbzrsqtLPw+I8TI0W3s9y07ETbvoZ
         X9N9c8UgyQRD59XKFj9IvM9uLIujsJBybVCehVr3kb3py/FdxKDk5wsjG+6WN0dxsJ5I
         4MH5V11AGgEb+rmjAKlj8ZSTWxWv465954K1++CYn1blC6ysVSXYJjajgFhK0qyVWA4d
         ZE7wmeoCfnn4zom0zZHlwxcaAUTVSu9E4AVf0yGM+XFioEBLLae52VGLOq7v4rBwN3+c
         cSvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nGF0VX0ft+3zZ98jIc8cmGnrE2OnEnOJbC/9MRqxrP4=;
        b=ASTIS095gXG8GDWyAusOk13xWV8a2mrGkDRVO/akoPNIuCDk/RtyjlBZSsIYsVGu9Y
         vh89rMC4s6NpI8z6S+ujNMDVbLErMaVYZ8CUpT1/aT48N3SObjwdTcr69O71YouBhnx0
         Fv5Xhvlo4WkjeLhOf56J7jnHfhF/4eAcSvRW/twSDqXNO1OiofEnPmoEOj+t/1t/3iLL
         hRuSVU/kG8l5rn+pDgS7v0qAVR09J3u4GkGi489BaKqgICp+48/73aZoUXOISaFEWqDk
         h8vPsnmGeIHveL3Aoj5vvgvU7vSINSLe1/mMRncfkZCJsVSe4NSQSHYQr2V0toZJ3cWH
         DpOg==
X-Gm-Message-State: AOAM530JHYj3hNAgsvWNiidxhU+abgDkXcUiiuNKaSb9WCCgzdkuRq7i
        6hMzrN3vaccl3BUv/hvnYmc=
X-Google-Smtp-Source: ABdhPJy8vmbwTsWJqDpQ47Q5ypSi+ODunBqjZ8Doblh3xsENbgc6V3uc7h6NXJzWBIFV3sVlMldDZA==
X-Received: by 2002:adf:e486:: with SMTP id i6mr2228713wrm.397.1603969933495;
        Thu, 29 Oct 2020 04:12:13 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id g4sm3714021wmh.13.2020.10.29.04.12.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 04:12:12 -0700 (PDT)
Subject: Re: Possible bug in getdents64()?
To:     Florian Weimer <fweimer@redhat.com>,
        Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>
Cc:     libc-help@sourceware.org, linux-man <linux-man@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <829387c9-50d7-3d29-83bf-c4fec17cf9dd@gmail.com>
 <01065580-8602-52e6-0cca-22d1aa20a540@gmail.com>
 <87eelhthjj.fsf@oldenburg2.str.redhat.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <9d7e036a-e60c-0446-a263-c0cdc21fbdd4@gmail.com>
Date:   Thu, 29 Oct 2020 12:12:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <87eelhthjj.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-29 12:09, Florian Weimer wrote:
> * Alejandro Colomar via Libc-alpha:
> 
>> [[ CC += linux-man, linux-kernel, libc-alpha, mtk ]]
>>
>> On 2020-10-28 20:26, Alejandro Colomar wrote:
>>> The manual page for getdents64() says the prototype should be the
>>> following:
>>>          int getdents64(unsigned int fd, struct linux_dirent64 *dirp,
>>>                       unsigned int count);
>>>
>>> Note the type of 'count': 'unsigned int'
>>> (usually a 32-bit unsigned integer).
>>> And the Linux kernel seems to use those types (fs/readdir.c:351):
>>> SYSCALL_DEFINE3(getdents64, unsigned int, fd,
>>>           struct linux_dirent64 __user *, dirent,
>>>           unsigned int, count)
>>> {
>>> ...
>>> }
>>> But glibc uses 'size_t' (usually a 64-bit unsigned integer)
>>> for the parameter 'count' (sysdeps/unix/linux/getdents64.c:25):
>>>
>>> /* The kernel struct linux_dirent64 matches the 'struct dirent64' type.  */
>>> ssize_t
>>> __getdents64 (int fd, void *buf, size_t nbytes)
>>> {
>>>     /* The system call takes an unsigned int argument, and some length
>>>        checks in the kernel use an int type.  */
>>>     if (nbytes > INT_MAX)
>>>       nbytes = INT_MAX;
>>>     return INLINE_SYSCALL_CALL (getdents64, fd, buf, nbytes);
>>> }
>>> libc_hidden_def (__getdents64)
>>> weak_alias (__getdents64, getdents64)
>>>
>>> Isn't it undefined behavior to pass a variable of a different
>>> (larger) type to a variadic function than what it expects?
>>> Is that behavior defined in this implementation?
>>> Wouldn't a cast to 'unsigned int' be needed?
> 
> There is no variadic function involved here.  INLINE_SYSCALL_CALL takes
> care of the zero extension to the register internally, irrespective of
> the argument type.  (The register is of type long int or long long int,
> depending on the architecture.)

Hi Florian,

Thank you very much!

Alex

> 
> Thanks,
> Florian
> 
