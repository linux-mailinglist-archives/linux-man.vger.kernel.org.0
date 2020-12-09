Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD3562D3DED
	for <lists+linux-man@lfdr.de>; Wed,  9 Dec 2020 09:52:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727090AbgLIIvb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Dec 2020 03:51:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725933AbgLIIvb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Dec 2020 03:51:31 -0500
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99313C0613CF;
        Wed,  9 Dec 2020 00:50:50 -0800 (PST)
Received: by mail-oi1-x235.google.com with SMTP id q25so950749oij.10;
        Wed, 09 Dec 2020 00:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=PbtaNGZ4BeH0vYyDJhirtKPISdqGLWc/mazLoaArD/s=;
        b=ddsVXYR77UUHAFQrDHtoB98ddruojrfNLHJ5+RwSgOO/ip8FBSOmVr+UPYglZxa7KY
         7aitYpOVG4VsvgWYChSm5+2DjxqzlmstERlwI1BcOb5gGXk0hEsBIoNMuxktsym4NkM5
         QxFlY6yPZhqH0RL49dWFQ8Lt1nvbf6yUVwFJg3FiW2HnfC7DGoZqUh/QP7BYjaETBW4r
         BCOam2k5PTWWb8JPKHzyLdFX9tQOLYcTvBKpp3qWoV1zShA2iQRuahrW6/WIbSioVwTr
         cx1KgDfy+XTYfyfPyQWkZxzbfvkHDQeihW5ZmqTBI0bKf/scSe1ThaPnlQbaFoQX2ILs
         Zx/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=PbtaNGZ4BeH0vYyDJhirtKPISdqGLWc/mazLoaArD/s=;
        b=HhcMPq0yP+4ig/t0of/p24dtYlSK1Y8nUK0X7NnnU1Yqh/k+XQL5zYffaumo3mEzYw
         j5+iZ2t2+7IEOLRs0FjcR7dKEEPOe8jFychl4K59ECQ4HKuQ4Zhvs6MGju4Lso/nz2nb
         mSYnDwlHtzhZ0kz2m1f2V3CMxb5JhL1gfVWl2dKBP8+EBprjA7aZc719NU0/p9wQHW6z
         0nifAIA2yjVrKw3jthmTI1tDsMpUGoxp+TpB09US7A6xVKQf6G5ZbH7jMRTqjPer86S8
         amrRrkc+InrT5ZaO9sC/XFaC48b6VwYuWFcMWhrP6Cqm12s9fTZ6c3FWXQLKnDbaYfAM
         TRBA==
X-Gm-Message-State: AOAM5336+P4zL86QSrmhpcgRQRa1ny/qvhupLxZ+GoozVygwfRtRWniV
        Odg2GGgAc41SNr2jp1eQmdBrX8vmQdu4CALpgNU=
X-Google-Smtp-Source: ABdhPJzrMaCSlmzFtVnpunnN0XukQ3SGzrojaiZ2XPkM5Vr8IQ3yng1OtnT146VH9U82Jc/1+UA6ihZgvDniYqwJOQg=
X-Received: by 2002:aca:ded4:: with SMTP id v203mr1029734oig.148.1607503849788;
 Wed, 09 Dec 2020 00:50:49 -0800 (PST)
MIME-Version: 1.0
References: <20201208215133.30575-1-steve@sk2.org>
In-Reply-To: <20201208215133.30575-1-steve@sk2.org>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 9 Dec 2020 09:50:38 +0100
Message-ID: <CAKgNAki3jRYmTzCMXgBzXTz9LEmmAfRE5VuMOhnDbVmiJU=asg@mail.gmail.com>
Subject: Re: [patch] close_range.2: new page documenting close_range(2)
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Stephen

Thank you for writing this page! Some comments/questions below.

On Tue, 8 Dec 2020 at 22:51, Stephen Kitt <steve@sk2.org> wrote:
>
> This documents close_range(2) based on information in
> 278a5fbaed89dacd04e9d052f4594ffd0e0585de and
> 60997c3d45d9a67daf01c56d805ae4fec37e0bd8.

(Thanks for noting these commit IDs.)

