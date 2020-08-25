Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D5F52517C0
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 13:36:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729882AbgHYLf7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 07:35:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728993AbgHYLfq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 07:35:46 -0400
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com [IPv6:2607:f8b0:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8020C061574
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 04:35:45 -0700 (PDT)
Received: by mail-oi1-x243.google.com with SMTP id z22so11294215oid.1
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 04:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=OvtW+n3q9mFQct3up2DvDtJ3hBX/zI5e/cEE1ctnoJY=;
        b=ir9J8bt5aoYgBpeDJAmkUiq9eVchXQ95kWFMrS74CjYV3ctDqYyh0gnupa9emiNPhB
         lXdvrj5A6lgMN54DDcHQLmzY7/yA5V9xwU85AB990ZuagjDGkwgFL1WZskQmgWxK3MW4
         0GOK5DQMLrr8PO52DBjTg2Dst8AZBslW4HfPwZtLTP/lAVYYic3tmlrxWr7KOUPitY0o
         o652uM8huVvM8ARocybLoMJaqj2HIkc112qY7CtUOegzF/PvhOgr7yFf3iJchx97VxSe
         GUUQ8NTgYl4zw6veVovuvuWAynzy00XHXNbiVIgdzI4fZtYUZ7wBiOk0PONbuTDmLxFS
         YSCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=OvtW+n3q9mFQct3up2DvDtJ3hBX/zI5e/cEE1ctnoJY=;
        b=A1T1hVUCknp+BZtV/CBAaI4lrNGyfVmHQ2AYd9JpsZHgfNrn+tmml6l2Wzy1G1/JX6
         DhaHbE83K6JQfm82PHkPVUqsXs+WBodWtQIV9IQhVcUbYyyX8M2MQwctmUPaIOhm5u/Z
         RHCF3yj6rh8Ld7Z6F7Xa9b4EZQ6B7nP3FgP0e+VLsMW7v6zebVIIZUXFdd29QRfR7Mpd
         PM2uxsFwsxxyo+wyOA1SPtb7O1gfQ1xeT0SVt+87HAho3UA5tQ+8Gf3y4NFvDWdJdXT5
         S8K5vMfleUyPM++sevAiSLXjLAVk4Dl4674pudifqn8TVF5N6SNfQtyWZeM+zVyPJEHg
         ZtgA==
X-Gm-Message-State: AOAM532CNGrgEMdCGDR5IRWl0IXovM4EwtPZrmlnMBmS+wB1cw35s5Sx
        0SfHi10MKv3u0jATLkkpR955oh35+mBxy1bsU98=
X-Google-Smtp-Source: ABdhPJycM7EUD0Yo08t9Z75TycaoExcbR79exqnP7Q1q88rNahIQV+Tgx1Sf6m69EtYF6z4QoDfjZr1oI4k5q7edgaA=
X-Received: by 2002:aca:fc85:: with SMTP id a127mr722116oii.148.1598355345202;
 Tue, 25 Aug 2020 04:35:45 -0700 (PDT)
MIME-Version: 1.0
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <e1b424c2-77c1-e995-a866-67a122d7bb07@gmail.com> <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
In-Reply-To: <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 25 Aug 2020 13:35:33 +0200
Message-ID: <CAKgNAkisp5xz+gOfLAv2XnTZfkOa+sdoKz7nBJjFvUPyWmWbGQ@mail.gmail.com>
Subject: Re: [patch] memusage.1, bind.2, eventfd.2, futex.2,
 open_by_handle_at.2, perf_event_open.2, poll.2, signalfd.2, sysctl.2,
 timerfd_create.2, bsearch.3, cmsg.3, getaddrinfo.3, getaddrinfo_a.3
 getgrouplist.3, insque.3, malloc_info.3, mbsinit.3, mbstowcs.3,
 pthread_create.3, pthread_setaffinity_np.3, queue.3, rtnetlink.3, shm_open.3,
 strptime.3, tsearch.3, aio.7, fanotify.7, inotify.7, unix.7: Use sizeof consistently
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

Once again, thanks for jumping in...

On Tue, 25 Aug 2020 at 13:19, Jakub Wilk <jwilk@jwilk.net> wrote:
>
> * Michael Kerrisk <mtk.manpages@gmail.com>, 2020-08-25, 12:29:
> >>      ``(sizeof(x) * INT_MAX * 2)`` doesn't overflow.
> >>
> >>      ``(INT_MAX * 2 * sizeof(x))`` overflows, giving incorrect
> >>      results.
> >
> >(3) Is this true? "gcc -Wall" does not complain about this.
>
> My GCC (10.2.0) does, even without -Wall:
>
>    $ gcc test-overflow.c
>    test-overflow.c: In function 'main':
>    test-overflow.c:8:52: warning: integer overflow in expression of type 'int' results in '-2' [-Woverflow]
>        8 |  printf("INT_MAX * 2 * sizeof(x) = %zu\n", INT_MAX * 2 * sizeof(x));
>          |                                                    ^
>
> >sizeof((sizeof(x) * INT_MAX * 2)) == 8
> >sizeof(INT_MAX * 2 * sizeof(x)) == 8
>
> Hmm? If there was no overflow, surely you should get a number larger
> than INT_MAX...

Yes, I goofed :-(. There is no compiler warning for "sizeof(INT_MAX *
2 * sizeof(x))", which is what I tested, but as you point out, there
is a warning for "INT_MAX * 2 * sizeof(x)".

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
