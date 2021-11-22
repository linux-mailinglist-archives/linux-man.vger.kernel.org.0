Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FC9645928E
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 17:00:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240050AbhKVQDV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 11:03:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240049AbhKVQDV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 11:03:21 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89E60C061574
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 08:00:14 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id p3-20020a05600c1d8300b003334fab53afso17244366wms.3
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 08:00:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=hCo+oB2vWzW3ur4jR9jhHX2sLW8Yaf5oIXzPajaKT/c=;
        b=a3rX8lHCbsHtc7U4hTxwmoVWMqM01jxtVwc2fGZTn+E0+KLtvbATt6pRCGNTsAqgl6
         X2mvTOBAZ6Jyrt982sjgzowiQ1CmbDO4amLvAoUcZ6lC1WsQ8yesqyA8FkU074OKx2uI
         wekWoAwNQaAV/ecIdZt/8mG1s0D1Q9ziuGjI2FOkJHDfDp0BB8abu0fxcSJMczAkqqIe
         +4aQxkTFXexBWqfDJ5KDEzGjyPVo/5RPysPlkPHzKvEJFvCa9JOGCvtKXVfbBMCFXXWn
         Vm7hjbeDrbJ6PEO6lc+vOZaqG1zskM7cbf3KEM1dJ9eboQHNr4k8eFt0kK99EDacZW66
         T2CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hCo+oB2vWzW3ur4jR9jhHX2sLW8Yaf5oIXzPajaKT/c=;
        b=YMtBU9ZwcKj92Q1A+hE6VYOTUis7YQGUh+ZiqbtMmsAw43Tv70OYW/kcTz/fZqwi0A
         y8u0clUcjQmTTAFRsR7UaIDiR7AE26klRwrhWcpJONTS4DCoaRZKTWMI6I0RpcWW6EKS
         q5vEPieknYCW4/xV7dxsR9gZD4GXqGXhBb0YUErE3U3ghLqUKt8CuJaVtlvMqPYEXq7p
         OQ/OuO5F7f8vxfOCmVmnF56wPY/CdH5y5VvSgpddkP2H9whjLPa89UtvvaNVGbmXoSH8
         ybxHWXfOjgyU54oxJqUxV081E/M1qW2D2z1qsXZk4dXDCBMPurbBhbbhSfogrMHTM2Vm
         F2rA==
X-Gm-Message-State: AOAM532Uc8XQfyk0x0k1UggXA7WYiTi/Tbfvv+rlgq9SoGtekFByOAmf
        TjTz/uMLya3U4NJkwEtDO/s=
X-Google-Smtp-Source: ABdhPJx5R4t6gvpixSIuTDRoJS3EWyGVr4EG+gZEy6ih//PH877ugKFFE1ZLdaiPxCT+95CW6f61RA==
X-Received: by 2002:a05:600c:2292:: with SMTP id 18mr31580015wmf.6.1637596812950;
        Mon, 22 Nov 2021 08:00:12 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o4sm25300386wmq.31.2021.11.22.08.00.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 08:00:12 -0800 (PST)
Message-ID: <ba2213cc-63bf-0b2d-0964-3a80dc37e0dd@gmail.com>
Date:   Mon, 22 Nov 2021 17:00:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: Bold and italics, semantics and constness (was: [PATCH v2]
 mctp.7: Add man page for Linux MCTP support)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20211111015323.3542313-1-jk@codeconstruct.com.au>
 <76dd85f7-ab8a-1dcc-5b1a-5eb9a87d23bc@gmail.com>
 <20211112093536.hvifxgdtb2y6jzge@localhost.localdomain>
 <3fe7250d-eca3-663e-8ffe-11f67c08a879@gmail.com>
 <20211122090614.phhlheldl75xbxu6@localhost.localdomain>
 <ae193c20-6b65-be9a-5670-d6868cbae431@gmail.com>
 <20211122135240.frxwgjbif72akv3n@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211122135240.frxwgjbif72akv3n@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[I removed Michael; not to spam him :]

On 11/22/21 14:52, G. Branden Robinson wrote:
> Hi Alex,
> 
> At 2021-11-22T12:50:55+0100, Alejandro Colomar (man-pages) wrote:
> [much snipped]
>> I have had a very bad (and luckily short) experience with
>> Lean/Agile/XP/MVP.
> 
> Well, they're all different things.  Supposedly.  Perhaps not.  :-|

