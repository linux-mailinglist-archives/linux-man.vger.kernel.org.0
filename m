Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AB3C44BC16
	for <lists+linux-man@lfdr.de>; Wed, 10 Nov 2021 08:22:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229581AbhKJHZX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Nov 2021 02:25:23 -0500
Received: from albireo.enyo.de ([37.24.231.21]:35192 "EHLO albireo.enyo.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229573AbhKJHZW (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 10 Nov 2021 02:25:22 -0500
X-Greylist: delayed 360 seconds by postgrey-1.27 at vger.kernel.org; Wed, 10 Nov 2021 02:25:22 EST
Received: from [172.17.203.2] (port=58127 helo=deneb.enyo.de)
        by albireo.enyo.de ([172.17.140.2]) with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        id 1mkhqR-0003m8-7L; Wed, 10 Nov 2021 07:16:31 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.94.2)
        (envelope-from <fw@deneb.enyo.de>)
        id 1mkhof-0006Xk-T2; Wed, 10 Nov 2021 08:14:41 +0100
From:   Florian Weimer <fw@deneb.enyo.de>
To:     enh <enh@google.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] pthread_kill.3: Update to match POSIX.
References: <CAJgzZoojiRmTV_5sAXhqQciAKsQ_d+znT1OnxT0Rpa_-N_G5-Q@mail.gmail.com>
        <87imnodbct.fsf@mid.deneb.enyo.de>
        <CAJgzZoo+oSkwgCZ3CMUdP-t+Y4h4PkvJO-As15kjz0Ad+nx9fA@mail.gmail.com>
        <877e44daom.fsf@mid.deneb.enyo.de>
        <CAJgzZopuKoGFUq0GrB6ioFpLXzCY1iwGRddRRcAhzsNisjutuQ@mail.gmail.com>
        <87woc4bv9c.fsf@mid.deneb.enyo.de>
        <CAJgzZorosDN58Zp6TUDJbzY3fmR-rJeWbELtw_H3nzMyaWondg@mail.gmail.com>
        <87imnobufy.fsf@mid.deneb.enyo.de>
        <CAJgzZorB99W2PzjQ5ZU1nBiYb81Ubm=VvaF50BOm9sTFUHeE4A@mail.gmail.com>
        <87r22c9ve8.fsf@mid.deneb.enyo.de>
        <CAJgzZopvMb8KGyA5b6afWG83hw-cZgOdvOdPYb28iS+f5wDkmw@mail.gmail.com>
        <87mud09uhr.fsf@mid.deneb.enyo.de>
        <CAJgzZooj8VaF_P2YaqwEchR5LEKP_mS379r6GLrexkDen2jGtQ@mail.gmail.com>
Date:   Wed, 10 Nov 2021 08:14:41 +0100
In-Reply-To: <CAJgzZooj8VaF_P2YaqwEchR5LEKP_mS379r6GLrexkDen2jGtQ@mail.gmail.com>
        (enh@google.com's message of "Tue, 9 Nov 2021 15:00:25 -0800")
Message-ID: <87lf1wjxcu.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> any comment from either of the maintainers?
>
> i think what we currently have on this page is factually incorrect,
> and this patch better matches reality.

One more data point:

As of glibc 2.34, pthread_kill in glibc cannot fail with ESRCH anymore
(unless the kernel thread is terminated by a direct system call).  And
the race that the signal could be sent to the wrong thread is gone.

> On Tue, Nov 12, 2019 at 10:10 PM Florian Weimer <fw@deneb.enyo.de> wrote:
>>
>> * enh:
>>
>> > On Tue, Nov 12, 2019 at 9:51 PM Florian Weimer <fw@deneb.enyo.de> wrote:
>> >>
>> >> * enh:
>> >>
>> >> > no, because the C library has two choices when a thread exits:
>> >> >
>> >> > 1. unmap the thread.
>> >> >
>> >> > 2. keep the thread around for recycling.
>> >> >
>> >> > if you choose 1 (optimizing for space, like Android), your dereference
>> >> > is illegal.
>> >>
>> >> This choice is only available for threads in a detached state.  For
>> >> joinable threads, a conforming implementation cannot immediately
>> >> deallocate all data structures on thread termination.  Among other
>> >> things, it has to store the future return value of pthread_join
>> >> somewhere.
>> >
>> > ah, you're trying to say "signal 0 is potentially usable for a
>> > joinable thread that's waiting to be joined"? that's true, but i'm not
>> > sure how that's relevant to this patch. that wouldn't be an "invalid
>> > thread ID" until it's joined.
>>
>> Correct.  That's POSIX's argument why ESRCH wouldn't be valid to
>> return here.  It's still a forceful loss of information, and
>> particularly annoying since POSIX doesn't specify pthread_tryjoin.
>>
>> But I'm glad we've brought our discussion to a conclusion. 8-)
