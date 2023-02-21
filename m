Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5709D69E50C
	for <lists+linux-man@lfdr.de>; Tue, 21 Feb 2023 17:47:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234678AbjBUQrI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Feb 2023 11:47:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233728AbjBUQrH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Feb 2023 11:47:07 -0500
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC9E020D24
        for <linux-man@vger.kernel.org>; Tue, 21 Feb 2023 08:47:02 -0800 (PST)
Received: by mail-il1-x12e.google.com with SMTP id u6so1918959ilk.12
        for <linux-man@vger.kernel.org>; Tue, 21 Feb 2023 08:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=landley-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MiZ2IO9EbgnK6bS+2Mr8u5xciGoSZTpNKiWyvleZQqI=;
        b=uVUtBh8PAUqmxVXQ3H1OPktIV56W/aU1Lv+Uouu1JcZhSu+uxlLZeFLAHwh7TzkKDF
         TRzg3flT/Gx7Zs5CzxCCJ76WKQBAbLIT+mCe8UM9qsC+XDWjKCGfJ9gd/O7E9vte9Nxr
         l7qPecm7KUmCdfrg2UdLvFHkNMrnnIoQeBCr1wCDbA2SKGRtw1gKCoKwBpiR0+p7Nudu
         eBkmfSsWoTaArZD02Nn64DC4P1O/pHeaz2FrWvjnAccslDMEjmdrPe002Y0CPESwMYaG
         UrxXuQPBiNnFYvR75ZIkxyviz5iqicjvn1+J3ZhbWSxYNH5tSKKBQ7q0zdRnXcqBtuFW
         PQCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MiZ2IO9EbgnK6bS+2Mr8u5xciGoSZTpNKiWyvleZQqI=;
        b=5RE+cRAEgkGpz07IV0CT5jV2dKrBs5KhBYcj8meL/PhbC+f9FP55oUhx/N0H9H8Eb1
         D0o9BQ3EKnecR5/1jMDTFxZ4mdZ5vTcj2wn0T4gzES/CGjbm9msALdvUNGioKXcCVpZ+
         6L5ZbTnwQvb3KsYr0JhBlDvPoiucw/gyQ7MjnjPwPuomFBOx31pxLZTYbdNhBp0qXmbw
         FQ+AxQvxZ7/Kr1PXxkKRV4z+ou3zIXd3WEGQXHndB0JcG0OEY2p5UKTbou7CkesRZe4Q
         7IMk3uuAURE/rxbZuYdICtTPSHMPKcP1rCYbUebJldZL5/jVOvbSzermBLqnq3MH+cUp
         P/uw==
X-Gm-Message-State: AO0yUKV9bNcqkHGQwtIqJRJQhhFGJqkIOes2RpGm28QNQxm76KIkx+sv
        IzNHIjB2GsGJ5UnQCf9nK50y6Q==
X-Google-Smtp-Source: AK7set/7fyonn1KXJTSgSAoeZvVmGLmvpVzyGUoMxS+iJznq8wOhgaBpJgaXvMan/cAErrShrRzXsQ==
X-Received: by 2002:a92:1a0d:0:b0:315:40c3:2048 with SMTP id a13-20020a921a0d000000b0031540c32048mr4479021ila.15.1676998022247;
        Tue, 21 Feb 2023 08:47:02 -0800 (PST)
Received: from [172.16.32.78] ([198.232.126.202])
        by smtp.gmail.com with ESMTPSA id i9-20020a02cc49000000b003c5170ddcedsm4265337jaq.110.2023.02.21.08.47.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Feb 2023 08:47:01 -0800 (PST)
Message-ID: <ddc963a7-6ce1-9ff5-ea3a-dd0446b69756@landley.net>
Date:   Tue, 21 Feb 2023 11:00:23 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v3 1/6] man2/: use IEC or ISO multiples to clarify long
 numeric digit strings
Content-Language: en-US
To:     Alex Colomar <alx.manpages@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>, coreutils@gnu.org,
        Debian Install System Team <debian-boot@lists.debian.org>
Cc:     Brian Inglis <Brian.Inglis@shaw.ca>,
        Linux Man Pages <linux-man@vger.kernel.org>,
        1031275@bugs.debian.org
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4a3350ac873f45df96abf9045cfe1605839f490d.1676489381.git.Brian.Inglis@Shaw.ca>
 <CACKs7VB672Ka6GJQmVozS6n1kR+g8LoDuLtw1XuwSjKsttFBTg@mail.gmail.com>
 <cb47e19b-ba02-da3f-b253-ee8ddec28aa8@gmail.com>
 <CACKs7VDaAX=qZh9fhn9wa5L5c4xegF0q+ZDBbzE9KTY9pPN+mQ@mail.gmail.com>
 <ed3e2487-2b28-e205-b1aa-c65cb54843ce@gmail.com>
 <CACKs7VCWsF+Pvso-H0VhTr2HFWUBs5JJ=m6uCJ7yB_FPY9g5Bg@mail.gmail.com>
 <2c23a82f-4392-2e4d-7aaa-2e2d17264738@gmail.com>
