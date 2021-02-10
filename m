Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CF02316B21
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 17:25:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230160AbhBJQZQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Feb 2021 11:25:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231926AbhBJQZK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Feb 2021 11:25:10 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD61EC06174A
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 08:24:29 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id b3so3262125wrj.5
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 08:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3nbOqgXyC6N20BQ2xw44OIibjgXDO0IZC0/o011vnUA=;
        b=u+AXTLINdIwoX5esSdxS+4zJWk0OrliXjy1BApYv3Mufw5KHDghu9sb/DVD5/PQ0gG
         YFNy16yDO+B2JA5UnBXg+u9eYOKZj1WyfaE9vFpYkuR0mLm0G8CFLustYnJRcyF+OIdp
         Bt1HB46O+fxo7OoAs/jXyFFUkdC0OOQZKoGO/MYmrjG955yJ33LyvWcaz5DFRiKb8SuY
         /WM6ccN/R5oYEOjc6jedfigS2+pd3c+A1XSMIIit1V3BAcnT11euS8pGX0owwVXwNMon
         wqYqRxAtZee4JjVosLonFR9QFCLixVnBZJJLiQDaS8JsMHearx3+eRRXGtYwpwRUBlIh
         jGnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3nbOqgXyC6N20BQ2xw44OIibjgXDO0IZC0/o011vnUA=;
        b=Bd9tYnwEmP7IAw8WAQ+r3W6cZU83qTlQA2zQXPMzkLFrsRXQEH7E2ym9c1PuNU/c1Q
         NVf+Y4mf0U8LZFbEknuMGlxmgzTwqF5hqhhf/Pd1CgveBDg0HbUKjf04Tu7unz4bqSjR
         Oz1wjj0w02uaI78PMarPeCyemqER2DUpcsSY+F3yjlwWNmB3f8SR921tO9z3pMN/c46F
         IQxwtZyYS4syQeh0xQoUakjS9l6ckrwHh0OtaUG38Xc7QwiUvWCJRZcEctqELOCqlsIX
         cMEx7vC+/PTNMPAdDzyATupuq4K8bye33zeACZVc1ykFWVnNnisPg2SwTPI7G0TfBhXI
         xiZQ==
X-Gm-Message-State: AOAM533KGoz2WBs+qjPOCzVcs1Hbx1qez7wkr+UasKKmp5/qp2wnQSLK
        iiVAG/ZT381mhjSPOf+ZpWg=
X-Google-Smtp-Source: ABdhPJyKoB2TP1ju/u84LBMZoQqiuOKJSpFeMcH/vK1dH+ItVPhoW9A39ltxK9oCk5e87sD9JlYWdw==
X-Received: by 2002:a5d:5304:: with SMTP id e4mr4470871wrv.167.1612974268533;
        Wed, 10 Feb 2021 08:24:28 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id f7sm4093839wrw.81.2021.02.10.08.24.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 08:24:28 -0800 (PST)
Subject: Re: queue.7, stailq.3, (simpleq.3): Document SIMPLEQ as an alias of
 STAILQ
To:     Zack Weinberg <zackw@panix.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
References: <f03cd3b3-8a47-3ec1-2d17-2760545c7b62@gmail.com>
 <17824adc-1b73-cae4-781a-6ad8893c3c66@gmail.com>
 <864a2689-0c9a-40c9-3732-d99bc44fed4d@gmail.com>
 <CAKCAbMgpXzH3nFyyn3fO3rjwNsG1ZBEkK89ce6r1JLPQL9oKZA@mail.gmail.com>
 <57071c04-e340-96d1-f21c-8e6f9691b351@gmail.com>
 <CAKCAbMitSQLQZX2T0z5TSBV+DBMONiEL5dmitqjQnjjmAtLraA@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <23e5f038-19e0-f326-0f6b-81e3c7953293@gmail.com>
Date:   Wed, 10 Feb 2021 17:24:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <CAKCAbMitSQLQZX2T0z5TSBV+DBMONiEL5dmitqjQnjjmAtLraA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Zack,

On 2/10/21 5:05 PM, Zack Weinberg wrote:
> On Wed, Feb 10, 2021 at 10:53 AM Alejandro Colomar (man-pages)
> <alx.manpages@gmail.com> wrote:
>> On 2/10/21 4:38 PM, Zack Weinberg wrote:
>>>
>>> I don't know about anyone else on the glibc team, but I personally
>>> consider the entirety of <sys/queue.h> to be provided only for some
>>> degree of backward compatibility with old applications that were
>>> ported from BSD; new code should not use it.  I'd *like* to formally
>>> deprecate it, but I expect that would cause too much breakage to be
>>> viable.  Anyway, I hope you can understand why I'm not interested in
>>> messing with its contents at all.
>>>
>>> (Can we add a statement to the effect that new code should not use
>>> <sys/queue.h> to all of the related manpages, please?)
>>
>> Would you mind explaining your reasons for the deprecation?  Performance?
> 
> No, portability and reliability.   The contents of <sys/queue.h> are
> not consistent among the various operating systems that offer it, and
> some versions have outright bugs.

About portability, I guess you are referring to the fact that some
systems don't provide some of the newest macros?  Such as OpenBSD not
providing SIMPLEQ_LAST()?

About bugs, I don't know which, but considering that the BSDs use these
macros, I guess they'll fix whatever new bugs they find.

But for those that offer macros of the same family (with the same name),
I guess they all offer the same interface, don't they?

> 
>> What functions/macros should be used instead of the queue.h macros?
> 
> In C, I think applications are better off implementing these simple
> data structures themselves.  In any other language, the standard
> library probably has something built-in with a more stable and
> probably also more ergonomic API.

If you need to have a high performance linked list, yes, probably it
pays off writing your own.  But for a prototype or some code that isn't
critical, having a libc interface that already provides (somewhat
standard) linked lists is great, IMHO.

Nevertheless, as Michael said back then, if there's consensus in glibc
deprecating these, we could add that to the manual pages.  But as you
said, it's quite difficult to remove those macro sets now, as they have
been used for many years.  However, there's still libbsd providing them
if glibc deprecates them, so it may be possible.

Thanks,

Alex

> 
> zw
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
