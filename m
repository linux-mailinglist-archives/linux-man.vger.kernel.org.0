Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C8B6457FD2
	for <lists+linux-man@lfdr.de>; Sat, 20 Nov 2021 18:19:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231941AbhKTRW7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Nov 2021 12:22:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230337AbhKTRW6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Nov 2021 12:22:58 -0500
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com [IPv6:2607:f8b0:4864:20::d29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A93AC061574
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 09:19:55 -0800 (PST)
Received: by mail-io1-xd29.google.com with SMTP id z18so17282823iof.5
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 09:19:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4amJqjUKEyA1/n6gTvIIzBRqNg9sND1AT3xUcowChto=;
        b=acYVBvOclx/0z8TxR/d8wYe0IB5pI5NZv6MMUqb4247jHMwMoc3He4Uhzy9MSNORbI
         z21zXqs9L82tDk8Lss3vlHkmxxy8pTsFLxi1I+kuz61Pd+wAuTIJvXd+LQoYffTkQpNF
         1L6sDCYEbO9YBf1VcBkBscUl9eulsP16BOrMbOtCl26Smo3B99cbDAOuIXYTMUuhStji
         2HVO09TymvRtSG1Pq8XFusU0ljd/trEsZeDAikhx2/KvXWi9TUDMYEZFwyoD9nylyREk
         2+w0SUwCy15NhhcPaX0F7/fYF1GI7ueBHHV0/IrAuLOEcjy9D8AIvjBsuaAxxu0dktjB
         u8SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4amJqjUKEyA1/n6gTvIIzBRqNg9sND1AT3xUcowChto=;
        b=z/RnXCT1XaErLlSDU664lGaVAnrW1GuyqT06AUmPuAmNqXNt3luWM99p+guYdE80ED
         bqvHXOCzFSWITYQzOYlcymKpx9p++j67iZ41AGoCn+ev3I4uvdy/g9cmkZoYgN7nIz1F
         2XKIU997HsZ2hh560yMJEq3vPBcCqPeFLDMj7ZAztgopf2WB7CO4iE0noua5QHntohpY
         +VYtvVpLk/B/mLnMKrIwweqAYsZnqnPEc5m22+vSAP4odHXYo43igcu7IBFfY3YAw6RK
         Aj+ZWIL4UAzQ0gPLruhTIbufjHV19F7htfSsCtZ2QzyOVnQ2fVj20k5OrVOxsbd2sLEE
         BoCw==
X-Gm-Message-State: AOAM532HcQaJPRdgxR9HyaXQk5ffj8FshsB0XGlf0tLlwOqqEanGsMBb
        ZeaNh//4RTv8zWo+B//nkRW7UReRuED4vIfmr9U=
X-Google-Smtp-Source: ABdhPJwZ6G2IGjC1Wcws5tENFUpI2aQhafODrYZJO0+hXKS+eqEPeSC27WqjYCFaJeatggmbB6tun5TTFu0A+qjv2tg=
X-Received: by 2002:a05:6602:2d81:: with SMTP id k1mr12760163iow.112.1637428794763;
 Sat, 20 Nov 2021 09:19:54 -0800 (PST)
MIME-Version: 1.0
References: <20211120171253.1385863-1-amir73il@gmail.com> <20211120171253.1385863-3-amir73il@gmail.com>
In-Reply-To: <20211120171253.1385863-3-amir73il@gmail.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Sat, 20 Nov 2021 19:19:44 +0200
Message-ID: <CAOQ4uxj+_oKe3bZK-Uu2DVYtq4Ki_h49k1LzmmhzQnsBq2QZWA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] fanotify_init.2, fanotify_mark.2, fanotify.7:
 Configurable limits
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Nov 20, 2021 at 7:12 PM Amir Goldstein <amir73il@gmail.com> wrote:
>
> Update documentation about the new configurable fanotify limits
> that will be available from Linux kernel 5.13.
>
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

Forgot to add
Reviewed-by: Jan Kara <jack@suse.cz>

From:
https://lore.kernel.org/linux-man/20210319102532.GA4910@quack2.suse.cz/

