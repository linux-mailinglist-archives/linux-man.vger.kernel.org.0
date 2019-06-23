Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2A4334FCA9
	for <lists+linux-man@lfdr.de>; Sun, 23 Jun 2019 18:24:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726417AbfFWQYo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Jun 2019 12:24:44 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:40232 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726399AbfFWQYo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Jun 2019 12:24:44 -0400
Received: by mail-pg1-f196.google.com with SMTP id w10so5761407pgj.7
        for <linux-man@vger.kernel.org>; Sun, 23 Jun 2019 09:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=JTfPIl1+I1ZGFT6YPXNkyASY/kxdu35OK1ANgWf62gw=;
        b=Z1Hik6VuF3a/8ONtWQy0DNa3trOjoXF2TQ9Cq1J4PP4+OXRZ4NkKzatgITadrx+U5A
         LgedDm1XHb9+y3j7q1JJv7gBBr9ga2M3PVqxJyL4DhOGX5ItD7Xe3p0ACLySCwobezUR
         E6NsOrF5oqCjDx/pBjtO0CaMGID3CGOty/wOR3QlOMMJrdKlj19F6Lwgpe5CokROA9g3
         ucAebwrfZncqnMbhgiovCew3WAjrEbamBV210Iw38sqyYo38xY581l2wLEwVjO2nmu2V
         2cICVm9T3T9/+BSaPYmG1W4rqDWEpNb3joJ8dwg5z99TX8vYAN7EH1FU1HQJEAxW+pwF
         /FZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=JTfPIl1+I1ZGFT6YPXNkyASY/kxdu35OK1ANgWf62gw=;
        b=HThGCeDlZb0w4kUF6iZUM3nhm3i1S/OBAffc6ATtN2pHPHjTY6BBTdUDu1aHq5UCP2
         BfSbe3HCCVx/eqgUnthHHqKYjoq8Yz8hvYYr751vmXQn71lGhBcHqedcidRdWBAfIFEA
         tVjdDikAUYhZ4IAbuOgDFU/2xeHL86KMB64RwEyzTZUqCiTyvL3eHJcSxogg4K2xhyam
         aFeFtD9ykuE0TSBEJpNDesKVSvajgqoT7UOb2bRw8KauKTs5982iO7iPMyBveiD+Nnox
         kxE3yPtdU9qw8zolx+m5e7jntr2PuRafQqE2obUS4744JCbLJzXJ4Y/YFPhxwzhNMTkl
         7XIQ==
X-Gm-Message-State: APjAAAUSq3D33dDWA4ZBHwQgwL5Fj4B9DjgvmOEWHak/4Dx+qTINv83l
        eXjVkYCu+YU7YP00gy/mmGe85aVmOn6t+PS5dRM=
X-Google-Smtp-Source: APXvYqynu469eZSqHJxx/27YzJhkWHxE8+UbSFrg/6PO19HpF/pt6ilZhMFsNrxXRdjoX0L9HeD5hzfcRoKQOfShkQs=
X-Received: by 2002:a63:5d05:: with SMTP id r5mr29327128pgb.222.1561307083248;
 Sun, 23 Jun 2019 09:24:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAAAu3XtbB=Y0s2emVJoj5Vt4UXSjvk_3EBw_f=gRKssVxbK0=A@mail.gmail.com>
 <CAAAu3XtsLqvVEnMO5A_LMEF5qP64pJFB2+aey4yhCnhvY_F79Q@mail.gmail.com>
In-Reply-To: <CAAAu3XtsLqvVEnMO5A_LMEF5qP64pJFB2+aey4yhCnhvY_F79Q@mail.gmail.com>
From:   Naveen Iyer <iyernaveenr@gmail.com>
Date:   Sun, 23 Jun 2019 09:24:32 -0700
Message-ID: <CAAAu3XtMbmcaHBFiKrb2L574aV2732-yVHPx6gD6sSv+F-ZD6Q@mail.gmail.com>
Subject: Re: [BUG] [man syscall] x86_64 error code / return value must be
 placed in rdi
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Adding to my earlier email, this issue seems to exist with other
entries on the table as well. For example, i386 requires error code/
retval to be placed in ebx, and not eax.

Thanks
Naveen