> Signed-off-by: Stephen Kitt <steve@sk2.org>
> ---
>  man2/close_range.2 | 112 +++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 112 insertions(+)
>  create mode 100644 man2/close_range.2
>
> diff --git a/man2/close_range.2 b/man2/close_range.2
> new file mode 100644
> index 000000000..62167d9b0
> --- /dev/null
> +++ b/man2/close_range.2
> @@ -0,0 +1,112 @@
> +.\" Copyright (c) 2020 Stephen Kitt <steve@sk2.org>
> +.\"
> +.\" %%%LICENSE_START(VERBATIM)
> +.\" Permission is granted to make and distribute verbatim copies of this
> +.\" manual provided the copyright notice and this permission notice are
> +.\" preserved on all copies.
> +.\"
> +.\" Permission is granted to copy and distribute modified versions of this
> +.\" manual under the conditions for verbatim copying, provided that the
> +.\" entire resulting derived work is distributed under the terms of a
> +.\" permission notice identical to this one.
> +.\"
> +.\" Since the Linux kernel and libraries are constantly changing, this
> +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
> +.\" responsibility for errors or omissions, or for damages resulting from
> +.\" the use of the information contained herein.  The author(s) may not
> +.\" have taken the same level of care in the production of this manual,
> +.\" which is licensed free of charge, as they might when working
> +.\" professionally.
> +.\"
> +.\" Formatted or processed versions of this manual, if unaccompanied by
> +.\" the source, must acknowledge the copyright and authors of this work.
> +.\" %%%LICENSE_END
> +.\"
> +.TH CLOSE_RANGE 2 2020-12-08 "Linux" "Linux Programmer's Manual"
> +.SH NAME
> +close_range \- close all file descriptors in a given range
> +.SH SYNOPSIS
> +.nf
> +.B #include <linux/close_range.h>
> +.PP
> +.BI "int close_range(int " first ", int " last ", unsigned int " flags );
> +.fi
> +.SH DESCRIPTION
> +The
> +.BR close_range ()
> +system call closes all open file descriptors from
> +.I first
> +to
> +.IR last
> +(included).
> +.PP
> +Errors closing a given file descriptor are currently ignored.
> +.PP
> +.I flags
> +can be set to
> +.B CLOSE_RANGE_UNSHARE
> +to unshare the range of file descriptors from any other processes,
> +.I instead
> +of closing them.

Really "instead of closing them"? I had supposed that rather that this
should be "before closing them". That's also how the kernel code reads
to me, from a quick glance.

> +.SH RETURN VALUE
> +On success,
> +.BR close_range ()
> +return 0.

s/return/returns/

> +On error, \-1 is returned and
> +.I errno
> +is set to indicate the cause of the error.
> +.SH ERRORS
> +.TP
> +.B EINVAL
> +.I flags
> +is not valid, or
> +.I first
> +is greater than
> +.IR last .
> +.TP
> +.B EMFILE
> +The per-process limit on the number of open file descriptors has been reached
> +(see the description of
> +.BR RLIMIT_NOFILE
> +in
> +.BR getrlimit (2)).

Given that we are simply closing FDs, how can EMFILE occur?

> +.TP
> +.B ENOMEM
> +Insufficient kernel memory was available.
> +.SH VERSIONS
> +.BR close_range ()
> +first appeared in Linux 5.9.
> +.SH CONFORMING TO
> +.BR close_range ()
> +is available on Linux and FreeBSD.

Here, I think it would be better to write:

close_range()
is a nonstandard function that is also present on FreeBSD.

> +.SH NOTES
> +Currently, there is no glibc wrapper for this system call; call it using
> +.BR syscall (2).
> +.SH USE CASES
> +.\" 278a5fbaed89dacd04e9d052f4594ffd0e0585de
> +.\" 60997c3d45d9a67daf01c56d805ae4fec37e0bd8
> +.SS Closing file descriptors before exec
> +File descriptors can be closed safely using
> +.PP
> +.in +4n
> +.EX
> +/* we don't want anything past stderr here */
> +close_range(3, ~0U, CLOSE_RANGE_UNSHARE);
> +execve(....);
> +.EE
> +.in
> +.PP

.PP is not necessary before a new subsection (.SS).

> +.SS Closing all open file descriptors
> +This is commonly implemented (on Linux) by listing open file

Is it really true that this is common? I suspect not. It's slow, and
relies on /proc being present. I would have thought that more common
is something like:

        int maxfd = sysconf(_SC_OPEN_MAX);
        if (maxfd == -1)                /* Limit is indeterminate... */
            maxfd = 16384;           /* so take a guess */

        for (fd = 0; fd < maxfd; fd++)
            close(fd);

I think it's fine to mention the use of a /proc as an (inferior and)
alternative way of doing this. I'm just not sure that "commonly" is
correct.

> +descriptors in
> +.B /proc/self/fd/
> +and calling
> +.BR close (2)
> +on each one.
> +.BR close_range ()
> +can take care of this without requiring
> +.B /proc
> +and with a single system call, which provides significant performance
> +benefits.
> +.SH SEE ALSO
> +.BR close (2)
>
> base-commit: b5dae3959625f5ff378e9edf9139057d1c06bb55
> --
> 2.20.1

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
