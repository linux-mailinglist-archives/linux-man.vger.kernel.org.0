Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9EBDB3DC5A4
	for <lists+linux-man@lfdr.de>; Sat, 31 Jul 2021 13:02:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232501AbhGaLCn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 31 Jul 2021 07:02:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232709AbhGaLCh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 31 Jul 2021 07:02:37 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4B48C0613CF;
        Sat, 31 Jul 2021 04:02:30 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id h13so1289266wrp.1;
        Sat, 31 Jul 2021 04:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ON3nvX3vddf0hmRumtMP6cx5JmooyBU5uI8MMuLOd7U=;
        b=kV9k61grhJ7MtURWjqOQbBqIH9x8k7DEEEnxJND+aQ7ltqHHuR3ebzuIRM492fVWoT
         93qHxkZ+I1ig0KZXzCuMwH3uqurYdYlRP+MkpN/0RvLJZl11fKCG5XI1b5t2gwVoesGT
         lRHGfKSFqBYcFhvAOnoJ7kNvsMGWnpPNPp+sMtPZ50lSBU3mpqaybPekDI2mbAkYcyGE
         X1sGqzg/fG+ZM6Xgwg4N1fpECvVSbtXbX6NyRw0aZHmXWCoz0zGVZYwaDJVGleV7Oe8u
         x82dCsa1qYfQjTyA1Y/0mj7l4WyYuJrZGMxoTlRdZoV4urjhklW8bomi/BMGsZw8ZfvM
         fSPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ON3nvX3vddf0hmRumtMP6cx5JmooyBU5uI8MMuLOd7U=;
        b=jyd4TxPi1c4D+XAR9/uJTZuIplekqzib+qF3GMGCieuslTFjTnEP9AcB0PgH17DVDD
         cSavmpyMaUs+PIIZFxPnuLhHsp6Q4kcoxvXRWR74wMLIV1NesshTtjqVMkghOCTyn41B
         ZGyL3uiJJG19Oq5GRxUIY3su4/v4yw/D4ehgL5OwexZLwlda+YZtolRmgBtTdO4OSNi3
         /pvPweqdQoVqkJDPUzZBHoeX/TIBgT+LgfSgYnb20OUk/pB22CQKAOWu2lxzMghCpsfP
         vpMVMzXD1i14YdbF9YFkH7TX2DoKPxBsAPBNz1veQb/Z4raa9l5zwBRSmThMf6mF0SDy
         z8AQ==
X-Gm-Message-State: AOAM530Um5u64V8uruxzcruiAR7VeLi1huHr6LfeDkXf7bYKyMiZbE6H
        iKf2y4zFL7quJiQSt0mXxg4=
X-Google-Smtp-Source: ABdhPJzat6RVLpZifMM7rHdf0LxW3i+5KZLCODu1ACd94uwWY7iV4ufKsY7CRRsSpu+sC9/wvPy8kQ==
X-Received: by 2002:adf:ffca:: with SMTP id x10mr7835646wrs.221.1627729349327;
        Sat, 31 Jul 2021 04:02:29 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id i5sm4554367wrw.13.2021.07.31.04.02.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jul 2021 04:02:29 -0700 (PDT)
Subject: Re: [PATCH v2 1/4] landlock.7: Add a new page to introduce Landlock
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
        Jann Horn <jannh@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Kees Cook <keescook@chromium.org>,
        Randy Dunlap <rdunlap@infradead.org>,
        Vincent Dagonneau <vincent.dagonneau@ssi.gouv.fr>,
        landlock@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@linux.microsoft.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210712155745.831580-1-mic@digikod.net>
 <20210712155745.831580-2-mic@digikod.net>
 <3f1b943b-2477-2c4e-c835-d6616888176c@gmail.com>
 <c5036c5c-37a1-57d2-e5dc-1f41a5ed0d31@digikod.net>
 <a3b271e6-e03f-dab8-b04c-c76315cdd98e@gmail.com>
 <1a698059-d9dd-5aa0-2765-42e704c3a697@gmail.com>
 <20210731001529.ggiknccl74akaahk@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <6c73ce9c-c8b3-426a-5c0a-f66b634210fb@gmail.com>
