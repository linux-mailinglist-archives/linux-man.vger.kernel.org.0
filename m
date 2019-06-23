Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3DA354FD41
	for <lists+linux-man@lfdr.de>; Sun, 23 Jun 2019 19:17:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726483AbfFWRRK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Jun 2019 13:17:10 -0400
Received: from vmicros1.altlinux.org ([194.107.17.57]:53312 "EHLO
        vmicros1.altlinux.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726399AbfFWRRK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Jun 2019 13:17:10 -0400
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id 6302E72CC6C;
        Sun, 23 Jun 2019 20:17:07 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id 4FB157CCE2E; Sun, 23 Jun 2019 20:17:07 +0300 (MSK)
Date:   Sun, 23 Jun 2019 20:17:07 +0300
From:   "Dmitry V. Levin" <ldv@altlinux.org>
To:     Naveen Iyer <iyernaveenr@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [BUG] [man syscall] x86_64 error code / return value must be
 placed in rdi
Message-ID: <20190623171706.GA23943@altlinux.org>
References: <CAAAu3XtbB=Y0s2emVJoj5Vt4UXSjvk_3EBw_f=gRKssVxbK0=A@mail.gmail.com>
 <CAAAu3XtsLqvVEnMO5A_LMEF5qP64pJFB2+aey4yhCnhvY_F79Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAAAu3XtsLqvVEnMO5A_LMEF5qP64pJFB2+aey4yhCnhvY_F79Q@mail.gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Sun, Jun 23, 2019 at 09:03:31AM -0700, Naveen Iyer wrote:
> Hi,
> 
> As suggested by
> https://www.kernel.org/doc/man-pages/reporting_bugs.html , I looked up
> the online man page as well:
> http://man7.org/linux/man-pages/man2/syscall.2.html
> 
> In the table in "Architecture calling conventions" section:
> arch/ABI    instruction           syscall #  retval  error    Notes
> €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
> x86-64       syscall                   rax        rax        -        [5]
> 
> Retval must be placed in rdi

Why?

> as per the following link:
> https://w3challs.com/syscalls/?arch=x86_64

This link doesn't claim that.

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
>            arch/ABI    instruction           syscall #  retval  error    Notes
>            €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
>            i386        int $0x80             eax        eax     -
>            ia64        break 0x100000        r15        r8      r10      [1]
>            x86-64      syscall               rax        rax     -        [5]
>         */
> 
>         // Specify the return value/error code in ebx for x86 and rdi for x86_64
>         asm volatile (
>                 "movq $97, %rdi"
>         );

%rdi contains the first argument of syscall on x86_64.

>         // Specify the type of system call (1 is the exit syscall) in
> eax register.
>         asm volatile (
>                 "movq $0x3c, %rax"
>         );

syscall number 0x3c is exit on x86_64.

> 
>         // Transition to kernel mode.
>         asm volatile (
>                 "syscall"
>         );

This syscall does not return.

> }
> 
> Step 2) Compile and execute:
> $ gcc -nostdlib -c startup.c
> $ ld startup.o -o startup
> $ ./startup
> $ echo $?
> 97

So your test invokes "exit" syscall with 97 as its first argument.
The return value of this syscall has no meaning because it does not return.
Most of syscalls do return and their return value is in %rax on x86_64.


-- 
ldv
