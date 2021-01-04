Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6FCC2E9D8C
	for <lists+linux-man@lfdr.de>; Mon,  4 Jan 2021 19:56:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727434AbhADS4b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Jan 2021 13:56:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727098AbhADS4b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Jan 2021 13:56:31 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F20BEC061574
        for <linux-man@vger.kernel.org>; Mon,  4 Jan 2021 10:55:50 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id d26so33169372wrb.12
        for <linux-man@vger.kernel.org>; Mon, 04 Jan 2021 10:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vof1ROaEF2NWoGYhk9XEQpiIQ1okpI5JIqydWlTBgak=;
        b=G1ApmiCWlH/89U7IjcMIQKheh3oxycuh5asoVzX/kJY6NjsXkaXgzYT5YL0elnLhFL
         53PvcbVxh5f9a1kFkC4BctP0K4w68rpVH0C9PtXjbhnMH5PTvja0VbyDpUZKHfSOevCg
         xm652DdVNkSTBIRemZKuToX1MHcQXlexA1MUbQ7wHq+hAeIigIdaFr4vkt9g8ZP8B+0T
         a5xMcg08cDzx5QeIl2g7MLP/hKHt9z4LfLQLQhihtYn/qp2FJc7+65odUlRfYcJLky3A
         jxiGgrJ8AjVLfh76SOJaLx0CZlvPUmVyY9dOj9VhWWTatFAmKDlngXBs4KHDpzWo/RJP
         tzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vof1ROaEF2NWoGYhk9XEQpiIQ1okpI5JIqydWlTBgak=;
        b=cLqvekwZWy3FOdV7gl509PDcHn7QoOszH3vjxhe+qianBPXMGOSrJJDkxJGjqkWK14
         bhbkyB4PUU5IaKFMHzUirlZwbK96Xf9Xzqd4/PbbYFnFemM0pjlCkf5pPjQw+28Id8iG
         Jgkc3NgdnX1BsmsOTVDYTfAw4iBQBaodXmCdBSp4mRDWsfmqqaiTraQ0KvVw3ZNCmMz3
         7GUj42AjCxSJ7rkaoC+uUsEAWzuVygI+rhEkC+ae47b5st86mmWyqwRaGD0uUo4SKAG7
         jauMPajs2gKw0mEXfTi5tIdAZ5lkgjxtGW7fkG0r4Ng/a4PR1Q6IuVKmZ0WoXfZhjbcj
         fuhg==
X-Gm-Message-State: AOAM530n9GJjyTfpCHFb/vT5ZRhFtYeB5e1eecO0njFWphm3sSeBakVD
        Prr83nYzKFyqHNMJzpS18d0jVJLploM=
X-Google-Smtp-Source: ABdhPJzUouddFfkueEzVxOneDIg3eL8UVRQ6gYA9JBGuntveJqZ4gOOK+ETsbh3ENg7ayT9Xte+SVA==
X-Received: by 2002:adf:e452:: with SMTP id t18mr78098700wrm.177.1609786549756;
        Mon, 04 Jan 2021 10:55:49 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id m8sm308895wmc.27.2021.01.04.10.55.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 10:55:49 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] futex.2, syscalls.2, vmsplice.2, bpf-helpers.7: Write consistently 'user space' instead of 'userspace'
Date:   Mon,  4 Jan 2021 19:55:20 +0100
Message-Id: <20210104185519.78139-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/futex.2       | 4 ++--
 man2/syscalls.2    | 2 +-
 man2/vmsplice.2    | 2 +-
 man7/bpf-helpers.7 | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/man2/futex.2 b/man2/futex.2
index 49ea6ef3b..04df4896f 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1018,7 +1018,7 @@ user space atomically by setting the futex value to 0.
 .\"     retry:
 .\"
 .\"     	/*
-.\"     	 * Owner might have unlocked in userspace before we
+.\"     	 * Owner might have unlocked in user space before we
 .\"     	 * were able to set the waiter bit.
 .\"              */
 .\"             if (atomic_acquire(futex) == SUCCESS) {
@@ -1147,7 +1147,7 @@ but the kernel can fix this up and acquire the futex.
 .\"	in user space would fail, so kernel has to clean up.)
 .\" Darren Hart (Oct 2015):
 .\"     The trylock in the kernel has more state, so it can independently
-.\"     verify the  flags that userspace must trust implicitly.
+.\"     verify the flags that user space must trust implicitly.
 .IP
 The
 .IR uaddr2 ,
diff --git a/man2/syscalls.2 b/man2/syscalls.2
index e8cb489b1..99db98fea 100644
--- a/man2/syscalls.2
+++ b/man2/syscalls.2
@@ -224,7 +224,7 @@ T}
 .\" \fBcmpxchg\fP(2)	2.6.12	T{
 .\" ARM, syscall constant never was
 .\" .br
-.\" exposed to userspace, in-kernel
+.\" exposed to user space, in-kernel
 .\" .br
 .\" definition had \fB__ARM_NR\fP prefix,
 .\" .br
diff --git a/man2/vmsplice.2 b/man2/vmsplice.2
index 17834607b..649fe0ca7 100644
--- a/man2/vmsplice.2
+++ b/man2/vmsplice.2
@@ -181,7 +181,7 @@ this limit is 1024.
 .\" commit 6a14b90bb6bc7cd83e2a444bf457a2ea645cbfe7
 .BR vmsplice ()
 really supports true splicing only from user memory to a pipe.
-In the opposite direction, it actually just copies the data to userspace.
+In the opposite direction, it actually just copies the data to user space.
 But this makes the interface nice and symmetric and enables people to build on
 .BR vmsplice ()
 with room for future improvement in performance.
diff --git a/man7/bpf-helpers.7 b/man7/bpf-helpers.7
index f3b9bbc72..5ddbe79ba 100644
--- a/man7/bpf-helpers.7
+++ b/man7/bpf-helpers.7
@@ -3020,7 +3020,7 @@ void bpf_sys_open(struct pt_regs *ctx)
                                           ctx\->di);
 
         // Consume buf, for example push it to
-        // userspace via bpf_perf_event_output(); we
+        // user space via bpf_perf_event_output(); we
         // can use res (the string length) as event
         // size, after checking its boundaries.
 }
-- 
2.29.2

