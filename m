Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 322A6407A17
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 20:29:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231866AbhIKSbG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 14:31:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231355AbhIKSbG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 14:31:06 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DE9BC061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 11:29:53 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id kt8so11252714ejb.13
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 11:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=NpuOadRHPU5dckyCu3HZw4fZbLpWcdNHvomJ5OU+J7s=;
        b=HAkoXm5iKKLLOfhN873P5gFxbuVRNtbyjgRZGLiQZ/FdEiAu09e0p2nwOivbi4Enzx
         SnpMew+jGAMpxpAX7UBoWXQEdhgiVNw66DFgI9W2A9ddalyNLikbrB5yNYoVZmij/8+w
         QWVwfMJFd2rncMPVDXc1MBa5gSyBK4VGDvGhlJljExIbZUUGbSwgHUg4JzD76MjhsV49
         TKorNn7uyJ3fipo7dxktui3Gpkgu+66XDT8exmR0enDIHnbxTRDyLsLGHJZnqH92Acut
         ExJGamNcWE/h12uiSOxPeqDv5D2v5BMgYjLIchMEzPqy6y/eHoq0CSujR9/QUkUImZ8p
         5G0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=NpuOadRHPU5dckyCu3HZw4fZbLpWcdNHvomJ5OU+J7s=;
        b=Ot30PoYcJF3uWVQlr59M8zto8BP3ATohk85VSorEVYkQw55agzCgxfi5APtQPWN6Hc
         /kUO63twt2coStMwdTZD56YwwfGgofs2jagDS5jHiKPB2vlhcClS+rrduwMar3rwRKD0
         ILGGIydgDWfhQGJYDh01zsG4KNG9ItzNkOHL3gXYiuJcr05lfjlthL46hO97gjMSExZ5
         FJl4hWNo0a+Xl6wFb7+Ymg5aIm5Xs3oT+XVbvIqdrYV2dMtIlrv4VmNzaFw/jWmC/LK3
         WLZMmWZbEAR30tgAGKP+Vb2omJvGalUMeFOcRvko5VvRWqwTUFaHUxWv39yD2UE6ulDh
         mrpQ==
X-Gm-Message-State: AOAM530EsomcdP1lPB/6RdPvofGMRXdRvEeRFwEXzO4I/Bq6D1ySXTF1
        Ejqe5iHa8b8XpG6IdWtcqfN+pm1/Fs2M3t1/wRs=
X-Google-Smtp-Source: ABdhPJwnrGF2t9ciedJ7QJH5e31cnA5QN9LRFBhLLEVtmbUv/FQzmmzgYgt9zNTLmOnJ+2NXcY6WKFYyXwJET0FXkCU=
X-Received: by 2002:a17:906:688a:: with SMTP id n10mr3941274ejr.389.1631384990888;
 Sat, 11 Sep 2021 11:29:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210911160117.552617-1-alx.manpages@gmail.com>
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
Date:   Sat, 11 Sep 2021 20:29:48 +0200
Message-ID: <CACGkJdtFKY+DTTcdNuSPDLn-DUXDfJYcFj9814v5yHpOwxnwfg@mail.gmail.com>
Subject: Re: [PATCH 00/45] Add LIBRARY section (based on FreeBSD manual pages)
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Sep 11, 2021 at 6:01 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
> Alejandro Colomar (45):
>   _exit.2: Add LIBRARY section
>   keyctl.2: Add LIBRARY section

>   request_key.2: Add LIBRARY section
>   write.2: Add LIBRARY section
>   wait4.2: Add LIBRARY section
>   wait.2: Add LIBRARY section
>   vmsplice.2: Add LIBRARY section
>   vm86.2: Add LIBRARY section
>   vhangup.2: Add LIBRARY section
>   vfork.2: Add LIBRARY section
>   utimensat.2: Add LIBRARY section
>   utime.2: Add LIBRARY section
>   ustat.2: Add LIBRARY section
>   userfaultfd.2: Add LIBRARY section
>   unshare.2: Add LIBRARY section
>   uname.2: Add LIBRARY section
>   umount.2: Add LIBRARY section
>   tkill.2: Add LIBRARY section
>   unlink.2: Add LIBRARY section
>   umask.2: Add LIBRARY section
>   truncate.2: Add LIBRARY section
>   timer_getoverrun.2: Add LIBRARY section
>   timerfd_create.2: Add LIBRARY section
>   timer_delete.2: Add LIBRARY section
>   timer_create.2: Add LIBRARY section
>   time.2: Add LIBRARY section
>   tee.2: Add LIBRARY section
>   syslog.2: Add LIBRARY section
>   sysinfo.2: Add LIBRARY section
>   syscall.2: Add LIBRARY section
>   sync_file_range.2: Add LIBRARY section
>   sync.2: Add LIBRARY section
>   symlink.2: Add LIBRARY section
>   swapon.2: Add LIBRARY section
>   subpage_prot.2: Add LIBRARY section
>   statx.2: Add LIBRARY section
>   stat.2: Add LIBRARY section
>   spu_run.2: Add LIBRARY section
>   spu_create.2: Add LIBRARY section
>   splice.2: Add LIBRARY section
>   socketpair.2: Add LIBRARY section
>   socketcall.2: Add LIBRARY section
>   sigwaitinfo.2: Add LIBRARY section

I'm not sure about these, my understanding is that the primary purpose
of section 2 is syscalls, userspace-kernel interface, and not their
libc wrappers.  Even intro(2) states that it is Linux-specific:
=E2=80=9CSection  2  of the manual describes the Linux system calls.  A sys=
tem
call is an entry point into the Linux kernel.=E2=80=9D Tying it to libc fee=
ls
like a bit of a stretch, even though it is the exceedingly common
interface for invoking them.

--=20
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}
