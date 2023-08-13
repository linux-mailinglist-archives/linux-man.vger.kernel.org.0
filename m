Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66D2677A6A4
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 15:55:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229736AbjHMNz3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 09:55:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229612AbjHMNz2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 09:55:28 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25C89AB
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 06:55:31 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AF6B0623B5
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 13:55:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2624C433C7;
        Sun, 13 Aug 2023 13:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691934930;
        bh=ckqjZicDi7VsdP7MbX+/JHZCiRPxLiskFBq07nwNDvE=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=jSclHJqc4sxqJLCVCvLeKOzb3Z0iHumcdgxIKJcvD3V4ZQ7tWX6WXNr+cNN9wpt9f
         03FBOvXhZu6XAUdIKYF3+wohoV7eraxsYl57n9jRX55V949V9a3sf5OmhfpcS1oVBu
         wwnQLli8TWfarFKQNLmLZkHRNsxrV1zzr3j2zBY7IBfBcyYKXit/OL4VDyBZBevps1
         zOlsw04IIsMv/r2joh96rIMsMHPVMfSHr/obpzqSrujEZ0E4k1BFLIGVyDlhxZ09KT
         HuMEf4q4sZJanaOOt58p3xpG6r2NUjAQf/rIGOa6zJZ+cXbKykiQpmiYbl0YC6bQwy
         TCOaNtUhq5CNg==
From:   Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Sargun Dhillon <sargun@sargun.me>,
        Serge Hallyn <serge@hallyn.com>,
        John Watts <contact@jookia.org>
Subject: [PATCH v3] clone.2: Fix erroneous statement about CLONE_NEWPID|CLONE_PARENT
Date:   Sun, 13 Aug 2023 15:55:25 +0200
Message-Id: <20230813135525.37196-1-alx@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230810022603.947583-1-sargun@sargun.me>
References: <20230810022603.947583-1-sargun@sargun.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
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

Cowritten-by: Sargun Dhillon <sargun@sargun.me>
Cc: Serge Hallyn <serge@hallyn.com>
Cc: John Watts <contact@jookia.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man2/clone.2 | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/man2/clone.2 b/man2/clone.2
index b91b71831..7d2dc2339 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -736,9 +736,7 @@ .SS The flags mask
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
-- 
2.40.1

