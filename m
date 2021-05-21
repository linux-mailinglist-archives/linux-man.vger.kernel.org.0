Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90A8638D1EC
	for <lists+linux-man@lfdr.de>; Sat, 22 May 2021 01:26:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230147AbhEUX12 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 19:27:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229989AbhEUX12 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 19:27:28 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FB5DC061574
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:26:03 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id f20-20020a05600c4e94b0290181f6edda88so1337653wmq.2
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FK2FJre8vILwhNXMojdE2+KuMV59lDpxDXryppDgiHM=;
        b=XXlCgnOYS7jx2s+ica3mLfRvyltkLi2SeygoKn+kjAvFj28YfI6DNV7YWadCkO9ewD
         SVOqOPbwU8Ov1mF5UUj/rxaPlZqfUgKwqw8n6njIJdwXq8VrSWyrUuXcXwlBFMbn6aK/
         tL+yBP76FN/U+nQ/grLvJ1bbV8k9nGbFyibhLEv5KjeOzcJ4JdbGhJJyt5IffAC0DVKK
         0D9QUYQA8K8si0CIQCHfM/zWz3LzIpciQ6/khW/dpwuKHgMBsonnOMlWecl44IvOxuBK
         +rpDAEs2kH8artVIvKRAp7TnpMF/QO+fWC0pViPjJi08sCN/btvK4UaQeyZxyBLegU4S
         neEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FK2FJre8vILwhNXMojdE2+KuMV59lDpxDXryppDgiHM=;
        b=eCLzFkp1EbXhTGQjVNK8zgmYcmBJ3kVgYPVUPJhAY7IQUx9CqQm51JdzjbdurA+7HX
         Aa1P+i/jx4JPv3vbPuJoJ0Jj/UhcjuYNT1hzWsyD6fdMsxks8t0F0smF/7IbrPFNb+7D
         VbDvGjCi7omh/tQ0qEY3mnxkd7Uge01wnNXO9lSRuIyQA05RXZfq6OTANASRISV2zBvw
         8/r5wCOt5gnDIgxhNa3h64/bfXHNvffpQyIYiKPtUE1DPaxTDKSXg5RN16A8SROqRbO1
         vlAAG5k3+JZdC/BWMR7wX2mgF6A1KDvPPKWsAbmUlSJiiWRrda5XSXtVMKnUmcsWeQJo
         lO5A==
X-Gm-Message-State: AOAM53202ouWzFWBHr+wfFRz/IMoUo0tkcmzFpZGZdKP1MEWL40SHssq
        o69QdiigqNeIBfr0wPDJXTuSy0NFPvP87w==
X-Google-Smtp-Source: ABdhPJyaX2BNpfmTBaawBTktp1bNKxf7Nxzn4Ps/0qoeuFUVmnwur/RUMHGNi9CuiWE1ZkLOzwf25w==
X-Received: by 2002:a7b:c444:: with SMTP id l4mr10701324wmi.36.1621639561880;
        Fri, 21 May 2021 16:26:01 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id z12sm1150639wmc.5.2021.05.21.16.26.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 16:26:01 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 06/10] set_tid_address.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 22 May 2021 01:25:49 +0200
Message-Id: <20210521232553.161080-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521232553.161080-1-alx.manpages@gmail.com>
References: <20210521232553.161080-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/set_tid_address.2 | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/man2/set_tid_address.2 b/man2/set_tid_address.2
index 258c9b9ef..4b81865dc 100644
--- a/man2/set_tid_address.2
+++ b/man2/set_tid_address.2
@@ -27,13 +27,17 @@
 set_tid_address \- set pointer to thread ID
 .SH SYNOPSIS
 .nf
-.B #include <linux/unistd.h>
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "pid_t set_tid_address(int *" tidptr );
+.BI "pid_t syscall(SYS_set_tid_address, int *" tidptr );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR set_tid_address (2),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 For each thread, the kernel maintains two attributes (addresses) called
 .I set_child_tid
@@ -99,9 +103,6 @@ This call is present since Linux 2.5.48.
 Details as given here are valid since Linux 2.5.49.
 .SH CONFORMING TO
 This system call is Linux-specific.
-.SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
 .SH SEE ALSO
 .BR clone (2),
 .BR futex (2),
-- 
2.31.1

