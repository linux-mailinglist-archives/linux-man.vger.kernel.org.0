Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0ED7A4FC95
	for <lists+linux-man@lfdr.de>; Sun, 23 Jun 2019 18:03:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726829AbfFWQDo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Jun 2019 12:03:44 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:38422 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726674AbfFWQDn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Jun 2019 12:03:43 -0400
Received: by mail-pf1-f194.google.com with SMTP id y15so1443013pfn.5
        for <linux-man@vger.kernel.org>; Sun, 23 Jun 2019 09:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ECQYpz3lzrmYoiRGuIqzIf7mBZiKogh+xVb3BuuS13Y=;
        b=WYhFemi/XkE1Yks8i9HquW6kHQTRPsEq37j2PTaHX+wqTdWk0YnfopPu5TeoxVo0+c
         iz5MzmrUToEYjzGo1iNr3p3nlUNYFojNtMXLS14ZNhpL7m2o/LLgn8jPoHBnjr2BkhQW
         NkFBHbVfJsReehuHp9cS4YVFwTIxq4Ep+jzQBIlzNiIWoTPuZn83gxWK4nqSJ8ftdeS3
         IyDBF4Y4vT7gevaKCnmFDS7wKpSb2ITG9up/T2DSokLw/9UyrWfbnivJm75XAmbCoF2b
         fwA5vdS/rZSmznZuVsSg6mk97Gxsgk/P/iwpDC47BUrXYC6mYchwD+6c9B/Ew+3cD/GR
         PB3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ECQYpz3lzrmYoiRGuIqzIf7mBZiKogh+xVb3BuuS13Y=;
        b=a31Uqz0g7cQX/3qwE45hww2cN6xeQoKWR1DXsjZ3KatxOdjVag/KHLb4IF4ov9Ec9M
         cTQBRr7fKD38ragwNoSB/SIV8WY+Q7dbq6Eof7Hq/CANdckn5nfnblR+yql+Wg/QHHkY
         NEe/8meyCqV3Fg5NAi6sEFyhpQ0pebMNZxC1BhK6sslRuJa04MQachqjLYXyzoj2LzB2
         WHSyw/xJWFmW+Iqz+RA2SfC8tTumIPqWTbdrMq0zzChWtR9CmrXpEKAjlkBoqP5Bq/Sb
         +7c23f9OJ62CEgIzkULtgLnVeR2jQBm3PvwySBWSwMnBdIXMRQYluM1tZ/8GcnbV/i7K
         wrMQ==
X-Gm-Message-State: APjAAAU9HziOvcqPHcNBv7tK/W5mm3B09989KxymuGimBCyiP+rrDDf7
        3l+6AjwRPL760baBMO85eXKXpr9PhHtD66izRIE=
X-Google-Smtp-Source: APXvYqzqPizwU4rv+8//S5KOiQfCjaR+ER2FgHpu6AzvYGSW/LL7yHyP6dDxl3s3aay2lHz1U/aojA4A6GJoCZOS9ew=
X-Received: by 2002:a17:90a:a385:: with SMTP id x5mr19266449pjp.76.1561305822495;
 Sun, 23 Jun 2019 09:03:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAAAu3XtbB=Y0s2emVJoj5Vt4UXSjvk_3EBw_f=gRKssVxbK0=A@mail.gmail.com>
In-Reply-To: <CAAAu3XtbB=Y0s2emVJoj5Vt4UXSjvk_3EBw_f=gRKssVxbK0=A@mail.gmail.com>
From:   Naveen Iyer <iyernaveenr@gmail.com>
Date:   Sun, 23 Jun 2019 09:03:31 -0700
Message-ID: <CAAAu3XtsLqvVEnMO5A_LMEF5qP64pJFB2+aey4yhCnhvY_F79Q@mail.gmail.com>
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

Hi,

As suggested by
https://www.kernel.org/doc/man-pages/reporting_bugs.html , I looked up
the online man page as well:
http://man7.org/linux/man-pages/man2/syscall.2.html

In the table in "Architecture calling conventions" section:
arch/ABI    instruction           syscall #  retval  error    Notes
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80
x86-64       syscall                   rax        rax        -        [5]

Retval must be placed in rdi as per the following link:
https://w3challs.com/syscalls/?arch=3Dx86_64

I ran the test to verify that the retval is indeed supposed to be
placed in rdi, and not rax as the man page incorrectly suggests.
My man page version:
$ man --version
man 2.8.3

Steps to replicate this issue:
Step 1)
Write test code 'startup.c':
void _start()
{
        /*
           Source: $: man syscall
           arch/ABI    instruction           syscall #  retval  error    No=
tes
           =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80
           i386        int $0x80             eax        eax     -
           ia64        break 0x100000        r15        r8      r10      [1=
]
           x86-64      syscall               rax        rax     -        [5=
]
        */

        // Specify the return value/error code in ebx for x86 and rdi for x=
86_64
        asm volatile (
                "movq $97, %rdi"
        );

        // Specify the type of system call (1 is the exit syscall) in
eax register.
        asm volatile (
                "movq $0x3c, %rax"
        );

        // Transition to kernel mode.
        asm volatile (
                "syscall"
        );
}

Step 2) Compile and execute:
$ gcc -nostdlib -c startup.c
$ ld startup.o -o startup
$ ./startup
$ echo $?
97

My system details:
$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description: Ubuntu 18.04.1 LTS
Release: 18.04
Codename: bionic

$ uname -a
Linux user 4.15.0-51-generic #55-Ubuntu SMP Wed May 15 14:27:21 UTC
2019 x86_64 x86_64 x86_64 GNU/Linux

Please let me know if there's anything else you need to rectify this issue.

Thanks
Naveen


On Sun, Jun 23, 2019 at 8:57 AM Naveen Iyer <iyernaveenr@gmail.com> wrote:
>
> Hi,
>
> As sugegsted by https://www.kernel.org/doc/man-pages/reporting_bugs.html =
, I looked up the online man page as well:
> http://man7.org/linux/man-pages/man2/syscall.2.html
>
> In the table in "Architecture calling conventions" section:
>
> arch/ABI    instruction           syscall #  retval  error    Notes
> =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80
> x86-64      syscall               rax        rax     -        [5]
>
> Retval must be placed in rdi as per the following link:
> https://w3challs.com/syscalls/?arch=3Dx86_64
>
> I personally ran the test to verify that the retval is indeed supposed to=
 be placed in rdi, not rax.
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
>         // Specify the type of system call (1 is the exit syscall) in eax=
 register.
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
> Linux user 4.15.0-51-generic #55-Ubuntu SMP Wed May 15 14:27:21 UTC 2019 =
x86_64 x86_64 x86_64 GNU/Linux
>
> Please let me know if there's anything else you need to rectify this issu=
e.
>
> Thanks
> Naveen
