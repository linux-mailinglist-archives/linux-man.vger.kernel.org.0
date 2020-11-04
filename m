Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 444202A68ED
	for <lists+linux-man@lfdr.de>; Wed,  4 Nov 2020 17:02:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730377AbgKDQCJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Nov 2020 11:02:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726801AbgKDQCJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Nov 2020 11:02:09 -0500
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D58BC0613D3
        for <linux-man@vger.kernel.org>; Wed,  4 Nov 2020 08:02:07 -0800 (PST)
Received: by mail-lf1-x144.google.com with SMTP id l28so27761212lfp.10
        for <linux-man@vger.kernel.org>; Wed, 04 Nov 2020 08:02:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yw7xo1RkxIcmN3JmgvIK5cYFzLxFtahn6mSko7jazAA=;
        b=CxiwJ67vOooxYPRPuriDwGN7jSbXTOQJiNZRUFPsWVYtvrHVlEr8lz9X3c0N+NCZpe
         PtIboIiRYn9s6tfdG2c+NMC3lSvIkj2tkswGAYov6F4bIr2MW/gLoqHVghiYROnvqk0m
         s4+tO7p1I8n1V1Mm0zRUeZk9iibdcIkJcuQ4siU5yY8dZuHD7SccSXrc/OGh5YZUP5Ie
         wqOghcObXDdYB8bKPlhfLD+eMPfFQ6lSzc3aKGg06B9jH+VKiN8NWWs4NcCbfV/gpE2b
         8E24qmUHYa9XtI6JZoBLLzLwhGfjePr8xFT/E08hBWmfUsu0lc3aAXAauaCoxbSUV+ob
         6/vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yw7xo1RkxIcmN3JmgvIK5cYFzLxFtahn6mSko7jazAA=;
        b=YiDjMU4NrJqkA4RYBmfSTTgcYnoDW9f//8Pu7jSRwWBkqijNq4jc5jI1onvXKKvN2w
         pLqberw6aPZLfXjaDBW25iMEumaiCL8TFFXn8Cb42GpliMzveuV0mYVaswOw15gYhlhD
         OlCXvgog2xyDiIsXHR3azmKejmWGU4w+AWTvT7PnaqYYpWw8BgC1HjDnOAj1wrl7SVaj
         YylnxFC2LfwYWOlMzKyQHfWhMlI984Hq+7oSbDkdC7oZzgCgplMJi1pTw+EDfKH4bSIC
         opI+30nZTrdYIC9kYpDWZL0D8DZUtKtDSifcYmlcV4rNjCXqMLB5S0qAoqBJOJRKMBNj
         OwiA==
X-Gm-Message-State: AOAM5310INLNyr9XSxcAcwXwmxhoq6MxEvQFISjhb9Ap/C+eYzGYe3hz
        pBwEwL4fBkgCuVNQm9YpQ+aQzoHIDE5cgmhVuQxTog==
X-Google-Smtp-Source: ABdhPJzbpYTlEj1OdHAkVvAFtlBPjfR1ckb8hvRWYUAYj3/rPujTpyMIZ1fNNnVwnUDflK+gMDBPOrYzKOLI8cerro0=
X-Received: by 2002:a19:bed7:: with SMTP id o206mr8953249lff.360.1604505725815;
 Wed, 04 Nov 2020 08:02:05 -0800 (PST)
MIME-Version: 1.0
References: <20201103190433.373528-1-posk@google.com> <042cd0b4-236f-ceca-2760-9a4fbbcd3e3f@gmail.com>
 <315a032d-26e8-b6db-ec74-82ec8db37a4f@gmail.com>
In-Reply-To: <315a032d-26e8-b6db-ec74-82ec8db37a4f@gmail.com>
From:   Peter Oskolkov <posk@google.com>
Date:   Wed, 4 Nov 2020 08:01:54 -0800
Message-ID: <CAPNVh5e_u0JcF7dE0sOs6DZrnw1zAw1f9VzCu4B+gO2fOF7AMA@mail.gmail.com>
Subject: Re: [PATCH] membarrier.2: Update membarrier manpage for 5.10
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
        linux-man <linux-man@vger.kernel.org>,
        "Paul E . McKenney" <paulmck@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Boqun Feng <boqun.feng@gmail.com>,
        Paul Turner <pjt@google.com>,
        Chris Kennelly <ckennelly@google.com>,
        Peter Oskolkov <posk@posk.io>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Nov 4, 2020 at 1:39 AM Alejandro Colomar
