Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD8C0311C7C
	for <lists+linux-man@lfdr.de>; Sat,  6 Feb 2021 10:57:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229548AbhBFJ5P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Feb 2021 04:57:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229541AbhBFJ5N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Feb 2021 04:57:13 -0500
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBC54C06174A
        for <linux-man@vger.kernel.org>; Sat,  6 Feb 2021 01:56:33 -0800 (PST)
Received: by mail-oi1-x235.google.com with SMTP id u66so8363653oig.9
        for <linux-man@vger.kernel.org>; Sat, 06 Feb 2021 01:56:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=iAXSh8LJGY4GWkLzkUNJuuKgExsK7u6d5znt2tneXgk=;
        b=T8Pt+O4WFfEuywG1kn5c6j0R929TO8d9erxXXrSjC/NOBZ8q4I8Sd8Gnma6xIUX2zs
         KCyWX9MEIl7gydRbCBOFdD8Echq0zfRsFIE5hySZnOKoAQnl0GN+XSbdUPaMi8xJF+8z
         6y2CODN95v1iVeP+k6vpSOPLC6jf2OXIsR0NKa/f8qi9S3YRhEuICfTyJ54gS4tnu1+2
         W9Tx/Hp9JHqrkh+G2z2HcFe4ZthTbBL6/djLBs1IsIqOs7/FOde088pDuCM221UiPe0g
         sebEjBs2qP1S2k3LFZZp6s49sn2ubASPqoUEfO7PBx7X52PBUXg5JpbtOLnL7PlNhjzA
         9Rgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=iAXSh8LJGY4GWkLzkUNJuuKgExsK7u6d5znt2tneXgk=;
        b=j7NkYQeQu/vr5zjNHjRBbWJHKeGB5pkT02uQIpYhijrmJJbvalC4v99TUjiLnJc2uU
         putHibG4Ml/hNPmWWEmef1noarOLtlqXDKuPdG0GMgNtnJ5SLmsQndIYSkSwhKA8I/0x
         pdqqWR+KfOpWFDDmPFX4CZRxw+0X+Mnx2R/on2kX1xw0JMUcMmIKhp29GUVzP60eDZTt
         ihEctFUL/qFwXBcq44lh6bjbpmED1DjQ9eH97F3axKp3aSZ9B7z24UnZmihc4TUXJA6z
         SEpeSP7rQeMP+e0jRhz6nO00ttZV1zD5Kb43yLUmmGyXdWqAiPn08tprwaVeL+Nyhdqf
         AmOg==
X-Gm-Message-State: AOAM532zk5gEVnGofFYw2uNdu0cF837C84WK54yTAz0DojkPpaH0tIow
        mjNHisY9JM6sKMr6yfJustOIcSPdYCw76aOZGnn2CAkU
X-Google-Smtp-Source: ABdhPJyghfTHMe+n+Iqub16iXE8nnhP/SynXx6x/9B1fqbQvJwUtYtxmkHQymM5972QAgpvQWao6X3HCZOmbcIt2Ln0=
X-Received: by 2002:aca:48c6:: with SMTP id v189mr5619988oia.177.1612605393109;
 Sat, 06 Feb 2021 01:56:33 -0800 (PST)
MIME-Version: 1.0
References: <20210203182528.150479-1-alx.manpages@gmail.com>
In-Reply-To: <20210203182528.150479-1-alx.manpages@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 6 Feb 2021 10:56:22 +0100
Message-ID: <CAKgNAkj6Kz=DGjrrX-NHKWRYjLZXED7TZyHFtTYpf0gAPmHSeg@mail.gmail.com>
Subject: Re: [PATCH] epoll_wait.2: Glibc doesn't provide epoll_pwait2() yet
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        Willem de Bruijn <willemb@google.com>,
        Florian Weimer <fweimer@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Wed, 3 Feb 2021 at 19:28, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>
> Hi all,
>
> As far as I can tell, glibc doesn't yet provide the wrapper function for
> epoll_pwait2(), does it?

Not yet, AFAICT.

> So let's add a reminder to check if glibc provides the wrapper in the future.

Perhaps we could do one better. Raise a glibc bug requesting support,
and add the URL of that bug in the FIXME :-).

Cheers,

Michael

> Cheers,
>
> Alex
>
>  man2/epoll_wait.2 | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/man2/epoll_wait.2 b/man2/epoll_wait.2
> index f0e432478..e338f8830 100644
> --- a/man2/epoll_wait.2
> +++ b/man2/epoll_wait.2
> @@ -35,6 +35,8 @@ epoll_wait, epoll_pwait, epoll_pwait2 \- wait for an I/O event on an epoll file
>  .BI "int epoll_pwait2(int " epfd ", struct epoll_event *" events ,
>  .BI "               int " maxevents ", const struct timespec *" timeout ,
>  .BI "               const sigset_t *" sigmask );
> +.\" FIXME: Check if glibc has added a wrapper for epoll_pwait2().
>  .fi
>  .SH DESCRIPTION
>  The
> --
> 2.30.0
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
