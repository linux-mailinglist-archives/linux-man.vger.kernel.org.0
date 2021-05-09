Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19979377872
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230002AbhEIUVU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230070AbhEIUVS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:18 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AF62C061763
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:13 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id v12so14428572wrq.6
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xFtkPeQ8Ryby47qCIyLIAN/DwZCs0f9D4VqlrqJNN4I=;
        b=VijAf0w0CEemK77w4plBr3W16MYb6LmeBHw5CeqqEz/StHTqmucXnzqLLAPcO6eSv3
         Lm0IUaBBgPzduTbbIqbuI2ZiJbzSSVeAjH3Hg5FkoettkoSYikNmjWwV6NP90q6gVYj4
         ntsz1vGBks7WCIv8JjWUwUgQcdAx0HrH4+oQOfqH0aT82zb+8PLb6+FSd5DSH8p4ce8v
         ZF49l8LBc9JER6Kid5cH1W/om3pq70V4CdzltQF/87kGDLxNuHLwzM/xFPLt9TsqTCuM
         ImLEqqVqzaYYQUNbSxAicMEfZuxbZkOA3+pSRnwh1Te0Ovt4LAI+GpZnROHwDvGqjELv
         oxvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xFtkPeQ8Ryby47qCIyLIAN/DwZCs0f9D4VqlrqJNN4I=;
        b=qhZCvm6jWkGpbz92R60BGn5U7Fn9BwVXfuxp4OdxTqrdS9qDynJa7ii6RqPnVIZFdX
         +NgFMtdlC7XYme+w0wyDpy4IVXDiM4bwxXRxjESb6jPtw4S+ar64qENQvfg56Ej5s98t
         6j9HuhQd4nFluywvfDACQZ+nGmRTKPtWwR+7iXKMArsidZUNSam0AqVVSZDn2LLg62gX
         YHZiXChA50XSNFXseF0I2IoTtpK0LLKBolPtF8ZNtPeZMp0GobTVHDdMUeiAngT/UWa/
         MuqOzcVeXcZAfJGA2ZZ8lou/UsgHWdFW2ZJV16QQHCivOlLg8X0iaVfd4YD4UGANZqfr
         ebkQ==
X-Gm-Message-State: AOAM532Kxwf0PSlBfh5+hz2+JPjAwNDuayYL2sGNwUNnnso4bufyeyls
        4N5ttKX6/yOKEWJ1o3Gt3svUqpP1OSslOA==
X-Google-Smtp-Source: ABdhPJwrJBKSLgwcPetbQ/bRSySu0c4pTD+TOYSlIQnKz2F1EWVvzWPuNLea1MHQRnyz3LwtFblsLQ==
X-Received: by 2002:a5d:6383:: with SMTP id p3mr26376912wru.230.1620591612204;
        Sun, 09 May 2021 13:20:12 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:11 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Vishwajith K <vishuvikas1996@gmail.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 12/17] shmop.2: tfix
Date:   Sun,  9 May 2021 22:19:45 +0200
Message-Id: <20210509201949.90495-13-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Vishwajith K <vishuvikas1996@gmail.com>

Signed-off-by: Vishwajith K <vishuvikas1996@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/shmop.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/shmop.2 b/man2/shmop.2
index 3a6c908ee..c7e66af0e 100644
--- a/man2/shmop.2
+++ b/man2/shmop.2
@@ -387,8 +387,8 @@ main(int argc, char *argv[])
         errExit("shmget");
 
     semid = semget(IPC_PRIVATE, 1, IPC_CREAT | 0600);
-    if (shmid == \-1)
-        errExit("shmget");
+    if (semid == \-1)
+        errExit("semget");
 
     /* Attach shared memory into our address space. */
 
-- 
2.31.1

