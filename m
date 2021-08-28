Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E24FF3FA20D
	for <lists+linux-man@lfdr.de>; Sat, 28 Aug 2021 02:08:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232720AbhH1AJh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Aug 2021 20:09:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232748AbhH1AJh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Aug 2021 20:09:37 -0400
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com [IPv6:2607:f8b0:4864:20::f33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FAC6C0613D9
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 17:08:47 -0700 (PDT)
Received: by mail-qv1-xf33.google.com with SMTP id z2so4954234qvl.10
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 17:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=fAINUSVDS1a4NKQfg+aM0nLVJqzvEwKRHBQG+ghpJcA=;
        b=AEvAfgWsqzCtAC+Xo12twkfY/3m3z4vW8RXlNejg42jeUPKHhadV1U9wb2B94v6seo
         GlusFcfmj1VeyEHGRurWQjmzcpK0k5H5Fe7CC68Q2hvY2WqbeAeY4zvVZIO+IHwELVQM
         lrh9qNnEid6Zfd12jU8gxoR4P0GZzZ/sBFn0dH+zaaiCqHZ5hGhZTWAr8tMjlVdGa6zJ
         rvCS1HZC0fGSMhlb9zCxoQfgcZtF7paMzH+uG8z7dA0g2lzCwmehhGER2FyfLBNW+QQV
         dA0eqNCnhH6VqpIod7E9oqwK4tsc+IexTYsM+HFhqMq1HZ7OITQyAn6P+Sc4Yg8kuykO
         Dnyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=fAINUSVDS1a4NKQfg+aM0nLVJqzvEwKRHBQG+ghpJcA=;
        b=bjaqT0/WaZeVbDbYFeuB0HL/jr8jtGAS2Y5HGSFV+aEjoyNE+MrxKPzheWRkaFwekO
         lwtH1Aar5ZII67vDiGLdWpHT+6zNwb5Y/xK2Y20GBoTQefjGgBCmc+GfzMl0RtZ95u2p
         pvVx82vbgrmRwchhHRqHM6qbhyMTK0ljyL0Zc+X16kO/b06akK1x7FMx++2KIQ1iwSN6
         VIW88eHh1soxL+RJuHLUiJP/88SvbAHfJEVxhXDHTHv6c45/XwJxUCobGOeCzGOjOorv
         oCOBpySL3pAaTMXZ6o5jFJxoicOe91woDnNmF7133wC/tjyU2tnSitPYKYio0woQiadp
         d+Yg==
X-Gm-Message-State: AOAM533xwMnxx3FmxXYjWHxcons9C2zrbkRTHXSX9b1Cmcr8z+0o1rPW
        VcBi5m60gvt4EciIa7BJ/VDo/UrS9F74zA==
X-Google-Smtp-Source: ABdhPJwbMTeGHpkbWfWYvDkelaKeGkL38HpIaEYsmRPsULzO4uFsBmXqojNWMreOst/l3YjdPzQHRQ==
X-Received: by 2002:a05:6214:250f:: with SMTP id gf15mr12561191qvb.2.1630109326667;
        Fri, 27 Aug 2021 17:08:46 -0700 (PDT)
Received: from [192.168.1.18] (c-73-152-9-216.hsd1.va.comcast.net. [73.152.9.216])
        by smtp.gmail.com with ESMTPSA id x10sm4270835qto.41.2021.08.27.17.08.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 17:08:46 -0700 (PDT)
Subject: Re: Error in 'man operator'
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <4cc4d818-58ad-529e-dd25-df3cb0fae66d@gmail.com>
 <71c78812-940e-8c15-c9ae-0dcde955232d@gmail.com>
 <40cbdcb1-1356-b749-ed53-61ed9dc2dd2e@gmail.com>
From:   David Sletten <david.paul.sletten@gmail.com>
Message-ID: <8aa463b6-98e0-f68a-a834-c08fb8c406e0@gmail.com>
Date:   Fri, 27 Aug 2021 20:08:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <40cbdcb1-1356-b749-ed53-61ed9dc2dd2e@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

All right. I knew I wasn't on completely solid ground since I don't have 
the standard. Thanks for checking.

On 8/27/21 8:01 PM, Alejandro Colomar (man-pages) wrote:
> Hi David,
>
> On 8/28/21 1:39 AM, Alejandro Colomar (man-pages) wrote:
>> Hi,
>>
>> On 8/27/21 8:11 PM, David Sletten wrote:
>>> Hi,
>>>
>>> I've run across what I believe is a minor error in the man page for 
>>> C operators (https://man7.org/linux/man-pages/man7/operator.7.html ).
>>>
>>> The man page lists casting in the 2nd row of the table:
>>>
>>>         Operator Associativity   Notes
>>>         () [] -> . ++ --                    left to right [1]
>>>         ! ~ ++ -- + - (type) * & sizeof     right to left [2]
>>>         * / %                               left to right
>>>
>>> However, in "C A Reference Manual" (5th ed.), table 7-3 on pg. 205 
>>> shows that all of the operators in row 2 above have a precedence of 
>>> 15 except for casts which have a precedence of 14. Consequently, the 
>>> man page should display casts as the (new) 3rd row in the table above.
>>>
>>> Thanks for your effort in maintaining this documentation.
>>>
>>
>> Reviewing the standard (C18), "C A Reference Manual" seems to be 
>> right.   Unary operators are mentioned in C18::6.5.3, and casts are 
>> in C18::6.5.4 (they are mentioned in order of precedence).
>>
>> I also noticed that we're missing compound literals in the first row. 
>> And we're also missing _Alignof() in the second row.
>> However, since all of those use parentheses (and braces),
>> there's no doubt in their precedence, so I'll ignore them for now.
>>
>> And for some reason they are in a different order from the one in the 
>> standard, which makes it a bit difficult to correlate what is in the 
>> manual page and what is in the standard, so I think reordering them 
>> inside the rows will also be an improvement.
>
> There seems to be a note in the standard that implies that casts have 
> effectively the same precedence as the unary operators (I don't know 
> why they would have decided to define it in a separate major 
> subsection; maybe it was easier to write the differences in that way).
>
> See the standard: (Note 86 in C18::6.5):
>
>> 86)The syntax specifies the precedence of operators in the evaluation 
>> of an expression, which is the same as the order of themajor 
>> subclauses of this subclause, highest precedence first. Thus, for 
>> example, the expressions allowed as the operandsof the 
>> binary+operator (6.5.6) are those expressions defined in 6.5.1 
>> through 6.5.6.  The exceptions are cast expressions(6.5.4) as 
>> operands of unary operators (6.5.3), and an operand contained between 
>> any of the following pairs of operators:grouping 
>> parentheses()(6.5.1), subscripting brackets[](6.5.2.1), function-call 
>> parentheses()(6.5.2.2), and the conditionaloperator?:(6.5.15).Within 
>> each major subclause, the operators have the same precedence.  Left- 
>> or right-associativity is indicated in eachsubclause by the syntax 
>> for the expressions discussed therein
>
>
> That makes sense, since the cast operator really is unary (it applies 
> to a "unary expression") and since it and all of the so-called unary 
> operators and right-to-left associativity, I can't imagine of an 
> expression where that different precedence would matter.
>
> I mean:
> !(int)x
> (int)!x
>
> The precedence doesn't matter there, as they apply one after the 
> other, right to left.
>
> So, I'll keep casts in row 2.
>
> Cheers,
>
> Alex
>
-- 
Have all good days!
David Sletten

