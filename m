Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E18C1B32C3
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 00:48:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726151AbgDUWsl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 18:48:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726039AbgDUWsk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Apr 2020 18:48:40 -0400
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B722C0610D5
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2020 15:48:40 -0700 (PDT)
Received: by mail-qt1-x836.google.com with SMTP id n20so144879qtp.9
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2020 15:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=94bHMTD3gtaHkdxK/TxrF5rJ+J5A8LaPXVJiUX43Hdg=;
        b=bWmI6o0jAqI5uV1Z4zaz0388kcF1h327eirodVyXR0kYKWs6OWeT6ApoBIunfRDu1D
         w+E9RzRxrQ3bRxv7lXSPJcbJf8NVoDWvwBI8NU4BUxdJmByskbat8oSduGG29nd1W4n6
         U4cCY/xk0Uvtj49wyOMT01EmclpFyYcGJK0Jka7V0ScNrbpOa7DZYvqxoNXe0NEwhJ/S
         CWM5VIeTDqV9toSGgdX7zOPLT9FRG9W2j5RXguWrkPj8c5WkLr6SNhnod3X7eqXC2i0i
         +Fq4nMmvLhoyhqG+uWyLINlFPn143kGAlJTbKqRGW3w8a/daD5neJedaS9HVw2CHzUkB
         szDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=94bHMTD3gtaHkdxK/TxrF5rJ+J5A8LaPXVJiUX43Hdg=;
        b=N9GzE6Bw/TImoBx+tWxTafZet0c9FnOk5y+fwmgKWMsv1KNEDwvY4tgJs0COjlp7gh
         vpopuhGtLn4XGwgxg5qUp3Cfmx0j/8/Y8LJMq486FDyu1P+FEFOu3C1zhV7SRzbcgqZo
         1USSgTkQu5yzPrUPn5k1Vp4VineXSzoDKgnsUrPXW6rTCOczu7Nj/ZmYDewQLA3zjcU9
         JS6p3Rrv0vfHN0c0VnrHX4hcGjXkKoirts1Xfj5cz1/Ix0JsuDKs40J8TVtd1V+T/aRI
         C/ToEV54xHUuueiqx6AhnUG6fY9GaBEV6tRvtmy0T8kPolneV/fxIP8BplcZsFm5Bkhe
         a5zg==
X-Gm-Message-State: AGi0PubLbb/bvkCoORieTqlUWra5gcNszT86dIcB+DT61R4z0TwSAf7a
        t8jeLPCPF6TIAXd8Koc/xDP8czu2RKplGL5uhVMKtLfh
X-Google-Smtp-Source: APiQypIlYMmCdtekJUhYZVCYb8OZmnZJwi1mEhzchL7gLuYDf1VEWYE0F8kY5m2Tpm50+kjFazBzsPjW+JFCvV2fySw=
X-Received: by 2002:ac8:19dd:: with SMTP id s29mr23952122qtk.164.1587509319317;
 Tue, 21 Apr 2020 15:48:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAFLxGvxhdUtYudCzxJrVs7np5Aby1o9cXEDp5C9rw2kS74pDkQ@mail.gmail.com>
 <871rogpld6.fsf@mid.deneb.enyo.de> <CAFLxGvxDd8LBW1RLc4hu-sty1_9q0fB0Uo_QMbQ6j+dKT2QmaQ@mail.gmail.com>
 <87v9lso5d1.fsf@mid.deneb.enyo.de>
In-Reply-To: <87v9lso5d1.fsf@mid.deneb.enyo.de>
From:   Richard Weinberger <richard.weinberger@gmail.com>
Date:   Wed, 22 Apr 2020 00:48:28 +0200
Message-ID: <CAFLxGvzGyerUxinHxL=Rpqnm6wb3uTq+gjvL=_af4QzkOx3GHQ@mail.gmail.com>
Subject: Re: Clarification of pthread_cleanup_push() needed
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     Richard Weinberger via Libc-help <libc-help@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Apr 22, 2020 at 12:12 AM Florian Weimer <fw@deneb.enyo.de> wrote:
>
> * Richard Weinberger:
>
> > On Tue, Apr 21, 2020 at 11:41 PM Florian Weimer <fw@deneb.enyo.de> wrote:
> >>
> >> * Richard Weinberger via Libc-help:
> >>
> >> > But NPTL implements thread cancellation with signals, if I'm not
> >> > completely mistaken the cleanup routine will run in signal context
> >> > then.
> >>
> >> Deferred cancellation only occurs in signal context if the
> >> cancellation is acted upon from within a signal handler.  For the
> >> signal handler case, whether cancellation handlers are restricted to
> >> async-signal-safe function calls depends on the type of signal (some
> >> are synchronous, not asynchronous) and what is interrupted by the
> >> signal (for asynchronous signals).
> >>
> >> Asynchronous cancellation has even more constraints than asynchronous
> >> signal safety, but it is rarely used.
> >
> > I should have noted that I'm using asynchronous cancellation.
> > Which constraints are these?
>
> See pthread_setcanceltype(3):
>
>   Functions that can be safely asynchronously canceled are called
>   async-cancel-safe functions.  POSIX.1-2001 and POSIX.1-2008 require
>   only that pthread_cancel(3), pthread_setcancelstate(), and
>   pthread_setcanceltype() be async-cancel-safe.  In general, other
>   library functions can't be safely called from an asynchronously
>   cancelable thread.
>
> The manual pages and the glibc manual also contain information about
> AC-safety, but you cannot rely on them.  They depend on implementation
> details which may change within release branches.

Well, this manpage does not talk much about the cleanup routine, except for
"Consequently, clean-up handlers cease to be useful", which is clear as mud.

I'm well aware that async cancel is not nice at all and my code can be
interrupted
at any time.

Back to the cleanup routine, with asynchronous cancellation:
- it must not use any function which might got interrupted by cancel,
- it may only use async-signal-safe function, except long jumps.

Is this correct?

To give you some background, I'm porting an application to NPTL which comes
from an operating system where cancelling threads and automatic
cleanup is the way to go.
Completely rewriting the application is not an option, so I need to
figure how far I get with
pthread_cancel() and friends.

-- 
Thanks,
//richard
