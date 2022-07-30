Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E40F585B75
	for <lists+linux-man@lfdr.de>; Sat, 30 Jul 2022 19:53:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234456AbiG3Rxy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 30 Jul 2022 13:53:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229742AbiG3Rxx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 30 Jul 2022 13:53:53 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB0B515735
        for <linux-man@vger.kernel.org>; Sat, 30 Jul 2022 10:53:51 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id b21-20020a05600c4e1500b003a32bc8612fso3806932wmq.3
        for <linux-man@vger.kernel.org>; Sat, 30 Jul 2022 10:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=5Nt7NfxZA9V9/E5h2oJQ1head9Eg8wcER0WDogaCnU0=;
        b=ApgOK2Lh9E6dAp8byT0/Oz1t0yES/XNYhMchEvRyIm2ebNrdYyGjjm6N/20sGrnTzs
         81LG8ZxiY+kIbbXH/vwMOjmKKjQ8eqD36BjZDgyysF1gxEFqYbWgReMV7W9PdnvR7BrH
         TobdzcisvXeId5W6+1lgnAjfSZuXMXv8S6w5zNbPv/6DzKTc5ietY7OqsWOW7KgNu9um
         Egn2w/xmA/xUrqKfBXkt1+i6wMK58+NjABaDmGEjDi4CuVXGMb3xOdwYU4Wx5NfdFyiW
         NfgoH1xCY5VqRsa+Z6xCerTpX1bzROtX+WyLub8j+3ZsMArmnMZ46mUMNkFKCmtXI/7m
         P9GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=5Nt7NfxZA9V9/E5h2oJQ1head9Eg8wcER0WDogaCnU0=;
        b=3Swhifyovz6NeBQUBqQ4MuKzPCZf9wO+yAv+swexJSSaZqmSJVDDrW97mFur6WhUkv
         9XDgHcpyy7gEGZkiC2WGRmXEKNUXd2uPTsIf23aBOh/JKHw7Cn/UM/wswCk/H3B5t1NA
         6M8xJwPczdRUzYee4DISXgCbm9SrPbPSRoQEjT/P561P4CSM23IUjFltAm3UwTq5NnQZ
         YNjuHNKhfNEBs5FFiowCJ0+v3rafOU3swNywqAiOJnzRQK/PG8cUJxF+OmuphpORmTTL
         NLcRD4SVvqCAMB8HorySIid79tA9jiMgmFd2437hmqWDGaLbtJwMtwzfY6bJtkIlq0N2
         eU9g==
X-Gm-Message-State: AJIora82ueZV8nSkylBYHQ4QI8bKdjQQLTEKE8hh/gVBMK4WF+GzZE6H
        sRTt2HH/MkkJeHxNxKIcd1c=
X-Google-Smtp-Source: AGRyM1tDrPWGGTR1NB1ikwkgYVpGvj4IqacSQ9SApdSqGdrQSvLsMMOrAScFVF9Qc3Z7tidbaR7rEw==
X-Received: by 2002:a05:600c:3d88:b0:3a3:63ad:c592 with SMTP id bi8-20020a05600c3d8800b003a363adc592mr6173846wmb.71.1659203630346;
        Sat, 30 Jul 2022 10:53:50 -0700 (PDT)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n5-20020a05600c3b8500b003a03185231bsm2588464wms.31.2022.07.30.10.53.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Jul 2022 10:53:49 -0700 (PDT)
Message-ID: <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
Date:   Sat, 30 Jul 2022 19:53:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 4/6] xattr.7: wfix
Content-Language: en-US
To:     =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220729114506.1669153-4-stepnem@gmail.com>
 <20220729205823.lcy4fbezlw32owgu@illithid>
 <20220730161521+0200.203910-stepnem@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220730161521+0200.203910-stepnem@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Štěpán and Branden!

On 7/30/22 16:15, Štěpán Němec wrote:
> 
> Hello Branden,
> 
> On Fri, 29 Jul 2022 15:58:23 -0500
> G. Branden Robinson wrote:
> 
>>> -The VFS imposes limitations that an attribute names is limited to 255 bytes
>>> -and an attribute value is limited to 64\ kB.
>>> +The VFS-imposed limits on attribute names and values are 255 bytes
>>> +and 64\ kB, respectively.
>>
>> While you're tidying this up, I would convert the `\ ` escape sequence
>> to `\~`.  Both are non-breaking spaces, but the latter is adjustable.
>>
>> groff_man(7) from groff 1.22.4 says:
>>
>>   \~     Adjustable, non-breaking space character.  Use  this  escape  to
>>          prevent  a  break  inside  a short phrase or between a numerical
>>          quantity and its corresponding unit(s).
>>
>>                 Before starting the motor, set the output speed to\~1.
>>                 There are 1,024\~bytes in 1\~kiB.
>>                 CSTR\~#8 documents the B language.
> 
> Thank you for the review!
> 
> I think I disagree: IMO a number+unit should be treated as a single
> entity both semantically/logically and typographically (at least as far
> as space stretching goes), i.e., say (if I understand the effect of '\ '
> and '\~' right),
> 
>    255 bytes               and                64 kB,          respectively.
> 
> would make a bit more sense to me than
> 
>    255        bytes        and         64         kB,         respectively.
> 
> Current Linux man-pages usage doesn't appear quite consistent, but '\ '
> prevails over '\~' (about 6:1), and my cursory grep found only one
> instance of '\~' used between a number and its unit

