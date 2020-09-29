Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7231127CEAD
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 15:12:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729734AbgI2NML (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 09:12:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729517AbgI2NML (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 09:12:11 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99261C061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 06:12:10 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id s12so5305873wrw.11
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 06:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=917IHyKS1XDYK7XBbZQ0qmWwSEzJFGCOLUM+a4FKitM=;
        b=VGvKDYVi0BfWmJJhGVwunDLamsQ/gGc2VbQIeiVVkIsHui5ZSu6xFsEnOFvifVzq4U
         nvglO/v8w6N5urShg8aR2a9lkXZTJK+Cgxnw8d9riQoqzysAlCbZ++q3LMEKLhGWa6IA
         9wpfoufngM9wL4hWv2Fz/YMXIVyLSOs0cixDRB91Hg9XYGZzOUxYWmphazaeJjBx6Wa0
         s90cVbtcMT9TAPumVlKUtbpV9hkq1p8Zq7jtB1RiPzRWUAWYKNDyY6XsV1v4++xhvLT2
         nwajhiYEKdnx0tBZDZVL4q9BwfLjWf/+ETEb5BnW9aUMo6S5/hDMrQ1XxiEqVGgpcLeM
         Fmfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=917IHyKS1XDYK7XBbZQ0qmWwSEzJFGCOLUM+a4FKitM=;
        b=dBNgHzkMfHoNCsqT1lRAxM/RgiScUlzcGKu8X268AeKDUchyNCXDZozZG6QJaMFSdA
         g9wAQMsQqnkCe/Ji6KTLnmQ7d4G55fghPYAdVTIoepzADt7hyeZBA3z4r9yePffgDfFs
         z8cihBDPPq8uNdSJQiXk8CaDCRSMYTXzo+xhjeJfDVXisOdVg63l+8mV9VRC1CA/fzbQ
         j+NULQHoYOPP9/d5C0IKq3r9GwJlfOUmoMIgvg8MOMtYhAnQG4O0tcreWKmTSYzInj64
         97gMJ5ZsBWE71jBtha216hVwldyEeyeu8gEG52TzIWuFSVsevFUJsp2H/4/b4FgwOYkQ
         bjuA==
X-Gm-Message-State: AOAM530g3rIbu1K9Dv9q3uYfmRzJEgoFFwE6S3/2Z8m74UsegxqECKHV
        Dzt4cdtCqsB9jzQI77XGQgVfX2qRk2A=
X-Google-Smtp-Source: ABdhPJzjNSmeXDxgipg5FKzPQkgl6KhBXXAwWr0zaOEdN8kUcKwOySVJXtwJtqTkFf6UWu2NvkstWg==
X-Received: by 2002:a5d:55c8:: with SMTP id i8mr4331879wrw.331.1601385128926;
        Tue, 29 Sep 2020 06:12:08 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id i15sm6258750wrb.91.2020.09.29.06.12.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 06:12:08 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: man-pages.7: Simplify indentation of structure definitions, shell
 session logs, and so on
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20200920214012.454410-1-colomar.6.4.3@gmail.com>
 <61f4e2a4-d468-ceba-2ccf-ce0c061aa20b@gmail.com>
 <f70c7f62-9d61-71aa-67cf-43501a29bccc@gmail.com>
 <CAKgNAki7=AJ7p2AwPkf9+4AkYKdOL6b4D0NyVdwZzu-qHFvGiA@mail.gmail.com>
 <20200921141552.tpuhdxo24lc6e7dh@localhost.localdomain>
 <3814ebff-9ce7-ca81-25a7-427d0d255342@gmail.com>
 <20200927060319.lhyctckcnk6mtuas@localhost.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f4180fa9-2154-53ee-b29b-580d4d1dc662@gmail.com>
Date:   Tue, 29 Sep 2020 15:12:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200927060319.lhyctckcnk6mtuas@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/27/20 8:03 AM, G. Branden Robinson wrote:
> At 2020-09-24T10:15:31+0200, Michael Kerrisk (man-pages) wrote:
>> On 9/21/20 4:15 PM, G. Branden Robinson wrote:
> [much snippage]
>>> In my opinion, .in requests are never necessary in idiomatic,
>>> well-written man pages and I'm happy to offer technical advice for
>>> how to achieve the desired result without using them.
>>
>> So, I don't disagree with you. (And as ever, thank you for your
>> detailed input.) The pattern I use above (with ".in +4n/.in" was a
>> hack that I cam up with to get code blocks with a "suitable"
>> indent. Your suggestion of ".RS 4/.RE" (in your patch, which I've
>> quoted inline below), does seem better. I'm not averse to changing
>> things. But, there is a related question. I use a similar hack in
>> the SYNOPSIS of many pages (e.g., chmod.2), to undent a single
>> line:
>>
>> [[
>> .PP
>> .in -4n
>> Feature Test Macro Requirements for glibc (see
>> .BR feature_test_macros (7)):
>> .in
>> .PP
>> ]]
>>
>> Presumably, that could be replaced with ".RS -4/.RE", but is
>> there something even better?
> 
> You're correct; .RS honors a negative indentation argument.  So you
> could do this and I would consider it an improvement because it reduces
> the number of lexemes that man page readers--human and machine
> alike--have to comprehend.

I've done it.

> 
> I noticed something about "Feature Test Macro Requirements for glibc",
> however...
> 
> Because of the negative indent, it's within one en of the indentation of
> a subsection (.SS) heading; in fact it's an exact match on nroff devices
> (terminals).  I'm guessing that wasn't an accident.  You're even already
> title-casing it like a heading.
> 
> If you used .SS, it look much the same but end up in bold.
> 
> Admittedly the parenthetical man page cross-reference fits poorly with a
> subsection heading, in part because the font style change would be
> obscured.  

(Yes, I'm not so keen on that.)

> However, I think that could be moved to the _end_ of the
> synopsis with little loss.  It doesn't take seasoned readers of section
> 2 and 3 man-pages documents long to internalize this knowledge about
> feature_test_macros(7), so repeating it by rote in the current
> pseudo-heading may not be helping much.  Inexperienced readers need to
> read closely anyway, and experienced ones already know this information.

Possibly you are right, but that's a bigger global edit that I 
won't attempt for now.

> I notice that in these feature test macro areas you're making heavy use
> of .ad and .br requests, as well as the deprecated .PD macro to set the
> inter-paragraph spacing to zero.  However, that's probably a digression
> for another thread... :)

I think the words you were looking for are "disgusting hack" :-).
Feel free to start another thread...

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
