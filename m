Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 244A82A1EE2
	for <lists+linux-man@lfdr.de>; Sun,  1 Nov 2020 16:09:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726497AbgKAPJS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Nov 2020 10:09:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726458AbgKAPJR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Nov 2020 10:09:17 -0500
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AD2DC0617A6
        for <linux-man@vger.kernel.org>; Sun,  1 Nov 2020 07:09:17 -0800 (PST)
Received: by mail-wr1-x444.google.com with SMTP id 33so863442wrl.7
        for <linux-man@vger.kernel.org>; Sun, 01 Nov 2020 07:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vb4rSXewMm2XN9mpml4G7vhO4w8DeTDh23/GR1waJyc=;
        b=eQ4xdZG+QsL1BSOedlfrhv9PHsqh6wvqYcIV0tYd0yRQCH1faRouC74LBALh37KXs9
         fwVwLwhnmCRpKOPrOpr8ZG3UfopF1UkHpV5LBxbE+FA7Ws/78rNAcFRTNTMG0mfn+zLy
         Jx7icQvqz67PJWvBrZB5q/FTLdvIbgVIDDvwva6wGUXE9RdCVeeKi6tr9bkfYfgmswIg
         HHWm3qekYOZd6uCkVc1GvtIJ/KrbBzHHZWzBYue2N7KHdyp61PJQEeclboeQ3WpbNdsx
         6srR9xZiFBaS1lIAxTir5QjOtys4spOu6YnrgegGXbOxcrN1iN0yfhT3lTNMqp93ut/S
         xP7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vb4rSXewMm2XN9mpml4G7vhO4w8DeTDh23/GR1waJyc=;
        b=LfWlpx5pgIiRSTW5wXhDDXAPkgfoVnxzg6KJScMMjlWFXMH38HPndVtStvQyHW8K5G
         KBnchD4/B2rZhMOcUsaIaW2kJzzp31nSUqN/m6gW1fhPVRXPo9+XsAD7GCPtEZShkU0L
         gRlzuMtg7mrP9teiW0dXCWPAg+4KkTYXn52jNhkLsLKPNwTadptf+ep9m+2OPvWEU4Fp
         kYwk8i1f2jZrLLzH1povbk5vQ6Ydm8gDhJyI1FnVmeKLChG1QCiZe9sswe6s4TdjlbvA
         SdO0FUUtySah315d/onQN8qtlDAiaEuA+VENh6qZmANw9qESR59nohdsVK3jmYdWY1e0
         dygw==
X-Gm-Message-State: AOAM5333X5aasKQu+Wq5iYmBA2mPTpa8to/9umhCmMg04i0gChDZ56SJ
        5n1eYkMHiab6LHBKIqtjQP/wYP8/2tA=
X-Google-Smtp-Source: ABdhPJyllvIZX2bx5CKr7tIkppzKVZfXCPD56Y4FkpK9aVenKRoyU9uE1GARuYf6EMcYRYVOJDt/aQ==
X-Received: by 2002:a05:6000:104e:: with SMTP id c14mr14883269wrx.329.1604243356061;
        Sun, 01 Nov 2020 07:09:16 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id v12sm19156806wro.72.2020.11.01.07.09.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2020 07:09:15 -0800 (PST)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] mq_getsetattr.2: Use 'const' when appropriate
Date:   Sun,  1 Nov 2020 16:08:31 +0100
Message-Id: <20201101150830.184973-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The Linux kernel uses the following:

ipc/mqueue.c:1480:
SYSCALL_DEFINE3(mq_getsetattr, mqd_t, mqdes,
		const struct mq_attr __user *, u_mqstat,
		struct mq_attr __user *, u_omqstat)

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/mq_getsetattr.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/mq_getsetattr.2 b/man2/mq_getsetattr.2
index 3878789cf..80db11b7e 100644
--- a/man2/mq_getsetattr.2
+++ b/man2/mq_getsetattr.2
@@ -30,7 +30,7 @@ mq_getsetattr \- get/set message queue attributes
 .B #include <sys/types.h>
 .B #include <mqueue.h>
 .PP
-.BI "int mq_getsetattr(mqd_t " mqdes ", struct mq_attr *" newattr ","
+.BI "int mq_getsetattr(mqd_t " mqdes ", const struct mq_attr *" newattr ,
 .BI "                 struct mq_attr *" oldattr );
 .fi
 .PP
-- 
2.28.0

