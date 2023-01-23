Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14ABA67815E
	for <lists+linux-man@lfdr.de>; Mon, 23 Jan 2023 17:28:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231936AbjAWQ2c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Jan 2023 11:28:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232023AbjAWQ2b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Jan 2023 11:28:31 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76BAE2A167
        for <linux-man@vger.kernel.org>; Mon, 23 Jan 2023 08:28:27 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id h24so14765635lfv.6
        for <linux-man@vger.kernel.org>; Mon, 23 Jan 2023 08:28:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=k/9bzQ3KhllqTwucsLf4jQ2WPmWx82hKNtl8Edy1YIc=;
        b=DYKzz21BU7eeU6GtmoYY4zt0f/fF70NPw7ULcTF2iIihct7tg0ALw3pV0IVR+4Au2T
         xUpUPoqMas84cVcVgjRfyvTllwpBk4WdPUVU3i7e8ELyZV0v/Sc7Tbl4lUvpfz+yXurH
         k264fMqSMdWAhrWhENzsbZE8z3fAWL3IoqYGqEVwn0jKDZY89zaEiK6tMWZzlwHZvWFq
         /W8ZHhHHf1NoUDvfBvn3etH0ktsILdyh216O3ZI589CVBM6yLu/jgSA9JYKfTAr3bdCL
         h7CrtDtIzrVrMsA0Fei1ZhVG8sZKLblaszljdxAW+Kdnhi31BrnGKl+cAw6C+Oa/monK
         blmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k/9bzQ3KhllqTwucsLf4jQ2WPmWx82hKNtl8Edy1YIc=;
        b=7ow8ORRYvXNRiek2kwmpcrHkM03J237ylJfr4RXYqVq11T4KEOZQl2/8SXseSeVX4I
         j1BdOTK+JU/f2J8OAHRpJ5+gz3KcjOGT2SAC4zW5Y9vaUkJKw2HiCqR0EhZVlXAK6NP5
         2ORr4kQ1nxXOtZaJTY1GeqMIwCY52Vss3ygeQssPtnUzLc8t4TBz1gZH9/l0/3rONw0B
         tjAF9fVvxinHAb/V944+y0JpxLPljgWeXqLhwuO+bBtMZC78n3UlTbbNthc/16XSKPlZ
         /0rzCHgLYHhe9cnhs+JuqhsjRwKt1c4PPEN4sTgyDswnEXKBYcWlrTe/qvrq6e0myjY+
         KvPw==
X-Gm-Message-State: AFqh2kqgBly+OoX9IEO23kTKBlC9kqtoiEUDA++/AleWoCKWfWBTWo35
        SXFx+8/SypGzT5867jAir1RMmDfwB/SGkRSFsx2picwE
X-Google-Smtp-Source: AMrXdXsAwTtIelC3Y8qZJ99l6cUtHSIirW3+5MLUeTIBMGFzAjv5xkccWdUwC/34psDYr/rxiP/KbrCz+3+8+8q8vcA=
X-Received: by 2002:a19:6a04:0:b0:4cc:8bf1:f9d with SMTP id
 u4-20020a196a04000000b004cc8bf10f9dmr1173435lfu.509.1674491305761; Mon, 23
 Jan 2023 08:28:25 -0800 (PST)
MIME-Version: 1.0
References: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
 <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
 <61bbb556-ff9b-ebdc-5566-bc1ae533c0aa@gmail.com> <CACKs7VDGAaSXkjeuBdvEkFbFJ_OnwObTf1_9eVb44RJf-O3Fwg@mail.gmail.com>
 <4c47dcb0-f665-d6ff-cc26-d5f4e99bd739@gmail.com>
In-Reply-To: <4c47dcb0-f665-d6ff-cc26-d5f4e99bd739@gmail.com>
From:   Richard Biener <richard.guenther@gmail.com>
Date:   Mon, 23 Jan 2023 17:28:13 +0100
Message-ID: <CAFiYyc29oHbDqP8fdrT8cSr0Vnunu24sGQuQb65vK0P37rfnmg@mail.gmail.com>
Subject: Re: struct sockaddr_storage
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        GNU C Library <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
        Igor Sysoev <igor@sysoev.ru>,
        =?UTF-8?Q?Bastien_Roucari=C3=A8s?= <rouca@debian.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Jan 23, 2023 at 5:04 PM Alejandro Colomar via Gcc
