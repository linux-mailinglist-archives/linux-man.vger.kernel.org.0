Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3D8B1A6443
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2020 10:43:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727800AbgDMIhw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Apr 2020 04:37:52 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:34480 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727779AbgDMIhu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Apr 2020 04:37:50 -0400
Received: by mail-ed1-f67.google.com with SMTP id s29so5549226edc.1
        for <linux-man@vger.kernel.org>; Mon, 13 Apr 2020 01:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=OYukWcTNT+NfaZVQ06N7/9Kw5jp+PyoJ2sWjW2687FE=;
        b=EnbahG75Po1eef9FUaAvXzuULNaFhoq67tyY1li3iZocSZ8MBMKphWWYS9qkYPlS0K
         rwoT3x+7G4XRhGCW8VPRSf5Zf6Bt57/bP7OFeiFMDvfWPEzvQ8fckxQUKrn4qvgDz2g1
         psZhCn/yCaJ24xv2Nvc2jQxuqbq8/9cLBpi76CYU61JeukEZJI7tLadb+BQflrfMTKrn
         VluSj0V4FtUA55Jkx7+xUZ5Ybspo7MXaTwTYXZyk5mqa9CMGnvnRsBAFXyXi/+VVUxNf
         hVzQYXs46PwOdtwA4gX8DjFGTJ7iFoUcS5ijVr0+Tq/1vbOSLn6rZ21dV0yKGWwx56zQ
         v3yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=OYukWcTNT+NfaZVQ06N7/9Kw5jp+PyoJ2sWjW2687FE=;
        b=jttXTHvduYZ2AwjMw05urRTJfBD3mM7RVG5NxayMKDqv7Yvc+6T6BNHaYN6KxOmNg0
         +IzQaa21jANLMYWvuq3jpQlYOlsa6R2+BOv478f/cnfKolqCZDL97ieJkJWcqmbbo8kH
         9QS7vWb+P/LexLhvr0sZtd6uQvKa/BiIuUILm2EstTo0oa6Up3IDUZMyAQBZQ6e8P8AN
         2VOkHo4apnZ2e6Be8Ja6T4YucT4nvrWrb0KIp2CmGWg8wHpge+IJzGwVIlWJah+fZkZf
         O6BfN8yJz5zIQ4vidM3CANsCHUDqLTYLbc4HWZegor2ifiUlNaDf6No85h3mf1tZpJ3b
         eyOQ==
X-Gm-Message-State: AGi0PuZxcP8jQhG1NTHusxEbc+RvGcFR/QeJcPOOEciBoA8/Ebbaq4o8
        iWTTxoVGAM2E+r0RLALMZp1tkr9sSqIeFK/GQtDtHA==
X-Google-Smtp-Source: APiQypKOitbGZFXXW0Q2UWbG9QMVlfCXDlQA9vl/b/scgPI0psyQ+upS4v+w65lzQabapMhQbce8r4n0V5Z0bzNi0es=
X-Received: by 2002:a17:906:1fd6:: with SMTP id e22mr12565514ejt.150.1586767067242;
 Mon, 13 Apr 2020 01:37:47 -0700 (PDT)
MIME-Version: 1.0
References: <CABpewhFEkb4wMZ=nH8HrgTQ0N_LfNVMvJbXu5eJ37EzBzz0xdw@mail.gmail.com>
In-Reply-To: <CABpewhFEkb4wMZ=nH8HrgTQ0N_LfNVMvJbXu5eJ37EzBzz0xdw@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 13 Apr 2020 10:37:36 +0200
Message-ID: <CAKgNAkhjkiChp6vDjCB9HXA4tkTXt-kVNuXm=WikSa=8RH35dg@mail.gmail.com>
Subject: Re: [patch] ptrace.2: Document PTRACE_SET_SYSCALL
To:     "Joseph C. Sible" <josephcsible@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Joseph,

On Mon, 3 Sep 2018 at 19:26, Joseph C. Sible <josephcsible@gmail.com> wrote:
>
> Signed-off-by: Joseph C. Sible <josephcsible@gmail.com>

Thanks. Patch (finally) applied.

Cheers,

Michael

> ---
>  man2/ptrace.2 | 23 ++++++++++++++++-------
>  1 file changed, 16 insertions(+), 7 deletions(-)
>
> diff --git a/man2/ptrace.2 b/man2/ptrace.2
> index aea63d2..69699cc 100644
> --- a/man2/ptrace.2
> +++ b/man2/ptrace.2
> @@ -51,13 +51,6 @@
>  .\"    ARM
>  .\"    Linux 2.6.12
>  .\"
> -.\" PTRACE_SET_SYSCALL
> -.\"    ARM and ARM64
> -.\"    Linux 2.6.16
> -.\"    commit 3f471126ee53feb5e9b210ea2f525ed3bb9b7a7f
> -.\"    Author: Nicolas Pitre <nico@cam.org>
> -.\"    Date:   Sat Jan 14 19:30:04 2006 +0000
> -.\"
>  .\" PTRACE_GETCRUNCHREGS
>  .\" PTRACE_SETCRUNCHREGS
>  .\"    ARM
> @@ -735,6 +728,22 @@ argument is treated as for
>  .RI ( addr
>  is ignored.)
>  .TP
> +.BR PTRACE_SET_SYSCALL " (since Linux 2.6.16)"
> +.\" commit 3f471126ee53feb5e9b210ea2f525ed3bb9b7a7f
> +When in syscall-enter-stop, change the number of the syscall about to
> +be executed to the number specified in the
> +.I data
> +argument. The
> +.I addr
> +argument is ignored. This request is currently
> +.\" As of 4.19-rc2
> +supported only on arm (and arm64, though only for backwards compatibility),
> +.\" commit 27aa55c5e5123fa8b8ad0156559d34d7edff58ca
> +but most other architectures have other means of accomplishing this
> +(usually by changing the register that the userland code passed the
> +syscall number in).
> +.\" see change_syscall in tools/testing/selftests/seccomp/seccomp_bpf.c
> +.TP
>  .BR PTRACE_SYSEMU ", " PTRACE_SYSEMU_SINGLESTEP " (since Linux 2.6.14)"
>  For
>  .BR PTRACE_SYSEMU ,
> --
> 2.7.4



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
