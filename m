Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09A0F3FA1FF
	for <lists+linux-man@lfdr.de>; Sat, 28 Aug 2021 02:01:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232547AbhH1ACc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Aug 2021 20:02:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232354AbhH1ACb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Aug 2021 20:02:31 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34C40C0613D9
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 17:01:42 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id l7-20020a1c2507000000b002e6be5d86b3so5366404wml.3
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 17:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xP6XrrnoC/rdVkN0GpAIiIHA5/ku/ZHCFMCzHiwH/Vs=;
        b=FS7g94Et0C7Ran4fqnnr9Sa/Q/sAx5pYeDtIxHdTnctTfxj666uFrPiIV/Hu6ML4uP
         ejc38e8YyVFitlRTDnzDDZlVgZkRh4pkU/Tp5Y0btSwO/3PKmlFmjiOohZduoRetmMIY
         mh7ivB1X0pRVdV2yV+kuz0AHYUy2pidYSgH1ndofV790ksnvw7ggl4PqukKV8QxmYG8v
         M2WE835xWl+vV3dU3PcykwYTRFkHtpzqtGAauxlAVvEVPt78PzEii7mjM9h3MkNpVMrp
         njQvWic/cN6MAEOF/COcQoPggM3vR7lPfuz9trQl/4GqbWiAYMWhzm2T/2Y4wR6GoPDo
         zy8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xP6XrrnoC/rdVkN0GpAIiIHA5/ku/ZHCFMCzHiwH/Vs=;
        b=PHpr81yWUKCqEebOHHb7EHwyOe9B/1UstkUkf4uaPKtWzdmcfKcI8RI2yMFyipRxM8
         Bs4NffHFolilAEH9aCYgjpGTGilqQbYHNlja0BlTI0l3+4CAEXEzqYThpLwPD/2w6avL
         SEaQds0EwXNOT3wiKvSfU4IDwmF+QrkjrL+p72J2tNmIVBvtThEGEV3tt+liBcJm9xJI
         UUeJlNpkk5rKpOI1dGL5gztb1h+oDoNYRzGk9jlBXaO5DT75oJrbIXGB0kk3WdXhAoX7
         FIrpsmFYYEHWnSMEAAL7CPUu812MPMLye+NWJzNcwxZRO/70K9rYedlYwPzVv8vxeVXP
         HxPA==
X-Gm-Message-State: AOAM5312MLs3wfKhEK6gQeoeQfg2/gemJuTVrLCaLdTE6EFgb/4tzObz
        E7Kt1SFfSga3+QcYq6J2mhs=
X-Google-Smtp-Source: ABdhPJxW1MYjdRx197eyuSxdwkhBaO5vrR62KZlOk1m7bY9MsLe42swg8ZaZS6v0XoXHKNn58Io7RA==
X-Received: by 2002:a1c:7c0e:: with SMTP id x14mr13022506wmc.30.1630108900865;
        Fri, 27 Aug 2021 17:01:40 -0700 (PDT)
Received: from [10.8.0.50] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id s7sm7725192wra.75.2021.08.27.17.01.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 17:01:40 -0700 (PDT)
Subject: Re: Error in 'man operator'
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     David Sletten <david.paul.sletten@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <4cc4d818-58ad-529e-dd25-df3cb0fae66d@gmail.com>
 <71c78812-940e-8c15-c9ae-0dcde955232d@gmail.com>
Message-ID: <40cbdcb1-1356-b749-ed53-61ed9dc2dd2e@gmail.com>
Date:   Sat, 28 Aug 2021 02:01:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <71c78812-940e-8c15-c9ae-0dcde955232d@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi David,

On 8/28/21 1:39 AM, Alejandro Colomar (man-pages) wrote:
> Hi,
> 
> On 8/27/21 8:11 PM, David Sletten wrote:
>> Hi,
>>
>> I've run across what I believe is a minor error in the man page for C 
>> operators (https://man7.org/linux/man-pages/man7/operator.7.html ).
>>
>> The man page lists casting in the 2nd row of the table:
>>
>>         Operator Associativity   Notes
>>         () [] -> . ++ --                    left to right [1]
>>         ! ~ ++ -- + - (type) * & sizeof     right to left [2]
>>         * / %                               left to right
>>
>> However, in "C A Reference Manual" (5th ed.), table 7-3 on pg. 205 
>> shows that all of the operators in row 2 above have a precedence of 15 
>> except for casts which have a precedence of 14. Consequently, the man 
>> page should display casts as the (new) 3rd row in the table above.
>>
>> Thanks for your effort in maintaining this documentation.
>>
> 
> Reviewing the standard (C18), "C A Reference Manual" seems to be right. 
>   Unary operators are mentioned in C18::6.5.3, and casts are in 
> C18::6.5.4 (they are mentioned in order of precedence).
> 
> I also noticed that we're missing compound literals in the first row. 
> And we're also missing _Alignof() in the second row.
> However, since all of those use parentheses (and braces),
> there's no doubt in their precedence, so I'll ignore them for now.
> 
> And for some reason they are in a different order from the one in the 
> standard, which makes it a bit difficult to correlate what is in the 
> manual page and what is in the standard, so I think reordering them 
> inside the rows will also be an improvement.

There seems to be a note in the standard that implies that casts have 
effectively the same precedence as the unary operators (I don't know why 
they would have decided to define it in a separate major subsection; 
maybe it was easier to write the differences in that way).

See the standard: (Note 86 in C18::6.5):

> 86)The syntax specifies the precedence of operators in the evaluation of an expression, which is the same as the order of themajor subclauses of this subclause, highest precedence first. Thus, for example, the expressions allowed as the operandsof the binary+operator (6.5.6) are those expressions defined in 6.5.1 through 6.5.6.  The exceptions are cast expressions(6.5.4) as operands of unary operators (6.5.3), and an operand contained between any of the following pairs of operators:grouping parentheses()(6.5.1), subscripting brackets[](6.5.2.1), function-call parentheses()(6.5.2.2), and the conditionaloperator?:(6.5.15).Within each major subclause, the operators have the same precedence.  Left- or right-associativity is indicated in eachsubclause by the syntax for the expressions discussed therein


That makes sense, since the cast operator really is unary (it applies to 
a "unary expression") and since it and all of the so-called unary 
operators and right-to-left associativity, I can't imagine of an 
expression where that different precedence would matter.

I mean:
!(int)x
(int)!x

The precedence doesn't matter there, as they apply one after the other, 
right to left.

So, I'll keep casts in row 2.

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
