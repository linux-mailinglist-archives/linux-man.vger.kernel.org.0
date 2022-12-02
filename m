Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18BD86410FE
	for <lists+linux-man@lfdr.de>; Fri,  2 Dec 2022 23:59:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234204AbiLBW7P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Dec 2022 17:59:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234065AbiLBW7N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Dec 2022 17:59:13 -0500
X-Greylist: delayed 522 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 02 Dec 2022 14:59:13 PST
Received: from hosted.mailcow.de (hosted.mailcow.de [5.1.76.202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DD9AEFD2D
        for <linux-man@vger.kernel.org>; Fri,  2 Dec 2022 14:59:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pearson.onl; s=default;
        t=1670021429; h=from:subject:date:message-id:to:cc:mime-version:
         content-transfer-encoding; bh=o9ozsXCjOCa2+QHepMz48Xs5bBCfVcQ3qpMpBPaTmus=;
        b=iyHW6RGweUCkMS9//c6qLpio0fBrQIaUTp+aA5mO34hg9uE/b6mLVZz2eyAhbT6j0Gxjkk
        00wajRUKCTp4jQ5Dapg3sbQXg2I6wjPy289tbP8BfKPJA+3L2UNiMG9hw/ATWLveISti8e
        95YCsnKolqO4jY6ZIDHxbKZwJdRjaRw5N3aHAvIr15xDjUODoCXPLm1RRfN5k6Hs28ZswT
        SExtEqrp7n9LUNpvv0+8dtTW5NdG/FYXvyAWwKqj252QlwlqvjLuO8SvcMoTssD4XUvPCQ
        oMW2ccJIyyPfiNJy512vJvwasCHgs1DH950m/TA7k/FCPAxt3aYbgDHucbn0/A==
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 96A4D7C474B;
        Fri,  2 Dec 2022 23:50:28 +0100 (CET)
From:   Jack Pearson <jack@pearson.onl>
To:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
Cc:     Jack Pearson <jack@pearson.onl>
Subject: [PATCH] clone.2: note EINVAL when exit_signal + bad flags
Date:   Fri,  2 Dec 2022 14:44:19 -0800
Message-Id: <20221202224419.231717-1-jack@pearson.onl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_PASS,T_SPF_PERMERROR autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Document that Linux will report EINVAL when exit_signal is specified and
either CLONE_THREAD or CLONE_PARENT is specified.

From clone3_args_valid in Linux:
```
	if ((kargs->flags & (CLONE_THREAD | CLONE_PARENT)) &&
	    kargs->exit_signal)
		return false;
```

I have verified that this happens on my kernel with a small program, and
that this doesn't happen with normal `clone` through the glibc helper.

The program:

```
#include <stdio.h>
#include <linux/sched.h>
#include <signal.h>
#include <sys/syscall.h>
#include <unistd.h>

int main() {
	struct clone_args ca = {
		.flags = CLONE_THREAD | CLONE_SIGHAND | CLONE_VM,
		.exit_signal = SIGCHLD, // comment me out to fix error
		.set_tid_size = 0,
	};
	syscall(SYS_clone3, &ca, sizeof(struct clone_args));
	perror("");
}
```

Signed-off-by: Jack Pearson <jack@pearson.onl>
---
 man2/clone.2 | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/man2/clone.2 b/man2/clone.2
index 093630859..a0fa50d83 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -1433,6 +1433,16 @@ One of the PIDs specified in
 .I set_tid
 was an invalid.
 .TP
+.BR EINVAL " (" clone3 "() only)"
+.\" commit 7f192e3cd316ba58c88dfa26796cf77789dd9872
+.B CLONE_THREAD
+or
+.B CLONE_PARENT
+was specified in the
+.I flags
+mask, but a signal was specified in
+.I exit_signal.
+.TP
 .BR EINVAL " (AArch64 only, Linux 4.6 and earlier)"
 .I stack
 was not aligned to a 128-bit boundary.
--
2.35.1

