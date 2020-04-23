Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00BCA1B5B44
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2020 14:19:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726090AbgDWMTx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Apr 2020 08:19:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726056AbgDWMTx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Apr 2020 08:19:53 -0400
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com [IPv6:2607:f8b0:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47A4CC08E859
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 05:19:53 -0700 (PDT)
Received: by mail-il1-x143.google.com with SMTP id u189so5315760ilc.4
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 05:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PjuSEx8FxalMNdmsQr0AZbC491LRBSoZxKKsoltKDaM=;
        b=NGJWWY2RyJn53REeaHINKOxdxDYu4fBcYLmijYonUnKQqb915svENBhvRRx0k+NMtY
         xngTQU2s6YQPY129uHcJ5JxqZJkT9/D85OAZhuvLbVkeLyceBhHwB1yN6OJXvne44M8K
         D5BGUJdcmOqzFFz9Df9MHIomrob0t/ljhw+NWO8cnIySHtHG2ONaEugs4P16RkDPXWkW
         T2sLofpqT5Db/+pPoRakW+dguQ/fGkR2cPqFyhZUz+c4/IMpXlopnGbYjyIM2rm3Ryji
         QhdraZ5FyRR6ch9e5F4NiTEEjvvTO5ajl/hj5ZQuWp9TNSNJWH/Mff3dGPfk/mxsEl9T
         LXbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PjuSEx8FxalMNdmsQr0AZbC491LRBSoZxKKsoltKDaM=;
        b=MET/wAmDpA2PKfXBQRpuacp41wdxf7hSYUg18c8pPEEnLpvo/I5R9UnyzUtIEpJNch
         bssKUIQu8v0XvpqZaecsTO6sFmWB3B3/REhjYgelUSfjP9cWqyZ0tyT2mzRkRA4Sr67W
         QygtUnrklHYmuSe7EWWD6ioPG31C0p4t7Gt5LxuSF1RlccZQ9tM90aSdbj5cvTYXRict
         r/IfShg2uWmB0lkd7FExkILL7p0IpINMhvjbojobILF/Wf+zCkv9sLSIE5nJWZcDJK3E
         u2jcqfUc+5E5+/LCne+vJ2JQUIbmkiHnc+vmWlTbgvQnytd7M3cTT6xswkNgY7sx3Svo
         2kvw==
X-Gm-Message-State: AGi0PuaOO/7uxeEOEnkn2CzdEg1MWXl8DI8bs5QT2ZKryR3pn3aCwDzx
        A6Smbd42RmassCODRUK9MRuT27ZPdLFbIjCliY8=
X-Google-Smtp-Source: APiQypKrk4Pdmmslk6O1p2DiuYHF8Hj1rS+VktsLraHTzOo7066qUVZVz3KMCT3U98UCk8klQ3feHWX3SbeJAixxaEo=
X-Received: by 2002:a92:9e11:: with SMTP id q17mr3128609ili.137.1587644392652;
 Thu, 23 Apr 2020 05:19:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAKgNAkjshc5bjT2gc7wBU6nkq1BxrcV6mEs6JSuepxFjHtupOA@mail.gmail.com>
 <20200423112352.GM3737@quack2.suse.cz>
In-Reply-To: <20200423112352.GM3737@quack2.suse.cz>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Thu, 23 Apr 2020 15:19:41 +0300
Message-ID: <CAOQ4uxh5LXzG8j4egc8H_EMQc1AVGKLN=ghN1_5A1o4Nh=80vA@mail.gmail.com>
Subject: Re: Kernel bugzilla 198569: fanotify_mark() and FAN_Q_OVERFLOW
To:     Jan Kara <jack@suse.cz>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        linux-man <linux-man@vger.kernel.org>, alexandermv@gmail.com,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Apr 23, 2020 at 2:23 PM Jan Kara <jack@suse.cz> wrote:
>
> Hi Michael!
>
> On Thu 23-04-20 12:36:26, Michael Kerrisk (man-pages) wrote:
> > Would you be able to take a look at
> > https://bugzilla.kernel.org/show_bug.cgi?id=198569
> >
> > It relates to some text you added to the fanotify_mark(2) manual page:
> >
> >        FAN_Q_OVERFLOW
> >               Create an event when an overflow of the event queue occurs.
> >               The size of the event queue is limited to 16384 entries  if
> >               FAN_UNLIMITED_QUEUE is not set in fanotify_init(2).
> >
> > This was in the following commit
> >
> > [[
> > commit 5d730f864a6603b090cd1078668cede05d02b8c4
> > Author: Heinrich Schuchardt <xypron.glpk@gmx.de>
> > Date:   Tue Nov 8 23:13:38 2016 +0100
> >
> >     fanotify_mark.2: Mention FAN_Q_OVERFLOW
> >
> >     To receive overflow events it is necessary to set this bit
> >     in fanotify_mark().
> > ]]
> >
> > As far as I can see, FAN_Q_OVERFLOW (test program, reading the kernel
> > source) is only an output flag. But on the other hand, I know you are
> > generally careful, so I wonder if something changed (though, at a
> > quick glance, I could not see evidence that it has).
>
> Yeah, the manpage is wrong AFAICT. FAN_Q_OVERFLOW is not accepted in the
> input mask. It is only output event flag.
>

Right.

Note that fanotify.7 documents FAN_Q_OVERFLOW as part of event output mask
so perhaps the FAN_Q_OVERFLOW entry for fanotify_mark.2 input mask should
just be removed?

Similarly, the input only flag FAN_EVENT_ON_CHILD is documented in
fanotify_mark.2, but not in fanotify.7.

FAN_ONDIR has been input only until v5.1 and since then it can also be
in output mask for group with FAN_REPORT_FID.
This is documented in fanotify_mark.2, but not in fanotify.7.

Thanks,
Amir.
