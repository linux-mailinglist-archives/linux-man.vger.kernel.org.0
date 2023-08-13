Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B05AC77A6FB
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 16:36:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229655AbjHMOgL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 10:36:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229559AbjHMOgK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 10:36:10 -0400
Received: from mail.hallyn.com (mail.hallyn.com [178.63.66.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54868E65
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 07:36:12 -0700 (PDT)
Received: by mail.hallyn.com (Postfix, from userid 1001)
        id C4D23B41; Sun, 13 Aug 2023 09:36:10 -0500 (CDT)
Date:   Sun, 13 Aug 2023 09:36:10 -0500
From:   "Serge E. Hallyn" <serge@hallyn.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Sargun Dhillon <sargun@sargun.me>,
        Serge Hallyn <serge@hallyn.com>,
        John Watts <contact@jookia.org>
Subject: Re: [PATCH v3] clone.2: Fix erroneous statement about
 CLONE_NEWPID|CLONE_PARENT
Message-ID: <20230813143610.GA1148742@mail.hallyn.com>
References: <20230810022603.947583-1-sargun@sargun.me>
 <20230813135525.37196-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230813135525.37196-1-alx@kernel.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Aug 13, 2023 at 03:55:25PM +0200, Alejandro Colomar wrote:
> From: Sargun Dhillon <sargun@sargun.me>
> 
> CLONE_NEWPID|CLONE_PARENT was only prohibited during a short period.
> That prohibition was introduced in Linux 3.12, in commit 40a0d32d1eaf
> ("fork: unify and tighten up CLONE_NEWUSER/CLONE_NEWPID checks"), but
> was a regression, and was fixed in Linux 3.13, in commit 1f7f4dde5c94
> ("fork:  Allow CLONE_PARENT after setns(CLONE_NEWPID)").
> 
> In this test program, one can see that it works:
> 
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

Reviewed-by: Serge Hallyn <serge@hallyn.com>

> Cc: John Watts <contact@jookia.org>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>  man2/clone.2 | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/man2/clone.2 b/man2/clone.2
> index b91b71831..7d2dc2339 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -736,9 +736,7 @@ .SS The flags mask
>  can employ
>  .BR CLONE_NEWPID .
>  This flag can't be specified in conjunction with
> -.B CLONE_THREAD
> -or
> -.BR CLONE_PARENT .
> +.BR CLONE_THREAD .
>  .TP
>  .B CLONE_NEWUSER
>  (This flag first became meaningful for
> -- 
> 2.40.1
