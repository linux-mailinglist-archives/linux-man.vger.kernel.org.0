Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D2B12517B6
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 13:34:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729897AbgHYLel (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 07:34:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725893AbgHYLec (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 07:34:32 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8306C061574
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 04:34:31 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id o21so1813224wmc.0
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 04:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lub9CSL7W2uuA4/sC2Zd5T+KzQv9DDn2IKvFg5oP7cI=;
        b=VtYd9qdCKN8pdb6fsq2Tnu2+etbxRIBaFnqlIDKhwgDYMo1WVFF+lHIIVen1E7cTkj
         hvREP/IukuuZKb+ITwp5vQdijhAuRKU2pfSj2ELLk/fy8VQLJweUfCv4aGQtgZ5331d1
         ll6mCDySNinZZr3uI8vNTI0CONqnWTY0ek+afLPbUgQb2O68dxXJmJGS7RVoebSFq6iQ
         8UVglANpszIUlG6r768i+wIWFOYOTzo015wYp3w/YdhquKDbu28xw8Eb222ppsnki/Gg
         goqnr5JgIqbX9RaFtFWP2VrmFyPpJiiqK7sgFYKpfN752HE/Bdb/I6qp2OVn+SQPzcR3
         uD3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:cc:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lub9CSL7W2uuA4/sC2Zd5T+KzQv9DDn2IKvFg5oP7cI=;
        b=m62R8A6hgOe6A0gnfy0jVNDAn9zTeNOGqJCVOyWzVeuq+ITiDzLKT5kFKbwhZhOQYN
         R0XZEbWVgzJpK+nu320yY9hpK88G4tVcHb1kH41MU19qSZscGpbDbyB+2osYm5o04nvA
         C+J8YHcwIJPtn9gy3DMpkJ0HU1BZZBbjlUG43Kfad1+oO0gj9dTIv3R0RxE5Fv9IbVCQ
         FPOW6VsnFZMG83y8iSIv0jdyODLSVFFlb/wIQkqOm8jeoB1ksHF1MkJoOx8ZgbWtZ08V
         iOU5X1Hn7TiJMGJSlXnsEEmqpDJE3wE42/OPf+KG2kTMtTEnDs19z4yu9p7+vbOwfu2P
         gRVw==
X-Gm-Message-State: AOAM532QHEoYZ8BOGGqN5QwV+KoPBE9yx3bdAox+xEkhEKMEWgvW04tv
        1GZqD9FGlzlRRXAqmAK9uyOG9PYWaR1vSA==
X-Google-Smtp-Source: ABdhPJzcmdPRcXTWLoLANbOpM/4lMKtrC7IivxO4XrHupNREqN83OnZCiXgmSBlYAztbqDXc62jasg==
X-Received: by 2002:a05:600c:284:: with SMTP id 4mr1680457wmk.48.1598355269916;
        Tue, 25 Aug 2020 04:34:29 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id a85sm5805607wmd.26.2020.08.25.04.34.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 04:34:29 -0700 (PDT)
Subject: Re: [patch] memusage.1, bind.2, eventfd.2, futex.2,
 open_by_handle_at.2, perf_event_open.2, poll.2, signalfd.2, sysctl.2,
 timerfd_create.2, bsearch.3, cmsg.3, getaddrinfo.3, getaddrinfo_a.3
 getgrouplist.3, insque.3, malloc_info.3, mbsinit.3, mbstowcs.3,
 pthread_create.3, pthread_setaffinity_np.3, queue.3, rtnetlink.3, shm_open.3,
 strptime.3, tsearch.3, aio.7, fanotify.7, inotify.7, unix.7: Use sizeof
 consistently
To:     Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <e1b424c2-77c1-e995-a866-67a122d7bb07@gmail.com>
 <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Message-ID: <d084b7eb-a691-52e8-4996-5080af0175de@gmail.com>
Date:   Tue, 25 Aug 2020 13:34:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael & Jakub,

On 8/25/20 12:29 PM, Michael Kerrisk (man-pages) wrote:
> I would really have preferred three patches here, since:

I can do that.

>
>> - Never use a space after ``sizeof``, and always use parentheses
>>   instead.
>>
>> 	Rationale:
>>
>> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#spaces
>
> (1) This is completely unproblematic from my point of view.

Actually there was only one appearance of that (and another one that
used a space before the parentheses).  It's unproblematic, but it's so
minor that it can be fixed easily.

>> - Use the name of the variable instead of the type as argument
>>   for ``sizeof``, wherever possible.
>>
>> 	Rationale:
>>
>>
https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory
>
> (2) This one is up for debate. In many cases it makes sense to do
> this. However, there are cases where I think that using the struct
> name can actually help readability. And when I grep through the kernel
> source, of around 139k lines that use "sizeof", some 37k take a
'struct type'
> as an argument. SI, I think this kind of change may need to be
considered on
> a case by case basis, rather than as a blanket change.

Ok. I can send a set of patches with a patch for each page.

>
>> - When the result of ``sizeof`` is multiplied (or otherwise modified),
>>   write ``sizeof`` in the first place.
>>
>> 	Rationale:
>>
>> 	``(sizeof(x) * INT_MAX * 2)`` doesn't overflow.
>>
>> 	``(INT_MAX * 2 * sizeof(x))`` overflows, giving incorrect
>> 	results.
>
> (3) Is this true? "gcc -Wall" does not complain about this. And, I
> thought that in both cases, all operands in the expression
> would be promoted to the largest type. And, on my x86-64 system,
>
> sizeof((sizeof(x) * INT_MAX * 2)) == 8
> sizeof(INT_MAX * 2 * sizeof(x)) == 8
>
> But, I will say tht I'm not a language lawyer, and C still
> sometimes has surprises for me. At the least, I'd like to know
> more about this point.

Well, when I said the first one doesn't overflow, I meant it's much
less likely.

In C, successive multiplications are evaluated left to right (*), and
therefore here is what happens:

``(sizeof(x) * INT_MAX * 2)``:

1) sizeof(x) * INT_MAX	(the type is the largest of both, which is
			 size_t (unsigned long; uint64_t)).
2) ANS * 2		(the type is again the largest: size_t)

