Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 130A6353564
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236791AbhDCTmE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236794AbhDCTmE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:04 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD8A2C06178C
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:00 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id d191so3934098wmd.2
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8sXcJxfoGscdez3mIIgG0Vwgw6xUHy5fJqoPTId1UhU=;
        b=Ea4O0toTVUFRG3tK2P+aUvH2KQktXsEk/dPY2z2ROt+TvZBczG6S4RHO2XiDo7iuzp
         naENTTdOuxR2UvTJvpweDGBT8e5kSWvMButNQDue9ZRCR6tZBzJ+YUdZyb3leTCjJ+U2
         O0zFoUHHgugzjdwUWio54Lt6g6VQ1SxbcW/UTIoG2c+NZcpUQHEo75x773wj2hJlaiUJ
         Iss705f1lTMHtss7KQH8A+oYGjPfBizqsdcag+0On4drA7VJxvx29NzpaQbTSvv19npR
         P2kwJTMHvfjP2BZ/cQxZlnRfp7i9QDPSNg9ADTstQgPs7f8tixuJ8bsOV6uPk7fQrR/7
         CjhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8sXcJxfoGscdez3mIIgG0Vwgw6xUHy5fJqoPTId1UhU=;
        b=RW1bIoeDbywx/1+iWsP1NZeKI1FP3jmK/iedM2myEyZsNqfR2mFGscc7hH1J7juKpJ
         hneOWpnky6CETZQ36ZxvlMBBsy9ldgxsJdVTsmTo3BdbThc8fQOMB1SddWAocDiXyI8A
         AVRfGyFJ6HVUFjDiXCFHoNxAtgvzgykI5WkDzUrE8PgeeRpyA4JVrYFe0vQpzxRNDYSa
         K++Z6S4KBVb9TIhkWy6vsfEC0p34CD96OF92qSChQh2wKVHQJ1Cr8uaLnXdDRSdC5k7K
         xQCK4p+IWXhNlJcHUXWukgIxLC2d+Kt8Y5EnLyu7yWC60Zdm8xIUBGirOPptUqMJkTf+
         z6Qw==
X-Gm-Message-State: AOAM530Jji1pGk8hKtAIC8nXdnuJkchTIATeGc1C2Krpy04b8gk2WZso
        bV8x1345zG1thdNWj4mpTLw=
X-Google-Smtp-Source: ABdhPJzp3ft/6ObO1L1nyY1AMtbgfDkh8Gr375lvaGHf4XId8iMl21VDImY112QtbahrpSfgYj7XQg==
X-Received: by 2002:a1c:9a51:: with SMTP id c78mr7253898wme.160.1617478919629;
        Sat, 03 Apr 2021 12:41:59 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:41:59 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 17/35] fanotify_init.2: Add comment: why more than one include is needed
Date:   Sat,  3 Apr 2021 21:40:09 +0200
Message-Id: <20210403194026.102818-18-alx.manpages@gmail.com>
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
 man2/fanotify_init.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index 2418bbdd2..2b44fc6ec 100644
--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -26,7 +26,7 @@
 fanotify_init \- create and initialize fanotify group
 .SH SYNOPSIS
 .nf
-.B #include <fcntl.h>
+.BR "#include <fcntl.h>" "            /* Definition of " O_* " constants */"
 .B #include <sys/fanotify.h>
 .PP
 .BI "int fanotify_init(unsigned int " flags ", unsigned int " event_f_flags );
-- 
2.31.0

