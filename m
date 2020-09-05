Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85C8B25E6C4
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 11:37:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726372AbgIEJh1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 05:37:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726302AbgIEJh1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 05:37:27 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7849BC061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 02:37:25 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id q9so8934773wmj.2
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 02:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PN+xC6hRUo5HC6yJ64XqJ+wBWULlNZv71exkQFy1pJ4=;
        b=euJhJalHF8qrAGJXDlh4DdW7PHh+O7aSqGRLpmBkzunsD3R8uCw0C5aU/QwpdWfj2k
         WK1xCPSt4w8HLyVrSlpk2aJk8ft+6C3zKkgeNqaoczY9ku8vQIcyXPLioHdRXCL1yuTN
         ukExboWSdeuTZaj26W9S90eyuD0OOtpI2upLJjOI0kxNcL8JX9fDoWI449pNhw6eeVY8
         TPOqvch92kUXpOCm56s8cjCNkl19JY/pHfxBjWSpcX6MULxirhIruPRmedB/aLoisOFf
         elgwv7Ltq/OYRKwutptwDj+f7rUcVq1Nb+UMqzlxPY8XM1p87hjEU32DDtGeHdYejGdD
         uLxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PN+xC6hRUo5HC6yJ64XqJ+wBWULlNZv71exkQFy1pJ4=;
        b=DAwnmxeA/h/R8rvRUxvBHXX/L3EDxCTqfhqRwkHm1krveraQ0R6IAFcolalTFqosoY
         CA4sBa+7w8AZozw50Hw3ccvsIa2OveZBM0k2eiSr+x3kjHkWpnrVsBXshwTqYRuW9Hl2
         pth4e7V6dNNfZg0ulsbokVyHXwUctCLiaN1rpfl4HsNZoxNet5Kx7Mhw88Ktt2NlCMLg
         I5XB00HsJym4pQf6f/MtXx/4/w7GgVLg1mq+i89RNwrc7kli65m16Z+vbXVwePmzzj/C
         CyX4wF6crmfM48QJyfttituZmV+jA/kpLOcHOiboF3jAuMRtJazSmtBAirMOGFbbmyH6
         N31Q==
X-Gm-Message-State: AOAM530nE1TgQ1rtPSeY5Ewq3wKftD869S/mCCyuEEMc+GObmAkSGNNP
        jP6HTEOF8vs+hkmcvlRFJQA=
X-Google-Smtp-Source: ABdhPJxeY0S7i+F71YjWemmMso3xltsn7GOodZNb1SK0b0M7dzSJuz6oGA3CU16sPm4wG4TxISK5HA==
X-Received: by 2002:a1c:a5ca:: with SMTP id o193mr11406619wme.106.1599298644076;
        Sat, 05 Sep 2020 02:37:24 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id a83sm16037262wmh.48.2020.09.05.02.37.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 02:37:23 -0700 (PDT)
Subject: Re: [PATCH (2) 34/34] unix.7: Use sizeof consistently
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
 <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
 <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
 <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
 <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
 <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
 <4bb9e639-83ee-ede0-f6ad-dfc16787d358@gmail.com>
 <3c25bbda-bc90-1364-77cd-2c637f09d611@gmail.com>
 <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
 <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
 <5343bbd1-b03f-29bf-2def-c27ba3a3616e@gmail.com>
 <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
 <82aa16c3-60fe-68b3-103f-6d438563f3c2@gmail.com>
 <6e6d6796-32e0-9cc1-1e6c-4abb0b702499@gmail.com>
 <718db444-6679-224e-c649-6dd219b9db3c@gmail.com>
 <36a9ef8e-6fd9-e074-2a19-d8529f425501@gmail.com>
 <70efd632-15b4-0d18-8c05-7a4ea7fe2353@gmail.com>
 <fa6e973f-0a09-a9d2-a6c6-e6359d84df9e@gmail.com>
 <eb934301-27b4-245e-da89-28bde26c2bf1@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <3777a325-ef49-27df-d21b-375900e34fed@gmail.com>
Date:   Sat, 5 Sep 2020 11:37:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <eb934301-27b4-245e-da89-28bde26c2bf1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 9/5/20 10:27 AM, Michael Kerrisk (man-pages) wrote:
> Yes, the threading made things a little tricky, especially when it
> came to trying to review what I'd done. Did you not send with 
> "git send-email"? Usually that threads things nicely (all patches 
> after the first as replies to the first patch).

In this case, I didn't, because the conversation was already started,
even the set of patches was already started, and I had to edit all of
the subjects, and sometimes add introductory messages, and I felt more
comfortable with the GUI.

> So, I've still not processed patches 21, 22, and 29. And in review,
> I see that I am wondering about whether I should maintain 1, 5, 17,
> 18, and 19. These all involve the use of malloc() or similar.
> 
> The existing pattern was something like:
> 
>     struct mytype *x;   // Or some simple type such as 'int'
>     ...
>     x = malloc(n * sizeof(struct mytpe));

Not to forget `malloc(sizeof(struct mytpe) * n);`

> 
> and your patches change it to:
> 
>     struct mytype *x;
>     ...
>     x = malloc(n * sizeof(*x));>
> I'm not sure that always helps readability.
> 
> Part of the problem is the use of C90 in the code.
> 
> Do you both agree with me that both of the following c99
> forms are better than the original:
> 
>     struct mytype *x = malloc(n * sizeof(struct mytpe));
>     struct mytype *x = malloc(n * sizeof(*x));
> 
> ?

Yes, I would say both of these are an improvement.
> 
> I *think* I mildly prefer the first form, but I'm open to
> arguments that the latter form is preferable. Of course, the
> fact that there might be more than one point where an 'alloc'
> is done and assigned to 'x' may influence the argument. Thus
> 
> 
>     struct mytype *x = malloc(n * sizeof(struct mytpe));
>     ...
>     x = malloc(p * sizeof(struct mytype));
> 
> vs
> 
>     struct mytype *x = malloc(n * sizeof(*x));
>     ...
>     x = malloc(p * sizeof(*x));

In case there are 2 or more allocs, in general, I prefer the name of the
variable.

In case there is only 1 alloc in the same line as the declaration, I
still prefer the name of the variable: for consistency, and because some
day you may add another alloc, and then separate the original
declaration+alloc in two lines, and forget to fix sizeof to use the name
of the variable.

The cases where I see the type much better are cases where it is
impossible for the type to change (and if it ever changed it would be an
accident and cause a deserved bug) such as in those cases where you
really need an (u)int64_t because of the API.

There's also cases where in real code I would prefer the name of the
variable (to avoid future bugs because of type change), but in the man
pages it is clearer if you write the type to be more explicit and
consistent.  Example: queue.3 (PATCH 24/34): It's clearer if you
consistently use the type across all the code (and it may be therefore
better to use it in the man-pages), because the name of the variable
looks like it's different from one alloc to the next, but I can imagine
some real code implementing a TAILQ and later deciding to use a CIRCLEQ,
and if any of the types in the allocation are not updated accordingly,
there will appear bugs, while if the name of the node is used for
allocating the memory, the transition will be really simple.

Regards,
Alex.
