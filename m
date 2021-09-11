Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98296407AA8
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 00:24:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230493AbhIKWZy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 18:25:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229800AbhIKWZy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 18:25:54 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9038C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 15:24:40 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 9so8051259edx.11
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 15:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=W7io8k7GcDfAPuBTA6vOkyiVnyePPijPdOI+buH/XTo=;
        b=KpL/+UVpJZ70Tx0etWXsr6lDZin9DoQnqVsHxp81CFpD7tgVwfva5POydbsf8b9NkM
         FmCiuvxNkjRZmblgZYgiXq/xBCpRlbwudBj6CJi13Cc9DKasq33Z1Lq0CIrON0hP1f+0
         g6ifzkrBpEct0q5fjf/h4LFMfmLJZb1/mIWqm43iUT4weOkyrn1aopdnyIXtTAMY3nxM
         gvUDqhXqXWG1dCfDnmHEJdmScjrfgGWS+vmfu6WbO/YORLS48XtUGhzb4gxH9MUgyW3z
         WmENujui1Ha4lmSBhclE9d8fFwlcEHZoryOz+FInH1flHZ3oGBRI30w/MIV1nG8laZlm
         bonA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=W7io8k7GcDfAPuBTA6vOkyiVnyePPijPdOI+buH/XTo=;
        b=cOy4cJcRUkVyS7nZeEXaa1dtw1TG5l4b6MUu6iM7GOAvur07P4bnGgoWsNZuhhcbhu
         b5b9XL99uKVeAEW8x27eE5+l40WUY7ZJ9cd7M9QzkL4kfCfoFyp+55xVW9S9Vr0pjrEL
         uedKrCCWW7ED8ruUzi2nQLIVopoJlaJ5s2gKWV15XE1LmHcACwKMdwnSBwgRFnTfvaQG
         lrazoH4mvqS9gKnRAdD9DwSoujiDCl7SkE1h7xmcLwa4jgBHNrwh8S/7AgeH3JSKEYNp
         SF4hhDL5fcOxL9zFsRr+aFbHIJqoesGhMu1snxnnKyzyZ6eOMMDiOuyd2gz1jbDAwwYe
         Dcdg==
X-Gm-Message-State: AOAM531ZqiRjQ10ZJF0S4+Q4roC6veTnlqsyu4vxVCiqOJJYPf3iuxt8
        GoOqbIlWy38LjIavjvxt46ZkJSs1ZCb6WUAbvK4PE/5HP7w=
X-Google-Smtp-Source: ABdhPJzyJaJLtCml5hk2zMXADa1QQJaLjZZzOvv9aPl+iqH8/TG9UV+qE1DJAD8ufoIukItg07JvlJhHhf783Oxga3w=
X-Received: by 2002:a50:9b06:: with SMTP id o6mr5155627edi.284.1631399079471;
 Sat, 11 Sep 2021 15:24:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210911160117.552617-1-alx.manpages@gmail.com>
 <CACGkJdtFKY+DTTcdNuSPDLn-DUXDfJYcFj9814v5yHpOwxnwfg@mail.gmail.com> <97082679-7872-ffea-7700-44c0e653a857@gmail.com>
In-Reply-To: <97082679-7872-ffea-7700-44c0e653a857@gmail.com>
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
Date:   Sun, 12 Sep 2021 00:24:36 +0200
Message-ID: <CACGkJdsu27LOpAE+xJAP_hWw=GnMmw6BpU6cfePx1bitQuFq5A@mail.gmail.com>
Subject: Re: [PATCH 00/45] Add LIBRARY section (based on FreeBSD manual pages)
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Sep 11, 2021 at 8:40 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi Eugene,
>
> On 9/11/21 8:29 PM, Eugene Syromyatnikov wrote:
> > On Sat, Sep 11, 2021 at 6:01 PM Alejandro Colomar
> > <alx.manpages@gmail.com> wrote:
> >> Alejandro Colomar (45):
> >>    _exit.2: Add LIBRARY section
> >>    keyctl.2: Add LIBRARY section
> ...
> >>    socketcall.2: Add LIBRARY section
> >>    sigwaitinfo.2: Add LIBRARY section
> >
> > I'm not sure about these, my understanding is that the primary purpose
> > of section 2 is syscalls, userspace-kernel interface, and not their
> > libc wrappers.  Even intro(2) states that it is Linux-specific:
> > =E2=80=9CSection  2  of the manual describes the Linux system calls.  A=
 system
> > call is an entry point into the Linux kernel.=E2=80=9D Tying it to libc=
 feels
> > like a bit of a stretch, even though it is the exceedingly common
> > interface for invoking them.
> >
>
> Thanks for pointing that out.  I had some doubts about this in the
> beginning.  I started writing something like "Linux kernel - GNU C
> library" meaning that it's not only a thing of glibc but also the
> kernel.  But no one replied my RFCs... :/

Apologies on my part=E2=80=94I read the list only occasionally.

> In the end I simplified it to Standard C library (as FreeBSD does),

The issue here is that FreeBSD has a bit of a different approach,
where libc and kernel are parts of the whole operating systems and
quite tied together, so there's no (assumption about) multiple libc
implementations like in Linux (it is possible, but meaningless=E2=80=94libc=
 is
a part of OS already, after all), so calling syscalls without libc is
much more unusual than in Linux (where it is sometimes even required,
for example, to do weird stuff on x32, for which libc, and even its
syscall() implementation, could stand in the way).

> because I wasn't convinced of the syntax I had used.  And also, since a
> man page being in section 2 already implies that it is implemented in
> the kernel, I didn't want to be repetitive, and just point what the user
> has to link to to make a program work.
>
> There are some system calls that are wrapped by other libraries, such as
> keyctl(2) by libkeyutils, and those get a different LIBRARY (you can
> check patch 02/45).
>
> But if you think there's a better way to express this, please propose it.

After some thinking, I think it's okay; I re-read some =E2=80=9CC
library/kernel differences=E2=80=9D, and those are clearly written with the
assumption that the described call is invoked via its libc wrapper;
notes about the absence of a glibc wrapper for some other syscalls
hint at the same expectation.

> Thanks!
>
> Alex.
>
>
> --
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/



--=20
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}
