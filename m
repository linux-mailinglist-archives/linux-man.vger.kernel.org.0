Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5389A6F5C72
	for <lists+linux-man@lfdr.de>; Wed,  3 May 2023 19:04:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229886AbjECREb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 May 2023 13:04:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229892AbjECRE1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 May 2023 13:04:27 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B66517A80
        for <linux-man@vger.kernel.org>; Wed,  3 May 2023 10:04:00 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-3f315712406so33630185e9.0
        for <linux-man@vger.kernel.org>; Wed, 03 May 2023 10:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683133438; x=1685725438;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mmMl2VMIEsTZ9LRsWkbtsMx6QFBJFMfFFed/BURjL0o=;
        b=ZcgTLZLuwz727c5eo9GeBGNS5yK6YVcIv30/iKtw58u+vTj2nvE7Sf6omyb0xQJ7MZ
         vx3cS4xLUeP0UEAPT1hjgIvw0NssOs5q4qJL6cWrZRCFU1cQxGv0JV3xt4ltK8TYD6Oo
         OSZMKX6bLdqyJZyQlUWA0YPg538Auv9Z+2w8HdhP4Ieysk7ZDqiyCqjpJnNIda35IK3x
         jGov9RYz5HTk75odFPTVm+nja5wFW3H0dPpOj5p7I8Z2YrQAEuodWs9KaiaERsY4B2E/
         RMoJtvfKejedWsGyn8dVfxJbA1dTy2KovggfjcuTjTuVmq4omjJN2LOwQRYjfhoHHuj7
         604w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683133438; x=1685725438;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mmMl2VMIEsTZ9LRsWkbtsMx6QFBJFMfFFed/BURjL0o=;
        b=bZQjO3ibXsjxjm+6bDvLBkJ4gssO+iwtlCSE4JO/HVPgDTbqe1XCgImT858hdUWG0S
         nG6xf4qKUwjYU2Xts3N0iFhAduPnOL/dIkazDREO/NCrz9iO5PZTzQQSNXs+I0EexaDv
         PjfNzhcsunnsXUzx+ecWjwGgkKzokQI7EMN2m5gEayZ1NgJUHcxukGdvTXVQ1FE+Yp/t
         fPCyPL0wkSxvdvUvO9fY0Bm24lnvA9b2wzF57Jpa0RyCBqXZbGuBq0mHY+SmDfZWGhaL
         mtQXfqRiojE5SVEkcfHLRDEs+rD8gzQRFIKD4tJrcCcSbFd+K9GeRrf7K+I9jEa2Zzsf
         FtPA==
X-Gm-Message-State: AC+VfDwjr2MI2W9wZejziCFL7yiG689Ef8pCD+zdiAbadzw0SBgy3Ub+
        WSvKQ64mVMTEibKMv7zb7o9La1gKCCE=
X-Google-Smtp-Source: ACHHUZ4HtKRDX3doKMKEXqtL+NXTb9KLGEuE0MEEnmrAunakiZytHSh+Fvrzpzh/dzxo3u4y1BjSvQ==
X-Received: by 2002:a05:600c:3b9c:b0:3f1:73d3:5362 with SMTP id n28-20020a05600c3b9c00b003f173d35362mr1976518wms.13.1683133438295;
        Wed, 03 May 2023 10:03:58 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id l9-20020a1c7909000000b003f193d7c6b7sm2376091wme.41.2023.05.03.10.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 10:03:57 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org, a.clayton@nginx.com
Cc:     Alejandro Colomar <alx@kernel.org>, andrew@digital-domain.net,
        Alejandro Colomar <alx@nginx.com>
Subject: [PATCH 2/3] sched_yield.2: NOTES: Remove misleading sentence
Date:   Wed,  3 May 2023 19:03:52 +0200
Message-Id: <20230503170353.25998-3-alx@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230503170353.25998-1-alx@kernel.org>
References: <20230503170353.25998-1-alx@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

sched_yield(2) is not the right thing for heavily contended resources.
The right thing to do is to call functions that wake the waiting threads.

Link: <https://www.realworldtech.com/forum/?threadid=189711&curpostid=189752>
Cc: Andrew Clayton <a.clayton@nginx.com>
Signed-off-by: Alejandro Colomar <alx@nginx.com>
---
 man2/sched_yield.2 | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/man2/sched_yield.2 b/man2/sched_yield.2
index bab0f9569..5e5b45a48 100644
--- a/man2/sched_yield.2
+++ b/man2/sched_yield.2
@@ -54,11 +54,6 @@ .SH NOTES
 it will continue to run after a call to
 .BR sched_yield ().
 .PP
-Strategic calls to
-.BR sched_yield ()
-can improve performance by giving other threads or processes
-a chance to run when (heavily) contended resources (e.g., mutexes)
-have been released by the caller.
 Avoid calling
 .BR sched_yield ()
 unnecessarily or inappropriately
-- 
2.40.1

