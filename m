Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0220135B6C2
	for <lists+linux-man@lfdr.de>; Sun, 11 Apr 2021 21:30:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235882AbhDKTaV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Apr 2021 15:30:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235618AbhDKTaV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Apr 2021 15:30:21 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 549C9C061574
        for <linux-man@vger.kernel.org>; Sun, 11 Apr 2021 12:30:04 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id j5so9746198wrn.4
        for <linux-man@vger.kernel.org>; Sun, 11 Apr 2021 12:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=slkxDl8IRxKF3zuF883SVhwtrEr/ovRH2Iuxng4IIVU=;
        b=quXHLk3HLNs/8UqU0O7iU4buvkGrGsBI30+rNcr5VxJqSgfHsayozZ67wz0CLYCSOo
         Y/0f7j5E2lFyeL6HusVjYl/yQd24fX8zj8uqU+pOfPjwZUYha7YSWQIEfF9d+JRn3WBq
         xCgax0c4qYhNoR3rv/9kDKJSisQWhd9QkojcSAhBBY6L+usMUCAU9Ds97EbvoeeVwx1j
         /vQIqnfWW0L49HNXLt0Qc+qSmUA6/M7VUA0TOuSNJp2nbfSnLwAKaYu9AOE9ghGIZZDb
         4mlEX71EV9B/UT1JsXHfIPqYrL66ST6ba3/kfHooG6TBJeWxyaesOBb4NnrpKc6bAuRR
         APJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=slkxDl8IRxKF3zuF883SVhwtrEr/ovRH2Iuxng4IIVU=;
        b=XXLRV8pUyNV1/FH4czITTWBfJIXhZdnOVbqXiRSoAg/aIixq6H0skTZ5lg+joaqxnv
         BeEy2q1eWjvDzZFRYENsq7s1zGbdVqIoLX0nOlK+dmiNF4nGaSxxbzF2ZPxnXI6448tk
         RWjAHUiNq+cCeirsmPzx70CygwmMXcpxBGlCkKX4LaD5WCnwFSzITahP0zrtg2rrgRkG
         zvsds6DXUe0BJ+1OfCU/jv/Grr9aFNLM/kye3JpfKBoOo1iPFASlIGDsbEHR/jUYqIMY
         aNcmllYr01Pc2hqwjJSXmvfxmHbvqNCNR/rsi80PS+nbkqZ6KnVJHSN9pYK5HGI5NKB6
         7zHw==
X-Gm-Message-State: AOAM531Op4Cg24KLR0Blz3S6mUA3uKcxaRLrKH7Tv6ZeGbyP+7ok8xug
        2Mf167XkkaSiCBIsPmCYFZy1jzbHPkI=
X-Google-Smtp-Source: ABdhPJx9aoeutPsullidSrPwkIhomp4KDeOK4Zy5vF4SHwxFRAxkTHAwQmawGMgdrfLqLymGs8U59w==
X-Received: by 2002:a5d:4f82:: with SMTP id d2mr1301287wru.228.1618169403102;
        Sun, 11 Apr 2021 12:30:03 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id e11sm2783127wrt.41.2021.04.11.12.30.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 12:30:02 -0700 (PDT)
Subject: Re: [PATCH v5 00/35] SYNOPSIS: Use syscall(SYS_...); and fix
 '#include's
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-1-alx.manpages@gmail.com>
 <4298cc3c-8f24-5a3c-3c54-b24ca804d373@gmail.com>
 <7750fa83-c252-7a60-bddc-34fb7ebed0bf@gmail.com>
Message-ID: <f48a1f0f-a1cd-2dfb-6dc9-12165b5687be@gmail.com>
Date:   Sun, 11 Apr 2021 21:30:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <7750fa83-c252-7a60-bddc-34fb7ebed0bf@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/11/21 9:23 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 4/5/21 1:49 PM, Michael Kerrisk (man-pages) wrote:
>> So, I think I'm okay with the syscall() changes in the SYNOPSIS.
>> It might just take me a moment to get used to them. However, I do
>> wonder if it is worth retaining a comment in the SYSNOPSIS,
>> something like:
>>
>>     SYNOPSIS
>>         #include <asm/prctl.h>        /* Definition of ARCH_* 
>> constants */
>>         #include <sys/syscall.h>      /* Definition of SYS_* constants */
>>         #include <unistd.h>
>>
>>         int syscall(SYS_arch_prctl, int code, unsigned long addr);
>>         int syscall(SYS_arch_prctl, int code, unsigned long *addr);
>>
>>         Note: glibc provides no wrapper for arch_prctl(), necessitating
>>         the use of syscall(2).

I'm not sure what text to write in cases such as faccessat2(2).  Could 
you have a look at that?

There's actually a wrapper, but it's faccessat(2).

>>
>> Without something like this, the reader may be puzzled at the use of
>> syscall().
>>
>> What do you think?
> 
> Yes.  I had doubts, and you confirmed them.  I'll add that.
> 

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
