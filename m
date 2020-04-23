Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9717E1B6126
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2020 18:42:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729605AbgDWQmp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Apr 2020 12:42:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1729407AbgDWQmp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Apr 2020 12:42:45 -0400
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com [IPv6:2607:f8b0:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C40AC09B041
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 09:42:45 -0700 (PDT)
Received: by mail-il1-x142.google.com with SMTP id u5so6191174ilb.5
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 09:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pAtHJmBvduKsrAII/uhjcPOtE9I+7BD1eICQj09Kwy8=;
        b=rcRKr7Arv27l5lFutnfPBrRODvBQKuDjt7JvjuHyzNgrT4KQQ4OYrCDNbrd6AT6acF
         WM7VIkSZ2a6NshFsEUZymc+GvxgvbQZLJyaexjIVSmPxmCnTBCz+vOZPf085HPgvGE3U
         em0PCrwGVfFnbSaqSX6g5xxxOWr5M/+h82BvGm0N8AflX6d7VMrGp43BQ7F6PXmu+k5h
         NqkwC+HfTsJ8xcJJaIvO7aqdLo395BlL+kWgcfdyZoSGQtJEDCynREC03v+jQrOFYyXP
         /Cx84J5psJKwdt/1Vh9zM499F2uLJY7q+zMbx7rIIodp4GN1bxcu7gwD2vMG49dYf/0E
         TCQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pAtHJmBvduKsrAII/uhjcPOtE9I+7BD1eICQj09Kwy8=;
        b=kXBmLon4PTEdFbFy60WuhotqEC8TqPx4sprH8esY0R+fgOtNLR3ysxtS3HBZVmCfCi
         mLxWPk4cK7OHw9h9QzX3cT/4zgFbolFYW/vBBHyX8EFSZSS2RVbJqoUKREyLlQsZFjV9
         VkhLeEOAybfZi5lUByW74iebXtfN2UuMLfYdd9xjIYQItBWi57X6iFWQnmhdKxmB3e0T
         RkAuMcBbVg29em2d1j34yugDS5hHW6W07L+cWTc/1mSzw5+H6XkZhS5/SIHajes7Pgvp
         jaB+hJmsFdM6w/eBjoA76JJdDiBHRpMURHramFMfu67+vyHYGVDURLnYvdUsnN7XwzAr
         /7sw==
X-Gm-Message-State: AGi0PuYZQvThREMPkV6V+yIeQ4+6ju53AmyMFOtIvqy0Wx/af80CaAgm
        iMlt7OuY+MMd4sSXBkqLPV3D8puNGJ9sVACqxiI=
X-Google-Smtp-Source: APiQypLMrm1L4M0cg1j4mUoauG3tO8nKy6qWspF4IhLlyI+LazLPbzfZ63kw7XQdVqagtnK9V4tj/SARJMRAfDxgeo8=
X-Received: by 2002:a92:9e11:: with SMTP id q17mr4394916ili.137.1587660164778;
 Thu, 23 Apr 2020 09:42:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAKgNAkjshc5bjT2gc7wBU6nkq1BxrcV6mEs6JSuepxFjHtupOA@mail.gmail.com>
 <20200423112352.GM3737@quack2.suse.cz> <CAOQ4uxh5LXzG8j4egc8H_EMQc1AVGKLN=ghN1_5A1o4Nh=80vA@mail.gmail.com>
 <CAKgNAki3BwX3_oSQ158T=6+5uRwsBKrNkz=aaF-2_d933PZCBA@mail.gmail.com>
In-Reply-To: <CAKgNAki3BwX3_oSQ158T=6+5uRwsBKrNkz=aaF-2_d933PZCBA@mail.gmail.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Thu, 23 Apr 2020 19:42:33 +0300
Message-ID: <CAOQ4uxhGMLKHBLjr_1k-C0JBPOoRvwSYmfonyd9ks0m0Fn8j2Q@mail.gmail.com>
Subject: Re: Kernel bugzilla 198569: fanotify_mark() and FAN_Q_OVERFLOW
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>, Heinrich Schuchardt <xypron.glpk@gmx.de>,
        linux-man <linux-man@vger.kernel.org>, alexandermv@gmail.com,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Apr 23, 2020 at 3:42 PM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> Hello Amir, Jan,
>
> On Thu, 23 Apr 2020 at 14:19, Amir Goldstein <amir73il@gmail.com> wrote:
> >
> > On Thu, Apr 23, 2020 at 2:23 PM Jan Kara <jack@suse.cz> wrote:
> > >
> > > Hi Michael!
> > >
> > > On Thu 23-04-20 12:36:26, Michael Kerrisk (man-pages) wrote:
> > > > Would you be able to take a look at
> > > > https://bugzilla.kernel.org/show_bug.cgi?id=198569
> > > >
> > > > It relates to some text you added to the fanotify_mark(2) manual page:
> > > >
> > > >        FAN_Q_OVERFLOW
> > > >               Create an event when an overflow of the event queue occurs.
> > > >               The size of the event queue is limited to 16384 entries  if
> > > >               FAN_UNLIMITED_QUEUE is not set in fanotify_init(2).
> > > >
> > > > This was in the following commit
> > > >
> > > > [[
> > > > commit 5d730f864a6603b090cd1078668cede05d02b8c4
> > > > Author: Heinrich Schuchardt <xypron.glpk@gmx.de>
> > > > Date:   Tue Nov 8 23:13:38 2016 +0100
> > > >
> > > >     fanotify_mark.2: Mention FAN_Q_OVERFLOW
> > > >
> > > >     To receive overflow events it is necessary to set this bit
> > > >     in fanotify_mark().
> > > > ]]
> > > >
> > > > As far as I can see, FAN_Q_OVERFLOW (test program, reading the kernel
> > > > source) is only an output flag. But on the other hand, I know you are
> > > > generally careful, so I wonder if something changed (though, at a
> > > > quick glance, I could not see evidence that it has).
> > >
> > > Yeah, the manpage is wrong AFAICT. FAN_Q_OVERFLOW is not accepted in the
> > > input mask. It is only output event flag.
> > >
> >
> > Right.
> >
> > Note that fanotify.7 documents FAN_Q_OVERFLOW as part of event output mask
> > so perhaps the FAN_Q_OVERFLOW entry for fanotify_mark.2 input mask should
> > just be removed?
>
> Yes, I'll just remove that piece from fanotify_mark.2.
> >
> > Similarly, the input only flag FAN_EVENT_ON_CHILD is documented in
> > fanotify_mark.2, but not in fanotify.7.
> >
> > FAN_ONDIR has been input only until v5.1 and since then it can also be
> > in output mask for group with FAN_REPORT_FID.
> > This is documented in fanotify_mark.2, but not in fanotify.7.
>
> I'm overlooking something: where is this detail documented in
> fanotify_mark.2? (I mean, I see mention of FAN_ONDIR, but no mention
> of a change in v5.1.)

fanotify_mark.2:
The FAN_ONDIR flag is reported in an event mask only if the fanotify_fd
file descriptor has been initialized with the flag FAN_REPORT_FID.

fanotify_init.2:
FAN_REPORT_FID (since Linux 5.1)

>
> And would you be willing to write a small patch for fanotify.7 :-) ?
>

I guess I was asking for it ;-)
I have some more work cut out for me on this man page for v5.7 or later.
Adding yet another fanotify_init flag, so I'll make this change part of my
next series.

Thanks,
Amir.
