Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1E493123C0
	for <lists+linux-man@lfdr.de>; Sun,  7 Feb 2021 12:19:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229510AbhBGLT1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Feb 2021 06:19:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbhBGLTY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Feb 2021 06:19:24 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BC8FC06174A
        for <linux-man@vger.kernel.org>; Sun,  7 Feb 2021 03:18:44 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id o10so10442789wmc.1
        for <linux-man@vger.kernel.org>; Sun, 07 Feb 2021 03:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vU2hR7l9pNPUdR9TSgtEdXJkYXQeJ7njlNXVU3tDwfk=;
        b=ZDIdU9ugQzHabJJwabDZUB9LSgynn6/CnZ7Lv1WbBt98ETmAXhIZiGK72JgaJo0ohq
         ZEnynRk4PN319+fDVzizvMzuG2wPyZcnFhJBMBXGv0Gb6v/TamYyu46DcbEB+BHnw55t
         N0zMmw9xX03yc6pVP6Vvo3GLRkDtJInZo735R0hyca827Fua25W7/egDgU+/AKO1EAxu
         FYKR3AJT1xX478zOKflK+NX2sOqVsrWDqw6tcCOQQzMeLpK4QK4boueOF3Pt0yLKTW0K
         BiD369slxWK4hd+msokWH+EpKk9jb4lSA1jaMURQc6IiIhmQAbM+8ludN8O9/EunbmMO
         pBPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vU2hR7l9pNPUdR9TSgtEdXJkYXQeJ7njlNXVU3tDwfk=;
        b=gxf0jyd5zJR8djYgU/93s/t4I/Vy95Uur09sJ8pf7C9wNhdgI9tVjdYR9bZS1rWngX
         RkpSie6twi543NhRy7gyAT+nrMJakCpuVucFDfMUQ1viytBjlaBo8nosk8z14TbEZ3SD
         MYgXFFmvyIrO5VMieRbyp6OkA9jN27+k1rmWzJcM5T9Ora5IFTpdmGVPFZVAg9yM+jMV
         5+SMtay606SOqiSTub1ksPY5xzyyWOc3BR55F5Q/8vRYeyzyX0zEEsXx/KENlXIClRvd
         HsMKiCp6ft1iTpPu3Ya2RgfFKkDpcWQyiSD1lFs6M0wvNGz3VCiUcZcQPixXW7zHKwMg
         hw6w==
X-Gm-Message-State: AOAM5308ZelEU/Gu7Dt3JbdlYrQdQLeS8sLWHP6Cphsal9drhUo6vllZ
        pT9PNON93V6N3FEjaM/kvl8Y56m+9C0=
X-Google-Smtp-Source: ABdhPJwjD8znT0JI27qGMS2dPodt6qW8tnyaYB4p+mZO9ggb9SvgnQsORqxmt3HJ1C0bxTuWB0mTaA==
X-Received: by 2002:a05:600c:3504:: with SMTP id h4mr10853980wmq.168.1612696721766;
        Sun, 07 Feb 2021 03:18:41 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id o12sm21250134wrx.82.2021.02.07.03.18.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Feb 2021 03:18:41 -0800 (PST)
Subject: Re: [PATCH 2/2] netdevice.7: Minor fixes to Pali's patch
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     pali@kernel.org, linux-man@vger.kernel.org
References: <20210128152430.314458-1-alx.manpages@gmail.com>
 <20210128152430.314458-2-alx.manpages@gmail.com>
 <2263f2ae-6984-bc6d-d14a-285078aacbe3@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <8ba042b9-c292-c76f-d553-cfb06bd74884@gmail.com>
Date:   Sun, 7 Feb 2021 12:18:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <2263f2ae-6984-bc6d-d14a-285078aacbe3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 1/28/21 9:16 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 1/28/21 4:24 PM, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>  man7/netdevice.7 | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/man7/netdevice.7 b/man7/netdevice.7
>> index bdc2d1922..4acf05c10 100644
>> --- a/man7/netdevice.7
>> +++ b/man7/netdevice.7
>> @@ -390,12 +390,12 @@ flag set can be found via
>>  .IR /proc/net/dev .
>>  .PP
>>  .B AF_INET6
>> -IPv6 addresses can be read from
>> +IPv6 addresses can be read in
>>  .I /proc/net/if_inet6
>> -file or via
>> +or via
> 
> I made a different fix. "read from" is a little better than
> "read in", but it needs to be either "read from the ... file"
> or "read from ...". I chose the latter.
> 
> Thanks,
> 
> Michael
> 
> 
>>  .BR rtnetlink (7).
>>  Adding a new or deleting an existing IPv6 address can be done via
>> -.BR SIOCSIFADDR " / " SIOCDIFADDR
>> +.BR SIOCSIFADDR / SIOCDIFADDR

I noticed you didn't apply this part.  Did you forget it, or do you
prefer it as is?

Rationale:

https://lore.kernel.org/linux-man/fc4a94d4-2eac-1b24-cc90-162045eae107@gmail.com/

Thanks,

Alex

>>  or via
>>  .BR rtnetlink (7).
>>  Retrieving or changing destination IPv6 addresses of a point-to-point
>>
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
