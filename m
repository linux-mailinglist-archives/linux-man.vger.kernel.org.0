Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CACD6F9CE7
	for <lists+linux-man@lfdr.de>; Tue, 12 Nov 2019 23:22:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726986AbfKLWW7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 12 Nov 2019 17:22:59 -0500
Received: from mail-lf1-f67.google.com ([209.85.167.67]:36863 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726896AbfKLWW6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 12 Nov 2019 17:22:58 -0500
Received: by mail-lf1-f67.google.com with SMTP id m6so191973lfl.3
        for <linux-man@vger.kernel.org>; Tue, 12 Nov 2019 14:22:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dZrk9n1abQitjODvGNd7zxTN82LvnTpLSdWs3Vu5eMI=;
        b=j+YCl9OwNg9MAuLpp52VvLrm8k6lu6FO0c9ww0Bdsi0TibuPjSA4F52nL6kCGilApJ
         pOv6DkKR+7jj89BcPkh2Z1V43WqtVgpDVUKmFni/aHB4GQks/uqxPZXymGUSGYEq7rAt
         j/e5U6lRqA7sXuhwwjIjYQSI2WYJXjLTwojgnI5dhOtAQNO/1iJCmvx988U2gA+LGLlQ
         4hkTgMuc1w2HpxqarS0/WE0++OySJiCf8Jc+9NEDViXqaRsbXHaNGJnJQZR+7wLZwUgD
         RouyxMzzRAzSfbq9WasiK4lfWLQ0uiKidx7eZMlntLZtNPRAHPSt2XKYNMbKiqCawGxM
         5ERw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dZrk9n1abQitjODvGNd7zxTN82LvnTpLSdWs3Vu5eMI=;
        b=Mm7DXHB5anLcjTetKyPOsx+3IncjORvKCX5bjeMuPEWE4HzAMzEsSQo9NCCpDmYHU5
         PccD2GyuIDrCx4CVH3SG7LTQP5qs65dMulLnuWs+EOyYRA3PC/YMH/3lEpJ02fC7X3Gz
         J7UeVEhYu7R8DhPLC/ffUxuXRQru1AmOvTuaYJhO4p6ah/s2KVJJ5WajCZQF5pS+rs0a
         w01OlMfE4KcToJRh6zWRgrNpagUFfqNFId7BFU3C+e+9/GkqeVB3RzsNamAntkHSxA7g
         OQG5klXWP/1EFYN+Oox3oBWf8VJzD0wOEjuc1ZqoNz2yMEpvSbIWOUBogXvg0Z9cLilh
         obSw==
X-Gm-Message-State: APjAAAUhaL/zjXht/P3Ll2DYn+emPyvLhAueTuOrfRb9zQY9k9khlVuH
        DFKZmp4hsAQotMUzoyz13tdkYhXIXl28aJanPgwNvgMK
X-Google-Smtp-Source: APXvYqykzLaf1tTxrLEybikAQDlJjU7A1k3YandAAW/zkkGf2T1asgR+UCrRm+hUg2ua46NDWfmWawHf2EVxYqkS3Hs=
X-Received: by 2002:a19:10:: with SMTP id 16mr148880lfa.100.1573597376489;
 Tue, 12 Nov 2019 14:22:56 -0800 (PST)
MIME-Version: 1.0
References: <CAJgzZoojiRmTV_5sAXhqQciAKsQ_d+znT1OnxT0Rpa_-N_G5-Q@mail.gmail.com>
 <87imnodbct.fsf@mid.deneb.enyo.de> <CAJgzZoo+oSkwgCZ3CMUdP-t+Y4h4PkvJO-As15kjz0Ad+nx9fA@mail.gmail.com>
 <877e44daom.fsf@mid.deneb.enyo.de> <CAJgzZopuKoGFUq0GrB6ioFpLXzCY1iwGRddRRcAhzsNisjutuQ@mail.gmail.com>
 <87woc4bv9c.fsf@mid.deneb.enyo.de>
In-Reply-To: <87woc4bv9c.fsf@mid.deneb.enyo.de>
From:   enh <enh@google.com>
Date:   Tue, 12 Nov 2019 14:22:44 -0800
Message-ID: <CAJgzZorosDN58Zp6TUDJbzY3fmR-rJeWbELtw_H3nzMyaWondg@mail.gmail.com>
Subject: Re: [PATCH] pthread_kill.3: Update to match POSIX.
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Nov 12, 2019 at 2:11 PM Florian Weimer <fw@deneb.enyo.de> wrote:
>
> * enh:
>
> > On Tue, Nov 12, 2019 at 1:52 PM Florian Weimer <fw@deneb.enyo.de> wrote:
> >>
> >> * enh:
> >>
> >> > On Tue, Nov 12, 2019 at 1:38 PM Florian Weimer <fw@deneb.enyo.de> wrote:
> >> >>
> >> >> * enh:
> >> >>
> >> >> > POSIX removed ESRCH years ago.
> >> >> >
> >> >> > In resolving http://austingroupbugs.net/view.php?id=1214 it was made
> >> >> > clear that callers can't rely on using signal 0 to test for the
> >> >> > continued existence of a thread. Update the man page to make it clearer
> >> >> > that this doesn't generally work (even if it sometimes seems to).
> >> >> >
> >> >> > See also the long explanation of why this is the case (and how to fix
> >> >> > your code) here:
> >> >> >
> >> >> > https://android.googlesource.com/platform/bionic/+/master/docs/status.md#invalid-handling-targetsdkversion-o
> >> >>
> >> >> Well, if you fix the thread exit race (like musl did, and glibc should
> >> >> as well, see bug 12889), you could get a reliable ESRCH as a side
> >> >> effect.  Pity that POSIX doesn't allow that.
> >> >
> >> > this isn't about the tid stored *in* the object that the pthread_t
> >> > points to.
> >> >
> >> > like i (briefly) said in the commit message, this is because a
> >> > pthread_t is a pointer, so if you have an old pthread_t that's been
> >> > recycled... boom!
> >>
> >> Backing storage for a pthread_t object denoting a joinable thread
> >> cannot be recycled, so that's not the case here.  POSIX mandates
> >> returning success even if the implementation has detected that it must
> >> not send the signal because the thread has already terminated.
> >
> > who said anything about joinable?
>
> That determines whether the pthread_t object is still valid.

but this is all about *invalid* threads, which obviously can't be
joinable. i'm really not sure what you're trying to say.

> > the cases we've seen in practice are that folks incorrectly believe
> > that pthread_kill(3) with a signal of 0 is a reliable way to test
> > whether a thread is still running.
>
> Right, that's not working according to (future) POSIX.  Which I
> dislike because a correct implementation of pthread_kill has to do all
> the work to support this usage (or something like it; after all, only
> testing for termination gives stable results), and then is forced by
> POSIX to discard the data.
