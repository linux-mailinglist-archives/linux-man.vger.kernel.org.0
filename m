Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3FA57251806
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 13:49:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730038AbgHYLtO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 07:49:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730018AbgHYLtH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 07:49:07 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62134C061756
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 04:48:39 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id w13so12080458wrk.5
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 04:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8B840sl+6FqdYyepcnhVoo51k5TqOdtxFiu3n4USxUw=;
        b=E3DH4anCUi+wLXg9SzlKE5MmORP8/d+4Mh/NoY2+3f8sEHbAI7TfG2E6UCoo1sJkoQ
         h+SVFLox0WkEhBZYYIpc6uxjHEV/HPUdkFYi5a8elcfcP6FSKF2Rn1VHMV1TCy3NcM8x
         Z+GNCIPTUUz+5HsAglN4nXbt77Fh0GsRLR4txa001QflDzMc+X5l6FMSqw4jKS7ThdNP
         ajdbHatb0OJu8C2trOc1ljD5sDiU0nXziwg75mYZfg7Gr5F28G/e0MeDJVzGlRLNlQGG
         btQGwr+F1JAKo9fZyUvwfeIXmOOIkW6RLhEe0wc9EJrsgDsjXBU6b68jDgdskmqc8eZv
         wuZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:cc:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8B840sl+6FqdYyepcnhVoo51k5TqOdtxFiu3n4USxUw=;
        b=sqo110A/c1Tp3usXxKpDIQtVzVWTXJxPnzGjGy2MjbdmqmqbU3Pn1k40sfp1stGR1X
         vCPfaYjjYQoavxUx19gzks6AFpi/pwKWvoS+kMUj84EuuaaRANrg4bDlEoOfz/tYWx3G
         KX3vaBNCNcMMwHcjMemHPtceqk+UkT5CDvB7E6KrVSr4m9q189m/uAj/qivVdxUneZfO
         d6DV2/Vy937C/gY7O72qG5HAEHaZCifQFvIfuw/wHy5J+meTQ8sF5nM35AotegOF3FIV
         8Ap3KDFoBieSh9k9wAGpJpWIPToKjjDzuDJKspGHHCVeX2FurxPJVp0etJv0T8tn3mSG
         Vxsw==
X-Gm-Message-State: AOAM531MdqLJhuH6Fexw2O6aImFWnUQPF0PjD1nQNRq7ssh1R+qi0qT3
        jrE20vvbHNwe/RYrG0RgTP7WpyKbyJGhNA==
X-Google-Smtp-Source: ABdhPJwmLNLKNsmCGwCrO2uTobHq0rG+ftLEl0AcxTZpIUKwwX3k9oh8D5DYKqwZoq510ObcH5NGQg==
X-Received: by 2002:a5d:67d2:: with SMTP id n18mr10145665wrw.223.1598356117330;
        Tue, 25 Aug 2020 04:48:37 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id r18sm3543808wrg.64.2020.08.25.04.48.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 04:48:36 -0700 (PDT)
Subject: Re: [patch] memusage.1, bind.2, eventfd.2, futex.2,
 open_by_handle_at.2, perf_event_open.2, poll.2, signalfd.2, sysctl.2,
 timerfd_create.2, bsearch.3, cmsg.3, getaddrinfo.3, getaddrinfo_a.3
 getgrouplist.3, insque.3, malloc_info.3, mbsinit.3, mbstowcs.3,
 pthread_create.3, pthread_setaffinity_np.3, queue.3, rtnetlink.3, shm_open.3,
 strptime.3, tsearch.3, aio.7, fanotify.7, inotify.7, unix.7: Use sizeof
 consistently
To:     mtk.manpages@gmail.com
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <e1b424c2-77c1-e995-a866-67a122d7bb07@gmail.com>
 <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
 <d084b7eb-a691-52e8-4996-5080af0175de@gmail.com>
 <CAKgNAki_wyf7dCShjpAaRLUeuL=+EFZYeVp0fY-EKHyOBW2hRw@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Message-ID: <d72263bb-7c84-3f33-ee44-a2cac2e2662c@gmail.com>
Date:   Tue, 25 Aug 2020 13:48:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAki_wyf7dCShjpAaRLUeuL=+EFZYeVp0fY-EKHyOBW2hRw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 8/25/20 1:41 PM, Michael Kerrisk (man-pages) wrote:

>> In C, successive multiplications are evaluated left to right (*), and
>> therefore here is what happens:
>>
>> ``(sizeof(x) * INT_MAX * 2)``:
>>
>> 1) sizeof(x) * INT_MAX  (the type is the largest of both, which is
>>                          size_t (unsigned long; uint64_t)).
>> 2) ANS * 2              (the type is again the largest: size_t)
>>
>> ``(INT_MAX * 2 * sizeof(x))``:
>>
>> 1) INT_MAX * 2          (the type is the largest of both, which is
>>                          int as both are int (int; int32_t), so the
>>                          result is already truncated as it doesn't fit
>>                          an int; at this point, the intermediate result
>>                          will be 2^32 - 2 (``INT_MAX - 1``) (if I did
>>                          the math right)).
>> 2) ANS * 2              (the type is again the largest of both: size_t;
>>                          however, ANS was already incorrect, so the
>>                          result will be an incorrect size_t value)
>>
>>> sizeof((sizeof(x) * INT_MAX * 2)) == 8
>>
>> Here you were overflowing a uint64_t (if x were a char, it would not
>> overflow, and the result would be close to UINT64_MAX).

I also goofed :)  I didn't see the sizeof applying to everything.
And I was wrong:  you aren't overflowing 64 bits, which would need x to
be enormous.  But the idea is there; the explanation above was right.

>>
>>> sizeof(INT_MAX * 2 * sizeof(x)) == 8
>>
>> Here you were overflowing int32_t, and it would overflow regardless of
>> sizeof(x).
>
> Thanks for the lesson in C basics. I clearly did need a refresher :-}.

You're welcome!  It happens me from time to time too. :)

>
> You and Jakub are of course correct.
>
> If you send the patches in the order (as I numbered in my previous reply):
>
> (1)
> (3)
> (2) as multiple pieces
>
> that would be best, since the first two patches should obviously be
> applied, and then we can discuss the last patch(es) case by case.

Ok.

>
> Thanks,
>
> Michael
>

Cheers,
Alex.
