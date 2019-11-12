Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9E90BF9CC6
	for <lists+linux-man@lfdr.de>; Tue, 12 Nov 2019 23:06:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726978AbfKLWGU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 12 Nov 2019 17:06:20 -0500
Received: from mail-lf1-f68.google.com ([209.85.167.68]:43108 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726912AbfKLWGU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 12 Nov 2019 17:06:20 -0500
Received: by mail-lf1-f68.google.com with SMTP id q5so129772lfo.10
        for <linux-man@vger.kernel.org>; Tue, 12 Nov 2019 14:06:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7cH+dqhjjpO6D5pklBCviI6Xjr5I+NEolmbrGSmbe54=;
        b=dFqMsAJVYc0/DPbQ1TztUMQFGFVANlL/0tIfhFSv2pU4lRdJ8r2hoZgCnVMVzyfjMz
         9Ps4w04hA7O8poqlRqxs45tNNNa4DDXL+ElWML5YusHaskNPtpazHVOwQvHeXYpCQx/L
         RdAHxwk9F9vzgFznxRiLH17erDoLzaPZlmqBEygrNwoR7sE9T1u1+VFUR5CPAwzdq3dP
         aoEkOmE+t3mMTbHT/Tg51xI1vBQBWzov54gU2RPcRXhJdcGzbus21thPNoQ1z4vRbbjH
         h93qi28p3nL8xObi0Oie1x7nnl0I3N5CsRHoK40NNQl7CWNEmIedFAb4a1KaHX2NV5f1
         xKBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7cH+dqhjjpO6D5pklBCviI6Xjr5I+NEolmbrGSmbe54=;
        b=pAeuKEtySK5vuwmmT8bTarr8gjA2AM96xXaVp/k8RUGId5f+/OmLbMsmEa65OE8KUD
         ZkyVfQ80xoLk1rMZrtBYBPsAMjpJAGVsWVJp99xsdJu5CwYu3YgrlCTQkXd6zImE+yPc
         QSejHSzoANA7JZqsqphCj5ynj+ZryhAXdLT17mGdpm+FYzvtPc74Yqkqnw/bVQf2RTRx
         vK4NH2xyAxlV6mfjlkbYweXerYBG9V3t+g/3uptl36cZFRo2toWtK7Wt7oeef99ugiD8
         7EiAQel3813RhwkgitubyTfig/syvM7qmualocuROCR7sUb9lP9LRdmILDokrs5sbr2Y
         8/JQ==
X-Gm-Message-State: APjAAAUU6KdzKEWjD65GfxwZ+0bJZrCwlLUf9XEhFWPpFUE++e29U4Yj
        Dzl3J1yjthc9t8bxuPmr1jqJVyiKqkRbdu/26F4br40P
X-Google-Smtp-Source: APXvYqy/7ieNEzImlyYMmdlWjFRQZX/vWxHfbXQfb4p0l3v+wOu9vVgcQG8nWRJG5Xehow3TmHKGyRPgoPASJS5bRO4=
X-Received: by 2002:a19:10:: with SMTP id 16mr110150lfa.100.1573596378226;
 Tue, 12 Nov 2019 14:06:18 -0800 (PST)
MIME-Version: 1.0
References: <CAJgzZoojiRmTV_5sAXhqQciAKsQ_d+znT1OnxT0Rpa_-N_G5-Q@mail.gmail.com>
 <87imnodbct.fsf@mid.deneb.enyo.de> <CAJgzZoo+oSkwgCZ3CMUdP-t+Y4h4PkvJO-As15kjz0Ad+nx9fA@mail.gmail.com>
 <877e44daom.fsf@mid.deneb.enyo.de>
In-Reply-To: <877e44daom.fsf@mid.deneb.enyo.de>
From:   enh <enh@google.com>
Date:   Tue, 12 Nov 2019 14:06:05 -0800
Message-ID: <CAJgzZopuKoGFUq0GrB6ioFpLXzCY1iwGRddRRcAhzsNisjutuQ@mail.gmail.com>
Subject: Re: [PATCH] pthread_kill.3: Update to match POSIX.
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Nov 12, 2019 at 1:52 PM Florian Weimer <fw@deneb.enyo.de> wrote:
>
> * enh:
>
> > On Tue, Nov 12, 2019 at 1:38 PM Florian Weimer <fw@deneb.enyo.de> wrote:
> >>
> >> * enh:
> >>
> >> > POSIX removed ESRCH years ago.
> >> >
> >> > In resolving http://austingroupbugs.net/view.php?id=1214 it was made
> >> > clear that callers can't rely on using signal 0 to test for the
> >> > continued existence of a thread. Update the man page to make it clearer
> >> > that this doesn't generally work (even if it sometimes seems to).
> >> >
> >> > See also the long explanation of why this is the case (and how to fix
> >> > your code) here:
> >> >
> >> > https://android.googlesource.com/platform/bionic/+/master/docs/status.md#invalid-handling-targetsdkversion-o
> >>
> >> Well, if you fix the thread exit race (like musl did, and glibc should
> >> as well, see bug 12889), you could get a reliable ESRCH as a side
> >> effect.  Pity that POSIX doesn't allow that.
> >
> > this isn't about the tid stored *in* the object that the pthread_t points to.
> >
> > like i (briefly) said in the commit message, this is because a
> > pthread_t is a pointer, so if you have an old pthread_t that's been
> > recycled... boom!
>
> Backing storage for a pthread_t object denoting a joinable thread
> cannot be recycled, so that's not the case here.  POSIX mandates
> returning success even if the implementation has detected that it must
> not send the signal because the thread has already terminated.

who said anything about joinable?

the cases we've seen in practice are that folks incorrectly believe
that pthread_kill(3) with a signal of 0 is a reliable way to test
whether a thread is still running.
