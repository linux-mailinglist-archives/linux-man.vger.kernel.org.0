Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87DA744B931
	for <lists+linux-man@lfdr.de>; Wed, 10 Nov 2021 00:00:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242908AbhKIXD3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Nov 2021 18:03:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240791AbhKIXDZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Nov 2021 18:03:25 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EF60C061764
        for <linux-man@vger.kernel.org>; Tue,  9 Nov 2021 15:00:38 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id z8so1472800ljz.9
        for <linux-man@vger.kernel.org>; Tue, 09 Nov 2021 15:00:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XTI0fzzKuUNfZYUDson9/BQbK5HpimFArIB8yK5u5mc=;
        b=TFZNzZM1L76SBaL7eduqh1YtPRU436Y4SAElwkuDynQQKeBCV1tLP1D4Yb4YXQgTJO
         W2CuHBOlrKpCzcR/NU+z3FAkXqSyh3fjeblR992FL3YxGpywrb4fVOmyYKY6bPCvzX6d
         jWQ9hsaOW86lWKnf4YjRaK1Z3YMwTHF18WaX82zyHamY+7ydjWrdJmzTnitQ+NQeyBFS
         rnjeB/ETV+5omaSLKJsQMqpYvcMrK7j/xKdRCha3nGlNS7uBxUqXBocz3XQBa+kgc7gv
         AGj53FIiIqLHBTfCcfiQiDDs8GsIQ8pH8tIIdwXplTt/QK8q/p7UfppMfiYookJetNBO
         C8Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XTI0fzzKuUNfZYUDson9/BQbK5HpimFArIB8yK5u5mc=;
        b=W/9B7K7FFgM0JiNsP94W9qqvcs88Zq57jHe8SfItpGsoSbLwKpvkPn+Jr/ncaV3nni
         58jWZgayqYlRUKuHbsN/OvO+EzTEU6fK+Ab/BH7va5WvlXuRbV4LI3K3694d9LQlFUsc
         v/At41YB2aRN6zehq0I5zqrNHGSxH9XlqONoWruftOAWHu3GcUeLGDq1wmukfn5CExfk
         0/FqsS70Ioajd3mmtoUj9qxPtiJSZ5OQ4hU3dSJzQ+7RNO6LZmNjZPkt3reGhdZk/UnY
         +qQACTvz3J3OTLpRjGQHJfUDMo5DsIj7T8sdhQ088EsvcAPY04TOvpvJt2fwx3UIIfwE
         dtow==
X-Gm-Message-State: AOAM531fhsz0A2VTln742Ijb6Cy3FI0ozV0x2C6AM91l+guCmeoYOvSi
        tbEiQmG6OpKNhngJWo57C2F/NNhqVoTm4c9uL8sbPepGZKWMCA==
X-Google-Smtp-Source: ABdhPJxQnbwMNPt1NOTXVT6Ecl1lpP3NWQ5cs7SYAN9ubSH9PPZgFzStio96hyDmnDB6swO9CRaMGRT2jcLaZZ8Jr5w=
X-Received: by 2002:a05:651c:481:: with SMTP id s1mr11751047ljc.279.1636498836588;
 Tue, 09 Nov 2021 15:00:36 -0800 (PST)
MIME-Version: 1.0
References: <CAJgzZoojiRmTV_5sAXhqQciAKsQ_d+znT1OnxT0Rpa_-N_G5-Q@mail.gmail.com>
 <87imnodbct.fsf@mid.deneb.enyo.de> <CAJgzZoo+oSkwgCZ3CMUdP-t+Y4h4PkvJO-As15kjz0Ad+nx9fA@mail.gmail.com>
 <877e44daom.fsf@mid.deneb.enyo.de> <CAJgzZopuKoGFUq0GrB6ioFpLXzCY1iwGRddRRcAhzsNisjutuQ@mail.gmail.com>
 <87woc4bv9c.fsf@mid.deneb.enyo.de> <CAJgzZorosDN58Zp6TUDJbzY3fmR-rJeWbELtw_H3nzMyaWondg@mail.gmail.com>
 <87imnobufy.fsf@mid.deneb.enyo.de> <CAJgzZorB99W2PzjQ5ZU1nBiYb81Ubm=VvaF50BOm9sTFUHeE4A@mail.gmail.com>
 <87r22c9ve8.fsf@mid.deneb.enyo.de> <CAJgzZopvMb8KGyA5b6afWG83hw-cZgOdvOdPYb28iS+f5wDkmw@mail.gmail.com>
 <87mud09uhr.fsf@mid.deneb.enyo.de>
In-Reply-To: <87mud09uhr.fsf@mid.deneb.enyo.de>
From:   enh <enh@google.com>
Date:   Tue, 9 Nov 2021 15:00:25 -0800
Message-ID: <CAJgzZooj8VaF_P2YaqwEchR5LEKP_mS379r6GLrexkDen2jGtQ@mail.gmail.com>
Subject: Re: [PATCH] pthread_kill.3: Update to match POSIX.
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

any comment from either of the maintainers?

i think what we currently have on this page is factually incorrect,
and this patch better matches reality.

On Tue, Nov 12, 2019 at 10:10 PM Florian Weimer <fw@deneb.enyo.de> wrote:
>
> * enh:
>
> > On Tue, Nov 12, 2019 at 9:51 PM Florian Weimer <fw@deneb.enyo.de> wrote:
> >>
> >> * enh:
> >>
> >> > no, because the C library has two choices when a thread exits:
> >> >
> >> > 1. unmap the thread.
> >> >
> >> > 2. keep the thread around for recycling.
> >> >
> >> > if you choose 1 (optimizing for space, like Android), your dereference
> >> > is illegal.
> >>
> >> This choice is only available for threads in a detached state.  For
> >> joinable threads, a conforming implementation cannot immediately
> >> deallocate all data structures on thread termination.  Among other
> >> things, it has to store the future return value of pthread_join
> >> somewhere.
> >
> > ah, you're trying to say "signal 0 is potentially usable for a
> > joinable thread that's waiting to be joined"? that's true, but i'm not
> > sure how that's relevant to this patch. that wouldn't be an "invalid
> > thread ID" until it's joined.
>
> Correct.  That's POSIX's argument why ESRCH wouldn't be valid to
> return here.  It's still a forceful loss of information, and
> particularly annoying since POSIX doesn't specify pthread_tryjoin.
>
> But I'm glad we've brought our discussion to a conclusion. 8-)