<gcc@gcc.gnu.org> wrote:
>
> Hi Stefan,
>
> On 1/23/23 08:40, Stefan Puiu wrote:
> >>>> According to strict aliasing rules, if you declare a variable of type 'struct
> >>>> sockaddr_storage', that's what you get, and trying to access it later as some
> >>>> other sockaddr_8 is simply not legal.  The compiler may assume those accesses
> >>>> can't happen, and optimize as it pleases.
> >>>
> >>> Can you detail the "is not legal" part?
> >>
> >> I mean that it's Undefined Behavior contraband.
> >
> > OK, next question. Is this theoretical or practical UB?
>
>
> Since the functions using this type are not functions that should be inlined,
> since the code is rather large, they are not visible to the compiler, so many of
> the optimizations that this UB enables are not likely to happen.  Translation
> Unit (TU) boundaries are what keeps most UB invokations not be really dangerous.
>
> Also, glibc seems to be using a GCC attribute (transparent_union) to make the
> code avoid UB even if it were inlined, so if you use glibc, you're fine.  If
> you're using some smaller libc with a less capable compiler, or maybe C++, you
> are less lucky, but TU boundaries will probably still save your day.
>
> > People check
> > documentation about how to write code today, I think.
>
> I'm fine documenting how to do it today.  But before changing the documentation,
> I'd like to take some time to reflect on what can we do to fix the standard so
> that we don't have this semi-broken state forever.  When we have a clear idea of
> what we can do to fix the implementation and hopefully the standard long-term,
> possibly keeping source code the same, we can do a better recommendation for
> programmers.
>
> Today, you can do 2 things:
>
> -  You don't care about UB, and would like that C had always been K&R C, and GCC
> just makes it work.  Then use `sockaddr_storage`.  It will just work.  When it
> stops working, you can blame the compiler and libc for optimizing way too much.
>
> -  You care a lot about UB.  Then write your own union, as all the `sockaddr`
> interface should have been designed from the ground up.  That's what unions are for.
>
> Which should we recommend?  That's my problem.
>
> I don't want to be documenting the latter, because it's non-standard, and it's
> still likely to do it invoking UB in a different way, because it's a difficult
> part of the language, and when you roll your own, you're likely to make accidents.
>
> So, ideally, I'd like to document the former, but for that, I'd like to make
> sure that it will work forever, since otherwise we'd be blamed when somebody's
> code is compiled in a platform with some combination of libc, compiler, and
> phase of the moon, that makes the UB become non-theoretical.
>
> I think we can fix the definition of `sockaddr_storage` to have defined
> behavior, with the changes I'm discussing with Bastien, so I guess we'll
> document the former.
>
> >>> Will code break in practice?
> >>
> >> Well, it depends on how much compilers advance.  Here's some interesting experiment:
> >>
> >> <https://software.codidact.com/posts/287748/287750#answer-287750>
> >
> > That code plays with 2 pointers to the same area, one to double and
> > one to int, so I don't think it's that similar to the sockaddr
> > situation. At least for struct sockaddr, the sa_family field is the
> > same for all struct sockaddr_* variants. Also, in practical terms, I
> > don't think any compiler optimization that breaks socket APIs (and, if
> > I recall correctly, there are instances of this pattern in the kernel
> > as well) is going to be an easy sell. It's possible, but realistically
> > speaking, I don't think it's going to happen.
>
> The common initial sequence of structures is only allowed if the structures form
> part of a union (which is why to avoid UB you need a union; and still, you need
> to make sure you don't invoke UB in a different way).
> <https://port70.net/%7Ensz/c/c11/n1570.html#6.5.2.3p6>

GCC only allows it if the union is visible as part of the access, that
is, it allows it
under its rule of allowing punning for union accesses and not specially because
of the initial sequence rule.  So

 u.a.x = 1;
 ... = u.b.x;

is allowed but

  struct A *p = &u.a;
  p->x = 1;
  struct B *q = &u.b;
  ... = q->x;

is UB with GCC if struct A and B are the union members with a common
initial sequence.

Richard.

> >
> >>
> >> I wouldn't rely on Undefined Behavior not causing nasal demons.  When you get
> >> them, you can only kill them with garlic.
> >
> > OK, but not all theoretical issues have practical implications. Is
> > there code that can show UB in practical terms with struct
> > sockaddr_storage today? Like Eric mentioned in another thread, does
> > UBSan complain about code using struct sockaddr_storage?
>
> It's unlikely.  But I can't promise it will be safe under some random
> combination of compiler and library, and depends also on what you do in your
> code, which will affect compiler optimizations.
>
> Cheers,
>
> Alex
>
> --
> <http://www.alejandro-colomar.es/>
