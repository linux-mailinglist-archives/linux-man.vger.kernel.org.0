Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F160AA4C75
	for <lists+linux-man@lfdr.de>; Mon,  2 Sep 2019 00:25:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729048AbfIAWZL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Sep 2019 18:25:11 -0400
Received: from vmicros1.altlinux.org ([194.107.17.57]:37912 "EHLO
        vmicros1.altlinux.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728942AbfIAWZL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Sep 2019 18:25:11 -0400
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id 1294E72CC6C;
        Mon,  2 Sep 2019 01:25:08 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id EACFC7CC7AF; Mon,  2 Sep 2019 01:25:07 +0300 (MSK)
Date:   Mon, 2 Sep 2019 01:25:07 +0300
From:   "Dmitry V. Levin" <ldv@altlinux.org>
To:     Naveen Iyer <iyernaveenr@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [BUG] [man syscall] x86_64 error code / return value must be
 placed in rdi
Message-ID: <20190901222507.GA31828@altlinux.org>
References: <CAAAu3XtbB=Y0s2emVJoj5Vt4UXSjvk_3EBw_f=gRKssVxbK0=A@mail.gmail.com>
 <CAAAu3XtsLqvVEnMO5A_LMEF5qP64pJFB2+aey4yhCnhvY_F79Q@mail.gmail.com>
 <20190623171706.GA23943@altlinux.org>
 <CAAAu3Xt6S5ODyn_d1Yu-H8q89zTYfSicMfhKsGAgVzhLo2XGbg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAAAu3Xt6S5ODyn_d1Yu-H8q89zTYfSicMfhKsGAgVzhLo2XGbg@mail.gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Sep 01, 2019 at 02:43:22PM -0700, Naveen Iyer wrote:
> On Sun, Jun 23, 2019 at 10:17 AM Dmitry V. Levin wrote:
> > On Sun, Jun 23, 2019 at 09:03:31AM -0700, Naveen Iyer wrote:
> > > Hi,
> > >
> > > As suggested by
> > > https://www.kernel.org/doc/man-pages/reporting_bugs.html , I looked up
> > > the online man page as well:
> > > http://man7.org/linux/man-pages/man2/syscall.2.html
> > >
> > > In the table in "Architecture calling conventions" section:
> > > arch/ABI    instruction           syscall #  retval  error    Notes
> > > €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
> > > x86-64       syscall                   rax        rax        -        [5]
> > >
> > > Retval must be placed in rdi
> >
> > Why?
> >
> > > as per the following link:
> > > https://w3challs.com/syscalls/?arch=x86_64
> >
> > This link doesn't claim that.
> >
> The link states that rdi contains the int error_code. I am able to
> return whatever int I want to return by placing the int value of my
> choice in rdi.
> Why do you say that this link doesn't claim that when it clearly does?
> Am I misreading it?

The link properly states that %rdi contains the 1st argument of syscall
and %rax contains its return value.

If you are reading something else, you must be misreading it.

> > > }
> > >
> > > Step 2) Compile and execute:
> > > $ gcc -nostdlib -c startup.c
> > > $ ld startup.o -o startup
> > > $ ./startup
> > > $ echo $?
> > > 97
> >
> > So your test invokes "exit" syscall with 97 as its first argument.
> > The return value of this syscall has no meaning because it does not return.
> > Most of syscalls do return and their return value is in %rax on x86_64.
> I am checking for the program's return status and not the return of
> syscall itself.

Yes, that's exactly the problem: you are talking about syscalls but at the
same time you are checking the process's exit status instead of the
syscall's return value.  Most of syscalls do not cause an immediate
process termination, and those syscalls that do cause immediate process
termination do not have a return value.


-- 
ldv
