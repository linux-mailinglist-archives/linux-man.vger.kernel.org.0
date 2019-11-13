Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B945EFA9A0
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2019 06:27:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726010AbfKMF1g (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Nov 2019 00:27:36 -0500
Received: from mail-lj1-f196.google.com ([209.85.208.196]:41077 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725976AbfKMF1g (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Nov 2019 00:27:36 -0500
Received: by mail-lj1-f196.google.com with SMTP id d22so1044701lji.8
        for <linux-man@vger.kernel.org>; Tue, 12 Nov 2019 21:27:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sN8NVftBFC09SdgqQ3W/0UtnKzXzjH1P2t5cnfUd5lc=;
        b=Fcn2HgckpMRaD9NAgjvcy1NpUusiJchTrxjkOf0r15R6I/kT6HFLyOCIcLmVf8GwaV
         dVHfOJzvWOYljuVzwUzJIrKCUzZ031BkP9rklsOB4mXZtd9i5qRZItJqKbiipLjuY5DY
         QCHaJp3AmKBpi7XgJADHTFDAIXg2zx4ea5uEmE5FEPWLp84eNoJ1hp/EJWjwlv9fn5EE
         /SEy9SHnIVTSb7S243fgzCAWhWo18V1HHP4BOZtuWmysbKCHvAXGv3mHvGlrI+6ZHTSB
         SZTZ9WP58n1kv2itN+F8Lzunj16wlchvvA8ua4tM8zrnORbpJHf5ZHx9IRjdoGXiRIrE
         KJEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sN8NVftBFC09SdgqQ3W/0UtnKzXzjH1P2t5cnfUd5lc=;
        b=J8y+ht7kCDGCzng9nEXnygnYBdnkjhhdD3Lu2aZk9TmNR3a0sNFjJ+Tod8/XUyC9n7
         dVFw4W3vR1e17100Ms8B5E38aGfv1ZjNSRRVFn0fXCZ/4fsS6ho2nZYUpjdzNFsfZAhn
         wDXbiXX1lb+LeV5EPIrTxkJenbhvWj8IpHNRYz9/G3c1JzTtNooYpwrC3WCvOFwA8sY8
         EudSqJ6lpKEQsERgbBGv2NgaCCAKTbmdE9CkV6ejb1gxU+AnklgpszgmBCmxvbEEPCqm
         z8IkH7TbPDOmdG/CvoRcc+ivqQoXOwoHr9Cru22DK+Di2j7iFt4EZUNGEnujamHKBQAo
         vt1A==
X-Gm-Message-State: APjAAAWnOYW+1IZiGeSb5zBfRsM0PHl9sqOXJCz+7ukzuz/Qq8CgsU+E
        r3OUSFSQ3QntU/hCImKqCnYZT3NGLzG+3nvr19D13A==
X-Google-Smtp-Source: APXvYqyiSWC91rVEW21Abio5efNK7h95weccFJR3vGPpAt2ppNirkQMl3Ipp3JHAIr9n5QRq4BQ/slXvp7obs5/ljhw=
X-Received: by 2002:a2e:b4e1:: with SMTP id s1mr1007163ljm.5.1573622854075;
 Tue, 12 Nov 2019 21:27:34 -0800 (PST)
MIME-Version: 1.0
References: <CAJgzZoojiRmTV_5sAXhqQciAKsQ_d+znT1OnxT0Rpa_-N_G5-Q@mail.gmail.com>
 <87imnodbct.fsf@mid.deneb.enyo.de> <CAJgzZoo+oSkwgCZ3CMUdP-t+Y4h4PkvJO-As15kjz0Ad+nx9fA@mail.gmail.com>
 <877e44daom.fsf@mid.deneb.enyo.de> <CAJgzZopuKoGFUq0GrB6ioFpLXzCY1iwGRddRRcAhzsNisjutuQ@mail.gmail.com>
 <87woc4bv9c.fsf@mid.deneb.enyo.de> <CAJgzZorosDN58Zp6TUDJbzY3fmR-rJeWbELtw_H3nzMyaWondg@mail.gmail.com>
 <87imnobufy.fsf@mid.deneb.enyo.de>
In-Reply-To: <87imnobufy.fsf@mid.deneb.enyo.de>
From:   enh <enh@google.com>
Date:   Tue, 12 Nov 2019 21:27:21 -0800
Message-ID: <CAJgzZorB99W2PzjQ5ZU1nBiYb81Ubm=VvaF50BOm9sTFUHeE4A@mail.gmail.com>
Subject: Re: [PATCH] pthread_kill.3: Update to match POSIX.
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Nov 12, 2019 at 2:28 PM Florian Weimer <fw@deneb.enyo.de> wrote:
>
> * enh:
>
> > but this is all about *invalid* threads, which obviously can't be
> > joinable. i'm really not sure what you're trying to say.
>
> Uhm, people try use pthread_kill to probe for thread termination.

yes, that's why i'm keen that we make it clearer that this doesn't work.

> Termintation of a non-detached thread doesn't make a thread
> non-joinable, so from a temporal memory safety perspective, that's
> totally fine.  Except that POSIX requires implementations to hide this
> information from callers.
>
> Maybe we are talking past each other, though.
>
> Let's look at what musl does:
>
> int pthread_kill(pthread_t t, int sig)
> {
>         int r;
>         LOCK(t->killlock);
>         r = t->tid ? -__syscall(SYS_tkill, t->tid, sig)
>                 : (sig+0U >= _NSIG ? EINVAL : 0);
>         UNLOCK(t->killlock);
>         return r;
> }
>
> The 0 could be ESRCH to support probing for termination.

no, because the C library has two choices when a thread exits:

1. unmap the thread.

2. keep the thread around for recycling.

if you choose 1 (optimizing for space, like Android), your dereference
is illegal.

if you choose 2 (optimizing for time, as i believe glibc does), your
dereference is fine and you read the zero that the kernel put there
... until the thread is reused. now you're actually looking at a
different thread than the one you think you're looking at. and as a
caller who by definition doesn't know the current state of the thread,
you've no idea whether it's been reused or not. (this is also strictly
the case on Android if ASLR has put a new thread's stack where the old
one used to be.)

there's more detail about this -- and some less unreliable options --
in the Android documentation i linked to in the commit message.
