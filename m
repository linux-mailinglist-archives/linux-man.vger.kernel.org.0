Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40B6D407348
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:18:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234766AbhIJWTM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:19:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234747AbhIJWTJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:19:09 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9431CC061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:17:57 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id q11so4631219wrr.9
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VkjROX6/zDXS3ceS+VJH6IdLiFYJe46jA0lv+XwwYRI=;
        b=p6wKg9a6YXTy9Za7iIJg8bdwsubE22hXXZlJy9OvZxfRNluaqgMLMrq60b6SmlXtcT
         2hQtjb3omG8ze+IzYj7CTcuAJFMvtvR/ZaFNtKWlNLaFbKW/omG0agTXglYLIweCgGdN
         4EG80nRQoHid3aFPDuOSTL/1k6u7FZCrdmTTAsDZtiLzqAYbFMcQIYyYIfcbKCzrmYVT
         mM2NCQiIvvRClE90+qntlJ78gM7SbxDBejZPOCzU4xxDTjQOu3M9uB2Vzgz+wFP7tsJ3
         SrOmjMeqVtWipvkGKJkUkGEMNlMD6sZAGrnh5YFgsOUULRUJr1+0nd6oj2zeb9T9Lfkx
         6WYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VkjROX6/zDXS3ceS+VJH6IdLiFYJe46jA0lv+XwwYRI=;
        b=duSE56Sn51hCOgSU6kqOAhrKg9M7724Z30EBlmlvWR+DiTrVOew3Jhwq8qlYW+/lcL
         5qmpa9Yb05b/QE8xoYedJchaJuIzBQUTWesVTWsA+zVgEVpX7MpmeNBB2ya0ZGpgtSvf
         H1X1g8Ux2b2iOU8MY0JZ0bcq2iYCBPU92B8Qx3axvZPemllFfh+KBwAzJsXbMoeDNO0P
         62qZOyv5ttID5yBfHLR5YKw8aHL9J82Fx9C0jzCwYK/XDJShhYcr3lmSXKlONKIvurxq
         xHKLY5gRNpu6SwHjCOTA5BQIMoS/FjA3iyTMn6zvzYBEtuuU9xVetiqln928p6ssBIv9
         7kkA==
X-Gm-Message-State: AOAM532ISmJTPZkMMdCId5B91Ywwt2mcPik4I8g7y/m4bJ79dqjDDeBn
        jE0NllkydqHhdCRzeiShC7s=
X-Google-Smtp-Source: ABdhPJwJ5q0EOV+BEh5/wThd5UKYX1KkB22IUmI6JheLu+pTiTJH35WzpEVd4S7a5DESRLn4PwWPxA==
X-Received: by 2002:adf:9f4a:: with SMTP id f10mr2532wrg.384.1631312276222;
        Fri, 10 Sep 2021 15:17:56 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v12sm5989670wrm.7.2021.09.10.15.17.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 15:17:55 -0700 (PDT)
Subject: Re: [PATCH] termios.3: SPARC architecture has 4 different Bnnn
 constants
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210731145501.9944-1-pali@kernel.org>
 <20210801112229.w75qb3sggampa757@localhost.localdomain>
 <31c0e6d7-0b5c-19dd-bfcb-01e703ed2008@gmail.com>
 <20210804061425.yde647cvq3wy4stw@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <2d3423d2-43b6-1d32-425f-24fb7e050617@gmail.com>
Date:   Sat, 11 Sep 2021 00:17:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210804061425.yde647cvq3wy4stw@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Branden!

