Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0EAA744E6F6
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 14:02:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234993AbhKLNFH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 08:05:07 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:29499 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234942AbhKLNFH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Nov 2021 08:05:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1636722136;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=dNDUcfVNfSeielBQqeok2efobfWEdSr0UdNGjCxiy3A=;
        b=Duq1ksetdacEWc4HqO2wELAOS2CJl38EiCiCk3vkSmXoBbFCaV/vFVprMnO3ItEi1FNOzc
        +Mpokq39/hyAdodw64WszLR9HK14LTcGx0MRJJrJaEfCSoC/2pLib9sWjGNFyMqMpeW0fW
        QOHV3/y7YpvV/jw5In5NUHF93xJxKIM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-424-32J0pyOSM3GUcy3Qqhx4Ng-1; Fri, 12 Nov 2021 08:02:13 -0500
X-MC-Unique: 32J0pyOSM3GUcy3Qqhx4Ng-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0B3061923762;
        Fri, 12 Nov 2021 13:02:12 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.192.82])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id DE5BB5C3E0;
        Fri, 12 Nov 2021 13:02:10 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
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
        <87lf1wjxcu.fsf@mid.deneb.enyo.de>
        <CAJgzZooymW7fHnpCeVmhrAe-uue9zdssdP-QHeRtPN3MkVsnNA@mail.gmail.com>
Date:   Fri, 12 Nov 2021 14:02:09 +0100
In-Reply-To: <CAJgzZooymW7fHnpCeVmhrAe-uue9zdssdP-QHeRtPN3MkVsnNA@mail.gmail.com>
        (enh@google.com's message of "Thu, 11 Nov 2021 16:01:41 -0800")
Message-ID: <875ysxsf1q.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> the issue i'm trying to fix (and so maybe need to find even clearer
> wording for) is basically this:
>
>   * lots of people don't realize that pthread_t !=3D pid_t
>   * they think that "the worst that can happen" when passing a
> no-longer valid pthread_t to these functions is ESRCH
>   * they don't realize that using pthread_kill(3) like this is just a
> use-after-free bug

Okay, this is just not about pthread_kill, though.  So man-pages-wise,
pthread_kill may not be the right place to document it.

> i think one reason this persists is glibc's thread cache makes it
> harder to hit there. i don't actually know whether glibc's thread
> cache has an eviction policy at all?

It's typically at least five entries deep, so it's pretty good at
obscuring these issues.

In glibc 2.34, the stack size is tunable, and it can be disabled (more
or less) using

  GLIBC_TUNABLES=3Dglibc.pthread.stack_cache_size=3D0

for typical distribution builds that do not disable tunables.  If you do
that, you get a segmentation fault for such invalid pthread_kill calls.

(The =E2=80=98more or less=E2=80=99 part refers to detached threads, where =
the TCB
lingers around after exit because it is tied to the thread stack in our
current implementation.)

> if it doesn't, that would indeed
> turn this use-after-free into "just" a question of whether you have
> the right pid_t or not. but assuming glibc's thread cache _does_ have
> an eviction policy, glibc's in the same boat as more svelte libcs
> (such as bionic and musl, plus the BSDs, and also Apple's anonymous
> libc) --- it just needs more threads.

Right.

> this confusion causes bugs (and crashes) today, and it's only going to
> get worse as we get better tools for detecting UAF, such as Arm MTE,
> and it's really hard to get people to understand the problem when the
> man page is worded as it currently is (with a weak "can, for example"
> hidden in the NOTES section).

I helped to fixed an incorrect LTP test around precisely this, and the
GLIBC_TUNABLES setting was helpful to show that there was indeed a
use-after-free.  Maybe that can help you with your =E2=80=9Cjust like glibc=
=E2=80=9D
problems, too.

glibc 2.35 (and glibc 2.34 post-release) also break pthread-kill-based
probing loops to detect kernel thread exit.  An unjoined pthread_t can
=E2=80=9Creceive=E2=80=9D signals even if the TID is no longer in use on th=
e kernel
side.

> this page is a bit weird in general... ESRCH isn't mentioned in
> ERRORS, but the sig =3D=3D 0 case is called out in DESCRIPTION, but you
> need to read NOTES to find out that that's basically broken. and
> no-where on the page do we try to describe alternatives that _do_
> work. (happy to volunteer text along the lines of "you need to stash
> your thread's tid at a time when you *know* the pthread_t is valid,
> such as when the thread starts, and then you can use that with kill(2)
> and sig =3D=3D 0 to do what you _thought_ pthread_kill(3) with sig =3D=3D=
 0
> did, which still isn't 100% safe in light of pid wrapping, but is the
> best you can get if you refuse to actually keep track of your threads'
> lifetimes properly :-P ".)

I don't think that's good advice.  Any such use has TID race issues
(even if you use tgkill).

> actually, even this would be quite a good improvement:
>
>         If sig is 0, then no signal is sent, but error checking is still
> -       performed.
> +       performed. See NOTES for why this can't be used to detect
> whether another thread is still running.

That makes sense.  (And I need to fix the bug that we don't have enough
error checking, now that we no longer try to send the signal.)

Thanks,
Florian

