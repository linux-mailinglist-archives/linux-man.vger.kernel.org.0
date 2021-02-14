Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3886B31AFC2
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 09:43:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229798AbhBNIna (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Feb 2021 03:43:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229793AbhBNIna (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Feb 2021 03:43:30 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB377C061574
        for <linux-man@vger.kernel.org>; Sun, 14 Feb 2021 00:42:49 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id n6so4929889wrv.8
        for <linux-man@vger.kernel.org>; Sun, 14 Feb 2021 00:42:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=K3ri6644eDEuz9oWB2haYVoBMjMyVjzAAlt6kmDXzKo=;
        b=MZ850vRG8PKWzXpkPkLF+DZhGRbIMs26OPektmmcpBl1OGe9RZiVagvDJgaQ9kmkzQ
         50j2fgfzy5TygIyTDVu8W/8yHBWHY2jytwBq37cLHLdK6z8OnZ3hnXYo9hC4ngWMFDmA
         Ct0q9QxWRA4+7kcluUk5G3adox4oQC6tBvu4tqXBKksZ5i7oxfsyyOLee6zQPfAGjZwU
         hDwXXtaI5EdL15h+vbmHk3bMCoUjeHS13/sjRbK9d4vftsq1bFts9VLglQQsyWY+pHnq
         9hSpmI4mGVy9AlDjBaC+rtk3DFLE8VVNt9+J5dKe/2G6G8uOaeeDD5oCDmL0rawQeSEk
         +fAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=K3ri6644eDEuz9oWB2haYVoBMjMyVjzAAlt6kmDXzKo=;
        b=qcTslkTqJRK65Fd+SUMqXbl5m7LfpniXasBVaRZR1nu5la0HMEJ++bAZs8Pq2vz8nJ
         /d1BlmBmpxXScg0PIhJl5DH4HqjiblOwceNjJWSD0WXp1/9yH2cJZOKy0ejoaW2IfeA3
         0KzB5KEWlkZTviK/afSmxToy6BI6aB0qg9NXxEfKDEGrd/ADKdjhoKoMS45kWxRKAzXS
         gGJ7e/kVblCWfGUKxb2w8v7FcKoSBi4wDLnkdhjfmawQoFR4KTS9DtcysmUIfbcODzbd
         UW1bql+o/rf44KMqqLO8YU6wNF82zUGsIazl6GC07RcR8/zYiCV9ML1i2dyErhnNErml
         3L4g==
X-Gm-Message-State: AOAM530CC3zVKvdlRDHgc31cZhboTMa180VaJRR7m6CiAkKcEb3k62Ab
        SUk/p0LzNs4jmH/EeO3wfZJsI2/Pd6cuew==
X-Google-Smtp-Source: ABdhPJx3dq5SNJhI7jaEXJgX/AgUARAc6ppwhPMJcVOcNoorRSBqVWI5APi+8CsDL5Ft6OolaakQQA==
X-Received: by 2002:adf:ab55:: with SMTP id r21mr12320768wrc.270.1613292168111;
        Sun, 14 Feb 2021 00:42:48 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id i10sm23417853wrp.0.2021.02.14.00.42.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Feb 2021 00:42:47 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: sigprocmask.2: s/kernel_sigset_t/sigset_t/
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <cd449862-373b-c058-6abf-fd4b4efc8acf@gmail.com>
 <89b4b88d-a5e1-345e-b2c8-3d9479177e22@gmail.com>
 <cacaff50-f077-37f0-87c6-df2feed9ddcb@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bce03b20-6557-a80a-c05a-b243ced8e2d9@gmail.com>
Date:   Sun, 14 Feb 2021 09:42:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <cacaff50-f077-37f0-87c6-df2feed9ddcb@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/14/21 12:30 AM, Alejandro Colomar (man-pages) wrote:
> On 2/13/21 5:05 PM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 2/12/21 4:28 PM, Alejandro Colomar (man-pages) wrote:
>>> Hi Michael,
>>>
>>> AFAICT, the syscalls [rt_]sigprocmask use '[old_]sigset_t' (there's the
>>> '__user' modifier too), so 'kernel_' should be removed from the types,
>>> shouldn't it?
>>
>> Looks like you're right. Will you send a patch?
>>
>> Thanks,
>>
>> Michael
> 
> Hi Michael,
> 
> I was wrong!

D'oh! I should read the manual page!

Cheers,

Michael

> [[
>    C library/kernel differences
>        The kernel's definition of sigset_t differs  in  size  from
>        that  used by the C library.  In this manual page, the for‐
>        mer is referred to as kernel_sigset_t (it  is  nevertheless
>        named sigset_t in the kernel sources).
> 
>        The  glibc  wrapper function for sigprocmask() silently ig‐
>        nores attempts to block the two real-time signals that  are
>        used  internally by the NPTL threading implementation.  See
>        nptl(7) for details.
> 
>        The original Linux system  call  was  named  sigprocmask().
>        However,  with  the  addition of real-time signals in Linux
>        2.2,  the  fixed-size,  32-bit  sigset_t  (referred  to  as
>        old_kernel_sigset_t  in this manual page) type supported by
>        that system call was no longer  fit  for  purpose.   Conse‐
>        quently,  a new system call, rt_sigprocmask(), was added to
>        support an enlarged sigset_t  type  (referred  to  as  ker‐
>        nel_sigset_t  in  this  manual  page).  The new system call
>        takes a fourth argument, size_t sigsetsize, which specifies
>        the  size  in  bytes  of the signal sets in set and oldset.
>        This argument is currently required to have a fixed  archi‐
>        tecture specific value (equal to sizeof(kernel_sigset_t)).
> 
>        The  glibc  sigprocmask()  wrapper function hides these de‐
>        tails from us, transparently calling rt_sigprocmask()  when
>        the kernel provides it.
> ]]
> 
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