On 8/4/21 8:14 AM, G. Branden Robinson wrote:
> Hi, Alex!
> 
> At 2021-08-01T14:13:39+0200, Alejandro Colomar (man-pages) wrote:
>> On 8/1/21 1:22 PM, G. Branden Robinson wrote:
>> When I saw the patch, I had no idea what those .ft/.fi things do, and
>> guessed that they're correct based on existing context.  I think your
>> replacement suggestion below is better.
> 
> The 'ft' request changes the font (or style), and accepts exactly the
> same parameter as the \f font (style) escape.
> 
> The 'fi' request enables filling; 'nf' disables it.
> 
>>> Here's how I'd do that:
>>>
>>> .P
>>> On the SPARC architecture,
>>> the following additional constants are supported.
>>> .RS
>>> .TP
>>> .B B76800
>>> .TQ
>>> .B B153600
>>> .TQ
>>> .B B307200
>>> .TQ
>>> .B  B614400
>>> .RE
>>>
>>> Why would I do it this way?  I'm trying to keep the size of the
>>> language we ask man page writers to learn as small as possible, and
>>> I especially try to keep the number of *roff requests they have to
>>> know as close to zero as possible.  There are already two ways to
>>> change fonts: through macros and escape sequences.  Personally, I'd
>>> like to protect casual man page writers from having to learn the
>>> third.  (And, again, outside of tbl(1) tables, I'd prefer they not
>>> have to know the second [escapes].)
>>
>> Can you please send a more detailed email about what the current
>> implementation does and how compatible is the solution and any
>> differences there may be (if any)?
> 
> Sure, I'll mark 'em up like assembly.  I hope your mail reader uses a
> monospaced/fixed-width font.
> 
> .fi			\" enable filling[1] of text
> .PP			\" man(7) paragraphing macro; see groff_man(7)
> On SPARC architecture	\" text line
> .PP			\" man(7) paragraphing macro; see groff_man(7)
> .nf			\" disable filling of text
> .ft B			\" change font to style "B"
> 	B76800		\" text line using literal tab
> 	B153600		\" ditto
> 	B307200		\" ditto
> 	B614400		\" ditto
> .ft P			\" change font to "previous" selection
> .fi			\" enable filling[1] of text
> 
> Here's how I define filling in the groff Texinfo manual; many other
> sources define it equivalently.
> 
>      GNU 'troff' reads its input character by character, collecting words
>   as it goes, and fits as many words together on an output line as it
>   can--this is known as "filling".  To GNU 'troff', a "word" is any
>   sequence of one or more characters that aren't spaces, tabs, or
>   newlines.  Words are separated by spaces, tabs, newlines, or file
>   boundaries.(2)  (*note Filling-Footnote-2::) To disable filling, see
>   *note Manipulating Filling and Adjustment::.
> 
> I try to avoid use of tab characters in man page sources, except to
> separate columns in tbl(1) input.  I prefer to use the relative inset
> feature (.RS/.RE) because the default size of a relative inset is a
> configurable parameter.  (And if must be a certain value, it can be set
> as the argument to the RS macro.)
> 
> .P			\" man(7) paragraphing macro; see groff_man(7)
> On the SPARC[...]
> the following[...]
> .RS			\" begin relative inset
> .TP			\" begin tagged paragraph
> .B B76800		\" set argument in bold style
> .TQ			\" declare additional paragraph tag
> .B B153600		\" [repeat previous two lines]
> .TQ			\"
> .B B307200		\"
> .TQ			\"
> .B  B614400		\"
> .RE			\" end relative inset.

Yes, I prefer this way.

I'm sorry I forgot to answer to this email.  There may be others also...
If I forgot to address anything important, feel free to ping me :)

Cheers,

Alex

> 
> .RS and .RE are used with timidity by man page authors; I think it is
> because they are ill-understood.  It is certainly not because they are
> new; like .B and .TP they date back to the original 1979 man(7)
> implementation.  Even .P is "new", dating to Unix System III in 1980.
> .TQ is the real newcomer, introduced to groff in January 2007.  Like
> .TP, it's somewhat semantic.
> 
>> I'd like to be able to fix that.
> 
> Let me know if I can shed more light on things.
> 
> Regards,
> Branden
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
