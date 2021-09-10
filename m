Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C240D40721D
	for <lists+linux-man@lfdr.de>; Fri, 10 Sep 2021 21:47:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230489AbhIJTs4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 15:48:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230513AbhIJTs4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 15:48:56 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C1D4C061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 12:47:44 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id q26so4168974wrc.7
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 12:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Tl65+9xeIGujDmWxolpjKkG2ZHjJEZdnM7XWMcXvi30=;
        b=pPafOUHj0MEqWwfZpagFm4rmwlJ0lDt7Hy3PWPHoL4gwmEjP9RSsnU5KYb+GxiJ30h
         ze/ejXVEzap5HjxW9g8CROUYQHW4AOQ1IOjwNGLXzlLqPeEn/CViYEXsmCHZ3ezutXBj
         bBg1dk/lAwc2isECgrheMfXEmOvgpI4p7A43zus2dGkSexyvMp5sRV5ftmGZnor8W2tz
         lcy7KB6RBqa8JF1vV5bP9IUWVLKjkCN5It/t2pZSrNpYAyQ8P2iTQsEBy0jvD3IwHrS+
         ak35DSVQsR1CKjRfDosXwlwfcb2QpyiE4Oe/KANE9pG1Q9vDCir2gxnQKlkj8wS9IgAN
         WwyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Tl65+9xeIGujDmWxolpjKkG2ZHjJEZdnM7XWMcXvi30=;
        b=pXN18zvP0NeISt42+28VsPX/TRZ3yaMBeJTlr+IFGMUOMR2xW3nhHUzIjymd8My5px
         9xn6uZZbsuSelH9BMEkwFlKWgeG4Nc27M1t8pgzcLu+3kcp/q1NKgbsAcaY9pj8uvLDV
         Zd8KHiQ+4LyBP02XRTPI6ootxC4aZM9tUYBOhrjce+gDptPMpvhuozrDdvkg12J4Pa6C
         HJg/aMYiCb0+Nv4ia24z6grt5t2JPZOB3+PZ2yA8CfVawN75B3qBaMceohC8i/NSqGcd
         wOQJa5Ostr5BDkAN++eRLI5JievrtI0eJaUEb1DX2+tjQjSsVfaNZ6WgPCYGccwB2iIm
         Hh+g==
X-Gm-Message-State: AOAM5308giBvB2ENj3YWg6Lu7mEaWZclq+wrz9gRLRkSDJnRpsx67rsM
        WGY8KME60VrhMGvIHr1QfpFUHHF67Qg=
X-Google-Smtp-Source: ABdhPJxIKbz3TczX24XqyOc9Lw7uyn025Cl4c8Bnv1YDUdLYzqaHMTMmOXS14vFfooVFj9lOtmSbnw==
X-Received: by 2002:a5d:6dd0:: with SMTP id d16mr11319886wrz.177.1631303263100;
        Fri, 10 Sep 2021 12:47:43 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l15sm4788934wms.38.2021.09.10.12.47.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 12:47:42 -0700 (PDT)
Subject: Re: [PATCH v3] ioctl_tty.2: Fix information about header include file
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <3d927d3c-67a1-bb48-b597-44c87b8f715a@gmail.com>
 <20210831202809.29819-1-pali@kernel.org>
 <20210910173949.bkyunodbtau2gg6j@pali>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <22f92414-8aa2-9102-793b-e9038607d5dc@gmail.com>
Date:   Fri, 10 Sep 2021 21:47:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210910173949.bkyunodbtau2gg6j@pali>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,

On 9/10/21 7:39 PM, Pali Rohár wrote:
> On Tuesday 31 August 2021 22:28:09 Pali Rohár wrote:
>> Header file termios.h contains incompatible definitions for linux ioctl
>> calls. Correct definitions are exported by header file linux/termios.h but
>> this file conflicts with sys/ioctl.h header file (required for ioctl()
>> call). Therefore include direct asm header file asm/termbits.h which
>> contains compatible definitions and structures for ioctl calls.
>>
>> Signed-off-by: Pali Rohár <pali@kernel.org>
> 
> Hello Alejandro! Could you check also this patch?

Sure, patch applied!
BTW, if at some point you feel like adding entries for termios and 
termios2 into system_data_types(7), I'll be happy to merge those!!

Thank you!

Alex

> 
>> ---
>> Changes in v3:
>> * Use .I <file> instead of .B #include <file>
>> * Use Bnnn instead of Bnn
>>
>> Changes in v2:
>> * Reformat SYNOPSIS for 80 chars per line
>> ---
>>   man2/ioctl_tty.2 | 19 +++++++++++++++++--
>>   1 file changed, 17 insertions(+), 2 deletions(-)
>>
>> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
>> index 186011ee7c33..7d866867c6bd 100644
>> --- a/man2/ioctl_tty.2
>> +++ b/man2/ioctl_tty.2
>> @@ -11,8 +11,10 @@ ioctl_tty \- ioctls for terminals and serial lines
>>   .SH SYNOPSIS
>>   .nf
>>   .B #include <sys/ioctl.h>
>> -.BR "#include <termios.h>" "      /* Definition of " CLOCAL ", and"
>> -.BR    "                             TC*" { FLUSH , ON , OFF "} constants */"
>> +.BR "#include <asm/termbits.h>" "   /* Definition of " "struct termios" ,
>> +.BR    "                               struct termios2" ", and"
>> +.BR    "                               Bnnn" ", " BOTHER ", " CBAUD ", " CLOCAL ,
>> +.BR    "                               TC*" { FLUSH , ON , OFF "} and other constants */"
>>   .PP
>>   .BI "int ioctl(int " fd ", int " cmd ", ...);"
>>   .fi
>> @@ -31,6 +33,19 @@ makes for nonportable programs.
>>   Use the POSIX interface described in
>>   .BR termios (3)
>>   whenever possible.
>> +.PP
>> +Please note that
>> +.B struct termios
>> +from
>> +.I <asm/termbits.h>
>> +is different and incompatible with
>> +.B struct termios
>> +from
>> +.IR <termios.h> .
>> +These ioctl calls require
>> +.B struct termios
>> +from
>> +.IR <asm/termbits.h> .
>>   .SS Get and set terminal attributes
>>   .TP
>>   .B TCGETS
>> -- 
>> 2.20.1
>>


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
