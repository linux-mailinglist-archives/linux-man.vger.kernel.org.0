Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8C0A64D1D4
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 22:32:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbiLNVck (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 16:32:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229514AbiLNVcj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 16:32:39 -0500
Received: from hosted.mailcow.de (hosted.mailcow.de [5.1.76.202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53ECD37206
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 13:32:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pearson.onl; s=default;
        t=1671053556; h=from:subject:date:message-id:to:cc:mime-version:
         content-transfer-encoding; bh=vBcvRrc6+simMoeE9U/lRliTtSqdBc0tex9evPiRn1s=;
        b=JllzPJRuQcnP9+0krA/R524eyPprBPHk3MvhA+mKVr45zsuicubY1SzADxmXOK1pX8sBvp
        cfzMKbvUnXSbV3lohL+zN52CBzpQi/hLF4IRcqlSmT2DFL4hhG/t+MGIAB1x9sqe27dbDb
        H8CDjJRUsP7CoCTj3INj7bUQAsX1OR9whcvWMVeWCfCokE/7yMfHsPSvOMdnm0GUWegUBm
        KVRONdO2ay6ThcIBeviqM8FAB67MfTvtryOTJiryFY1n61oJ+ftG47vDYjVUI5Qmys/oi/
        YnA0eATkKGLHDAim6dmJqUfm5TJkffIaFYBPKlVN7ZP7zpDPv9vY3DHLXs5Auw==
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CDAB87C14AB;
        Wed, 14 Dec 2022 22:32:34 +0100 (CET)
From:   Jack Pearson <jack@pearson.onl>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        Carlos O'Donell <carlos@redhat.com>,
        Jack Pearson <jack@pearson.onl>
Subject: [PATCH v2] clone.2: note EINVAL when exit_signal + bad flags
Date:   Wed, 14 Dec 2022 13:28:49 -0800
Message-Id: <20221214212849.17388-1-jack@pearson.onl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        T_SPF_PERMERROR autolearn=ham autolearn_force=no version=3.4.6
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

I have verified that this happens on my kernel with a small program:

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

And I have verified that this doesn't happen with normal `clone` through
the glibc helper:

```
#define _GNU_SOURCE

#include <sched.h>
#include <signal.h>
#include <stdio.h>
#include <sys/mman.h>

int do_nothing(void *_) { return 0; }

int main() {
        void *map = mmap(NULL, 0x10000, PROT_READ | PROT_WRITE,
	                 MAP_ANONYMOUS | MAP_PRIVATE, 0, 0);
	void *stack_top = map + 0x10000 - 1;
	clone(do_nothing, stack_top,
	      CLONE_THREAD | CLONE_VM | CLONE_SIGHAND | SIGCHLD, NULL);
	perror("");
}
```

Signed-off-by: Jack Pearson <jack@pearson.onl>
---
 man2/clone.2 | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/man2/clone.2 b/man2/clone.2
index f04d713d1..3829d04c3 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -1435,6 +1435,16 @@ One of the PIDs specified in
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