My experience was with Agile/Scrum.  I've read about the others, and
they all seem variants of a similar thing.  I can't talk about the
others so much, since I haven't experienced them, but prefer to live
ignorant.  For agile, I can say that, for how my brain works internally,
it just destroys my performance, and my happiness.  Most job offers I
see today, either say Agile, or say nothing at all; I rarely see any of
the others being mentioned in job descriptions.  If I see agile, I will
very likely discard the offer.

> 
>> If I can help sabotage that, I will happily and intentionally do.
> 
> Hustlers will always be flogging "revolutionary" innovations to
> managers, and managers will always suck them up.  It's not even that
> there are never any worthwhile ideas in these manifestos, it's just that
> you can fit that subset on an index card and the margins in publishing
> index cards isn't high enough to attract anyone's interest.

My opinion is (of course I'm not a manager, and wouldn't like to be):
let the programmers program however they are more comfortable.  Each
brain works in a different manner.  Forcing one way will, at best,
reduce performance.  If anything, a manager should recommend reading
about a methodology (maybe after reading about it, the programmer likes
it), not impose it.  I've been in interviews where I've been asked a lot
about if at my current job they used Agile and how much they implemented
of it, and almost no questions about my programming skills...

> 
>> Are we talking about libc, or C documentation in general?  Because
>> libc doesn't have any 'const' variables at all, at least that I know
>> of.
> 
> I was speaking in general, but the Austin Group is kicking around a
> const struct member for 'tm' right now.[1]
> 
>> So we don't even need to care in the Linux man-pages.  Maybe manual
>> pages for other C libraries can better decide what to do with those.
> 
> I have this sick idea that everything that can be const, should be.
> It's better for both parallelism and, generally, robustness.
> 
>> I think we're talking about 2 different things:
>>
>> - 'const' variables
>> - pointers to 'const'
>>
>> 'const' variables can never be cast away.  It's an error.
> 
> Agreed.
> 
>> $ cat pointer_to_const.c
>> void bar(const int *p)
>> {
>> 	int *q;
>>
>> 	q = (int *)p;
>> 	*q = 3;
>> }
>>
>> This is allowed by the compiler, but it is Undefined Behavior _unless_
>> the variable pointed to by 'p' is really not const.  Casting away
>> const is IMO also braindamaged, so I don't consider it a valid thing.
> 
> I remember having to do this on rare occasions, but don't recollect the
> details.  I'm uncertain whether I was working around a bad design or
> just being a bad programmer.

I also remember doing this.  There's a valid scenario:

Callbacks where the interface is generic (void *).  In that case, you
need to provide a prototype that matches the interface, and even if you
don't modify the input, you need to provide a function that accepts a
non-const, to avoid having to cast the function pointer, which would be
even more dangerous.

Then, when you pass const data through the (void *), since you know it
won't be modified (you wrote the callback), you're safe casting it to
(void *).

I think there's no better way around that than casting to (void *).
However, that's rare enough not to be alarmed.

> 
> There is of course the constant pointer to a constant object.
> 
> const int * const foo;
> 
> ...which, because people insist that type qualifiers must come before
> type names so that declarations read slightly more like English, leads
> them to ugly constructions like
> 
> const int *const foo;

I like it this way.  I may be inconsistent, but I'm used to that way :)
I've read an ad-hoc argument that you can read it right-to-left as:
"foo is a const pointer to an int constant."

To try to justify myself, maybe, my brain considers 'const' to be a more
important piece of information than 'int', which is normally already
obvious by the context.  Since 'const' is closer to the left-side blank
it is more easily parsed by my eyes... just trying to make some sense.

> 
> to remind themselves which way the operator binds...when they _could_
> just write things so that a simpler "noun-adjective" rule leads to a
> correct parse in meatspace.
> 
> int const * const foo;

Yes, every objective argument would recommend this form, but
subjectively, it is ugly to my eyes :p

