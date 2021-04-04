Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6BD7C3537E7
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230122AbhDDL7o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230378AbhDDL7o (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:44 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA29EC061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:39 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id o6so1558313wmq.3
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mrkfk1quWdjBX9VDibOMAzdhIk8NhlqMcKJaPgXG5vw=;
        b=FMoHXnYrXpBblzn1bwF16UVNeSTuQ2iMUSfActlIoKWUuo/UawjYm44CuNZGHgfcHS
         3mO7k2yWWP1wLgfb2blwMgst88V/qbIjwt2dqHvIe3xvOqlsENvXa6QQzg7J6DxtlPZF
         2QUPW9LUmGfTcwqmtu93hK0z6OXwzH991X7bIVSCKiMUMiIDGFc6Px05BukoikCBq15Z
         JzcgQn3BlDZkKb49LnWJ1K5G+wOoakBaEepG+1127Go6P1BXjzvvY0JvcjIgYZ+gMxSG
         qXc9e0Uzz/QYMslI0nadDTpl2pVCNIfZ9xvj4d/2ZI2Inu+46Ysvk4V7AI2zZfE1MZt4
         fl/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mrkfk1quWdjBX9VDibOMAzdhIk8NhlqMcKJaPgXG5vw=;
        b=a4DXzF4ox4/zTBFrkdEduBdOLXiXKplc8g95VAFeDOkBL4LQ7X5jKZ2GFzU25KPBEi
         CCAKP9cUDmCV2xPhrsayApBvjkQ/pKnxwnsPgs4Wh/ppQzUZQ30c/B3qJLTCeuUVNjKc
         H8jfD9P89biTQ34oK129Z1W6dWtFFEegP1cIp6aiwRLiemdtt1uiJoYtFNHYxHhjspvZ
         gxuPL4XCsZbg4ulEjc5lDMQxqS8GIo7xb2MCRhCwo0fiL2YCaZhIjY7pBIm0+P4IUd0v
         R02oKjICGfw0Y+EDfaMKOHvUT2sxqPo4IjmT3dJCeoDqyjFqd/fhGRg5UlzQWtn9iNGX
         dGiw==
X-Gm-Message-State: AOAM530HwkhOT7hQjxoXd3BapWvib9lDqusPENHyS5kiBelgec2IfbVm
        xSW/XAR8Xy0IxkYeYRUgPuFmVHylASo=
X-Google-Smtp-Source: ABdhPJxG+SOFZJR7Bk04BCZO77MXxTTD7ZvJLFBIfXRv7y4L3E5zFGllTnT3SZzCuTAsOUgHelpWtQ==
X-Received: by 2002:a05:600c:4242:: with SMTP id r2mr2256700wmm.77.1617537578545;
        Sun, 04 Apr 2021 04:59:38 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:38 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 08/35] arch_prctl.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sun,  4 Apr 2021 13:58:21 +0200
Message-Id: <20210404115847.78166-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/arch_prctl.2 | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
index 1ddeca595..f8073d625 100644
--- a/man2/arch_prctl.2
+++ b/man2/arch_prctl.2
@@ -27,15 +27,14 @@
 arch_prctl \- set architecture-specific thread state
 .SH SYNOPSIS
 .nf
-.B #include <asm/prctl.h>
+.BR "#include <asm/prctl.h>" "        /* Definition of " ARCH_* " constants */"
 .B #include <sys/prctl.h>
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int arch_prctl(int " code ", unsigned long " addr );
-.BI "int arch_prctl(int " code ", unsigned long *" addr );
+.BI "int syscall(SYS_arch_prctl, int " code ", unsigned long " addr );
+.BI "int syscall(SYS_arch_prctl, int " code ", unsigned long *" addr );
 .fi
-.PP
-.IR Note :
-There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 .BR arch_prctl ()
 sets architecture-specific process or thread state.
@@ -177,9 +176,6 @@ and
 in the same thread is dangerous, as they may overwrite each other's
 TLS entries.
 .PP
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-.PP
 .I FS
 may be already used by the threading library.
 Programs that use
-- 
2.31.0

