Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C85A01D4CE8
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2020 13:44:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726047AbgEOLoU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 May 2020 07:44:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726046AbgEOLoT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 May 2020 07:44:19 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95CA5C061A0C
        for <linux-man@vger.kernel.org>; Fri, 15 May 2020 04:44:19 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id o10so1931912ejn.10
        for <linux-man@vger.kernel.org>; Fri, 15 May 2020 04:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=aJQb/kEGGwd+8ohShf0e/pd3tAfSIRs0kjiKKCUHdBA=;
        b=Eu671+kxu3jQ+k7cUOX7Su0103cEg0GquBQO3gcVA3rpcJ/SFrQHfJw77F+q2heuQq
         /XTljMz7eloWJL0lzPhDXF1J5iphvJVk4x/f/tW4zF9Amk7U5lAaceSqBPY6lz+WxTEd
         WPTfmabIE7D5F1n7wCt9F9uEcMHHqMY+e8roDT2doUyk8bHANBni7TcljqLBzcUXk9OG
         EojeBrLqR7wWMqstNkyqCMqrIgWfVIBbbSYuP54QTOU6dMyZHdYjLtdON6Jrh2CYJhQS
         YSjJ940Fu+xmQE1DcpQBgtFdMUwGWZd126dGJH/fpT2f7rXq5373Z0qXburq+4bWJz+9
         3g9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=aJQb/kEGGwd+8ohShf0e/pd3tAfSIRs0kjiKKCUHdBA=;
        b=P8K7ULmHk1wRz59qU0pXM30bjIlq6wCPAbrp7p1SZ3xDWiMAKyni4yjAGrMSjxS4v2
         WD3/LUpNY5Ol+Qb9yxZFQQFR6HtKrQuM1XAcn1j8lT+6WBSL3qQz2Kn67VrfNJzpIyaT
         XK/YaDuzNfXDaegQ2sxdvwyX8On9AYGdHevr3R9YRBUt6yQdM1ElvHMG13XdWN+6zRMG
         UaxuEJPho3Gk9LP+EzLF7AkQwDo7XtSOS9awslxmG/24IGeST+iyUQ232Jr4B63o7V6H
         wsqAEDXhC/iZkIPeJJ4Q/hg8SgTijC9j99rJlgYlYyGfyaFdJ4qGNzELsS1W7e6T2PEr
         b5sA==
X-Gm-Message-State: AOAM531RPS9fGtidtp0MJb0fct6CouD5uAStdyLt5Ok10eQgaGea/EWj
        wKNenpmV6Z7cLIHU6TZ81h/xyGz7SSG/xxA/mwo=
X-Google-Smtp-Source: ABdhPJy9r8TRWcj19/WLsxa+7cU+gLR93BOfpwPaNDmYo4Y7omV9d2HaweB7Ee9lFPiONuqq+lwNrTupPXjxHS6fs/8=
X-Received: by 2002:a17:906:da1e:: with SMTP id fi30mr2178397ejb.80.1589543058196;
 Fri, 15 May 2020 04:44:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAKgNAkjshc5bjT2gc7wBU6nkq1BxrcV6mEs6JSuepxFjHtupOA@mail.gmail.com>
 <20200423112352.GM3737@quack2.suse.cz> <CAOQ4uxh5LXzG8j4egc8H_EMQc1AVGKLN=ghN1_5A1o4Nh=80vA@mail.gmail.com>
 <CAKgNAki3BwX3_oSQ158T=6+5uRwsBKrNkz=aaF-2_d933PZCBA@mail.gmail.com> <CAOQ4uxhGMLKHBLjr_1k-C0JBPOoRvwSYmfonyd9ks0m0Fn8j2Q@mail.gmail.com>
