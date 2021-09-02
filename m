Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA50E3FF0A8
	for <lists+linux-man@lfdr.de>; Thu,  2 Sep 2021 18:00:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233953AbhIBQBg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Sep 2021 12:01:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230088AbhIBQBg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Sep 2021 12:01:36 -0400
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com [IPv6:2607:f8b0:4864:20::f2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 032B5C061575
        for <linux-man@vger.kernel.org>; Thu,  2 Sep 2021 09:00:38 -0700 (PDT)
Received: by mail-qv1-xf2c.google.com with SMTP id bn14so1420600qvb.12
        for <linux-man@vger.kernel.org>; Thu, 02 Sep 2021 09:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6sFfgMi6Xm3OQ8CQNyfKkk73oX3C1NA8jBxgCJmHQgg=;
        b=GNvoOXrYHMRHVWlo2pT5puqRSfDY0qhRpL+TAcVfM/ABFvQ82ju2zNR/A0v0V5v5LF
         gxh30ZEGibArzpBOq4K5NuQSrfqoiLHte0MAYr6ffgBRCney1iu+uhnoQA/V4RhjCUjn
         foFP0gh3zYobrr2/QODMB93tyy8lRMyAicz3XyuqH6CfXN210EumEfvwUPuWldatuyA6
         Flx2l7iI5YgAVqAzbfw+wz8XzNKnRC5seICExQlkQg8yrqbmdVLSb+qiWGKKcJT05DH6
         gVavHyx2UAJmGAyN+E8abM7d/kNSBqDONoYn4Kf39IsCdq3Bxlf0Kci+FWFhwQiu4qob
         +5Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6sFfgMi6Xm3OQ8CQNyfKkk73oX3C1NA8jBxgCJmHQgg=;
        b=jiJ3iT5uV0LcBnl+uIMG+CFFOzXdhXiXHe4lvV6iee8GQBhkUplppUexkT2XF93KkA
         FkjYJ3pWf7BUAOjJjopbmXo7sC5E5Fo8YG0auZ/vcsv5M+QGIinM4DoQynj8cembrJcH
         TfT00cJCQ0u1njSZVbLTn/brlqSyxda2/Deyr/KkMgFvSMaSyAu+wmyEFQTxh07YcM5J
         Tj9vS6rTHwV+xCbulmL5jcU6y3mAMFcXY5upMuHceamtckOLxJRNQineh2dNaGL8VPam
         S/JHw4C4x3NAcTajh3A96/aYqwMm7h2prz6OzbrZSQUUjWq9rl3S4NdvJMXMGg9R6ySz
         pT6A==
X-Gm-Message-State: AOAM530QwVENPl8Cuo8hv8ImaKzz+INcIJCYuJ13cew9WJM4cXKFzrRd
        4TRbYdohcWO34oKxm6oEr1qXNCcTwlkj4A==
X-Google-Smtp-Source: ABdhPJw+Ah6QWLUTDquseoOeKnWGpJWpNzNxyh5RhLDVqtXzDGbiqpm5qEaC32NMO7kPKneH7geVNA==
X-Received: by 2002:a05:6214:38c:: with SMTP id l12mr3698237qvy.57.1630598436977;
        Thu, 02 Sep 2021 09:00:36 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id d12sm1274429qtq.61.2021.09.02.09.00.36
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Sep 2021 09:00:36 -0700 (PDT)
From:   Trevor Woerner <twoerner@gmail.com>
To:     linux-man@vger.kernel.org
Subject: [PATCH] seccomp.2: fix path to syscall_64.tbl
Date:   Thu,  2 Sep 2021 12:00:30 -0400
Message-Id: <20210902160030.38515-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The path to the syscall_64.tbl file was missing a directory.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 man2/seccomp.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/seccomp.2 b/man2/seccomp.2
index 4b96b6d8a..3af693916 100644
--- a/man2/seccomp.2
+++ b/man2/seccomp.2
@@ -1059,7 +1059,7 @@ numbers on this architecture:
 $ \fBuname \-m\fP
 x86_64
 $ \fBsyscall_nr() {
-    cat /usr/src/linux/arch/x86/syscalls/syscall_64.tbl | \e
+    cat /usr/src/linux/arch/x86/entry/syscalls/syscall_64.tbl | \e
     awk \(aq$2 != "x32" && $3 == "\(aq$1\(aq" { print $1 }\(aq
 }\fP
 .EE
-- 
2.30.0.rc0

