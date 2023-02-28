Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7FD86A63D9
	for <lists+linux-man@lfdr.de>; Wed,  1 Mar 2023 00:43:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229453AbjB1Xn1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 28 Feb 2023 18:43:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjB1Xn1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 28 Feb 2023 18:43:27 -0500
Received: from hosted.mailcow.de (hosted.mailcow.de [IPv6:2a00:f820:417::202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C2A11CAF5
        for <linux-man@vger.kernel.org>; Tue, 28 Feb 2023 15:43:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pearson.onl; s=default;
        t=1677627798; h=from:subject:date:message-id:to:cc:mime-version:
         content-transfer-encoding; bh=QXnWbSCpWkTmls8MMTgCQF5ydZd6lokrtdxQAOaVSKQ=;
        b=RZjEYJs5eAvDNDhY0M+5hAqXHjoq7vVJh6TtPt2KpI1WeLsuubNdz5d3W2Shw+a2vepUxQ
        jQITZa49z2Hxr0DhnSHP29XGTKONh0Et9WZvORAoFhczRD0tYFXMNOoVrNaUqluyueBtPD
        M577A0GvUiVezulkuHY2qZ083rrkXMJYVyAjp0/gWJu7Cb2CpxvA3VfAOYZIz4JyUp+bmW
        q+NeUcEeWMKmjNDkSGGpKIMyTmAVNzlfgnb1s868ut2vYZY7Fo+VARL0jC6MYq+PAXdKqc
        RHWRHa7X+4jdaZXSvoY16YAuDtAXXWgNfnH18baDI2EorxvASfn9M7rAr8YOvw==
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3425C5C0569;
        Wed,  1 Mar 2023 00:43:15 +0100 (CET)
From:   Jack Pearson <jack@pearson.onl>
To:     Alex Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        Carlos O'Donell <carlos@redhat.com>
Cc:     Jack Pearson <jack@pearson.onl>
Subject: [PATCH] clone.2: note EINVAL when exit_signal + bad flags
Date:   Tue, 28 Feb 2023 15:42:46 -0800
Message-Id: <20230228234246.466811-1-jack@pearson.onl>
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
index d63895189..be802a280 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -1436,6 +1436,16 @@ One of the PIDs specified in
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
2.39.1

