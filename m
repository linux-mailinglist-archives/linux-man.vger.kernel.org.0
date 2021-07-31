Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F362A3DC2F5
	for <lists+linux-man@lfdr.de>; Sat, 31 Jul 2021 05:36:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231491AbhGaDgs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 23:36:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231371AbhGaDgr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 23:36:47 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF20CC06175F;
        Fri, 30 Jul 2021 20:36:41 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id oz16so20301449ejc.7;
        Fri, 30 Jul 2021 20:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UqPpoVrV5Zv8tJECfFd0jqzbPpbyi52sVgr9Ggd0sXM=;
        b=UrQI4ja2/tWhdxsjUHg48NBCoEFaPyX2E/49L/OSQnPl9bo1saaxEIfYEIB2HW26Kt
         5CsN7ujx/ppQVUwM5SOassSHJ4xeKfMPmMfcXDnx2zga6zSDyqTXTAxk4uKmj9W+njJi
         4Tfu4qQMxt3geZV4vl2E/u39/bkomT4Q6fofo9RSsu+n1x75IFvP+0F9+Q9lGmZg/t90
         OhnM04R2s0eaqyhZlCyZKWPxwinMMEG4j7X1Pk23cELDe5M8htqGfUHzbbKz50svqhEK
         zLemCmcvRR04+F9E4taIbk3h/ZXhiANSKWJ49p7wi3KkOsgITf0IaYIc6p53xketqQJM
         kYAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UqPpoVrV5Zv8tJECfFd0jqzbPpbyi52sVgr9Ggd0sXM=;
        b=ResdmGtEIYZKtZ6QZrjVl3sYaarkdo1qbnt52Z82Pf0zm/B2PgaFBiwN+UV/sMXzQY
         lKcFZrghU9XLm88z4YOwEbY26Gm1yoE2NV6A6gngDVr83IvkTTeoW+0BGg2x+yYWzNss
         UVJJSWzJkGOmS0WYhe+AZv5QQHZisFWR5LiQc8qGgqoR6jcGL3wx67D35lE07OzBaE1B
         ToCjYkB6dH6BJbUHeCAEGR4IQ6bSgA2bn6qxuT5hVfH5j1HOW4fwhgOUMazdiTZKjfjC
         LoMShrQOOaTOYg5Kni2LSb4zBMWyrzMlniLvzs1ffUEY+eEnzfnXNluMCPIcJY8vC468
         Hkpg==
X-Gm-Message-State: AOAM530QR2utLOJBilYnVFCinPgDR3a+ex70Sq2vKUxEEeS7CKFRDVxJ
        bNSTQ+xh48KLBBLzUzn1MihZ7gKHpGa9Lsl0RZk=
X-Google-Smtp-Source: ABdhPJyFvI7FmGemcBkicNzrSaM5dfs57prOAzoB7xgZQjgQlq6l6kYHMr3y8Zq7WyZQs+DdNk+IuLgSCTCj3rjq1Lk=
X-Received: by 2002:a17:906:4ad9:: with SMTP id u25mr5812143ejt.106.1627702600406;
 Fri, 30 Jul 2021 20:36:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAOVCmzEJqg6=FW3Vu1MScyj8GS-KXb2s_ztxBxwDmcbN5sbQuA@mail.gmail.com>
 <CAOVCmzEzwFkiDz_Tf0LFQQZYKYdbACjyjdLOpawh0BB9JpDg1Q@mail.gmail.com> <CAKgNAkioMyEYk2AfjC-bHtD4ZxM=brm9CMWF-WXNfqYNvyyQKQ@mail.gmail.com>
In-Reply-To: <CAKgNAkioMyEYk2AfjC-bHtD4ZxM=brm9CMWF-WXNfqYNvyyQKQ@mail.gmail.com>
From:   Shivank Garg <shivankgarg98@gmail.com>
Date:   Sat, 31 Jul 2021 09:06:24 +0530
Message-ID: <CAOVCmzFU-Z-q-zxbBR=1FgR+2VbxAxNbUuwtcDWVZnO6pDf+ag@mail.gmail.com>
Subject: Re: /proc/pid/sched units
To:     mtk.manpages@gmail.com
Cc:     linux-doc@vger.kernel.org, linux-man <linux-man@vger.kernel.org>,
        willy@infradead.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

Thanks for the help. My confusion is clear now.

On Sat, Jul 31, 2021 at 3:11 AM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> Hello Shivank,
>
> On Wed, 28 Jul 2021 at 14:59, Shivank Garg <shivankgarg98@gmail.com> wrote:
> >
> > ---------- Forwarded message ---------
> > From: Shivank Garg <shivankgarg98@gmail.com>
> > Date: Wed, Jul 28, 2021 at 6:26 PM
> > Subject: /proc/pid/sched units
> > To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux MM
> > <linux-mm@kvack.org>, <util-linux@vger.kernel.org>
> >
> >
> > Hi Everyone,
> >
> > I'm analyzing the cpu time taken ("se.sum_exec_runtime" in
> > /proc/$pid/sched) by process in different configurations for my
> > project work. But I was not able to get the time units for the values
> > displayed in the file. I tried searching it in source code -
> > kernel/sched/cputime.c,include/linux/sched.h etc. but it left me more
> > confused.
> >
> > Can you please answer me about the measurement units (is it
> > microseconds, nanoseconds, jiffles ...) ?
> >
> > Also, I was not able to find proper documentation for /proc/pid/sched.
> > Please point to me if it's already there. If not, I would love to
> > contribute toward documenting these variables. It would be very
> > helpful for newbies (like me) in future.
>
> It looks like se.sum_exec_runtime is milliseconds. In
> kernel/sched/debug.c, see proc_sched_show_task(), the definition of
> the PN() PNS(), and SPLIT_NS() macros, and the nsec_high(x) and
> nsec_low(x) functions.
>
> Thanks,
>
> Michael
>
>
> --
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/
