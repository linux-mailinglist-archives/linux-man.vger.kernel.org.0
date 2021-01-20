Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69DD52FD0AB
	for <lists+linux-man@lfdr.de>; Wed, 20 Jan 2021 13:59:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728913AbhATMs3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jan 2021 07:48:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729214AbhATLcv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Jan 2021 06:32:51 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC777C061575
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 03:32:10 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id y187so2528009wmd.3
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 03:32:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DMoKrjmMPCdVDh9kXWZi0duZlHbpiPyjX+TaPSP3Azg=;
        b=r/eXiKYk8MaRiU2rF1dfiWQsaUqZF0uQuKwJO9dzj3JAz2yrJNBmdoK2j1ViHul3uO
         i0arL2gRbUPBre2dPM04O5LzMDwLOpuvn4S9qJbeQtP0faglxd9eJtI0IBEMsWW6kf4g
         vyd7XD7juhI7DqotqbTyOmmLDod0m+lsyVYL5fbJ3SgLVw1m1Jama13SBWMyzaL7W/mP
         EMFh4JdjSR9h0vFbeL9EVFVgNg0DCkUJ7Rw2TsSqPHG8hGUseGr2oQU3KlPB38lvkBlt
         QsB0qsXDRnb+e8N2kSHS/14kKhxi4w9rBvDO4emtkNZnUDxbVrRUz4NQNpDQP4vJehaL
         hdgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DMoKrjmMPCdVDh9kXWZi0duZlHbpiPyjX+TaPSP3Azg=;
        b=DLjy60YKsdGY4UFAaqswF6TGEj1rnXh96dNrIJgK40WCTszdGGmB11E5zV1zIzTLN+
         Bz9U/R0q3DpC/u03UGfTr8Tjsd+0Ycn3234XwQEcmCaRMXZm81VFb/mG541SJKykA87Q
         SzZgTd/WV++7VbI7Xdb9leE//HVs3Kjubr6/0ASwLH3JkeiMGvhUisXx8VPs4gEIdCit
         pcn9fO4aS9E9S30CNDtNnMsG2IWcm7Ixc5ELf8tqJ9jVZUST+uoQYW8CXo8VQof4Q1cT
         s7tSOejWn3FEo7Gc2T3NQp0f/i+UqM/3RG6Ty0TFgnmjiXxHEIzVMCcjhuOezNbodTMk
         3Mow==
X-Gm-Message-State: AOAM530i/4DU1Y3BiW0uX+w5ntd+t40jfi2rZq4h45boDHwWgoL1640D
        vERlHno15a7lp7Ffqq1rHf2YBXufq+U=
X-Google-Smtp-Source: ABdhPJyGRPM1RTHoO3XZhMyCFXU7cpLMn7JHekQYX8MzPws2L4o8iQumZke4dlVb4JAXHBwVLRQo7w==
X-Received: by 2002:a05:600c:2105:: with SMTP id u5mr3828416wml.129.1611142329314;
        Wed, 20 Jan 2021 03:32:09 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id z8sm3253911wmi.44.2021.01.20.03.32.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 03:32:08 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Eric Dumazet <edumazet@google.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: Documentation revision for TCP_USER_TIMEOUT in man7/tcp7
To:     Enke Chen <enkechen2020@gmail.com>
References: <20210109051946.GA4015@localhost.localdomain>
 <CAKgNAkiNyPyUWrEZEW_uvi9LJ41YEwRzQ+qkehDRWMcFOeZAGw@mail.gmail.com>
 <20210114192738.GA6021@localhost.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <217712f3-a44d-acf1-c8c6-9e349318c987@gmail.com>
Date:   Wed, 20 Jan 2021 12:32:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210114192738.GA6021@localhost.localdomain>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/14/21 8:27 PM, Enke Chen wrote:
> Hello Michael:
> 
> It is the latter, better documentation of longstanding behavior.
> 
> There is a bug, however, that broke the functionality two years ago.
> The bug is being fixed.

Thanks for the info, Enke. I've applied the patch.

Cheers,

Michael

> On Thu, Jan 14, 2021 at 01:08:26PM +0100, Michael Kerrisk (man-pages) wrote:
>> Hello Enke (and Eric),
>>
>> Thank you for the patch. Is this a change in behavior, or a better
>> documentation of longstanding behavior?
>>
>> Eric, do you have an Ack/Review for this patch?
>>
>> Thanks,
>>
>> Michael
>>
>> On Sat, 9 Jan 2021 at 06:21, Enke Chen <enkechen2020@gmail.com> wrote:
>>>
>>> diff --git a/man7/tcp.7 b/man7/tcp.7
>>> index 6c91f058b..2ce831c90 100644
>>> --- a/man7/tcp.7
>>> +++ b/man7/tcp.7
>>> @@ -1161,7 +1161,8 @@ This option takes an
>>>  as an argument.
>>>  When the value is greater than 0,
>>>  it specifies the maximum amount of time in milliseconds that transmitted
>>> -data may remain unacknowledged before TCP will forcibly close the
>>> +data may remain unacknowledged, or bufferred data may remain untransmitted
>>> +(due to zero window size) before TCP will forcibly close the
>>>  corresponding connection and return
>>>  .B ETIMEDOUT
>>>  to the application.
>>
>>
>>
>> -- 
>> Michael Kerrisk
>> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
>> Linux/UNIX System Programming Training: http://man7.org/training/


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
