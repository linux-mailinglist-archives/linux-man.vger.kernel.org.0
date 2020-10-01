Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A5F5280067
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 15:46:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732020AbgJANq0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 09:46:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732018AbgJANq0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 09:46:26 -0400
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com [IPv6:2607:f8b0:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49907C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 06:46:26 -0700 (PDT)
Received: by mail-il1-x143.google.com with SMTP id l16so6122996ilt.13
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 06:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OEONiDFBN4T8NTzCiQWFt5d4s8KvBNDZ0U5pxfGLqRM=;
        b=vW2KM6yVJYUCdBFejB2+aCMUNEdwBoQl2xpUEeRTqszw0J/wlGJj37JFTnULuPTq59
         3HFqohov9wU31FS/UbiQ+OL86XG078itIEitdA358xOpjtmLapZDP+2uN0FRhbEDNHPg
         dbgJY3HtX6TZrSARB9OrDxNfi5NBKVwM1pM4916Y4hJb07IA1njk5g5hDoc46++akLVk
         lLhF89Q67APnfohIKsV7NEsdqqFfpG4Q4BCOoINnRiqtT0wj2ouM4KcgqYSu/MZaMmvP
         1E7Q4V44YXCcfakvyFyg80p4A0vGgWyHvRtj6vzZ6xRAdc4Rra50zE0f8wyZjazJHW/9
         pDNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OEONiDFBN4T8NTzCiQWFt5d4s8KvBNDZ0U5pxfGLqRM=;
        b=l6mMwPW0/QPTG5HXfMoN3TiS939v71XGJrjnn5ZvrOMfRYrELvzO3RdPVfrnBmGviI
         0cIN0ehFdJ48hM0cwPZJ5ikRh12mw2wSCHkhe8m8wWrEg2kdF5TQbvdDoFVYXsAsqTYJ
         kFSprhHK56B9Oo05JcnRadtecJuvnI4RAvZV2M5o80/K3N6r2+zVIzeJ35Sh1Ecnk18e
         b4gpoB1VYkFDnpovFdw349dOY9Vxc1l7o/PO7aF+N0ulQCYjFKlP1OdIXUMy48ARUrOx
         W+v/wVcxOeMoA4TgmYnrOCHLE3UElavqv1nG9fmLSmkyechNRO2xuronXanfGX3BM59G
         OnhA==
X-Gm-Message-State: AOAM531mfZunvUlfAZIaJW3cAHewCwiTc64Ie6DcVjP7yd05kj+piUAQ
        sxiBTr7E9ZMlfQncovamNrhkFs1jZmbtMeRWqFZ26XvCmn4=
X-Google-Smtp-Source: ABdhPJw+Wz8W8qIF2JvdoaXWXvI7GLcmM4ZZOdUmraTR+Hztn9U0uF8pAHMA2QJowYAKr4k+icK8AhjjKq0noJGL5ZE=
X-Received: by 2002:a05:6e02:e87:: with SMTP id t7mr2475477ilj.261.1601559985648;
 Thu, 01 Oct 2020 06:46:25 -0700 (PDT)
MIME-Version: 1.0
References: <f6179bab-bbad-22f7-0f87-c06988928ec2@gmail.com>
 <CAH6eHdSHEjjjDtBCFO93NXb3bCGtYg6L35injf6pz3bMoL=3Fw@mail.gmail.com>
 <5ed7272e-1c81-d1f5-6a54-0fee4270199e@gmail.com> <20201001125401.GF29000@arm.com>
 <9937df9c-f516-eada-682f-a755700231ff@gmail.com>
In-Reply-To: <9937df9c-f516-eada-682f-a755700231ff@gmail.com>
From:   Jonathan Wakely <jwakely.gcc@gmail.com>
Date:   Thu, 1 Oct 2020 14:46:14 +0100
Message-ID: <CAH6eHdSO3JYLRtsZWUuNmBJrzW3Hxr3gKuvQ2n=Keba0bu2Dcw@mail.gmail.com>
Subject: Re: [RFC] man7/system_data_types.7: Document [unsigned] __int128
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     Szabolcs Nagy <szabolcs.nagy@arm.com>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>,
        linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 1 Oct 2020 at 14:22, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
>
>
> On 2020-10-01 14:54, Szabolcs Nagy wrote:
> > The 10/01/2020 12:14, Alejandro Colomar via Gcc wrote:
> >> Here is the rendered intmax_t:
> >>
> >> intmax_t
> >>        Include: <stdint.h>.  Alternatively, <inttypes.h>.
> >>
> >>        A  signed  integer type capable of representing any value of any
> >>        signed integer type supported by the implementation.   According
> >>        to  the C language standard, it shall be capable of storing val-
> >>        ues in the range [INTMAX_MIN, INTMAX_MAX].
> >>
> >>        The macro INTMAX_C() expands its argument to an integer constant
> >>        of type intmax_t.
> >>
> >>        The  length  modifier  for  intmax_t  for  the printf(3) and the
> >>        scanf(3) families of functions is j; resulting commonly  in  %jd
> >>        or %ji for printing intmax_t values.
> >>
> >>        Bugs:  intmax_t  is not large enough to represent values of type
> >>        __int128 in implementations where __int128 is defined  and  long
> >>        long is less than 128 bits wide.
> >
> > or __int128 is not an integer type.
> >
> > integer types are either standard or extended.
> > and __int128 is neither because it can be
> > larger than intmax_t and stdint.h does not
> > provide the necessary macros for it.
>
>
> Hi Szabolcs,
>
> I know GCC decided to not call it an integer type, and call it instead a
> scalar type, just to conform with the standards, at the same time
> provide a 128 int, and at the same time, not have to change the ABI of
> intmax_t.
>
> But it looks like an integer type,
> and in almost any possible way, it acts like an integer type.
>
> I could call '__int128' a signed _scalar_ type in the description, but
> that might confuse those who don't know these details.  Do you think it
> would be better to call it that way, or just keep the integer word?
> (Jonathan, I'd also like to know your thoughts on this, BTW).

I hope WG14 will adopt something like
http://www.open-std.org/jtc1/sc22/wg14/www/docs/n2465.pdf and the
whole mess will go away.

intmax_t will be deprecated, and implementations can provide 128-bit
integers without caveats.