On Sun, Jun 23, 2019 at 9:03 AM Naveen Iyer <iyernaveenr@gmail.com> wrote:
>
> Hi,
>
> As suggested by
> https://www.kernel.org/doc/man-pages/reporting_bugs.html , I looked up
> the online man page as well:
> http://man7.org/linux/man-pages/man2/syscall.2.html
>
> In the table in "Architecture calling conventions" section:
> arch/ABI    instruction           syscall #  retval  error    Notes
> =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80
> x86-64       syscall                   rax        rax        -        [5]
>
> Retval must be placed in rdi as per the following link:
> https://w3challs.com/syscalls/?arch=3Dx86_64
>
> I ran the test to verify that the retval is indeed supposed to be
> placed in rdi, and not rax as the man page incorrectly suggests.
> My man page version:
> $ man --version
> man 2.8.3
>
> Steps to replicate this issue:
> Step 1)
> Write test code 'startup.c':
> void _start()
> {
>         /*
>            Source: $: man syscall
>            arch/ABI    instruction           syscall #  retval  error    =
Notes
>            =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80
>            i386        int $0x80             eax        eax     -
>            ia64        break 0x100000        r15        r8      r10      =
[1]
>            x86-64      syscall               rax        rax     -        =
[5]
>         */
>
>         // Specify the return value/error code in ebx for x86 and rdi for=
 x86_64
>         asm volatile (
>                 "movq $97, %rdi"
>         );
>
>         // Specify the type of system call (1 is the exit syscall) in
> eax register.
>         asm volatile (
>                 "movq $0x3c, %rax"
>         );
>
>         // Transition to kernel mode.
>         asm volatile (
>                 "syscall"
>         );
> }
>
> Step 2) Compile and execute:
> $ gcc -nostdlib -c startup.c
> $ ld startup.o -o startup
> $ ./startup
> $ echo $?
> 97
>
> My system details:
> $ lsb_release -a
> No LSB modules are available.
> Distributor ID: Ubuntu
> Description: Ubuntu 18.04.1 LTS
> Release: 18.04
> Codename: bionic
>
> $ uname -a
> Linux user 4.15.0-51-generic #55-Ubuntu SMP Wed May 15 14:27:21 UTC
> 2019 x86_64 x86_64 x86_64 GNU/Linux
>
> Please let me know if there's anything else you need to rectify this issu=
e.
>
> Thanks
> Naveen
>
>
> On Sun, Jun 23, 2019 at 8:57 AM Naveen Iyer <iyernaveenr@gmail.com> wrote=
:
> >
> > Hi,
> >
> > As sugegsted by https://www.kernel.org/doc/man-pages/reporting_bugs.htm=
l , I looked up the online man page as well:
> > http://man7.org/linux/man-pages/man2/syscall.2.html
> >
> > In the table in "Architecture calling conventions" section:
> >
> > arch/ABI    instruction           syscall #  retval  error    Notes
> > =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80
> > x86-64      syscall               rax        rax     -        [5]
> >
> > Retval must be placed in rdi as per the following link:
> > https://w3challs.com/syscalls/?arch=3Dx86_64
> >
> > I personally ran the test to verify that the retval is indeed supposed =
to be placed in rdi, not rax.
> > My man page version:
> > $ man --version
> > man 2.8.3
> >
> > Steps to replicate this issue:
> > Step 1)
> > Write test code 'startup.c':
> > void _start()
> > {
> >         /*
> >            Source: $: man syscall
> >            arch/ABI    instruction           syscall #  retval  error  =
  Notes
> >            =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80
> >            i386        int $0x80             eax        eax     -
> >            ia64        break 0x100000        r15        r8      r10    =
  [1]
> >            x86-64      syscall               rax        rax     -      =
  [5]
> >         */
> >
> >         // Specify the return value/error code in ebx for x86 and rdi f=
or x86_64
> >         asm volatile (
> >                 "movq $97, %rdi"
> >         );
> >
> >         // Specify the type of system call (1 is the exit syscall) in e=
ax register.
> >         asm volatile (
> >                 "movq $0x3c, %rax"
> >         );
> >
> >         // Transition to kernel mode.
> >         asm volatile (
> >                 "syscall"
> >         );
> > }
> >
> > Step 2) Compile and execute:
> > $ gcc -nostdlib -c startup.c
> > $ ld startup.o -o startup
> > $ ./startup
> > $ echo $?
> > 97
> >
> > My system details:
> > $ lsb_release -a
> > No LSB modules are available.
> > Distributor ID: Ubuntu
> > Description: Ubuntu 18.04.1 LTS
> > Release: 18.04
> > Codename: bionic
> >
> > $ uname -a
> > Linux user 4.15.0-51-generic #55-Ubuntu SMP Wed May 15 14:27:21 UTC 201=
9 x86_64 x86_64 x86_64 GNU/Linux
> >
> > Please let me know if there's anything else you need to rectify this is=
sue.
> >
> > Thanks
> > Naveen
