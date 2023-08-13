Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5727A77A6C3
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 16:14:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229723AbjHMOO3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 10:14:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbjHMOO2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 10:14:28 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E408510FC
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 07:14:30 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 79CF262441
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 14:14:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 852AFC433C7;
        Sun, 13 Aug 2023 14:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691936069;
        bh=QBkA2FOQVE56BSHklilgkS689itSkBkQFFXZRECLZ/A=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=Ss+3I4WuJSpW/R8oocxMrb/tTj2ykye9RJYpXRzPXLHTycmYte/4QPdbEkPk8A+zd
         taHdgx4ElwINgYaB/F0FufZ93Zc3vJCLotFeuA7t5mumZ5dEsLdwciOE+VgdBNn6Ya
         b8O0wHA7zC9Rjzp5fdgllzLLZ20XYhlpqFe/SRCPN1PPbIW7PALtn3jUF/cwD8PGDl
         sv2yz4+r5B1rvC4Qv80Y2qnxnDUAOohtup+W0lk+ACAyPyvvo9pTOmzxYrnqBNPHsm
         EkZf3OMDZYUmokOpqCa1EecHj19mbqhEewfBCQYSW+C/8GaU+MbDha/tAlhZBpVB1T
         yX0qxWfTCZWGw==
From:   Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Sargun Dhillon <sargun@sargun.me>,
        Serge Hallyn <serge@hallyn.com>,
        John Watts <contact@jookia.org>
Subject: [PATCH v4] clone.2: Fix erroneous statement about CLONE_NEWPID|CLONE_PARENT
Date:   Sun, 13 Aug 2023 16:14:22 +0200
Message-Id: <20230813141422.37580-1-alx@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230810022603.947583-1-sargun@sargun.me>
References: <20230810022603.947583-1-sargun@sargun.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Sargun Dhillon <sargun@sargun.me>

CLONE_NEWPID|CLONE_PARENT was only prohibited during a short period.
That prohibition was introduced in Linux 3.12, in commit 40a0d32d1eaf
("fork: unify and tighten up CLONE_NEWUSER/CLONE_NEWPID checks"), but
was a regression, and was fixed in Linux 3.13, in commit 1f7f4dde5c94
("fork:  Allow CLONE_PARENT after setns(CLONE_NEWPID)").

In this test program, one can see that it works:

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

Fixes: f00071920ec3 ("clone.2: EINVAL if (CLONE_NEWUSER|CLONE_NEWPID) && (CLONE_THREAD|CLONE_PARENT)")
Cowritten-by: Sargun Dhillon <sargun@sargun.me>
Cc: Serge Hallyn <serge@hallyn.com>
Cc: John Watts <contact@jookia.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man2/clone.2 | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/man2/clone.2 b/man2/clone.2
index b91b71831..4a75b557b 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -729,23 +729,21 @@ .SS The flags mask
 For further information on PID namespaces, see
 .BR namespaces (7)
 and
 .BR pid_namespaces (7).
 .IP
 Only a privileged process
 .RB ( CAP_SYS_ADMIN )
 can employ
 .BR CLONE_NEWPID .
 This flag can't be specified in conjunction with
-.B CLONE_THREAD
-or
-.BR CLONE_PARENT .
+.BR CLONE_THREAD .
 .TP
 .B CLONE_NEWUSER
 (This flag first became meaningful for
 .BR clone ()
 in Linux 2.6.23,
 the current
 .BR clone ()
 semantics were merged in Linux 3.5,
 and the final pieces to make the user namespaces completely usable were
 merged in Linux 3.8.)
@@ -1310,32 +1308,37 @@ .SH ERRORS
 .B EINVAL
 Both
 .B CLONE_NEWIPC
 and
 .B CLONE_SYSVSEM
 were specified in the
 .I flags
 mask.
 .TP
 .B EINVAL
-One (or both) of
 .B CLONE_NEWPID
-or
-.B CLONE_NEWUSER
 and one (or both) of
 .B CLONE_THREAD
 or
 .B CLONE_PARENT
 were specified in the
 .I flags
 mask.
 .TP
+.B EINVAL
+.B CLONE_NEWUSER
+and
+.B CLONE_THREAD
+were specified in the
+.I flags
+mask.
+.TP
 .BR EINVAL " (since Linux 2.6.32)"
 .\" commit 123be07b0b399670a7cc3d82fef0cb4f93ef885c
 .B CLONE_PARENT
 was specified, and the caller is an init process.
 .TP
 .B EINVAL
 Returned by the glibc
 .BR clone ()
 wrapper function when
 .I fn
-- 
2.40.1

