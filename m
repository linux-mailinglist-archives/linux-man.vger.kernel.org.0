Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D5FA3DC5C1
	for <lists+linux-man@lfdr.de>; Sat, 31 Jul 2021 13:42:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232915AbhGaLmT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 31 Jul 2021 07:42:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232263AbhGaLmS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 31 Jul 2021 07:42:18 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28C81C06175F
        for <linux-man@vger.kernel.org>; Sat, 31 Jul 2021 04:42:11 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id z4so14886113wrv.11
        for <linux-man@vger.kernel.org>; Sat, 31 Jul 2021 04:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LrnQPLYLe2iRb+rMSkQsnb0ePsRL42xCIXiWfUJBY0Q=;
        b=VO8iwArm8yZvHB6aNivISBUNbAxd+WFsX/W2Qp2ULQOwzpMQT8KM5GgQ8SumUwdr4X
         ankLbEVBhjy0cnNoKPJz5GuKjFIy2LKqaxPrmOeyjjqBA45WZMwCSmmEyTcCoP6CDwjy
         fQFpR5pLsW6qZVcerdW0PtzXKsXQH3kbNDgfMGSo9Pzq3Gal2t7QA0sMIetjpxzmWdIb
         50KGGxO2Lw73Z8YB2uofskzdnCPgZhEfq3YXMtJjEpirV/NsJMQNc4yHh8UUspCCYLzM
         cXErWlLj6KuFpBT4bplLRH640UNIa82ybSHflrw+xHNCWkA3oAmDozBEDZlgIUdLKhnq
         MKbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LrnQPLYLe2iRb+rMSkQsnb0ePsRL42xCIXiWfUJBY0Q=;
        b=l4osz25y1CbEPXNK9QWaegrKW99dHIOmO37LsObpSbmaEHjXr+FCuV7QthwJA4Kfgq
         14ltE4svLig5JUkZfY5wBZPo4LrrD7pTK/p7+k07VpNzap8RLake6v3gn2ng0nvjkpQl
         fBHd7x5mBya/wnttxOTvvofGOE/ZQ9mF1W4WxVmKNHAyO/LB5QJRYfzbTg1LR802UJ8S
         Kk+vUGXSvR6zeHCAeUm5yIkL3gl0DvguuToktvD6kwExa24ZPuU+EdUQs1gdQ9ZMLsfA
         udxbVZI8OFV1DvTdLmAjjwXQWYgZDKOAbEnYyju4j5ndLIA5gz7r35PmkWvY6B1RM47g
         eJOw==
X-Gm-Message-State: AOAM531LnQ/MYrn7rmGl0AmvYEhmG6PzZ21UyExgH/860b8s8TMB7qVs
        m2JS9/xQRvuTLsYqcwMh0ESa4igim2s=
X-Google-Smtp-Source: ABdhPJywyIbDRQ/yXuGZBvP6/jwc2XpRWCkxjXIReXIEC8srGSYNg7qndYRRYg3ALDt3ZrGb8EW9UQ==
X-Received: by 2002:a5d:530e:: with SMTP id e14mr8068832wrv.392.1627731729658;
        Sat, 31 Jul 2021 04:42:09 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id k6sm4651830wrm.10.2021.07.31.04.42.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jul 2021 04:42:09 -0700 (PDT)
Subject: Re: [PATCH 2/2] man-pages.7: Update non-breaking space advice.
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20210731034458.6s76okhgjxw42mpx@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <e097bf4a-7188-e810-7d3b-e4d1469397d3@gmail.com>
Date:   Sat, 31 Jul 2021 13:42:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210731034458.6s76okhgjxw42mpx@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 7/31/21 5:45 AM, G. Branden Robinson wrote:
> * Advise usage of \~ escape instead of \SPACE; the former, a groff
>    extension from circa 1990, has been supported by Heirloom Doctools
>    troff since 2005 and by mandoc since 2019.  The advantage is that
>    \~ is an _adjustable_ non-breaking space, so it will typeset
>    non-jarringly both in .EX/.EE examples when filling is off, and in
>    normal running text (which is filled).

Thanks for the patch!

> * Say "non-breaking" instead of "nonbreaking".  These are the only
>    occurrences of either in the man-pages tree, except in Changes.old,
>    which uses "non-breaking".

I'll do as usual and copy here an extract from man-pages(7) :) :

    Hyphenation with multi, non, pre, re, sub, and so on
        The  general tendency in modern English is not to hyphenate
        after prefixes such as "multi", "non", "pre", "re",  "sub",
        and  so on.  Manual pages should generally follow this rule
        when these prefixes are used in natural  English  construc‐
        tions  with simple suffixes.  The following list gives some
        examples of the preferred forms:

            interprocess
            multithreaded
            multiprocess
            nonblocking
            nondefault
            nonempty
            noninteractive
            nonnegative
            nonportable
            nonzero
            preallocated
            precreate
            prerecorded
            reestablished
            reinitialize
            rearm
            reread
            subcomponent
            subdirectory
            subsystem

        Hyphens should be retained when the prefixes  are  used  in
        nonstandard  English  words, with trademarks, proper nouns,
        acronyms, or compound terms.  Some examples:

            non‐ASCII
            non‐English
            non‐NULL
            non‐real‐time

        Finally, note that "re‐create" and "recreate" are two  dif‐
        ferent verbs, and the former is probably what you want.


> 
> See linux-man@ list discussion at
> <https://lore.kernel.org/linux-man/\
> 20210729115508.pt6btsqd7g5tuhg6@localhost.localdomain/> and follow-ups.
> ---

BTW, this one also doesn't apply.  I think it is probably your mailer.
Can you use git-send-email(1)?

Thanks,

Alex

>   man7/man-pages.7 | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man7/man-pages.7 b/man7/man-pages.7
> index 3819dfd97..06dc7097c 100644
> --- a/man7/man-pages.7
> +++ b/man7/man-pages.7
> @@ -686,14 +686,14 @@ man 7 man\-pages
>   If the command is short, then it can be included inline in the text,
>   in italic format, for example,
>   .IR "man 7 man-pages" .
> -In this case, it may be worth using nonbreaking spaces
> -("\e\ ") at suitable places in the command.
> +In this case, it may be worth using non-breaking spaces
> +(\e\(ti) at suitable places in the command.
>   Command options should be written in italics (e.g.,
>   .IR \-l ).
>   .PP
>   Expressions, if not written on a separate indented line, should
>   be specified in italics.
> -Again, the use of nonbreaking spaces may be appropriate
> +Again, the use of non-breaking spaces may be appropriate
>   if the expression is inlined with normal text.
>   .PP
>   When showing example shell sessions, user input should be formatted in bold, for example
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