In-Reply-To: <CAOQ4uxhGMLKHBLjr_1k-C0JBPOoRvwSYmfonyd9ks0m0Fn8j2Q@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 15 May 2020 13:44:06 +0200
Message-ID: <CAKgNAkh9=FWQzdR+0wFmzDG3Hdta9qVG9KfitELMZyQsa+vLFw@mail.gmail.com>
Subject: Re: Kernel bugzilla 198569: fanotify_mark() and FAN_Q_OVERFLOW
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Jan Kara <jack@suse.cz>, Heinrich Schuchardt <xypron.glpk@gmx.de>,
        linux-man <linux-man@vger.kernel.org>, alexandermv@gmail.com,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 23 Apr 2020 at 18:42, Amir Goldstein <amir73il@gmail.com> wrote:
>
> On Thu, Apr 23, 2020 at 3:42 PM Michael Kerrisk (man-pages)
> <mtk.manpages@gmail.com> wrote:
> >
> > Hello Amir, Jan,
> >
> > On Thu, 23 Apr 2020 at 14:19, Amir Goldstein <amir73il@gmail.com> wrote:
> > >
> > > On Thu, Apr 23, 2020 at 2:23 PM Jan Kara <jack@suse.cz> wrote:
> > > >
> > > > Hi Michael!
> > > >
> > > > On Thu 23-04-20 12:36:26, Michael Kerrisk (man-pages) wrote:
> > > > > Would you be able to take a look at
> > > > > https://bugzilla.kernel.org/show_bug.cgi?id=198569
> > > > >
> > > > > It relates to some text you added to the fanotify_mark(2) manual page:
> > > > >
> > > > >        FAN_Q_OVERFLOW
> > > > >               Create an event when an overflow of the event queue occurs.
> > > > >               The size of the event queue is limited to 16384 entries  if
> > > > >               FAN_UNLIMITED_QUEUE is not set in fanotify_init(2).
> > > > >
> > > > > This was in the following commit
> > > > >
> > > > > [[
> > > > > commit 5d730f864a6603b090cd1078668cede05d02b8c4
> > > > > Author: Heinrich Schuchardt <xypron.glpk@gmx.de>
> > > > > Date:   Tue Nov 8 23:13:38 2016 +0100
> > > > >
> > > > >     fanotify_mark.2: Mention FAN_Q_OVERFLOW
> > > > >
> > > > >     To receive overflow events it is necessary to set this bit
> > > > >     in fanotify_mark().
> > > > > ]]
> > > > >
> > > > > As far as I can see, FAN_Q_OVERFLOW (test program, reading the kernel
> > > > > source) is only an output flag. But on the other hand, I know you are
> > > > > generally careful, so I wonder if something changed (though, at a
> > > > > quick glance, I could not see evidence that it has).
> > > >
> > > > Yeah, the manpage is wrong AFAICT. FAN_Q_OVERFLOW is not accepted in the
> > > > input mask. It is only output event flag.
> > > >
> > >
> > > Right.
> > >
> > > Note that fanotify.7 documents FAN_Q_OVERFLOW as part of event output mask
> > > so perhaps the FAN_Q_OVERFLOW entry for fanotify_mark.2 input mask should
> > > just be removed?
> >
> > Yes, I'll just remove that piece from fanotify_mark.2.
> > >
> > > Similarly, the input only flag FAN_EVENT_ON_CHILD is documented in
> > > fanotify_mark.2, but not in fanotify.7.
> > >
> > > FAN_ONDIR has been input only until v5.1 and since then it can also be
> > > in output mask for group with FAN_REPORT_FID.
> > > This is documented in fanotify_mark.2, but not in fanotify.7.
> >
> > I'm overlooking something: where is this detail documented in
> > fanotify_mark.2? (I mean, I see mention of FAN_ONDIR, but no mention
> > of a change in v5.1.)
>
> fanotify_mark.2:
> The FAN_ONDIR flag is reported in an event mask only if the fanotify_fd
> file descriptor has been initialized with the flag FAN_REPORT_FID.
>
> fanotify_init.2:
> FAN_REPORT_FID (since Linux 5.1)
>
> >
> > And would you be willing to write a small patch for fanotify.7 :-) ?
> >
>
> I guess I was asking for it ;-)
> I have some more work cut out for me on this man page for v5.7 or later.
> Adding yet another fanotify_init flag, so I'll make this change part of my
> next series.

Thanks, Amir. I look forward to the patch(es).

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
