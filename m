Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA90237A459
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 12:11:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231255AbhEKKND (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 06:13:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231177AbhEKKNC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 06:13:02 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 675C2C061574
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 03:11:55 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id a10-20020a05600c068ab029014dcda1971aso879474wmn.3
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 03:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mbARSEK5n85Y07ppMHIYUncPatNuC6lyaL5X/hbHAPw=;
        b=ubUMWZOrbU+mYLTUEbhX5+lOdsIaIw7Uss3zy0CdBgXtXjCjZZwBZEzpA02xR+9RU0
         wjD+OEyjBgQyNGCQC1UHmG+cieksy2ffYExJ9PIo/EyDC0eywf6WYPiEieHR+WSMtfXx
         EtrufePTm5FnO97zrt8cn0To1NgPXBmmvAHxX+4r9nx5Fg/as5G4w6lKyWabLBsP6oSY
         KHuriaLHTSbqHZuptnINv8cdR3faN0dduF6a0e6QVQtkjpgJcpnU9eCMJdgbSFxQKZa6
         H7V7PMcbXH0mPbx6GwH3UP+8UOUGDzo4NIdz5GFhs0TT/yJsRFTdF0yuQOAMP87sBkS4
         ivIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mbARSEK5n85Y07ppMHIYUncPatNuC6lyaL5X/hbHAPw=;
        b=Hb3/kIC/4mrIZh6IOhgtLLhEiQuDYwKwc8NZ1w2VBJMDbg8sZgUaw7HWFvfjI2f/lw
         7JZJ1Xu7LEJ9TC/mtQ+ZnGnhJ9PAIiRa2LH26O/06S4yScVAZvpNZ25hf8BnKB9D8xXj
         /htoC81U01RKZWDCRerF3C401yrjLnBAnpNzAHYdQbfcPvYwXaY7ySKg3swWxWjOfENc
         2s9QSYOFXt4JzfSnjPSnODmnUw3Re+Tlf6cCLQheawbAQTuM5iGDb7dmKbsbvnkx+Qrn
         xwmdc7ST5PgYDquCYstR8/9VxTPCpsmBBWT8RAxScu8PS7NOUZMLvTdPJMrwW3MnTAhF
         yZkw==
X-Gm-Message-State: AOAM530bVYVxBiDX+l4AnlUzRmOZgK1taeLoRzmS7GpEc+jTvNyoGVc+
        hYkJLvjrqSf1CVQdwV0R6tA=
X-Google-Smtp-Source: ABdhPJxns/uw/lgYnlZuIiRafvy/c+rkpZNk0aD0PHkUTeqwQBwGExUeaPRNSpsWWuO/OS+9EhrvUA==
X-Received: by 2002:a05:600c:3552:: with SMTP id i18mr1715343wmq.121.1620727914199;
        Tue, 11 May 2021 03:11:54 -0700 (PDT)
Received: from msi.alejandro-colomar.es ([46.222.232.120])
        by smtp.googlemail.com with ESMTPSA id g25sm3171338wmk.43.2021.05.11.03.11.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 03:11:53 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Akihiro Motoki <amotoki@gmail.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 4/5] sigvec.3: tfix
Date:   Tue, 11 May 2021 12:11:46 +0200
Message-Id: <20210511101147.24399-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d
In-Reply-To: <20210511101147.24399-1-alx.manpages@gmail.com>
References: <20210511101147.24399-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Akihiro Motoki <amotoki@gmail.com>

Signed-off-by: Akihiro Motoki <amotoki@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/sigvec.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/sigvec.3 b/man3/sigvec.3
index f7ca776ed..b6644393b 100644
--- a/man3/sigvec.3
+++ b/man3/sigvec.3
@@ -135,7 +135,7 @@ This field may contain zero or more of the following flags:
 .TP
 .B SV_INTERRUPT
 If the signal handler interrupts a blocking system call,
-then upon return from the handler the system call s not be restarted:
+then upon return from the handler the system call is not restarted:
 instead it fails with the error
 .BR EINTR .
 If this flag is not specified, then system calls are restarted
-- 
2.31.1.498.g6c1eba8ee3d

