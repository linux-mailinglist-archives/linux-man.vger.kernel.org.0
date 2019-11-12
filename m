Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EAAF8F9CCB
	for <lists+linux-man@lfdr.de>; Tue, 12 Nov 2019 23:11:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726960AbfKLWLP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 12 Nov 2019 17:11:15 -0500
Received: from albireo.enyo.de ([37.24.231.21]:38062 "EHLO albireo.enyo.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726896AbfKLWLP (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 12 Nov 2019 17:11:15 -0500
Received: from [172.17.203.2] (helo=deneb.enyo.de)
        by albireo.enyo.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        id 1iUeNT-0001HG-JC; Tue, 12 Nov 2019 22:11:11 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
        (envelope-from <fw@deneb.enyo.de>)
        id 1iUeNT-000728-HI; Tue, 12 Nov 2019 23:11:11 +0100
From:   Florian Weimer <fw@deneb.enyo.de>
To:     enh <enh@google.com>
Cc:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] pthread_kill.3: Update to match POSIX.
References: <CAJgzZoojiRmTV_5sAXhqQciAKsQ_d+znT1OnxT0Rpa_-N_G5-Q@mail.gmail.com>
        <87imnodbct.fsf@mid.deneb.enyo.de>
        <CAJgzZoo+oSkwgCZ3CMUdP-t+Y4h4PkvJO-As15kjz0Ad+nx9fA@mail.gmail.com>
        <877e44daom.fsf@mid.deneb.enyo.de>
        <CAJgzZopuKoGFUq0GrB6ioFpLXzCY1iwGRddRRcAhzsNisjutuQ@mail.gmail.com>
Date:   Tue, 12 Nov 2019 23:11:11 +0100
In-Reply-To: <CAJgzZopuKoGFUq0GrB6ioFpLXzCY1iwGRddRRcAhzsNisjutuQ@mail.gmail.com>
        (enh's message of "Tue, 12 Nov 2019 14:06:05 -0800")
Message-ID: <87woc4bv9c.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* enh:

> On Tue, Nov 12, 2019 at 1:52 PM Florian Weimer <fw@deneb.enyo.de> wrote:
>>
>> * enh:
>>
>> > On Tue, Nov 12, 2019 at 1:38 PM Florian Weimer <fw@deneb.enyo.de> wrote:
>> >>
>> >> * enh:
>> >>
>> >> > POSIX removed ESRCH years ago.
>> >> >
>> >> > In resolving http://austingroupbugs.net/view.php?id=1214 it was made
>> >> > clear that callers can't rely on using signal 0 to test for the
>> >> > continued existence of a thread. Update the man page to make it clearer
>> >> > that this doesn't generally work (even if it sometimes seems to).
>> >> >
>> >> > See also the long explanation of why this is the case (and how to fix
>> >> > your code) here:
>> >> >
>> >> > https://android.googlesource.com/platform/bionic/+/master/docs/status.md#invalid-handling-targetsdkversion-o
>> >>
>> >> Well, if you fix the thread exit race (like musl did, and glibc should
>> >> as well, see bug 12889), you could get a reliable ESRCH as a side
>> >> effect.  Pity that POSIX doesn't allow that.
>> >
>> > this isn't about the tid stored *in* the object that the pthread_t
>> > points to.
>> >
>> > like i (briefly) said in the commit message, this is because a
>> > pthread_t is a pointer, so if you have an old pthread_t that's been
>> > recycled... boom!
>>
>> Backing storage for a pthread_t object denoting a joinable thread
>> cannot be recycled, so that's not the case here.  POSIX mandates
>> returning success even if the implementation has detected that it must
>> not send the signal because the thread has already terminated.
>
> who said anything about joinable?

That determines whether the pthread_t object is still valid.

> the cases we've seen in practice are that folks incorrectly believe
> that pthread_kill(3) with a signal of 0 is a reliable way to test
> whether a thread is still running.

Right, that's not working according to (future) POSIX.  Which I
dislike because a correct implementation of pthread_kill has to do all
the work to support this usage (or something like it; after all, only
testing for termination gives stable results), and then is forced by
POSIX to discard the data.
