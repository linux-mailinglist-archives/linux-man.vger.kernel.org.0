Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A14292823FA
	for <lists+linux-man@lfdr.de>; Sat,  3 Oct 2020 13:52:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725775AbgJCLwW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Oct 2020 07:52:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725770AbgJCLwW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Oct 2020 07:52:22 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61F7EC0613D0;
        Sat,  3 Oct 2020 04:52:22 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id k14so4632834edo.1;
        Sat, 03 Oct 2020 04:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9jUeJOkE+R9NG6baMFGsjz4iwRYo3Wny6Nrt0TprECc=;
        b=AFnUZKncE3UnzmRtTddgX9n7+Qu83RYhHWz9lfC2d70z8AMDCWuDYy1ttE0HJJr0/h
         2xItSWQpuA5ixgwnzyykRPXnfLsdYimEeA4WEhwl9lcB2i18WhM0NkBX1Yhkbwn/kOqx
         XydzukkojXd6WTvCYlXFi9ERttG8YY7mcNpw07j9KbL3w6Alpt75ktcxID/YTHgNPVLa
         GNFDUKDS4EXbpF5rp1eeA8foZy/Mz/7nZFbQBiud6/VgpGer+IYNOIlPMLxBbIvMq5/T
         8g32G+lZEbH9lPAjpYyG63DT92bMh/VlCkS8lpQbyzTlhxmZadrj1VwWPH22mMbuNp2D
         3eWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9jUeJOkE+R9NG6baMFGsjz4iwRYo3Wny6Nrt0TprECc=;
        b=do6p5EVnjW+Y35eg9t4/joPNt+jmUKktowiQ4g8D3PstM1pk0MOcNNlqY5OX3I2UhV
         Gu9uPJOxC7ol4PdaIVpf8/bY/iKQuuwIZhd01xb9pBQtQ8qOljVB+bEFes7cgt8KgH3u
         Thp/TSWarKXp3bGAnjox7/XNQbrYmG00uI1lcyITE8UhK1QA/TdhNXRykY07uDdLuLGD
         4PjIpPYbdvgalsAj5jrM2qwO07gwk7bTR8mAg9ud4qkM6QRY+9oos1T2QafKq2QodABD
         uxJA7jxCIUpwRpjA1FHiXmbMEhbHhpPUjQgvjI7AVDDWM7Ywi9PQrZ67l35c92tPkfkX
         WX4A==
X-Gm-Message-State: AOAM533a7xAOKlbXwWwP41zlPkgFlcrtdnE54GaWHHA1YODnkNyqZvdJ
        /NQoHc6TunapXs2Zd6ZGPNk=
X-Google-Smtp-Source: ABdhPJziFF3ELVq+4EAkPT4rZV3VGhexRs5C7ceVNwmKQQ+kAKFLTJbRmmzMHUAx92Gs6mKRbkhcig==
X-Received: by 2002:aa7:c98f:: with SMTP id c15mr7130761edt.200.1601725941130;
        Sat, 03 Oct 2020 04:52:21 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id qh12sm40040ejb.55.2020.10.03.04.52.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 04:52:20 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org,
        gcc-patches@gcc.gnu.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, jwakely.gcc@gmail.com,
        David.Laight@ACULAB.COM
Subject: Re: [PATCH v4 1/2] system_data_types.7: Add 'void *'
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
 <20201002151419.32053-2-colomar.6.4.3@gmail.com>
 <3941e130-df05-778b-dc76-90cd58400192@cs.ucla.edu>
 <d794a058-0506-7c3c-6f3e-518a788933af@gmail.com>
 <ff1700df-d383-44e7-24b4-da10000f83fc@cs.ucla.edu>
 <5b01a17e-5819-115f-7972-7f849d4356df@gmail.com>
 <78368866-e848-d208-eef7-f3a93a797853@gmail.com>
 <20201003074807.swdpnwaq2rzigadl@localhost.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0aa019cd-3b56-76fc-e4d5-5c7d1d8c8e56@gmail.com>
Date:   Sat, 3 Oct 2020 13:52:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201003074807.swdpnwaq2rzigadl@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/3/20 9:48 AM, G. Branden Robinson wrote:
> At 2020-10-03T09:10:14+0200, Michael Kerrisk (man-pages) wrote:
>> On 10/2/20 10:27 PM, Alejandro Colomar wrote:
>>> On 2020-10-02 22:14, Paul Eggert wrote:
>>>  > On 10/2/20 11:38 AM, Alejandro Colomar wrote:
>>>  >
>>>  >> .I void *
>>>  >>
>>>  >> renders with a space in between.
>>>  >
>>>  > That's odd, as "man(7)" says "All of the arguments will be
>>>  > printed next to each other without intervening spaces". I'd play
>>>  > it safe and quote the arg anyway.
>>>
>>> Oops, that's a bug in man(7).  Don't worry about it.
>>
>> I'm not sure where that text in man(7) comes from. However, for
>> clarity I would normally also use quotes in this case.
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

So, perhaps change:

       All  of the arguments will be printed next to each
       other without intervening spaces, so that  the  .BR  command
       can  be used to specify a word in bold followed by a mark of
       punctuation in Roman.

to:

       For the macros that produce alternating type faces,
       the arguments will be printed next to each
       other without intervening spaces, so that  the  .BR  command
       can  be used to specify a word in bold followed by a mark of
       punctuation in Roman.

?

> [1] since as everyone knows, I struggle with brevity
> [2] I (and others) discourage use of .SM and .SB because they can't be
> distinguished from ordinary roman and bold type, respectively, on
> terminals.

So, do you think it's worth discouraging this in man(7)?

Thanks,

Michael
 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