<colomar.6.4.3@gmail.com> wrote:
>
> Maybe I'd also add a paragraph in VERSIONS, saying there was an old
> version with a different prototype (and maybe show it there).
>
> What do you think about it?

Hi Alex,

I don't mind your re-doing my patch with the typo fix, updated
examples, and the addition to versions. Please
let me know if you would like to do that. If not, I'll send a new
patch with these changes.

Thanks,
Peter

>
> Thanks,
>
> Alex
>
> On 2020-11-03 22:01, Alejandro Colomar wrote:
> > Hi Peter,
> >
> > It looks very good! Just one typo:
> >
> > [[
> > .BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id );"
> > ]]
> > should be:
> > [[
> > .BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id );
> > ]]
> >
> > Note the removal of the last '"', which was unpaired.
> >
> >
> > Thanks,
> >
> > Alex
> >
> > On 2020-11-03 20:04, Peter Oskolkov wrote:
> >> Linux kernel commit 2a36ab717e8fe678d98f81c14a0b124712719840
> >> (part of 5.10 release) changed sys_membarrier prototype/parameters
> >> and added two new commands. This manpages patch reflects these
> >> changes, by mostly copying comments from the kernel patch
> >> into the manpage (I was also the author of the kernel change).
> >> ---
> >>   man2/membarrier.2 | 41 +++++++++++++++++++++++++++++++++++++++--
> >>   1 file changed, 39 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/man2/membarrier.2 b/man2/membarrier.2
> >> index 3064b2d2e..c95e97cb6 100644
> >> --- a/man2/membarrier.2
> >> +++ b/man2/membarrier.2
> >> @@ -30,7 +30,7 @@ membarrier \- issue memory barriers on a set of threads
> >>   .PP
> >>   .B #include <linux/membarrier.h>
> >>   .PP
> >> -.BI "int membarrier(int " cmd ", int " flags ");"
> >> +.BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id
> >> );"
> >>   .fi
> >>   .PP
> >>   .IR Note :
> >> @@ -165,6 +165,29 @@ core command prior to using it.
> >>   Register the process's intent to use
> >>   .BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_SYNC_CORE .
> >>   .TP
> >> +.BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ " (since Linux 5.10)"
> >> +Ensure the caller thread, upon return from system call, that all its
> >> +running thread siblings have any currently running rseq critical
> >> sections
> >> +restarted if
> >> +.I flags
> >> +parameter is 0; if
> >> +.I flags
> >> +parameter is
> >> +.BR MEMBARRIER_CMD_FLAG_CPU ,
> >> +then this operation is performed only on CPU indicated by
> >> +.I cpu_id .
> >> +This guarantee is provided only for threads in
> >> +the same process as the calling thread.
> >> +.IP
> >> +RSEQ membarrier is only available in the "private expedited" form.
> >> +.IP
> >> +A process must register its intent to use the private expedited rseq
> >> +command prior to using it.
> >> +.TP
> >> +.BR MEMBARRIER_CMD_REGISTER_PRIVATE_EXPEDITED_RSEQ " (since Linux 5.10)"
> >> +Register the process's intent to use
> >> +.BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ .
> >> +.TP
> >>   .BR MEMBARRIER_CMD_SHARED " (since Linux 4.3)"
> >>   This is an alias for
> >>   .BR MEMBARRIER_CMD_GLOBAL
> >> @@ -172,7 +195,21 @@ that exists for header backward compatibility.
> >>   .PP
> >>   The
> >>   .I flags
> >> -argument is currently unused and must be specified as 0.
> >> +argument must be specified as 0 unless the command is
> >> +.BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ ,
> >> +in which case
> >> +.I flags
> >> +can be either 0 or
> >> +.BR MEMBARRIER_CMD_FLAG_CPU .
> >> +.PP
> >> +The
> >> +.I cpu_id
> >> +argument is ignored unless
> >> +.I flags
> >> +is
> >> +.BR MEMBARRIER_CMD_FLAG_CPU ,
> >> +in which case it must specify the CPU targeted by this membarrier
> >> +command.
> >>   .PP
> >>   All memory accesses performed in program order from each targeted
> >> thread
> >>   are guaranteed to be ordered with respect to
> >>