From:   Rob Landley <rob@landley.net>
In-Reply-To: <2c23a82f-4392-2e4d-7aaa-2e2d17264738@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/20/23 09:35, Alex Colomar wrote:
> On 2/20/23 15:29, Stefan Puiu wrote:
>> Hi Alex,
> 
> Hi Stefan,
> 
>>> 4 KiB is not that much better than 4096, since 4096 is easy to read.
>>> For higher numbers such as 33554432, it becomes more important to use 32 KiB.
>>> For consistency, using 4 KiB seems reasonable.
>> 
>> How about using KiB / MiB over a certain number of digits? It seems
>> excessive to use them everywhere.
> 
> We might do that.  So far, I prefer having the patches change 
> everything, and then we can later discuss about discarding part of them.

If you're going to tell people to learn something new: 1<<10 is a kilobyte,
1<<20 is a megabyte, 1<<30 is a gigabyte, and so on. I've sometimes used
16*(1<<30) for clarity.

>> Also, for the record, I had no idea what KiB / MiB means and how it's
>> different from KB/MB until this discussion.

Very few people do. Some people have been trying to make "fetch" happen for many
years, but it didn't. (Part of the reason is kibybyte/mebibyte/gibibyte are
minor tongue twisters, they're physically harder to say, so nobody does.)

>> I googled it before
>> writing this reply, and found this among the first hits:
>> https://ux.stackexchange.com/a/13850.
> 
> That answer was written more than a decade ago.  These days, binary 
> prefixes are more common.  In fact, I'd say most GNU/Linux commands

"First off, I'd suggest printing out a copy of the GNU coding standards,
and NOT read it.  Burn them, it's a great symbolic gesture." - Linus Torvalds

(Still there in Documentation/process/coding-style.rst.)

GNU has nothing to do with Linux, and never did. Stallman has a history of
taking credit for other people's work:

https://functional.cafe/@tfb/109897415359142549

> respect them (an important exception being GNU coreutils (for example 
> ls(1)).  But many programs use prefixes accurately, such as fdisk(8).
> 
> In the Linux man-pages we have units(7), which documents these.  Maybe 
> that page should be more known.

FYI Michael Kerrisk last updated https://github.com/mkerrisk in 2021. It is now
2023. He still posts monthly proof-of-life to
https://twitter.com/mkerrisk/with_replies but hasn't replied to man-pages email
in the past year that I am aware of?

Dunno why. I emailed to ask, but...

> BTW, that answer is inaccurate (at least today): drive manufacturers 
> have the distinction pretty clear, and use it precisely (with lawsuits 
> won thanks to this); they use metric prefixes, because they mean it. 
> They can sell you 1 TB instead of 1 TiB, and most people won't even 
> know, but those who know, will know that 1 TB is 1'000'000'000'000 B, 
> which is what you get.

Remember when the dictionaries gave in on "literally" meaning "an emphatic form
of figuratively"? What's the "kibybyte" equivalent we all switched to there for
clarity?

We say "metric ton" and "imperial ton". We say "degrees farenheit" and "degrees
celsius". The celsius people didn't come up with a different word for degree,
yet somehow we all survived...

> They have no incentives to sell 1 TiB drives, 
> because they are visually almost the same, but there's around 9.95% more 
> bytes, so it's more expensive to produce.  It's not worth it for them.

"No, a _bud_ lite..."

>> I would say making the docs easy to understand for users is more
>> important than adhering to some specs users might not be familiar
>> with.
> 
> Well, using MiB prompts readers to use their search engine to learn what 
> that is (that's how I learnt it the first time; and that's what one does 
> when reading a book and finding a new word).

"They'll google it" is the modern version of "they'll read the documentation".
They will not, you're just delegating blame.

Rob

P.S. Maybe this is a generational thing? Are the kids saying "kibibyte" in high
school these days? I know that "hacker means computer breakin specialist" is
something a small number of boomers will resist to the death despite a google
news search only pulling up one meaning in general usage. And the "two spaces
after period" thing old hands cling to will only end when they die despite the
chicago manual of style, the AP stylebook, the MLA handbook, and the APA
publication manual all agreeing its' been one space after a period for decades
now. But maybe "kibibyte" is more than a shibboleth to somebody somewhere...
