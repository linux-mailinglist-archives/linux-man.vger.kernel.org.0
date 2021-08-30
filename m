Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAC1A3FB202
	for <lists+linux-man@lfdr.de>; Mon, 30 Aug 2021 09:38:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234030AbhH3Hjc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Aug 2021 03:39:32 -0400
Received: from mail.kernel.org ([198.145.29.99]:36638 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234037AbhH3Hjc (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 30 Aug 2021 03:39:32 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id B8B5A60FE6;
        Mon, 30 Aug 2021 07:38:15 +0000 (UTC)
Date:   Mon, 30 Aug 2021 09:38:01 +0200
From:   Christian Brauner <christian.brauner@ubuntu.com>
To:     Andrew Wock <ajwock@gmail.com>
Cc:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com, christian@brauner.io,
        linux-kernel@vger.kernel.org
Subject: Re: [patch] clone.2: Add EACCES with CLONE_INTO_CGROUP + clone3 to
 ERRORS
Message-ID: <20210830073801.tbbxhnw3dg5saxt7@wittgenstein>
References: <CAACtx1b_v3nbv8EkAQ1f7ee=yt3ECm_a6kb1KNdBPZ5F20ndFw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAACtx1b_v3nbv8EkAQ1f7ee=yt3ECm_a6kb1KNdBPZ5F20ndFw@mail.gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Aug 29, 2021 at 03:57:06PM -0400, Andrew Wock wrote:
> Resending because it's my first time mailing the lkml and I used html.
> Reattempting w/ gmail's plaintext mode.  I apologise if this is
> reaching you twice.
> 
> I noticed that clone3 can send the EACCES errno after I wrote a
> program that used clone3 with the CLONE_INTO_CGROUP flag.  To me, it's
> important to know what kind of failure occurred if the clone3 fails,
> so I was glad that a unique errno is set for this case, but it wasn't
> documented on the clone man page.

In essence, any error that could occur during regular fs-based migration
at write-time can also occur during CLONE_INTO_CGROUP. The clone3()
manpage just has the inverse of that above statement:

"Note that all of the usual restrictions (described in cgroups(7)) on
placing a process into a version 2 cgroup apply."

> 
> I've attached a patch and a test program.
> 
> Test program is attached as clone3_doc.c.  Create
> /sys/fs/cgroup/not-allowed as root, then run the program.  It should
> set errno to EACCES.

This is a manpage update, right? In that case it's not necessarily
needed to Cc lkml aka linux-kernel@... itself.

For the content:
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

(I have no idea what patch format Michael will accept so I can't really
ack that. :))

> 
> Thanks,
> Andrew Wock

> #include <stdio.h>
> #include <errno.h>
> #include <stdlib.h>
> #include <string.h>
> #include <signal.h>
> #include <fcntl.h>
> 
> #include <linux/sched.h>    /* Definition of struct clone_args */
> #include <sched.h>          /* Definition of CLONE_* constants */
> #include <sys/syscall.h>    /* Definition of SYS_* constants */
> #include <unistd.h>
> 
> /*
>  * Preconditions:
>  * - /sys/fs/cgroup/not-allowed is a real cgroup.
>  * - You are not root and do not have write permissions to
>  *   /sys/fs/cgroup/not-allowed/cgroup.procs
>  */
> int main() {
>   pid_t pid;
>   int fd;
>   struct clone_args cl_args = {0};
>   char *cgPath = "/sys/fs/cgroup/not-allowed";
> 
>   fd = open(cgPath, O_RDONLY);
>   if (fd == -1) {
>     fprintf(stderr, "Could not open cgroup %s: %s\n", cgPath, strerror(errno));
>     exit(1);
>   }
> 
>   cl_args.exit_signal = SIGCHLD;
>   cl_args.flags = CLONE_INTO_CGROUP;
>   cl_args.cgroup = fd;
>   pid = syscall(SYS_clone3, &cl_args, sizeof(cl_args));
>   if (pid == -1) {
>     if (errno == EACCES) {
>       printf("EACCES detected\n");
>       exit(0);
>     }
>     fprintf(stderr, "Could not clone into cgroup: %s\n", strerror(errno));
>   } else if (pid == 0) {
>     fprintf(stderr, "Are you root, or do you have write access to %s?\n", cgPath);
>   }
>   exit(1);
> }


