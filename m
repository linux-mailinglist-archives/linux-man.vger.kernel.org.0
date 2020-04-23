Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B98A1B5BA4
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2020 14:42:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726503AbgDWMmd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Apr 2020 08:42:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726435AbgDWMmb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Apr 2020 08:42:31 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2980C08E934
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 05:42:30 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id n4so4546795ejs.11
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 05:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=g5p9WEphfgq+H9j9tMYZw2/p4kg02/MHyB68bf7KToU=;
        b=ZmFiPMgDKvaATkttUA/Tr6v7xoLShlbiNnX9HkmF0lCGtOlDrwTTRX07qAM1UaRKli
         td3v7SMJXLrZJ+l5/xDtM1JXlFNwqKHK4sCFZ5VyygvzfBhSKaqkeXI4LWg85aMfYXzL
         F9pwZmVqYzlreVqaOtLYLtqbIF8StlLSt9clSYQFyg85Vns1IgEDAHtMVNYq6tJh17IC
         8HifVlf1nTooBHj1YN553CdfjDmYIruOf4b/uAMfCJ07EYVebRdLozXtifTR0jHBQHCu
         Nj/W9fGSaZQQJAY5ucKvFrhegk+j4272cbss6MDH6GQDG8iPBSv58uXRbzDgx7IdlKG2
         yDFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=g5p9WEphfgq+H9j9tMYZw2/p4kg02/MHyB68bf7KToU=;
        b=Orlr6JFcF0EClYZZv5sC1aNsxXXbT/zBg3wjS+Nzys66fFamHgUWQnIaizEFUIX//C
         o545fBhmDY99jTRYphfq61ummKUxk4AtxKRH6rsewwBo7qy+cY27tmtUTsSkcObLZoak
         xMeFwuZAn0yF/R9xMvGRoNZDi6Q69EPwO8shh+pnLv0IYAle1lVgrAmT4OSjAPKQU2oe
         HoMi8XJexiWm5r13fuPiyGvZS0+z4a8qBIABQAJltJeEpo45hVLvXoTfTb21PWpYa03n
         OpsZWl+7zpxexR2jn9eQnen+1yFn2MfNPATVAR7d+XahFcjZtBrB7rQ4oHLFtmN/suWg
         p8sA==
X-Gm-Message-State: AGi0Pubs2l9KDqyZdSy0kYcD9+ErgMtGAQdPGonLQLVXjqE6PdtTzVcW
        Rv9qAIobosL6VNVu3dFn+cfAtVl5Mq+3LtZDH1U=
X-Google-Smtp-Source: APiQypJCqiAlT8j7canXNzBjZOOMhm+SQ+7kGjJApkH91gGCHbvIPnQj48OPnWexyRL1PeR3ZbpfnbJhWG0tVEuDm4E=
X-Received: by 2002:a17:906:54cd:: with SMTP id c13mr2279431ejp.307.1587645749350;
 Thu, 23 Apr 2020 05:42:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAKgNAkjshc5bjT2gc7wBU6nkq1BxrcV6mEs6JSuepxFjHtupOA@mail.gmail.com>
 <20200423112352.GM3737@quack2.suse.cz> <CAOQ4uxh5LXzG8j4egc8H_EMQc1AVGKLN=ghN1_5A1o4Nh=80vA@mail.gmail.com>
In-Reply-To: <CAOQ4uxh5LXzG8j4egc8H_EMQc1AVGKLN=ghN1_5A1o4Nh=80vA@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 23 Apr 2020 14:42:18 +0200
Message-ID: <CAKgNAki3BwX3_oSQ158T=6+5uRwsBKrNkz=aaF-2_d933PZCBA@mail.gmail.com>
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

Hello Amir, Jan,

On Thu, 23 Apr 2020 at 14:19, Amir Goldstein <amir73il@gmail.com> wrote:
>
> On Thu, Apr 23, 2020 at 2:23 PM Jan Kara <jack@suse.cz> wrote:
> >
> > Hi Michael!
> >
> > On Thu 23-04-20 12:36:26, Michael Kerrisk (man-pages) wrote:
> > > Would you be able to take a look at
> > > https://bugzilla.kernel.org/show_bug.cgi?id=198569
> > >
> > > It relates to some text you added to the fanotify_mark(2) manual page:
> > >
> > >        FAN_Q_OVERFLOW
> > >               Create an event when an overflow of the event queue occurs.
> > >               The size of the event queue is limited to 16384 entries  if
> > >               FAN_UNLIMITED_QUEUE is not set in fanotify_init(2).
> > >
> > > This was in the following commit
> > >
> > > [[
> > > commit 5d730f864a6603b090cd1078668cede05d02b8c4
> > > Author: Heinrich Schuchardt <xypron.glpk@gmx.de>
> > > Date:   Tue Nov 8 23:13:38 2016 +0100
> > >
> > >     fanotify_mark.2: Mention FAN_Q_OVERFLOW
> > >
> > >     To receive overflow events it is necessary to set this bit
> > >     in fanotify_mark().
> > > ]]
> > >
> > > As far as I can see, FAN_Q_OVERFLOW (test program, reading the kernel
> > > source) is only an output flag. But on the other hand, I know you are
> > > generally careful, so I wonder if something changed (though, at a
> > > quick glance, I could not see evidence that it has).
> >
> > Yeah, the manpage is wrong AFAICT. FAN_Q_OVERFLOW is not accepted in the
> > input mask. It is only output event flag.
> >
>
> Right.
>
> Note that fanotify.7 documents FAN_Q_OVERFLOW as part of event output mask
> so perhaps the FAN_Q_OVERFLOW entry for fanotify_mark.2 input mask should
> just be removed?

Yes, I'll just remove that piece from fanotify_mark.2.
>
> Similarly, the input only flag FAN_EVENT_ON_CHILD is documented in
> fanotify_mark.2, but not in fanotify.7.
>
> FAN_ONDIR has been input only until v5.1 and since then it can also be
> in output mask for group with FAN_REPORT_FID.
> This is documented in fanotify_mark.2, but not in fanotify.7.

I'm overlooking something: where is this detail documented in
fanotify_mark.2? (I mean, I see mention of FAN_ONDIR, but no mention
of a change in v5.1.)

And would you be willing to write a small patch for fanotify.7 :-) ?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
