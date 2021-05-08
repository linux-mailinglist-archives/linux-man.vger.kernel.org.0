Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5A953772ED
	for <lists+linux-man@lfdr.de>; Sat,  8 May 2021 18:13:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229575AbhEHQOX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 May 2021 12:14:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbhEHQOW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 May 2021 12:14:22 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4526FC061574
        for <linux-man@vger.kernel.org>; Sat,  8 May 2021 09:13:21 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id s82so6806186wmf.3
        for <linux-man@vger.kernel.org>; Sat, 08 May 2021 09:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=J4cSVcmKHZxdfoJ7QHGaRzEqKbihxdH2Qn0UYWfdm3M=;
        b=icx78YcXSaZqB3rPJeQCkB7gFdEremSQW201SCmtdWBlrDwtoz9bbw39W9wGy+wlNx
         jZj/Tnaom4KSmlgUt2DSbVDa6I0SvKPNrd6hRE8Kts+Wi7KVk6KrRLieZRAeAM5+tMvO
         ayznKM91Uyg//mkmSXVxBeJ0+HeGwxroX81EU98JqEFwzVHxWk1e4tO0M/OSfE0urK/p
         MP9HoKlpPacpFMfsjQ1QVrZMf8sdIZOXL8MW0BU/zEw4WyBT9UbQ3dP2sRyUYK3LefMe
         e55k6XhcuHgjZV6VFPGz1FIy+ulFVIHaYC2cySQ1iMoFq0MQMJblsIdz9HXqsHHbbrw7
         FYlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=J4cSVcmKHZxdfoJ7QHGaRzEqKbihxdH2Qn0UYWfdm3M=;
        b=IFodDR8Xx/R0SX3SipFLxsb10+TDHkGLrjgZ79cwku34COO5JTHYCY6T3l6/D45Wjk
         3XwXa8FGcK+NhUpiVAAOjrdlJZDSRNWWBjmTsfwqjKn/Ov+z0tZxTwgnrx9mm9iXvFYK
         8Yi5iMI1b0XnLW3eo8S83zDzOppBHqcOHUjfWl1X1ri1As0r3Wz+0Tt770k5CMagSUK1
         ft1Uv7IONKXzZo8wSXI39z4C3Y/SQrSo98KakiGOiGnwGqexPGfGlrJCdVPvD5HDtFVt
         V6fhEVC4JXzfteLiZNZnlsvGgXGsw1XzM7VAWpjkqmo7oVEGGgIXM/rqQN247WFmy/pm
         zTpA==
X-Gm-Message-State: AOAM531dV78Xo3jmhNE2/lzkh/QHZN3dmlSXE0myTbj9qr5feu5JZRqB
        w+jx0h7R5gW/D91ziq5ahm8=
X-Google-Smtp-Source: ABdhPJz7/R/FJD1282hku4rn1bWcem0gVdEjA80I19D1g7APgMsBKx+KPOjsSEg9KQ7XmO8Lno+5CA==
X-Received: by 2002:a1c:9a95:: with SMTP id c143mr16784088wme.143.1620490400106;
        Sat, 08 May 2021 09:13:20 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.56.53])
        by smtp.gmail.com with ESMTPSA id z66sm20604643wmc.4.2021.05.08.09.13.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 May 2021 09:13:19 -0700 (PDT)
Subject: Re: [patch] shmop.2: tfix
To:     "Vishwajith.K" <vishuvikas1996@gmail.com>,
        linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
References: <CAN2tbMWSHJ=BXe70ygXg9NpCWhB+3V-CpZEWCTtOynJr_QODbw@mail.gmail.com>
 <CAN2tbMUfwpG_5KWCgoO1t9ZexshUmAF+0AfchfzDmfWgN4iVZw@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <49adc772-43e6-6df7-699e-fbb06a0fcccc@gmail.com>
Date:   Sat, 8 May 2021 18:13:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CAN2tbMUfwpG_5KWCgoO1t9ZexshUmAF+0AfchfzDmfWgN4iVZw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Vishwajith,

On 5/8/21 12:07 PM, Vishwajith.K wrote:
> replying to all;
> Consider checking this patch - code duplication typo fix.

Sorry, I forgot to reply to you.  I applied the patch to my tree on Tuesday.

Thanks!

Alex

>> ---
>>   man2/shmop.2 | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/man2/shmop.2 b/man2/shmop.2
>> index 3a6c908ee..c7e66af0e 100644
>> --- a/man2/shmop.2
>> +++ b/man2/shmop.2
>> @@ -387,8 +387,8 @@ main(int argc, char *argv[])
>>           errExit("shmget");
>>
>>       semid = semget(IPC_PRIVATE, 1, IPC_CREAT | 0600);
>> -    if (shmid == \-1)
>> -        errExit("shmget");
>> +    if (semid == \-1)
>> +        errExit("semget");
>>
>>       /* Attach shared memory into our address space. */
>>
>> --
>> 2.27.0

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
