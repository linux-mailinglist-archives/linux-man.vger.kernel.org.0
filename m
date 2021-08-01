Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C8B23DCB8B
	for <lists+linux-man@lfdr.de>; Sun,  1 Aug 2021 14:13:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231461AbhHAMNu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Aug 2021 08:13:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231527AbhHAMNu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Aug 2021 08:13:50 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 693CAC06175F
        for <linux-man@vger.kernel.org>; Sun,  1 Aug 2021 05:13:42 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id b128so8737223wmb.4
        for <linux-man@vger.kernel.org>; Sun, 01 Aug 2021 05:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nycU/c3KnT5L4pMPVrrS4guC4FYecT2r88Kby2Nxmb8=;
        b=IzSaToIrYOq65Q7qShVduBPw1V9+PgXQC94GMGm6uosepK44EGrxDMFEZ7/R+fkoLP
         ELYC5s2BUQH/S+MrDJOPYFHZtsemcvEikAf1XRUj7hMMwbMFeZN9/8jPQhEo6ivsRBlN
         p/0B/acAX7YAGfbH70Bz/jzgQADxAZ/SagPTN99S/1hck4jRbv4nD4wDFMcwv7x3Rbxp
         04maEsZ50fTKKy2nk5ZC+tDXNfhpj6BNzJHL/spMPzJWNb9lMiw56YAAUavb30G7nAbi
         LW/aLjAIBGvM9Pi8eHEd8Ihx4wf68U5nklNUQssCTCkD0M9jmE2DeGH6YvRwjDOBcvrK
         xfig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nycU/c3KnT5L4pMPVrrS4guC4FYecT2r88Kby2Nxmb8=;
        b=HF2XEo1gDg2o/fXAB6cZV8rMY77YhJzPKnM/pREwEiwcmZESAgx1D2ugKgycQFZXfr
         NXdj8/2njEZIW0LM9v7J1E1Xp4fvKklgD1EkzGyec8RcdKG77MzuJHm18nT6amrux3y3
         eH8qW60lr2XSdtkEacpuxYz9UdYMNUbAAWjhQkJEb23LWH44OnyYS1segqsrsFxp+vYV
         efoYeIWCkkO0CobRTBJROn9R4VtHty6R59pUHdgn9j5ltFhvCBzuLqcG/I0xm7DxUgnc
         7ULGkPMF/tTFVpWhkwmsXRWu/Jz8P/LckS1jlwfx66d6mF5+R9Pn9XPfe1Gy0JC/3FcP
         Y4NA==
X-Gm-Message-State: AOAM532eKKCO+oT0cL+eLz72onWvRocf3YAZWeF/GNE57z1bYV29gNKj
        MkwR9vUd93fOzSMSIO+EZ0w=
X-Google-Smtp-Source: ABdhPJztGv+755DbtbR5F+ZiKTMZMBGUZjYSFyO7VSLDy3fIvZ10rlDAwZImxUkeJGLhzjNoHsFw2Q==
X-Received: by 2002:a1c:cc1a:: with SMTP id h26mr11865906wmb.47.1627820020995;
        Sun, 01 Aug 2021 05:13:40 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id c12sm7956996wrm.29.2021.08.01.05.13.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Aug 2021 05:13:40 -0700 (PDT)
Subject: Re: [PATCH] termios.3: SPARC architecture has 4 different Bnnn
 constants
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210731145501.9944-1-pali@kernel.org>
 <20210801112229.w75qb3sggampa757@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <31c0e6d7-0b5c-19dd-bfcb-01e703ed2008@gmail.com>
Date:   Sun, 1 Aug 2021 14:13:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210801112229.w75qb3sggampa757@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Branden, Pali,

On 8/1/21 1:22 PM, G. Branden Robinson wrote:
> Hi, Pali!
> 
> At 2021-07-31T16:55:01+0200, Pali Rohár wrote:
>> SPARC is special, it does not have Bnnn constants for baud rates above
>> 2000000. Instead it defines 4 Bnnn constants with smaller baud rates.
>>
>> This difference between SPARC and non-SPARC architectures is present
>> in both glibc API (termios.h) and also kernel ioctl API
>> (asm/termbits.h).
> [...]
>>   	B1500000
>>   	B2000000
>> +.ft P
> 
> I see you're following existing termios(3) page practice here, so this
> feedback may be more for Alex and Michael than you; it's not a
> criticism.
> 
> I would discourage the use of the *roff 'ft' request in man pages.
> Here, it is redunant because the following PP macro will set the font
> style back to roman anyway.
> 
> I also discourage the use of tab characters in man page sources (outside
> of tbl(1) tables).
> 
> I'll show my recommendation in a few lines.

Agreed.

When I saw the patch, I had no idea what those .ft/.fi things do, and 
guessed that they're correct based on existing context.  I think your 
replacement suggestion below is better.

> 
>> +.fi
>> +.PP
>> +On SPARC architecture are additionally supported these constants:
>> +.PP
>> +.nf
>> +.ft B
>> +	B76800
>> +	B153600
>> +	B307200
>> +	B614400
>> +.ft P
>> +.fi
> 
> Here's how I'd do that:
> 
> .P
> On the SPARC architecture,
> the following additional constants are supported.
> .RS
> .TP
> .B B76800
> .TQ
> .B B153600
> .TQ
> .B B307200
> .TQ
> .B  B614400
> .RE
> 
> Why would I do it this way?  I'm trying to keep the size of the language
> we ask man page writers to learn as small as possible, and I especially
> try to keep the number of *roff requests they have to know as close to
> zero as possible.  There are already two ways to change fonts: through
> macros and escape sequences.  Personally, I'd like to protect casual man
> page writers from having to learn the third.  (And, again, outside of
> tbl(1) tables, I'd prefer they not have to know the second [escapes].)

Can you please send a more detailed email about what the current 
implementation does and how compatible is the solution and any 
differences there may be (if any)?

I'd like to be able to fix that.

Pali, you don't need to fix your patch (except for the wording issues I 
pointed out).  In fact I prefer that you don't in this case, so the 
changes are separate.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
