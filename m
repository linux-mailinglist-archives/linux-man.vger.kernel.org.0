Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22A8D4C5E5A
	for <lists+linux-man@lfdr.de>; Sun, 27 Feb 2022 20:02:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231186AbiB0TDQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 27 Feb 2022 14:03:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231250AbiB0TDN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 27 Feb 2022 14:03:13 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AED81EAE1
        for <linux-man@vger.kernel.org>; Sun, 27 Feb 2022 11:02:32 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id d3so12264707wrf.1
        for <linux-man@vger.kernel.org>; Sun, 27 Feb 2022 11:02:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=4sDC701Hit75YKlA+GnnAggIPmk4SNB5xs2AarKLuoE=;
        b=DdcboezscbkwN5jjgRY/g/IRCEvHT6oJNXTDYtkyIPk+r1wOLz5DNQ4pMqAVM7PKSh
         GN8PUCrZExcnlKWTj4h0RplPaY3AfQleRfipx/R0Bxfk9VSvMkKc/wxRpRNSR5WFq8D4
         Esr4rjJ+FpdcazY092vG9w2I6YSIYvWpeb9NhF7PNJ+K0ARy2JN3ePrtgWkYRH87AaNE
         DqxZ3jFaVnyIqn56Qp9LynGcG0Mt9GVtPrMGai9QuVqkp/DMmOCXBnnyp+KCe+egNam2
         p35WW9JCM4ilaAOx3W7qJkIXytlOodrspI5ycyae3BTBHVzmdUC2DhQKBaZNSmzgLYCE
         t3aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4sDC701Hit75YKlA+GnnAggIPmk4SNB5xs2AarKLuoE=;
        b=zT3GSBLxyBx0ewvADtJNmnuEVkkum0Vk7YwdOgPy2D4Ei5AICjg8zCuJ/oXMMEbXq7
         pYRfpU/y//Xv9ot9k0FGH8q2HKrz11SUufxnp89sefLtb+ZrP9RAO79cRs8jU5InOERm
         azmWFHcj5qgm15rtg/hLJBLVMoV+ba3rm1GHYqHyzGYm3UojuKHBuAUckJLxyl+AyWcz
         gzBdKtR4vIgWaZy0YecsfSm2cs1+7j+1qnPlq6H1gNJv4jEFPEa4DB9bXyJW9fCl4hms
         fxNubXKjkdexvcmf/VyCtB+/bBS7DktyD1AKLXtdfuz9Kl3c9uG96dpJeN0A39SEgad9
         Dqjw==
X-Gm-Message-State: AOAM531WQk1WwCdTVi53k0hwfR5pARmo5GxcEJRRe3PI2jP/G/TwFDAX
        rZshYfaMIA8HlgkatvmSTyK51Ifp/990e2Ow
X-Google-Smtp-Source: ABdhPJwxNRbb3RiVB7aaOvzShzM6tmeN0A19/yQ6LxFYacrTqn0q9ZV5gBWUXL+ZDPXiAMBIIEO+xA==
X-Received: by 2002:adf:e288:0:b0:1e3:36c0:91cc with SMTP id v8-20020adfe288000000b001e336c091ccmr13224971wri.41.1645988551040;
        Sun, 27 Feb 2022 11:02:31 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w26-20020a7bc11a000000b0037bf8fa8c02sm8785670wmi.13.2022.02.27.11.02.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Feb 2022 11:02:30 -0800 (PST)
Message-ID: <f53acc04-ccd2-e63f-f2b2-8d51628bf2c8@gmail.com>
Date:   Sun, 27 Feb 2022 20:02:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH] mmap.2: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20211112103938.3888-1-jwilk@jwilk.net>
 <75bc59ef-6a3e-1539-dcc3-6c6a2a411e85@gmail.com>
 <20220227185719.hszwudrkwrpzhgqe@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220227185719.hszwudrkwrpzhgqe@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Branden!

On 2/27/22 19:57, G. Branden Robinson wrote:
> Hi, Alex!
> 
> At 2022-02-27T18:09:51+0100, Alejandro Colomar wrote:
>>> @@ -289,8 +289,7 @@ Note that older kernels which do not recognize the
>>>  .BR MAP_FIXED_NOREPLACE
>>>  flag will typically (upon detecting a collision with a preexisting mapping)
>>>  fall back to a "non-\c
>>> -.B MAP_FIXED\c
>>> -" type of behavior:
>>
>> Branden, why is that?  Is a leading '"' special here?
> 
> Nope.  I think you correctly surmised what the original input was doing.

Then, should I report a bug in groff?

I could reproduce the incorrect formatted output with
GNU groff version 1.23.0.rc1.1931-35c9b

> 
>>> +.BR MAP_FIXED "\(dq type of behavior:"
>>
>> I'll apply a slightly simpler patch (removing \c):
> [...]
>> -fall back to a "non-\c
>> -.B MAP_FIXED\c
>> -" type of behavior:
>> +fall back to a
>> +.RB \(dqnon- MAP_FIXED \(dq
>> +type of behavior:
> 
> This is indeed an improvement.  your change should make no _visible_
> change to the rendered document.
> 
> I wouldn't use \(dq, though--these quotation marks are for prose, not
> code.  I would use left and right double quotation marks.
> 
> fall back to a
> .RB \(lqnon- MAP_FIXED \(rq
> type of behavior:

Okay, I'll fix that.

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
