Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF407457FC6
	for <lists+linux-man@lfdr.de>; Sat, 20 Nov 2021 18:13:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231557AbhKTRQH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Nov 2021 12:16:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237845AbhKTRQH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Nov 2021 12:16:07 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC66AC061574
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 09:13:03 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id d5so24056893wrc.1
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 09:13:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0HvmLw92qiC0gXfcONCl7p+IhnZAwvYc2WdHU/UettM=;
        b=e7fg3SzbqmaO9rSEqL7Tzn3qSFTnM8VkEd79ZkltsCi6wVMY8N+LBNM3ZcMvPGe0MH
         P2ym1Cx09jHkyec2fU/grcdWFdB17oaMEiRRvyLXKnCyiIXg6yOn5mQLqKWuY/n3NzBE
         1f/db0hQI2xwHxDcyhdeb4fa6l32wjCz26qf0xI2u/pWQsErYM2oh9PeB46esl09J7gq
         at7LpYcyr36rZaUqUhZ5N0fyKGCVinPFr90O+GCyVYjv1aDTOY05KWOjItcfVSCTrhgF
         J1JcraIZH6AJyQU3GG8AoRdqr498GI9tjXiOnhv62sdyuS2Zl9mBNuiPlwLDQKoGhQon
         H8vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0HvmLw92qiC0gXfcONCl7p+IhnZAwvYc2WdHU/UettM=;
        b=bTz1SK+wK21cC3TrFPlJPqSUOZEElFCk9OOZ+I0zt5Zev2vD5vpFN1RqvqTIGXHWCa
         jNGPguUaw6+x7dtzfpDmQkjnIfUUevIIYC6Pz84Xli1O2vBMGHSeFysdKIT+N4jcP4zU
         bjApTJlNi6y8aEVC53X9yy5QSMqzXHEM0CBBD1OJPkavItRtW+TA6Y/o0BROMIVoBsYn
         ySA0ebuI4jYfG4EUDx+OYAE8AcDKWrIou2tPbZMNcO6OrieoF7pcx6hYNmH4DomJDlB6
         cWA+Z+RUiM73GhQrE66gNE89H3oA/r2AEN4Dthse/kl/e6PM5JoJ3GsI2A7Miz5v9tg1
         H1aQ==
X-Gm-Message-State: AOAM532Eu2e9wf6YMjwKFf1KJJ1n6duelS96WSIsHFqLBd+TGTbnH7UZ
        kbmVvWWLjQQmxKoxmJker9A=
X-Google-Smtp-Source: ABdhPJzSMXployaK1h4Fkl/2ni4Iz03fFzvOgl6uKF4YxaO7mu0FbqQK8q4kqUEiZweMjxET9oXtdg==
X-Received: by 2002:a5d:6211:: with SMTP id y17mr19089276wru.97.1637428382461;
        Sat, 20 Nov 2021 09:13:02 -0800 (PST)
Received: from localhost.localdomain ([82.114.45.86])
        by smtp.gmail.com with ESMTPSA id n8sm3108829wrp.95.2021.11.20.09.13.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Nov 2021 09:13:02 -0800 (PST)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 4/4] fanotify_init.2: Document kernel commits
Date:   Sat, 20 Nov 2021 19:12:53 +0200
Message-Id: <20211120171253.1385863-5-amir73il@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211120171253.1385863-1-amir73il@gmail.com>
References: <20211120171253.1385863-1-amir73il@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Document the kernel commits that added support for FAN_REPORT_DIR_FID
and FAN_REPORT_NAME.

Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man2/fanotify_init.2 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index 0d83e817f..7a1c21037 100644
--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -213,6 +213,7 @@ See
 for additional details.
 .TP
 .BR FAN_REPORT_DIR_FID " (since Linux 5.9)"
+.\" commit 83b7a59896dd24015a34b7f00027f0ff3747972f
 Events for fanotify groups initialized with this flag will contain
 (see exceptions below) additional information about a directory object
 correlated to an event.
@@ -245,6 +246,7 @@ See
 for additional details.
 .TP
 .BR FAN_REPORT_NAME " (since Linux 5.9)"
+.\" commit 929943b38daf817f2e6d303ea04401651fc3bc05
 Events for fanotify groups initialized with this flag will contain additional
 information about the name of the directory entry correlated to an event.
 This flag must be provided in conjunction with the flag
-- 
2.33.1

