Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4D79301D17
	for <lists+linux-man@lfdr.de>; Sun, 24 Jan 2021 16:15:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726065AbhAXPPJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jan 2021 10:15:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726530AbhAXPMr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jan 2021 10:12:47 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 460E0C06174A
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 07:12:07 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id p15so3104369wrq.8
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 07:12:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wo271IPG/KksBuGahN9ZswHwFduqLEGkWvA4JDqucLU=;
        b=AfPvLWim9qI+BWpoCYRoQuBq0Q/q1jilGpTKO54FYzJ4OXOwLSzVOthe75x8dIFpPb
         cf55GxIj7skz/0FaaG4IbgUcXWERe+U2IS/er7OQnLpvVn6WMJbJ2iJGqS682IpuOVIA
         mQnrqM13GplLZuzEDHyHGjt1MNElYkttJ44bLO1sZvJuKCFLn7TLA2MACiUH+4iamSxd
         QngLj+KjZXDA+3/lGKknKq3g4lHqi7KzVzco/LtyaI6RpmuExR8gdwSE19sPRlGtME/A
         YYzKRTCmLmBQuN7fxCwiv5EK85xgLB7lvrTqBkMS3q2isqqblw6YAGwjtl+yK5xu9PEP
         uZWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wo271IPG/KksBuGahN9ZswHwFduqLEGkWvA4JDqucLU=;
        b=PV2Mv8d6OfFROX83V3GX6In9GKh1QAG0sxIJtPrb6vcDbsSdpx7YQ4SWuG+mMIGI6g
         h4xCp0Him1Tbo7TskK/5m7dXjR8p/cRNSyGPfUZc/k7y0C5ogNR4z6qp3XUb12rcud+a
         ut7mCdmoelpTCyZguX+YDqHN1loNx6QNEGEDHHdWtGgrGtMh44DiD5rKzVwLAevuM00R
         FkUnMgqSDdYWywgpCXIdMSfPRwf4z1IPIjbxXIhCShGf9etyEZSZZf09rMkdWR0pDGZE
         J4FDta4IidwF5Ga/MTOGhZqwRQsHLDZf3WjDMPW7WL5Hxbda+JnEhQBMO15QTYO5rhCB
         D0Qg==
X-Gm-Message-State: AOAM533MaT1OkJzvrlOy5/ch3bwkA3Fv15v50Cxd2Cjojrk3HOKP8dnJ
        nnpZwA6LPfq8tDwqGUOq9qY=
X-Google-Smtp-Source: ABdhPJwE/VaVjMwMiNc4Cte35tGsDMqpjgYwzhGsBLXJkuFypgKXqtS0WnTDwCV53qQh+4SsR8ZRIA==
X-Received: by 2002:a5d:4a09:: with SMTP id m9mr4726930wrq.122.1611501126134;
        Sun, 24 Jan 2021 07:12:06 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j2sm18480099wrh.78.2021.01.24.07.12.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Jan 2021 07:12:05 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] semget.2, shm_open.3: tfix
Date:   Sun, 24 Jan 2021 16:10:43 +0100
Message-Id: <20210124151035.70536-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Jakub Wilk <jwilk@jwilk.net>

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/semget.2   | 2 +-
 man3/shm_open.3 | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/semget.2 b/man2/semget.2
index 9276a1820..17bad6ca9 100644
--- a/man2/semget.2
+++ b/man2/semget.2
@@ -155,7 +155,7 @@ If the semaphore set already exists, the permissions are
 verified.
 .\" and a check is made to see if it is marked for destruction.
 .SH RETURN VALUE
-On sucess,
+On success,
 .BR semget ()
 returns the semaphore set identifier (a nonnegative integer).
 On failure, \-1 is returned, and
diff --git a/man3/shm_open.3 b/man3/shm_open.3
index c7d051067..6bc8078f0 100644
--- a/man3/shm_open.3
+++ b/man3/shm_open.3
@@ -170,7 +170,7 @@ was specified, in which case a new, distinct object is created).
 On success,
 .BR shm_open ()
 returns a file descriptor (a nonnegative integer).
-On sucess,
+On success,
 .BR shm_unlink ()
 returns 0.
 On failure, both functions return \-1 and set
-- 
2.30.0