``(INT_MAX * 2 * sizeof(x))``:

1) INT_MAX * 2		(the type is the largest of both, which is
			 int as both are int (int; int32_t), so the
			 result is already truncated as it doesn't fit
			 an int; at this point, the intermediate result
			 will be 2^32 - 2 (``INT_MAX - 1``) (if I did
			 the math right)).
2) ANS * 2		(the type is again the largest of both: size_t;
			 however, ANS was already incorrect, so the
			 result will be an incorrect size_t value)

> sizeof((sizeof(x) * INT_MAX * 2)) == 8

Here you were overflowing a uint64_t (if x were a char, it would not
overflow, and the result would be close to UINT64_MAX).

> sizeof(INT_MAX * 2 * sizeof(x)) == 8

Here you were overflowing int32_t, and it would overflow regardless of
sizeof(x).


I wrote an extreme case, but we can agree that 32 bit is much easier to
overflow than 64.


(*): https://en.cppreference.com/w/c/language/operator_precedence


On 8/25/20 1:19 PM, Jakub Wilk wrote:
> * Michael Kerrisk <mtk.manpages@gmail.com>, 2020-08-25, 12:29:
>>>     ``(sizeof(x) * INT_MAX * 2)`` doesn't overflow.
>>>
>>>     ``(INT_MAX * 2 * sizeof(x))`` overflows, giving incorrect
>>>     results.
>>
>> (3) Is this true? "gcc -Wall" does not complain about this.
>
> My GCC (10.2.0) does, even without -Wall:
>
>   $ gcc test-overflow.c
>   test-overflow.c: In function 'main':
>   test-overflow.c:8:52: warning: integer overflow in expression of type
> 'int' results in '-2' [-Woverflow]
>       8 |  printf("INT_MAX * 2 * sizeof(x) = %zu\n", INT_MAX * 2 *
> sizeof(x));
>         |                                                    ^
I guess it will only complain for the first one, doesn't it?

>
>> sizeof((sizeof(x) * INT_MAX * 2)) == 8
>> sizeof(INT_MAX * 2 * sizeof(x)) == 8
>
> Hmm? If there was no overflow, surely you should get a number larger
> than INT_MAX...
>

INT_MAX is INT32_MAX, and given that size_t is 64 bit, sure we can, but
only in the first case.
