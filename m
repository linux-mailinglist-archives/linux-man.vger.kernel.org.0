Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 090BF3778E0
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230034AbhEIVpa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229815AbhEIVp0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:26 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DACFC06138E
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:18 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id a4so14561434wrr.2
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=t4IpK30BVx6zJPUfJiQojiNzCMULVCm9gMYTiGaojCk=;
        b=TR+o8gT/Pj0rLQXbZvbfUqqT5IioEAqtu1BcT16NM6TcXa4fR/usFs68a5TYcpy/u/
         CHldfwRFFY+9cK+1dd2Oyca7Rl8etkzf/W/7KtLEu6MblPgO9HND+kxna6PNEcf+kNK0
         kpqGiWwoah+7XIWSwSuP6I096aSwVRUA5smxGVJJM3Fw89SCM1DTOEtnKBiSxZqTn1wn
         SrQpkLpzXWoMdSY7BXIyeHZNTuOeWVmsgMtz6v//jZiP/SF/3RvZ7MO2CMkkIAaQ/U4m
         MIEJ68wULjw7Ek0qxYO4XLaoHM89kKU6K6mZmVJRzEa+f2NCH0NuKMcsp4mWjhC0eind
         gENw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=t4IpK30BVx6zJPUfJiQojiNzCMULVCm9gMYTiGaojCk=;
        b=gpHF5FhocYNz/WCjUXxro+B4Pna0FTQZImbQA80De00xEqSOn/I9EDhU+p3BrBkbdu
         hRm+O8llK2/HZBf4qDT1gIc63rxp7aaKJRU5qnJnkC7gCwvtxkUEuX+A5oFYYapodOkr
         ZV31vjfFR07easpIFoDgjb1+s+5tG3QpOwnZP45HChAU5ZkSlL0SPkBzpDCtv5Bib8s4
         SFgV1GPhBbFsbhrH4vGy1dV7o5FWfamtPFhPDfUO756lXti9qv7DIwaZvG/KbVQAvq86
         9v1IFxOpTiVWKIIIfAhGXD/4/ygRsZCLsxPs2ldrZXpLf9z9f1Xcn+iAVbD0kwgGRzPK
         u5tw==
X-Gm-Message-State: AOAM53059RVhgIqfQm5dorHsyU6hURF4objYwmaXOPIKhNjPjsNYn+6I
        qA8mtLNQsAlKpWWZcMvIORvbH8s7Bf0E0g==
X-Google-Smtp-Source: ABdhPJxFd8BLpR8ZEPM0wZllfNO0GWWnejBm92ajzUB/vBJU4uYhQGTcagnLdz4bKS+qqHF5W0966Q==
X-Received: by 2002:a5d:4845:: with SMTP id n5mr26984072wrs.290.1620596657495;
        Sun, 09 May 2021 14:44:17 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:17 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] clone.2: tfix
Date:   Sun,  9 May 2021 23:39:25 +0200
Message-Id: <20210509213930.94120-31-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/clone.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/clone.2 b/man2/clone.2
index 838fbd669..04b4ec38c 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -969,7 +969,7 @@ mask must also include
 .B CLONE_VM
 if
 .B CLONE_SIGHAND
-is specified
+is specified.
 .TP
 .BR CLONE_STOPPED " (since Linux 2.6.0)"
 .\" Precisely: Linux 2.6.0-test2
-- 
2.31.1