Date:   Sat, 31 Jul 2021 13:02:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210731001529.ggiknccl74akaahk@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 7/31/21 2:15 AM, G. Branden Robinson wrote:
> Hi, Alex!
> 
> At 2021-07-30T14:59:52+0200, Alejandro Colomar (man-pages) wrote:
>> Yes, they were because of semantic newlines.
>>
>> The "rules" are:
>>
>> Follow mainly "semantic newlines" style (forgetting about the line
>> length), which will give you a text that (mostly) fits into 75 or 80
>> columns.
>>
>> If after doing that there are some lines that exceed the 75 or 80
>> column right margin, consider fixing that line by breaking it at a
>> different point or maybe breaking it further.  The 80 column limit is
>> a hard limit (I can't read anything past the 80 col), while the 75
>> limit is a bit softer (that's for allowing quotes in reviews) (if
>> fitting a line into col 75 would break it in a weird way, don't do
>> it).
>>
>> If I didn't explain myself enough, please tell me.
> 
> I'm a little puzzled by the above.  Semantic newlines have little to do
> with the output line length in *roff systems.  They arose due to a Bell
> Labs Unix Room practice, popularized by Brian Kernighan.  Brandon Rhodes
> has a backgrounder on this[1].
> 
> Man pages tend to be really flexible with respect to output line length.
> This is one reason the groff man macros expose a user-settable LL
> register.  The main limitations on line length are people using tbl(1)
> tables or disabling filling (with the .nf request or in .EX/.EE
> examples).  Another limitation is that as lines get shorter, it becomes
> hard to set the page headers and footers without them overlapping.
> 
> For the first two points there is not much the macro package can do;
> both tbl(1) and filling disablement leave the placement of line breaks
> in the hands of the document author, and they can abuse that power by
> "oversetting" a line; that is, making it longer than the configured line
> length.
> 
> The third point is a problem the macro package can overcome with some
> effort, by measuring the lengths of the components that go into a header
> or footer an abbreviating them.  This is not a theoretical concern;
> Erlang supplies some man pages with insanely long names[2], and you can
> see the problem in footers today on the man-pages site for any page
> groff ships, because Michael pulls from our Git repository (to my great
> relief, because I fix documentation errors and make other improvements
> all the time) and our version identifier has gotten crazily long because
> we're on the order of one thousand commits since the last release
> candidate, and gnulib's git-version-gen uses release tags, commit count
> since the tag, _and_ an abbreviated commit ID to generate the version
> string.  For my tree right now that's "1.23.0.rc1.999-7ae6d".
> 
> Here's a specimen of how that works out in a rendered page:
> <https://man7.org/linux/man-pages/man1/neqn.1.html> (scroll to the
> bottom).
> 
> I've fixed the problem for long page names for the next groff release,
> but it involved some string-manipulation gymnastics[3].  I haven't yet
> factored those out into their own (private) macro which I can also call
> when preparing the page footer.

I think you misunderstood the context here.

I meant all of that about input, i.e., the text of the patch itself, 
text to be added to a man page source text.

What I meant is that when you break lines semantically (when writing a 
patch),
and initially forget about the 80 (or 75) column right margin,
most of the lines you write will already (as a side effect of breaking 
lines semantically) be within the 80 (or 75) right margin.

For those that still don't fit into 80 characters after doing that, 
break further (or at some other point that may also break nicely 
semantically); otherwise, I won't see the text when editing the man page 
on my 80-col terminal.

For those that still don't fit into 75 characters after doing that,
consider breaking further, but only if doing so seems easy and lines 
break nicely.  I can still see after line 75, and I can do some effort 
to scroll an email a few columns if needed (when many quotes move the 
text further to the right).  So if the source code would break in a 
weird way because of forcing a 75 col right margin, please ignore that 
margin.


I hope I was clear this time.


BTW, thanks for your mail.  It wasn't related to what I meant, but was 
interesting :=)

Regards,

Alex


> 
> Regards,
> Branden
> 
> [1] https://rhodesmill.org/brandon/2012/one-sentence-per-line/
> [2] CosNotifyChannelAdmin_StructuredProxyPushSupplier(3erl)
> [3] https://git.savannah.gnu.org/cgit/groff.git/commit/?id=b7f38e8a1d698e1078d7c215d08fde57d8e919b9
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
