Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0615B77A689
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 15:35:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229451AbjHMNf2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 09:35:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjHMNf2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 09:35:28 -0400
Received: from mail.hallyn.com (mail.hallyn.com [178.63.66.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E7C41713
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 06:35:29 -0700 (PDT)
Received: by mail.hallyn.com (Postfix, from userid 1001)
        id 8B452A38; Sun, 13 Aug 2023 08:35:27 -0500 (CDT)
Date:   Sun, 13 Aug 2023 08:35:27 -0500
From:   "Serge E. Hallyn" <serge@hallyn.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Sargun Dhillon <sargun@sargun.me>,
        Serge Hallyn <serge@hallyn.com>,
        John Watts <contact@jookia.org>
Subject: Re: [PATCH v2] clone.2: Fix outdated statement about CLONE_NEWPID
Message-ID: <20230813133527.GA1148081@mail.hallyn.com>
References: <CAMp4zn-BHvCAKWTiVTWb6oEzkFRzd0jHXWHBE1h-BQ+mGUD=WQ@mail.gmail.com>
 <20230813131727.35849-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230813131727.35849-1-alx@kernel.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Aug 13, 2023 at 03:17:27PM +0200, Alejandro Colomar wrote:
> From: Sargun Dhillon <sargun@sargun.me>
> 
> [TO += Serge]
> 
> Hi Sargun, Serge!
> 
> Sargun, I've slightly changed your patch, to keep the historical
> information that in old versions of Linux this restriction was in place.
> I also cleaned up the example program a little bit, and fixed the
> formatting mistake I mentioned.  See scissor patch below.
> 
> However, reading the Linux commit that changed this, I had some doubts.
> I've added Serge, in case he can remember the details.
> 
> Serge, I see that the commit message for (Linux) 1f7f4dde5c94 quotes
> some email of yours, and mentions that the commit fixes a regression.
> So my doubt is: was this restriction in place before v3.13 as a stable
> thing, or was it only accidentally introduced temporarily and soon
> fixed?  How should we document it?
> 
> Cheers,
> Alex
> 
> ---8<-----
> 
> It appears like the documentation is based on out of date information in
> regards to using CLONE_NEWPID and CLONE_PARENT together.  Since Linux
> v3.13, this restriction has been lifted.  See commit 1f7f4dde5c94
> ("fork:  Allow CLONE_PARENT after setns(CLONE_NEWPID)").
> 
> For example, in this test program, one can see that it works:
> 
>  #include <assert.h>
>  #include <err.h>
>  #include <linux/sched.h>
>  #include <sched.h>
>  #include <stdio.h>
>  #include <stdlib.h>
>  #include <sys/syscall.h>
>  #include <unistd.h>
> 
> static pid_t sys_clone3(struct clone_args *args);
> 
> int
> main(void)
> {
> 	int                ret;
> 	struct clone_args  args = {
> 		.flags = CLONE_PARENT | CLONE_NEWPID,
> 	};
> 
> 	printf("main program: pid: %d, and ppid: %d\n", getpid(), getppid());
> 
> 	ret = sys_clone3(&args);
> 	switch (ret) {
> 	case -1:
> 		err(EXIT_FAILURE, "clone3");
> 	case 0:
> 		printf("child: pid: %d, and ppid: %d\n", getpid(), getppid());
> 		exit(EXIT_SUCCESS);
> 	default:
> 		exit(EXIT_SUCCESS);
> 	}
> }
> 
> static pid_t
> sys_clone3(struct clone_args *args)
> {
> 	fflush(stdout);
> 	fflush(stderr);
> 	return syscall(SYS_clone3, args, sizeof(*args));
> }
> 
> This test program (successfully) outputs:
> 
>     # ./a.out
>     main program: pid: 34663, and ppid: 34662
>     child: pid: 1, and ppid: 0
> 
> Cowritten-by: Sargun Dhillon <sargun@sargun.me>
> Cc: Serge Hallyn <serge@hallyn.com>
> Cc: John Watts <contact@jookia.org>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
> 
>  man2/clone.2 | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/clone.2 b/man2/clone.2
> index b91b71831..225fef86d 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -736,9 +736,11 @@ .SS The flags mask
>  can employ
>  .BR CLONE_NEWPID .
>  This flag can't be specified in conjunction with
> -.B CLONE_THREAD
> -or
> -.BR CLONE_PARENT .
> +.BR CLONE_THREAD .
> +Before Linux 3.13,
> +this flag couldn't be specified in conjunction with
> +.B CLONE_PARENT

Well no, I don't think that's right.  That implies that the
CLONE_PARENT check was a long standing one.  In fact, the
point was that it was a regression introduced in

40a0d32d1 (Wed Sep 11 14:19:41 2013 -0700)

and then fixed in 1f7f4dde5 two months later.

> +either.
>  .TP
>  .B CLONE_NEWUSER
>  (This flag first became meaningful for
> -- 
> 2.40.1