Would you mind sensing a patch for that one between the number and its unit?

> (vs. many instances
> of '\ ' in that context).

That is just a matter of writers not knowing the existence of \~ ('\ ' 
was documented in man-pages(7), but \~ wasn't).  I wouldn't give much 
more importance to existing practice in this regard.

When I read this email I had no strong opinion; both variants made sense 
to me.  So I did some investigation, to see if the SI already specifies 
something about it; and it does:

<https://www.bipm.org/en/publications/si-brochure/>:

[
5.2 Unit symbols

Unit symbols are printed in upright type regardless of the type used in 
the surrounding text.  They are printed in lower-case letters unless 
they are derived from a proper name, in which case the first letter is a 
capital letter.

An exception, adopted by the 16th CGPM (1979, Resolution 6), is that 
either capital L or lower-case l is allowed for the litre, in order to 
avoid possible confusion between the numeral 1 (one) and the lower-case 
letter l (el).

A multiple or sub-multiple prefix, if used, is part of the unit and 
precedes the unit symbol without a separator.  A prefix is never used in 
isolation and compound prefixes are never used.

Unit symbols are mathematical entities and not abbreviations. Therefore, 
they are not followed by a period except at the end of a sentence, and 
one must neither use the plural nor mix unit symbols and unit names 
within one expression, since names are not mathematical entities.

In forming products and quotients of unit symbols the normal rules of 
algebraic multiplication or division apply.  Multiplication must be 
indicated by a space or a half-high (centred) dot (⋅), since otherwise 
some prefixes could be misinterpreted as a unit symbol.  Division is 
indicated by a horizontal line, by a solidus (oblique stroke, /) or by 
negative exponents.  When several unit symbols are combined, care should 
be taken to avoid ambiguities, for example by using brackets or negative 
exponents.  A solidus must not be used more than once in a given 
expression without brackets to remove ambiguities.

It is not permissible to use abbreviations for unit symbols or unit 
names, such as sec (for either s or second), sq. mm (for either mm2 or 
square millimetre), cc (for either cm3 or cubic centimetre), or mps (for 
either m/s or metre per second).  The use of the correct symbols for
SI units, and for units in general, as listed in earlier chapters of 
this broch ure, is mandatory.  In this way ambiguities and 
misunderstandings in the values of quantities are avoided.
]

[
5.4.3 Formatting the value of a quantity

The numerical value always precedes the unit and a space is always used 
to separate the unit from the number.  Thus the value of the quantity is 
the product of the number and the unit.  The space between the number 
and the unit is regarded as a multiplication sign (just as a space 
between units implies multiplication).  The only exceptions to this rule 
  are for the unit symbols for degree, minute and second for plane 
angle, °, ′ and ′′, respectively, for which no space is left between the 
  numerical value and the unit symbol.

This rule means that the symbol °C for the degree Celsius is preceded by 
a space when one expresses values of Celsius temperature t.

Even when the value of a quantity is used as an adjective, a space is 
left between the numerical value and the unit symbol.  Only when the 
name of the unit is spelled out would the  ordinary rules of grammar 
apply, so that in English a hyphen would be used to separate the number 
from the unit.

In any expression, only one unit is used. An exception to this rule is 
in expressing the values of time and of plane angles using non-SI units. 
  However, for plane angles it is generally preferable to divide the 
degree decimally.  It is  therefore preferable to write 22.20° rather 
than 22° 12′, except in  fields such as navigation, cartography, 
astronomy, and in the measurement of very small angles.
]

Sorry for copying the full text, but I preferred to give enough context.

So, from the SI text quoted above, the space is not a word separator in 
that context (it is for example not allowed to hyphenate between the 
value and the unit even if it acts as an adjective; the SI disables 
normal language rules).  It is instead a mathematical symbol denoting 
multiplication, and the whole value+unit is a single mathematical 
expression; to me, that is better denoted with a single space, rather 
than an adjustable one.

Therefore, I'd say that it makes more sense in this case to use '\ '.

> 
> In view of the above, failing any instruction from a man-pages
> maintainer to the contrary, I'd prefer leaving this as is.

In the general case, I prefer \~, but for value+unit I prefer '\ '.
Thank you both!

> 
>    With best wishes,
> 
>    Štěpán

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
