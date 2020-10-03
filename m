Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B5622822BA
	for <lists+linux-man@lfdr.de>; Sat,  3 Oct 2020 10:55:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725790AbgJCIzY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Oct 2020 04:55:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725648AbgJCIzV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Oct 2020 04:55:21 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC9B4C0613D0;
        Sat,  3 Oct 2020 01:55:20 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id x14so4268311wrl.12;
        Sat, 03 Oct 2020 01:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+bcD/CAAXV7lyNPV3QRgxAmLGFQtjxS5V6MhUGAQTGo=;
        b=kz7MJAgBwohvqrukst++kx32d+paduyD9iPZrCimHFqPxFjuEPELd6j7o7Q+9ELrY6
         RUzVvHA4WTHgemuAK2+6HRSapT8a3Nch4yGwtQ2FZcKtoDC3Dr9Kj3pY4h/qkhmtHJpL
         KYeKk2rtHGpQwW1bIqCBHhHp+Gv9UC/DLQPGgIrRYXCJzBgzXQ6IZTZ608KkEuZ2YxL5
         /kIxWsZB8gl67jqKSbVP34VX148GDj+K2GGTbnlakTxozieFvQzPPA+parBjPTOXgjE2
         XsHJQQoJLwTPOXwa0y5ik3NgfaEETYDX912x6s5D0ASzTMEXCPD3Cf/juFo4tJ2mzwlr
         xzQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+bcD/CAAXV7lyNPV3QRgxAmLGFQtjxS5V6MhUGAQTGo=;
        b=ZlvKp95Db7q61BlRylRnR/UjCmGZa0hUR7ZnYEYjRJEHbW3YGMIWwywF1fgKf5YhOp
         VkhXR9rItStbEPgsqoluGNRJzqqxIp0rDnz6rKEI3mELA19uiLw+hwcLhPJE8k4VJn5C
         bhQNo/9gpLbAzZCX2YGNLcyZH+z06aSpNhBlGJT4KGq3SN+lw4hC4hNr7upVwUGR06Dp
         1UziF1Ks4zMINwbcLOkXhCcQkvHGyrMa1k8ykkggmPGe1LvakBwMAj6UmfXoUsPLb+ec
         JguRQOttuDQCrDJFQfX08hoe4LV/6aR8EWdf5ZlOR67DRoIWr38ln0XlRl6qAkEeq6U8
         7oaQ==
X-Gm-Message-State: AOAM5322J5GeFgE+NI4ighN2uHAEokcbM6xQ6HTnAo7N6Epa4t2x3V6O
        vrc7JAlOzkacc1qNvqtJ06A=
X-Google-Smtp-Source: ABdhPJyijR/eRLvEQ/ol/MBO40aPRhjsu5QPazk4ZLlz2mySjhCA6HuHEWQ+35KGye5dRPfmq7qzAw==
X-Received: by 2002:adf:f6cd:: with SMTP id y13mr7139426wrp.161.1601715319616;
        Sat, 03 Oct 2020 01:55:19 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id b64sm4639194wmh.13.2020.10.03.01.55.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 01:55:18 -0700 (PDT)
Subject: Re: [PATCH v4 1/2] system_data_types.7: Add 'void *'
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org,
        gcc-patches@gcc.gnu.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, jwakely.gcc@gmail.com,
        David.Laight@ACULAB.COM
References: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
 <20201002151419.32053-2-colomar.6.4.3@gmail.com>
 <3941e130-df05-778b-dc76-90cd58400192@cs.ucla.edu>
 <d794a058-0506-7c3c-6f3e-518a788933af@gmail.com>
 <ff1700df-d383-44e7-24b4-da10000f83fc@cs.ucla.edu>
 <5b01a17e-5819-115f-7972-7f849d4356df@gmail.com>
 <78368866-e848-d208-eef7-f3a93a797853@gmail.com>
 <20201003074807.swdpnwaq2rzigadl@localhost.localdomain>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <97b1b0d8-1f87-ac68-2ae9-92c2681ac49a@gmail.com>
Date:   Sat, 3 Oct 2020 10:55:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201003074807.swdpnwaq2rzigadl@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael and Branden,

On 2020-10-03 09:48, G. Branden Robinson wrote:
> At 2020-10-03T09:10:14+0200, Michael Kerrisk (man-pages) wrote:
>> On 10/2/20 10:27 PM, Alejandro Colomar wrote:
>>> On 2020-10-02 22:14, Paul Eggert wrote:
>>>   > On 10/2/20 11:38 AM, Alejandro Colomar wrote:
>>>   >
>>>   >> .I void *
>>>   >>
>>>   >> renders with a space in between.
>>>   >
>>>   > That's odd, as "man(7)" says "All of the arguments will be
>>>   > printed next to each other without intervening spaces". I'd play
>>>   > it safe and quote the arg anyway.
>>>
>>> Oops, that's a bug in man(7).  Don't worry about it.
>>
>> I'm not sure where that text in man(7) comes from. However, for
>> clarity I would normally also use quotes in this case.

Hi Michael and Branden,

Here is the offending line:

https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man7/man.7#n172

Thanks,

Alex

>>
>>> Michael, you might want to have a look at it.
>>>
>>> I'll also add Branden, who might have something to say about it.
>>
>> Yes, maybe Branden can add some insight.
> 
> The "short" answer[1] is that I think Alex is correct; Paul's caution is
> unwarranted and arises from confusion with the font alternation macros
> of the man(7) macro package.  Examples of the latter are .BI and .BR.
> Those set their even-numbered arguments in one font and odd-numbered
> arguments in another, with no space between them.  That suppression of
> space is the reason they exist.  With the "single-font" macros like .B
> and .I[2], if you don't want space, don't type it.
> 
> I could say more, including an annotated explanation of the groff and
> Version 7 Unix man(7) implementations of the I macro, if desired.  :)
> 
> Regards,
> Branden
> 
> [1] since as everyone knows, I struggle with brevity
> [2] I (and others) discourage use of .SM and .SB because they can't be
> distinguished from ordinary roman and bold type, respectively, on
> terminals.
> 
