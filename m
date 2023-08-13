Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 265CC77A67C
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 15:17:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229655AbjHMNRe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 09:17:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjHMNRe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 09:17:34 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1014A1710
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 06:17:36 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 93D8C6194A
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 13:17:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91384C433C8;
        Sun, 13 Aug 2023 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691932654;
        bh=c74IUjwjGpNBnM7+KBPTRDJ6DdPyYvjUs1/j5ZSeagM=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=O7lrZOWmp0kV1K4H2xQW2zrYHgsuLevHPTh5bSm/075mQLkR2drCDLibBWZcT9KU1
         4GDUadBtzK+UFqz3/VfNxiKMYFfe+0ivIixVUERlbpvDZy1MU4cqNQ4IkUlMK8K6hd
         rCjtD/GTPyC/khzysQ9eV3aV+GlZl18CgD9MFiAZJXUSAqn1W3QQIJwHEPO+E95UPE
         JMQ7uaj604jwbnnIPp/2kBdfMjZ3dJpfPa0UTMjB1qDQ3+FCtZ8hq+QnLva1uXkwG0
         PH43awpXxyH3tw3CVTCILfkC0hAjmohCiIz1avGLIYp2nkpsjbc3SBtQrz36kTeBNM
         OgS7Z46qn7otw==
From:   Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org, Sargun Dhillon <sargun@sargun.me>,
        Serge Hallyn <serge@hallyn.com>
Cc:     Alejandro Colomar <alx@kernel.org>, John Watts <contact@jookia.org>
Subject: [PATCH v2] clone.2: Fix outdated statement about CLONE_NEWPID
Date:   Sun, 13 Aug 2023 15:17:27 +0200
Message-Id: <20230813131727.35849-1-alx@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <CAMp4zn-BHvCAKWTiVTWb6oEzkFRzd0jHXWHBE1h-BQ+mGUD=WQ@mail.gmail.com>
References: <CAMp4zn-BHvCAKWTiVTWb6oEzkFRzd0jHXWHBE1h-BQ+mGUD=WQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Sargun Dhillon <sargun@sargun.me>

[TO += Serge]

Hi Sargun, Serge!

Sargun, I've slightly changed your patch, to keep the historical
information that in old versions of Linux this restriction was in place.
I also cleaned up the example program a little bit, and fixed the
formatting mistake I mentioned.  See scissor patch below.

However, reading the Linux commit that changed this, I had some doubts.
I've added Serge, in case he can remember the details.

Serge, I see that the commit message for (Linux) 1f7f4dde5c94 quotes
some email of yours, and mentions that the commit fixes a regression.
So my doubt is: was this restriction in place before v3.13 as a stable
thing, or was it only accidentally introduced temporarily and soon
fixed?  How should we document it?

Cheers,
Alex

---8<-----

It appears like the documentation is based on out of date information in
regards to using CLONE_NEWPID and CLONE_PARENT together.  Since Linux
v3.13, this restriction has been lifted.  See commit 1f7f4dde5c94
("fork:  Allow CLONE_PARENT after setns(CLONE_NEWPID)").

For example, in this test program, one can see that it works:

 #include <assert.h>
 #include <err.h>
 #include <linux/sched.h>
 #include <sched.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <sys/syscall.h>
 #include <unistd.h>

static pid_t sys_clone3(struct clone_args *args);

int
main(void)
{
	int                ret;
	struct clone_args  args = {
		.flags = CLONE_PARENT | CLONE_NEWPID,
	};

	printf("main program: pid: %d, and ppid: %d\n", getpid(), getppid());

	ret = sys_clone3(&args);
	switch (ret) {
	case -1:
		err(EXIT_FAILURE, "clone3");
	case 0:
		printf("child: pid: %d, and ppid: %d\n", getpid(), getppid());
		exit(EXIT_SUCCESS);
	default:
		exit(EXIT_SUCCESS);
	}
}

static pid_t
sys_clone3(struct clone_args *args)
{
	fflush(stdout);
	fflush(stderr);
	return syscall(SYS_clone3, args, sizeof(*args));
}

This test program (successfully) outputs:

    # ./a.out
    main program: pid: 34663, and ppid: 34662
    child: pid: 1, and ppid: 0

Cowritten-by: Sargun Dhillon <sargun@sargun.me>
Cc: Serge Hallyn <serge@hallyn.com>
Cc: John Watts <contact@jookia.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

 man2/clone.2 | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/man2/clone.2 b/man2/clone.2
index b91b71831..225fef86d 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -736,9 +736,11 @@ .SS The flags mask
 can employ
 .BR CLONE_NEWPID .
 This flag can't be specified in conjunction with
-.B CLONE_THREAD
-or
-.BR CLONE_PARENT .
+.BR CLONE_THREAD .
+Before Linux 3.13,
+this flag couldn't be specified in conjunction with
+.B CLONE_PARENT
+either.
 .TP
 .B CLONE_NEWUSER
 (This flag first became meaningful for
-- 
2.40.1

