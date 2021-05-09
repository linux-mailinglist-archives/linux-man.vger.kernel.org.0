Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F03F3777A3
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 18:40:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229864AbhEIQlf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 12:41:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229862AbhEIQle (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 12:41:34 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51233C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 09:40:31 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id v24so13657814oiv.9
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 09:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=AVXD0R2cKhMcWy4q3MDYPhkeDnWCKsvIJ6k6M3U343g=;
        b=OR8uD7LsXmSfqk3FhgHYAqKgw0vKCeBgNmvSqGLEbwcMljXvY+nWnMksjmv7m4rLvf
         DYjrBESTq2h2qSkv91R+ItJhIyYgQ/Bf/ORDvnxCgsUG2+17LuGH6ScTP+Zj6Hy9gzst
         mFFQpmxfs7YdD1tap3kr+c+hPT6ExXU0OeeVqXCrHOCAKrXTgZubc4DJnE0B/iRJK+XJ
         ZxEu0kOW90Wii8Ej7UIbtiu4oKddCRjVikc/ABu06E/iknB5Q2x/x7TjlpT0XYTnyrb8
         lHTpNBeuyl3BccSFxvy6AZmJJ44AurDUEj00LucaJOJcEoB/XcDE1xPYesVZZplVJx1D
         XNJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=AVXD0R2cKhMcWy4q3MDYPhkeDnWCKsvIJ6k6M3U343g=;
        b=Jxnl1B0iYYAEwA9Q1E/QXNSIvgdhKq3RlzZq4blwh0QUiSayvOYMT2qDnW5BoyHM0h
         ZxOSKRhPOAmuT869SRtbUjGX31jmFDKyjBqODZPVwjWXFHJqDly0NgKPYs0juTHAe7j2
         fki+BvdUSRTw/SApQlor0cNJ8CXqn7Cx85s3yAmmcaB3vfk3ai61Nsb2H57JpUBxOsKL
         YLo/rwThJ8cAcM9dY55aThqxJDJIoNucSJCVRuwEbQfzoOzwclSbRjVP1IFaAjw3JxfE
         AMxd4dX6moMZ4y+OADfFRyaYLBe5Fn3jHVZfxIdbjbHJBPcLQ6AB5e+Kj2U7bH3im9UW
         Q9ZA==
X-Gm-Message-State: AOAM533xW2OOg9vXCh47gJAaelA2QwoxNV2h6RKsBEJ/5QWGWzLWqhUc
        LLVrVTWBcn8OpOKMMowx/56F+e5nQCZgqaO5gEY=
X-Google-Smtp-Source: ABdhPJy9cNGCRNaAhXFgbBYVwJo26/L5D4JKFVoLzIg/AVdny5OSkM2mmgJ5VL1/fy828LFscxjHl4A9iN6TcFH40Yw=
X-Received: by 2002:aca:1906:: with SMTP id l6mr14912569oii.148.1620578430550;
 Sun, 09 May 2021 09:40:30 -0700 (PDT)
MIME-Version: 1.0
References: <1621111620246345@mail.yandex.ru> <9068beb3-70a7-ad96-e260-f53a886d622c@gmail.com>
 <1492841620310804@mail.yandex.ru>
In-Reply-To: <1492841620310804@mail.yandex.ru>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 10 May 2021 04:40:19 +1200
Message-ID: <CAKgNAkgbJBM5yiOtq9X-Ber+ns_8xcp-8jr7rSYLanz+HnQWXw@mail.gmail.com>
Subject: Re: Bug reporting
To:     Dave Chupreev <cdn.dev@yandex.ru>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        Roland McGrath <roland@hack.frob.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,

On Fri, 7 May 2021 at 02:21, Dave Chupreev <cdn.dev@yandex.ru> wrote:
>
> Well I see, I've tried on Linux and yea I didn't find any option to insert multiple definitions.

I think the only way to insert multiple definitions is by direct
manipulation of 'extern char **environ'.

Thanks,

Michael


> 06.05.2021, 01:37, "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>:
>
> [ added a few CCs ]
>
> Hello Dave,
>
> On 5/5/21 10:30 PM, Dave Chupreev wrote:
>
>  Hello, Alejandro.
>
>  On page 138
>
>
> I guess you refer to TLPI, written by Michael.
>
>
>       1.
>
>          Your version of /unsetenv() /should check to see whether there
>          are multiple definitions of an environment variable, and remove
>          them all.
>
>  How can I add such variables which have many definitions? According to
>  *putenv* and *setenv* functions, variables with the same names are
>  replaced if encountered.
>
>
> I haven't read that part of the book yet, so I ignore the context. But
> AFAIK, that can't happen on Linux, as you pointed out (probably neither
> on Unix systems in general, but I don't know for sure, probably Michael
> does). I guess the only possibility is if an attacker somehow modified
> your environment and inserted multiple copies of an env variable.
>
> The book (TLPI) states that glibc does check that, so I digged into the
> sources and found that in <stdlib/setenv.c>, around line 290
> (<https://sourceware.org/git?p=glibc.git;a=blob;f=stdlib/setenv.c;h=893f081af6b5a21b999a4056757fd69d1386c0d4;hb=HEAD#l290>).
>  That behavior was introduced by Roland in commit
> 196980f5117c8d38f10d64bf67eeb0924651675f
> (<https://sourceware.org/git/?p=glibc.git;a=commit;h=196980f5117c8d38f10d64bf67eeb0924651675f>),
> so maybe he can better explain the reasons behind the change (the commit
> msg is quite unexplicative) if he still remembers (that goes back to 1995).
>
> Regards,
>
> Alex
>
> --
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
