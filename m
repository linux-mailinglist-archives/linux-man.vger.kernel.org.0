Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B69C32DEF6
	for <lists+linux-man@lfdr.de>; Fri,  5 Mar 2021 02:14:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229559AbhCEBNz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Mar 2021 20:13:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbhCEBNz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Mar 2021 20:13:55 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07A36C061574
        for <linux-man@vger.kernel.org>; Thu,  4 Mar 2021 17:13:55 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id m1so266835wml.2
        for <linux-man@vger.kernel.org>; Thu, 04 Mar 2021 17:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gDTQEr+XKdyVBRPnhx4J0P79C9n5UG0ku0WywXilFxU=;
        b=uWw1d4hstA5lBThZLgm93M8yObGZa8BLyY4O7NhZVF4q1xhKlevuwBKOdtEutqe8WL
         2BYaUzt3jx1+mX/VlyviiJPaEavb8NqqE6PCvOi6QPxZp9TDh4J2pA/utCw+s1jPwCh+
         +Nf/WlWNURyL1ut4hWZMMF5kJGgCZJFNEsE82D14odLNEw4hcctqhbUK2qCeGGdJFZMJ
         2PYUByiE/6cyCIr6b/LDo7Re+F7mTnkrU+giETQb/nFzuE70GjduAIx8Nw5qz7VC+5XD
         4BySq08w7CtqlQBpg3kCt5foImYbh4OrQkTi2YEEWf80Ra0WAW8QVgsBVt5l1a6bk8p5
         DVtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gDTQEr+XKdyVBRPnhx4J0P79C9n5UG0ku0WywXilFxU=;
        b=BtQYwoimJXZVyo58Offl97Dsg62WEM6yZXrw0/+kC8yLmtjQCGDjhRdVCSmDfyvW14
         bRj+UFbg4Ahvyein3n4GkDmk30CY7HRFHkB1QXnxg7EDYZq6kMDZfDJcJSqAQ2CMUEj0
         ZwHwLt7a249w8jJGTN5zPogX6tWAIDAooXbKqN53DK2AA0jdK9poZ1pZ/jWnu1lcK5KB
         qDsTkH0KPFuMzWw7CEtHB1J3j1gjkgesDF1NBfFEGWrAPeTUxhI/p/rq/4HT/bpo9oTh
         wYdXnZymYSwdJx+PIiWPLPPb2TZAK5Uv/HHx+CxKMofbioWD71kSG0o9cfi4gT1gtbQ1
         zwOw==
X-Gm-Message-State: AOAM533Sm6GAenTXxE6WGvK8SExaznWuhvgMgzNh8ZY0EXcpHznQ+gUq
        /fMg1n2NuwkUfpvJLjK24Lg=
X-Google-Smtp-Source: ABdhPJx5rMXyXzqMVHmLb8Kqp7gSQ0hkjLNrJYVx1rjLCRc19BuZfy9RK4bekOyH92TxqFvkjqYZjA==
X-Received: by 2002:a05:600c:3581:: with SMTP id p1mr6302367wmq.91.1614906833802;
        Thu, 04 Mar 2021 17:13:53 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 91sm1836809wrl.20.2021.03.04.17.13.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 17:13:53 -0800 (PST)
Subject: Re: [PATCH] makecontext.3: Fix function declarator with empty
 parentheses.
To:     Florian Weimer <fweimer@redhat.com>,
        Zack Weinberg <zackw@panix.com>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20210304194534.130735-1-alx.manpages@gmail.com>
 <CAKCAbMg3G4EAeuUhN9EQTDnrTSD0sPoH0uH1=kkpfj9qYorPdg@mail.gmail.com>
 <87v9a6hbgt.fsf@oldenburg.str.redhat.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c5df9263-edb8-c50a-e691-a454d4ae833f@gmail.com>
Date:   Fri, 5 Mar 2021 02:13:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <87v9a6hbgt.fsf@oldenburg.str.redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Zack, Florian, Michael,

On 3/4/21 8:45 PM, Alejandro Colomar wrote:
> glibc uses 'void (*f)(void)' for makecontext()'s second parameter.
>
> C11 marked function declarators with empty parentheses as
> obsolescent:
>
>
>>   6.11.6  Function declarators
>> 1 The use of function declarators with empty parentheses (not
>>   prototype-format parameter type declarators) is an obsolescent
>>   feature.

I quoted C11, but it's also in C99 (same section 6.11.6.1) and in C89
(in section 3.9.4) with the same wording.

>
>
> Let's use the correct syntax by explicitly using '(void)'.
>
> .../glibc$ grep_glibc_prototype makecontext
> stdlib/ucontext.h:51:
> extern void makecontext (ucontext_t *__ucp, void (*__func) (void),
> 			 int __argc, ...) __THROW;
> .../glibc$
>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---


On 3/4/21 9:10 PM, Zack Weinberg wrote:
> On Thu, Mar 4, 2021 at 2:48 PM Alejandro Colomar via Libc-alpha
> <libc-alpha@sourceware.org <mailto:libc-alpha@sourceware.org>> wrote:
>
>     glibc uses 'void (*f)(void)' for makecontext()'s second parameter.
>
>
> Did you mean ‘void (*f)()’ ?

I did actually mean 'void (*f)(void)'.  Glibc uses that for the
prototype (as you can see from my commit message (see above)), and as I
confirmed just now, it also uses that type for the definition of the
function:

[
.../glibc$ grep -rn '^makecontext\s*('
stdlib/makecontext.c:22:makecontext (ucontext_t *ucp, void (*func)
(void), int argc, ...)
.../glibc$
]

However, I should have read the manual page (I must admit that I only
read the SYNOPSIS and EXAMPLES sections of the manual page and the glibc
source before writing the patch).  It's clear that the prototype that
was being used in the manual page was more correct (in the sense that it
more accurately represented the actual expected function pointer) than
the glibc prototype (eventhough the glibc prototype is more standards
conforming).

So my patch is wrong.

Florian, should I file a bug in glibc's bugzilla?

>
>     C11 marked function declarators with empty parentheses as
>     obsolescent:
>
>
>     >   6.11.6  Function declarators
>     > 1 The use of function declarators with empty parentheses (not
>     >   prototype-format parametertype declarators) is an obsolescent
>     >   feature.
>
>
>     Let's use the correct syntax by explicitly using '(void)
>
>
> Unfortunately this change would be incorrect. makecontext’s second
> parameter really is a pointer to a function that takes any number and
> type of arguments, and there is no other way to write that in C than
> ‘void (*)()’. Which, yes, means this function cannot be declared in
> conformant C11.

Yes, you're completely right!  Thanks for noticing.


On 3/4/21 10:10 PM, Florian Weimer wrote:
> * Zack Weinberg:
> 
>> This is actually the Austin Group’s primary rationale for deprecating
>> makecontext and its relatives.
> 
> That's a bit surprising because open and fcntl have a similar problem:
> the argument type before the ellipsis cannot be int.
> 
> And doesn't a later C standard add a generic function pointer type?

Ahh, I found it.  It's not in any standard, yet, but we might see it
soon in C2x: <http://www.open-std.org/jtc1/sc22/wg14/www/docs/n2230.htm>

Actually, one of the proposals is to reuse the empty parentheses for
this generic function pointer (thus removing it as a valid function
declaration), so the current prototype used in the manual page would
still be correct.

Another proposal is to add 'funcptr_t' for that, which seems to be
compatible with older standards.

You could even use it in glibc.


Michael, please ignore this patch.


Thank you all,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
