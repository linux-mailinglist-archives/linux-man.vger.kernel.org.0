Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34445215476
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 11:20:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728329AbgGFJUT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 05:20:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728024AbgGFJUR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 05:20:17 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99007C061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 02:20:17 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id a6so40007299wrm.4
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 02:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cgkfWINRpL5JPJ63Q284weQAZjtPeV0PEvGV8FKOakE=;
        b=eSqKmkd4ItUfDQsQtnA/7NBc4yn1h73LiZZpMGu6s1loN9XQBtQI9gQjwz6yT8d7xG
         f4BLa5p7Jy4G3djWl1boGW3sRhj1xSAPGd4Tjh5O2yJbfeWCTw7jFBBOfj5vG5rySi4i
         LmbeYJS/8mz42EXz3xTNeMqkUuI4V3jxeDSmxGL90dzpnNNrjLMCkfQSlQ91+RGfDuz2
         aq+R+DjNCP+iuSR2ALH3vYHKJFSTH6TTA5nndOKlt8pCktrAqRnn0Y5wwB3T3UYlX9XL
         Tu7/frGvSF/Qunw5bYBk39VITNdEXGGOkjklSFnQ6uo/fJnLtsDv5P9a2F75NnN2XgFG
         NwFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cgkfWINRpL5JPJ63Q284weQAZjtPeV0PEvGV8FKOakE=;
        b=EnODVIN+oMDiQVyiIH2mdD3/DRZgu3BA5fOGldyRVZXzLug30jok/KfchhuzYJSSnP
         usDJm/IoExUqMXbmXdVyaX1XE3DdXwyR1tVpDYfuoDJqx53YNidtVfJknPoUhMGbCswo
         pp8KqJlWxv2YR0ojMN73QdixH2a4+6Z8m9KHP/zF79L1t+H00ZLkMfkTsIOoKQwnYytd
         M2nzOR3mD4MxNX6yRUFeb5w9edFeS7dPF4PhIVEcM8Dxsf6Q4LMniMps4+BK1/2cQ1VX
         wbQv7DSio2gxxXIAQQG2k60/MrN0TWNmy2R5X3jVTdBmOCY74c7hPCEboOHGiqc1ly34
         knIQ==
X-Gm-Message-State: AOAM531VKHsCQjVK4zypHktpx+T7eRu9zdNSfewUAaxcYI9aPINO91of
        Y/m3jBZ05KpKUn/07Os2eYZmap39
X-Google-Smtp-Source: ABdhPJyQjKkU6e4gAPWQPUoSibJ/uCf3kvheLWY2iDJyUvtPQEGhOcTt3+QScOTFuUZdeHGxFwX3Cg==
X-Received: by 2002:adf:8024:: with SMTP id 33mr51224717wrk.117.1594027216114;
        Mon, 06 Jul 2020 02:20:16 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id o9sm23325775wrs.1.2020.07.06.02.20.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 02:20:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man3/*: srcfix: remove superfluous quotes around
 space-free arguments
To:     Jakub Wilk <jwilk@jwilk.net>,
        Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200705134014.GA10659@rhi.hi.is>
 <20200706043133.pznhl57cs5revfun@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <22da8ba7-2c2d-67e9-dbd2-b0186e0432f8@gmail.com>
Date:   Mon, 6 Jul 2020 11:20:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706043133.pznhl57cs5revfun@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 6:31 AM, Jakub Wilk wrote:
> THe strfmon(3) change is unrelated to the other changes, and should have 
> been in a separate patch.

Exactly. 

Bjarni, it's bets if you don't mix unrelated changes tinto the same patch.

Thanks,

Michael

> * Bjarni Ingi Gislason <bjarniig@rhi.hi.is>, 2020-07-05, 13:40:
>> --- a/man3/strfmon.3
>> +++ b/man3/strfmon.3
>> @@ -29,10 +29,10 @@ strfmon, strfmon_l \- convert monetary value to a string
>> .B #include <monetary.h>
>> .PP
>> .BI "ssize_t strfmon(char *" s ", size_t " max ", const char *" format ,
>> -.B "...);"
>> +.IB  ... );
> 
> For variadic function the convention seems to be to format "..." in 
> bold; see scanf(3), printf(3), wprintf(3) and execv(3) man pages. This 
> makes sense, because unlike argument names, "..." appear literally in 
> the function prototypes.
> 
>> -.B const char *" format , "...);"
>> +.BI "const char *" format , ... );
> 
> Ditto. So this line should be:
> 
> .BI "const char *" format ", ...);"
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
