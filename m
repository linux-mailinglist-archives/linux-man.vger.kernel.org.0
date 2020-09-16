Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0EBE26C9E7
	for <lists+linux-man@lfdr.de>; Wed, 16 Sep 2020 21:37:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727265AbgIPTfx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Sep 2020 15:35:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727527AbgIPTYQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Sep 2020 15:24:16 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 186FAC061756
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 12:24:14 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id d4so3815999wmd.5
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 12:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xN1VlGBm1gXLlGbKx7j52DxcWkzQnltt9J7OVo0ZDKU=;
        b=TYjcqd8kpGg8gSuUbkk7yYK9gjyeejQzIVm4WMTLuZldLcF/Mdrg2IJk8iDwKQ+gq6
         lpFuybgMyjZwY0axocC4DDAaoCs25jHFMDdAsNnbR0tGHAldcJ8QcfitFfdhlfGUyBND
         gAwBrbtksNAAy1SprCSJdD+ahJNfqIHcLO2Bk85M3z6jL0KOp54cy2R5o+ziMgOfYtQQ
         36zg4AR/Nw98tdE97QK5l0tna41oHC/ctgkkONZ3J+L0C3kVM/MQpV5BLkMz66RmR5lE
         iAvDB3VsoP2BkGXzY/+7qbDm3WZ44816AsymKgd4IAbSogpbZQ7Wco5xB0LO66o38sa4
         OuOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xN1VlGBm1gXLlGbKx7j52DxcWkzQnltt9J7OVo0ZDKU=;
        b=egiYNJAfB0UHlxiwXEJ6UkHLIdDX26Zz8EeYIx+RCvcmKMEJvfoDmY/QnhaLnOkeP3
         qosJ6nvePuRQP2CU1VNZPyuRp3WmZDkJg+BQfOW7bEj/q6Tt9BPmD1yfInKI7uEfZHXv
         pb4s4L/T0R9i2G/umSud8+SJshTvjD01UCkbNnSBJn+szZQkh4SL3p6JFGzcpWshWIqM
         pJhm18383XQyqSv1RYvRHBmtH8idQcyI5LhRud997WoXaxW7OhfcgzVOkFnd++EElIHE
         tfcaM8ivj0cOZ+FTPOo5KYc8vnUL6fPuoZCTKzLsUBwQ5sZPZEzbkElakFZm845iWatA
         HAfQ==
X-Gm-Message-State: AOAM531YkdkL7l8EbUKcYhu5d5HlwhWazvs1ccal2PnZ6Jd9NJg8mF57
        4Q7fgdbpZqvvxUKabM7btYs=
X-Google-Smtp-Source: ABdhPJzaoKK5Iz4Op4Qi80FvwAwZ0tiRNrqQ/hm4ZQxjF8gpozGOHhOO0avPr35FM0u5C8UqAvuBjQ==
X-Received: by 2002:a7b:c015:: with SMTP id c21mr6318697wmb.87.1600284252682;
        Wed, 16 Sep 2020 12:24:12 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id n4sm34089534wrp.61.2020.09.16.12.24.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 12:24:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, tg@mirbsd.org,
        fweimer@redhat.com, jwilk@jwilk.net, libbsd@lists.freedesktop.org,
        Andries.Brouwer@cwi.nl
Subject: Re: [RFC v6] system_data_types.7: Document types: sigval, ssize_t,
 suseconds_t, time_t, timer_t, timespec, timeval
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
 <20200916110144.17568-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <48f5e6ed-f288-151a-50dc-bcf396ff34b6@gmail.com>
Date:   Wed, 16 Sep 2020 21:24:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200916110144.17568-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/16/20 1:01 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> Changelog since v4:
> 
> - Comment "See also" about yet undocumented size_t
> - Simplify header ordering
> - Curate See also
> - Remove incorrect headers
> 
> 
> On 2020-09-15 23:30, Michael Kerrisk (man-pages) wrote:
>> Okay. Time to nit pick:-). Do not be too dispirited,
>> I think we started with some of the most difficult types...
> 
> I was waiting for it :-).
> 
>> I soppose what I meant is that POSIX defers to the C standard
>> in the cases where they overlap, and I'd expect that the set
>> of headers specified in the C standard and in POSIX might be the
>> same, but where they're not, I suspect the list of POSIX headers
>> would always be a superset of the C headers. So, just make a
>> single list of those headers, followed by 3 and 4 (merged)
> 
> See updated comment in the page.

It looks good to me.

>> I suggest dropping the pages marked XX. The remaining can serve
>> as the (commonly used) exemplars of APIs that use this type.
> 
> Done.  I don't have experience enough to subjectively decide
> which ones should stay and which ones we should drop, so...
> 
>> Okay, now I look closer at these lists. How have you determined them?
> 
> I kept references to all APIs that use the type in the prototype.
> 
> And for the headers list:
> 
> I started reading the contents of the headers, but all I had seen
> did actually define the type, so I guessed that all the remaining
> grep appearances would also define the type.  Clearly, I guessed wrong.

What I did was read the specifications of the .h files in the 
standard, to see which ones said "shall define type XXX".
I think that's the way we should go, at least for types that 
are in the standards.

>> <sched.h> only defines time_t since POSIX.1-2008, as far as I can
>> tell! I'm not sure how/if we want to represent that detail.
> 
> I added a Notes section for that type.  You like it?

Yes.

>> But size_t is not in this page (yet). Is it in your tree?
> 
> Not yet.  In my tree I didn't forget to comment it, though.  As you can
> guess, It'll be the next type to document, and then ptrdiff_t.
> 
>> Today I learned: size_t is in C99, but ssize_t is not!

[...]

I have no comments on the page. It looks great! I'm happy to
merge it now, unless you have something you want to change first.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