> 
> Klemens flogs this in _21st Century C_ (O'Reilly).
> 
>> One of the things that I like from C++ is that they correctly
>> implemented const.  Hey, "asd" is 'char *' in C, but of course if you
>> modify it, demons fly out of your nose!
> 
> With -fwritable-strings, they stay inside and poke your sinuses with
> pitchforks...surely an improvement(?).

Sometimes I would just like to see backwards compatibility to be
ignored.  There are things that are just wrong.  If C30 decided to make
const-correctness as it should have been from the beginning, and made
string literals to be (const char *), old programs that would want to
recompile with C30 would need to be fixed, but how much of a problem
would that be?  There's always the option to specify -std=c89 if you
want to avoid fixing some program.

But I also like how slow the C standard advances.  That way they avoid
adding much of the insane stuff that C++ adds.  Even the C standard adds
things that I very much doubt they were ever needed (static for array
parameters?).  So in the end, having so few changes is a good thing.

> 
>> Going back to formatting:
>>
>> Pointers to const are just variables.  Their value is the address of
>> some const, but that's not important.  The important thing is that
>> they are variables, and therefore, you use italics with them.
> 
> Okay, I'm with you so far...
> 
>> So the only thing that IMHO should be bold (apart from constants and
>> macros that expand to constants) should be global 'const' variables:
>>
>> const int FOO = 3;
>>
>> which some people prefer over macros, and which in C++, one could
>> write as:
>>
>> constexpr int FOO = 3;
>>
>> In the case above, I don't see a reason why one would want to
>> differentiate that from say
>>
>> #define FOO  3
> 
> It's a good argument.  The only ones that I can marshal against it are
> that in the first case, 'FOO' is a C object and an lvalue (which is
> almost saying the same thing).  I don't know C++ well enough to address
> the second example, but I'm learning C++98 so that I can deal better
> with the groff code base, which is written "Annotated Reference Manual
> C++", a dialect that is as old as groff itself (1990).

The second one guarantees that FOO evaluates to a constant at
compile-time.  Therefore, you can for example use it to initialize
non-VLA array sizes.

I use C++ as "C with extensions" (not even "C with classes").  I like
some of it's extensions so much that I use them in C:

#if !defined(__cplusplus)
#define auto  __auto_type
#endif

If it confuses someone, I'm sorry :)

> 
>> But in function parameters, 'const' is useless in variables, since
>> they already got a copy, so they won't alter the original.  And in
>> pointers, const applies to the pointee, but the pointer itself is
>> variable, so italics.
> 
> I think of 'const' in function definitions as asserting invariants.
> Consider the following example, where I use two consts that it sounds
> like you would not, to prevent 2 different forms of stupidity.

In the function definiton, it may be useful (but not so much).
In the function prototype, it is useless.

> 
>     void func(int const foo, int const * const bar) {
>     //void func(int const foo, int const * bar) {
>     //void func(int foo, int * bar) {
>         foo = 3;  // prevented by 'int const foo'
>         *bar = 4; // prevented by 'int const * bar'
>         bar++;    // prevented by 'int const * const bar'
>     }

I tend to write functions so short (usually fit a screen; < 24 LOC) that
you can see if you're doing something really stupid.  In something like
glibc's source code, where you see functions with more than 200 LOC,
then const may make sense.

I also very consistently differentiate array syntax from pointer syntax,
so I rarely use ++ to advance pointers.

I'd write:

     void func(int foo, const int *bar, int baz[foo])
     {
	 int i = 0;

         foo = 3;  // I'm editing my own copy. There's not much danger
                   // If I'm really stupid in the implementation,
                   // that has nothing to do with the interface.
         *bar = 4; // prevented by 'const int *bar'
         bar++;    // Having a clear distinction in the prototype
                   // makes this mistake very rare.
         baz[i++] = 5;
     }

In glibc code, for example, they don't use const variables in the
prototypes, but they use them in the definitions.  I'd rather write
shorter functions, and a more readable coding style would also help.

I like to limit prototypes to info that is relevant to the interface,
and I also like the definition to be identical to the prototype.

I limit my usage of const to interfaces, and to achieve
const-correctness.  Avoiding silly mistakes in the implementation of an
algorithm creates too much noise to my taste.

> 
>     int main(int argc, char *argv[]) {
>         int foo = 1;
>         int bar = 2;
>         func(foo, &bar);
>         (void) printf("foo=%d, bar=%d\n", foo, bar);
>     }
> 
> When you're writing a parser (groff has many of them), you pass 'const
> char *' around all the time.  Often these pointers are ones you got back
> from strtok() or similar.  You can pass them to a function to do some
> kind of validity checking--but do you want that pointer advanced through
> the string by the helper function, or not?  If not, then you can make
> the pointer const, and rely on the helper function to make a copy of it
> if necessary.  If you do want it to advance the pointer, for instance if
> it's a function that skips comments and/or white space, then you can
> pass a non-const pointer, and it will give you back a pointer that is
> aimed at the next valid input token.

By returning the pointer?  Or by a pointer-to-pointer?  Otherwise, the
edit is only visible to the copy of the pointer.

Regards,
Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
