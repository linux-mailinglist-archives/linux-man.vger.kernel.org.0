Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D68951D87D0
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2020 21:07:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726369AbgERTHI convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 18 May 2020 15:07:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726283AbgERTHG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 May 2020 15:07:06 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67A70C061A0C
        for <linux-man@vger.kernel.org>; Mon, 18 May 2020 12:01:50 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id k5so4462161lji.11
        for <linux-man@vger.kernel.org>; Mon, 18 May 2020 12:01:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=A8ZqvWhajgafSQWZ+ywXO1Ojk9FtfM7rzm4hu1GyaZE=;
        b=Gx7hw2o0gvoKlsRp5qtdnBW2GmzPaFkLNSzKXdkKzLwSRmHMs/YxsGU2JVLFz64pWE
         Sn9uGEYb3+87HPQohmAmHZaFTDpIXFtDx/4qrBpCwAHpfNSNFbPo0ZOW1OwWkqpQOb6Y
         Jp3hIlk1isw07R/oZLZ6ZRe90pCPL6O0aRyxF3fEfIHEcUnaJM5zJSKW3W2v/el0lDh+
         PmR2U9VMLf4oEYLR9YMuYbFZfHGlj33XRVGe0/y6JaGE/hfGwGy8vEKyycCu+KBz8Ku2
         GK2lLs49/7Eibtm5Hcmp2fr0GBn4GlZvGiE2sYG0zjM7BUPktiZmCYWMuwESmeSOasRf
         7KcQ==
X-Gm-Message-State: AOAM532wddOYAP2fFk67/04yc6LRbiQM8IvIyy782nYUSEntV0WnuIr3
        mDAUgNFXCzYLEmALY9oMead2A3RCKnM=
X-Google-Smtp-Source: ABdhPJyZOBbVGKPYA2xYhKMRxOi7/r/Ygb75kMsytEdg5+Suvv9McrlKlJFv8fBFMc2GqDw+/CPMEQ==
X-Received: by 2002:a2e:d1a:: with SMTP id 26mr11405473ljn.160.1589828508304;
        Mon, 18 May 2020 12:01:48 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id t19sm6226743ljg.7.2020.05.18.12.01.47
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 12:01:48 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id u6so11042957ljl.6
        for <linux-man@vger.kernel.org>; Mon, 18 May 2020 12:01:47 -0700 (PDT)
X-Received: by 2002:a2e:9d45:: with SMTP id y5mr2150942ljj.258.1589828507750;
 Mon, 18 May 2020 12:01:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAEYDfj7TDMwUy08DiHRde6D8Qam79tALL0u=Bf2tVghKn8jeMw@mail.gmail.com>
 <20200518153841.5urnrimzrqadvpvy@jwilk.net> <CAEYDfj4TK2Maoaxudhfxkx9NJGJa4CNL30Rhud-eBUnHVpFvzw@mail.gmail.com>
In-Reply-To: <CAEYDfj4TK2Maoaxudhfxkx9NJGJa4CNL30Rhud-eBUnHVpFvzw@mail.gmail.com>
From:   Rohit Saily <rohit@rohitsaily.com>
Date:   Mon, 18 May 2020 15:01:11 -0400
X-Gmail-Original-Message-ID: <CAEYDfj57-whcLRn9OVTbMQz9jJNfCnAnNH9j7RGO8b4AxeUx3A@mail.gmail.com>
Message-ID: <CAEYDfj57-whcLRn9OVTbMQz9jJNfCnAnNH9j7RGO8b4AxeUx3A@mail.gmail.com>
Subject: Re: PRINTF(3) Miswriting
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,


> I believe the wording is correct. The outcome is not always the same:
> the leading digit zero is allowed only for non-normalized numbers.

If I am understanding this correctly, shouldn't the man page say:

"The digit before the decimal point is specified for nonnormalized
numbers, and nonzero numbers but other‐wise unspecified for normalized
numbers."

I replaced the first occurence of "unspecified" with "specified" and
inserted "numbers"
after "nonzero". To make it even simpler:

"The digit before the decimal point is unspecified when the number is
normalized and the digit is zero; otherwise, the digit is specified."

Is this correct?

Also, why is it possible that the following numbers are printed if
the floating-point number is 1.0?

0x8.0p-3
0x4.0p-2
0x2.0p-1

Why are there multiple possibilities if the IEEE 754 standard is being
used? I did not know that was a possibility.


Thank you for your time,

Rohit Saily


On Mon, May 18, 2020 at 2:49 PM Rohit Saily <rohit@rohitsaily.com> wrote:
>
> Hi Jakub,
>
>
> > I believe the wording is correct. The outcome is not always the same:
> > the leading digit zero is allowed only for non-normalized numbers.
>
> If I am understanding this correctly, shouldn't the man page say:
>
> The digit before the decimal point is specified for nonnormalized
> numbers, and nonzero numbers but other‐wise unspecified for normalized
> numbers.
>
> I replaced the first occurence of unspecified with specified and inserted numbers
> after nonzero. To make it even simpler:
>
> The digit before the decimal point is unspecified when the number is
> normalized and the digit is zero; otherwise, the digit is specified.
>
> Is this correct?
>
> Also, why is it possible that the following numbers are printed if
> the floating-point number is 1.0?
>
> 0x8.0p-3
> 0x4.0p-2
> 0x2.0p-1
>
> Why are there multiple possibilities if the IEEE 754 standard is being
> used? I did not know that was a possibility.
>
>
> Thank you for your time,
>
> Rohit Saily
>
>
> On Mon, May 18, 2020 at 11:38 AM Jakub Wilk <jwilk@jwilk.net> wrote:
>>
>> Hi Rohit!
>>
>> * Rohit Saily <rohit@rohitsaily.com>, 2020-05-16, 18:04:
>> >I am having difficulty understanding a sentence in the PRINTF(3) man
>> >page's explanation of the 'a' and 'A' conversion specifiers, more
>> >specifically it is the following sentence:
>> >
>> >>The digit before the decimal point is unspecified for nonnormalized
>> >>numbers, and nonzero but other‐wise unspecified for normalized
>> >>numbers.
>> >
>> >My confusion arises due to the fact that the two posible cases are
>> >described with the same outcome,
>>
>> I believe the wording is correct. The outcome is not always the same:
>> the leading digit zero is allowed only for non-normalized numbers.
>>
>> For example, printf("%a", 1.0) could produce any of these outputs:
>>
>>    0x8.0p-3
>>    0x4.0p-2
>>    0x2.0p-1
>>    0x1.0p+0
>>
>> but not:
>>
>>    0x0.8p+1
>>
>> On the other hand, assuming the IEEE 754 binary64 format,
>> printf("%a\n", 0x0.8p-1022) could produce any of these:
>>
>>    0x8.0p-1026
>>    0x4.0p-1025
>>    0x2.0p-1024
>>    0x1.0p-1023
>>    0x0.8p-1022
>>
>> --
>> Jakub Wilk