> ---
>  man2/fanotify_init.2 | 22 ++++++++++++++++------
>  man2/fanotify_mark.2 |  5 ++++-
>  man7/fanotify.7      | 35 +++++++++++++++++++++++++++++++++--
>  3 files changed, 53 insertions(+), 9 deletions(-)
>
> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> index b2ceb17f3..0d83e817f 100644
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2
> @@ -53,9 +53,10 @@ descriptor.
>  Multiple programs may be using the fanotify interface at the same time to
>  monitor the same files.
>  .PP
> -In the current implementation, the number of fanotify groups per user is
> -limited to 128.
> -This limit cannot be overridden.
> +The number of fanotify groups per user is limited.
> +See
> +.BR fanotify (7)
> +for details about this limit.
>  .PP
>  The
>  .I flags
> @@ -130,13 +131,19 @@ fails with the error
>  .BR EAGAIN .
>  .TP
>  .B FAN_UNLIMITED_QUEUE
> -Remove the limit of 16384 events for the event queue.
> +Remove the limit on the number of events in the event queue.
> +See
> +.BR fanotify (7)
> +for details about this limit.
>  Use of this flag requires the
>  .B CAP_SYS_ADMIN
>  capability.
>  .TP
>  .B FAN_UNLIMITED_MARKS
> -Remove the limit of 8192 marks.
> +Remove the limit on the number of fanotify marks per user.
> +See
> +.BR fanotify (7)
> +for details about this limit.
>  Use of this flag requires the
>  .B CAP_SYS_ADMIN
>  capability.
> @@ -366,7 +373,10 @@ defines all allowable bits for
>  .IR flags .
>  .TP
>  .B EMFILE
> -The number of fanotify groups for this user exceeds 128.
> +The number of fanotify groups for this user exceeds the limit.
> +See
> +.BR fanotify (7)
> +for details about this limit.
>  .TP
>  .B EMFILE
>  The per-process limit on the number of open file descriptors has been reached.
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index 9cf71320c..cb69ac592 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -431,10 +431,13 @@ which is not marked.
>  The necessary memory could not be allocated.
>  .TP
>  .B ENOSPC
> -The number of marks exceeds the limit of 8192 and the
> +The number of marks for this user exceeds the limit and the
>  .B FAN_UNLIMITED_MARKS
>  flag was not specified when the fanotify file descriptor was created with
>  .BR fanotify_init (2).
> +See
> +.BR fanotify (7)
> +for details about this limit.
>  .TP
>  .B ENOSYS
>  This kernel does not implement
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index 9c66c24f0..455e3ed17 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -336,7 +336,7 @@ A file or directory that was opened read-only
>  was closed.
>  .TP
>  .B FAN_Q_OVERFLOW
> -The event queue exceeded the limit of 16384 entries.
> +The event queue exceeded the limit on number of events.
>  This limit can be overridden by specifying the
>  .BR FAN_UNLIMITED_QUEUE
>  flag when calling
> @@ -606,7 +606,7 @@ are freed for reuse by the kernel.
>  Upon
>  .BR close (2),
>  outstanding permission events will be set to allowed.
> -.SS /proc/[pid]/fdinfo
> +.SS /proc interfaces
>  The file
>  .I /proc/[pid]/fdinfo/[fd]
>  contains information about fanotify marks for file descriptor
> @@ -616,6 +616,37 @@ of process
>  See
>  .BR proc (5)
>  for details.
> +.PP
> +Since Linux 5.13,
> +.\" commit 5b8fea65d197f408bb00b251c70d842826d6b70b
> +the following interfaces can be used to control the amount of
> +kernel resources consumed by fanotify:
> +.TP
> +.I /proc/sys/fs/fanotify/max_queued_events
> +The value in this file is used when an application calls
> +.BR fanotify_init (2)
> +to set an upper limit on the number of events that can be
> +queued to the corresponding fanotify group.
> +Events in excess of this limit are dropped, but an
> +.B FAN_Q_OVERFLOW
> +event is always generated.
> +Prior to Linux kernel 5.13,
> +.\" commit 5b8fea65d197f408bb00b251c70d842826d6b70b
> +the hardcoded limit was 16384 events.
> +.TP
> +.I /proc/sys/fs/fanotify/max_user_group
> +This specifies an upper limit on the number of fanotify groups
> +that can be created per real user ID.
> +Prior to Linux kernel 5.13,
> +.\" commit 5b8fea65d197f408bb00b251c70d842826d6b70b
> +the hardcoded limit was 128 groups per user.
> +.TP
> +.I /proc/sys/fs/fanotify/max_user_marks
> +This specifies an upper limit on the number of fanotify marks
> +that can be created per real user ID.
> +Prior to Linux kernel 5.13,
> +.\" commit 5b8fea65d197f408bb00b251c70d842826d6b70b
> +the hardcoded limit was 8192 marks per group (not per user).
>  .SH ERRORS
>  In addition to the usual errors for
>  .BR read (2),
> --
> 2.33.1
>
