Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 515C2407A1E
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 20:40:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233438AbhIKSlS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 14:41:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233408AbhIKSlR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 14:41:17 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD4D7C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 11:40:04 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id b6so7718353wrh.10
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 11:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FlxZ2i1gB8K/Iy/1yGBmPEYecPWxquocr+sd3k7cGjw=;
        b=Lw22ePsTeDX9HvYlK6aMZ8q7lmVI4r9CMH2CdYrOVnnne/FtNlCiN81kbhXvorDeQ6
         YUXKVsKBfSLWmZbejkiD7+vYM1tuBeV8W9kGE1mHooWKQ7n6qKApbLpk0npPP+oGl8BP
         LPgpmCsiYouREteJLBp4DWQk3hvSZGoI0ROs2BMAQvAsbnL8vy+0dYPJ3klUl55fM1HM
         9HAA+1eGAimqfyiXZAlwKykKC7tz3/CDjDtsLvonX7AMOyM5WsoPGZmKiWvFc+TKRuun
         X6iGgKlYz5J+PODbi9IbgmI9heYitFNRrb/YOOrfUMq4Nde4JitOZ+rflnFz1F3NjcqH
         5fYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FlxZ2i1gB8K/Iy/1yGBmPEYecPWxquocr+sd3k7cGjw=;
        b=dfBLZ0Xt+Fn/cjebREgszhwy9W+DyzXnWcafnhaAS7S5T0Qs69WMYt93PN+ur19qbi
         HrCZ5jSg4j93VsuqErrsC4Zc8chUV+Er75LOHBI8U/kU/TxzDPvbsIbcVLE4AMZ6+7FR
         CX0ldO2NFYpm9lRv8ANEKcRWg4sDeZbAMrkYo4w4D75deWdGrEoqjxQVS0OyqFMA64Q4
         8vQG3dm5+DOcE08Vcwc9jXNNHQuuRlvMbap6Z3VQ2FRCOS+bVJxyZ0Vhw7aZxmUFIOYV
         kCeaOT7GZQrhklMnmeGwRKRC4JEAPMP73asYb8qeFkprjqNMrfCCrq2t03u9NGJXmA/O
         UAJg==
X-Gm-Message-State: AOAM533m8HosUWx0LDPBjnVD2fyvhwYTWB+O74pDBLicxncOonXg0oEq
        pkzR7dhhi9j6w4PwRKAqp3x17l5nnGM=
X-Google-Smtp-Source: ABdhPJz9/sIVI5uwIplJFl/zqZLOsBtFnjxupJYVgqm5bE+2dGJPy6TN8qbLyNN8ba1f+lGXxYFJzA==
X-Received: by 2002:a5d:4c4c:: with SMTP id n12mr4124556wrt.19.1631385603378;
        Sat, 11 Sep 2021 11:40:03 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id m5sm2238756wmi.1.2021.09.11.11.40.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Sep 2021 11:40:03 -0700 (PDT)
Subject: Re: [PATCH 00/45] Add LIBRARY section (based on FreeBSD manual pages)
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
Cc:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
 <CACGkJdtFKY+DTTcdNuSPDLn-DUXDfJYcFj9814v5yHpOwxnwfg@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <97082679-7872-ffea-7700-44c0e653a857@gmail.com>
Date:   Sat, 11 Sep 2021 20:40:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CACGkJdtFKY+DTTcdNuSPDLn-DUXDfJYcFj9814v5yHpOwxnwfg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Eugene,

On 9/11/21 8:29 PM, Eugene Syromyatnikov wrote:
> On Sat, Sep 11, 2021 at 6:01 PM Alejandro Colomar
> <alx.manpages@gmail.com> wrote:
>> Alejandro Colomar (45):
>>    _exit.2: Add LIBRARY section
>>    keyctl.2: Add LIBRARY section
...
>>    socketcall.2: Add LIBRARY section
>>    sigwaitinfo.2: Add LIBRARY section
> 
> I'm not sure about these, my understanding is that the primary purpose
> of section 2 is syscalls, userspace-kernel interface, and not their
> libc wrappers.  Even intro(2) states that it is Linux-specific:
> “Section  2  of the manual describes the Linux system calls.  A system
> call is an entry point into the Linux kernel.” Tying it to libc feels
> like a bit of a stretch, even though it is the exceedingly common
> interface for invoking them.
> 

Thanks for pointing that out.  I had some doubts about this in the 
beginning.  I started writing something like "Linux kernel - GNU C 
library" meaning that it's not only a thing of glibc but also the 
kernel.  But no one replied my RFCs... :/

In the end I simplified it to Standard C library (as FreeBSD does), 
because I wasn't convinced of the syntax I had used.  And also, since a 
man page being in section 2 already implies that it is implemented in 
the kernel, I didn't want to be repetitive, and just point what the user 
has to link to to make a program work.

There are some system calls that are wrapped by other libraries, such as 
keyctl(2) by libkeyutils, and those get a different LIBRARY (you can 
check patch 02/45).

But if you think there's a better way to express this, please propose it.

Thanks!

Alex.


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
