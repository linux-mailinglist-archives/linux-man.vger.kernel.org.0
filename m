Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8BA573778C8
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229996AbhEIVpL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229969AbhEIVpI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:08 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 101ADC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:04 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id t18so14561001wry.1
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yscD37x6LQPiGkNmU2OL1pgTWKpTZ9XmieDFuSsb8Dg=;
        b=sc+NbO++04rUtwa4zkFrLMUAedrG/T29xyYZLf7DhxLX0EyX5fvX3n8ZHdsPR6FEVY
         zk/l+a2VLO9ADuvv334U2E4xFN8S8KuMHuVPLQgeedDKFTFw2FJu0zt/DS5xURXuZvPO
         z30DyLVvE4BLA1JQbpEZ2U5ucZtE1RIjiR9FfisAVngYhSKb40ZhJi8q2AVvX+FSRVLK
         xoipBDv9P8MPuTqKRVikrMDAWJJLv+zLhAIPu7msof9QEkS/G1XGFk1tT1bU3VzkV8X0
         XvNXzqYpwoMmA1LXnmKy2w5QsPr9C2KHgpGd/mWcUxiETIz5TGv/rKja+nt0gmVucwN8
         6Rug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yscD37x6LQPiGkNmU2OL1pgTWKpTZ9XmieDFuSsb8Dg=;
        b=ckMfdPUkRc1aw10bxb/7jw4dSU+leERQY3GYdGChrA5LKac1Ewt6ble1VSFFS6OqTF
         gCCeSaGhvU6eXsCz1oCJ0qb6aO/i+CNCwPV3ktpXZomCICMotZH05s6ilb4/14Jg/v2i
         KdQcXlEbrAhal9fl4I9i09tgzruozjznEgB7Cpjq4Qw84c8HGHY7qeFABCBntC+TvxJP
         rRzdNztrMrI8gyaiB8TgneVwbmEBswGXJo8YSGf+sKBToU5A41aKEF/rjdX4bBo4h1+s
         srSFULyQCN230FQB5QZESRTHpmM3TBds4FLJsrk0dDtCtNvU8A90DnNY4DLRwgkfDmk5
         2GnQ==
X-Gm-Message-State: AOAM530FqQbFDWQ6B2ooXJj1BADYYnltAqFDF6EQ/wZrjfFyIzJjLfrI
        F8UVNKOTuIIjSNiqXLXXNoKLQRK3NWaJaA==
X-Google-Smtp-Source: ABdhPJyQBejrUtfBMou721CkSJXiahNuW0v4n8/KQsJCkdRG698ya5i2xxhoOxgneZg2iVdV4jHtoA==
X-Received: by 2002:adf:ed4b:: with SMTP id u11mr26694141wro.293.1620596642864;
        Sun, 09 May 2021 14:44:02 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:02 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] on_exit.3: ffix
Date:   Sun,  9 May 2021 23:39:04 +0200
Message-Id: <20210509213930.94120-10-alx.manpages@gmail.com>
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
 man3/on_exit.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/on_exit.3 b/man3/on_exit.3
index afcd9f9ed..7997b601e 100644
--- a/man3/on_exit.3
+++ b/man3/on_exit.3
@@ -35,7 +35,7 @@ on_exit \- register a function to be called at normal process termination
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "int on_exit(void (*" function ")(int , void *), void *" arg );
+.BI "int on_exit(void (*" function ")(int, void *), void *" arg );
 .fi
 .PP
 .RS -4
-- 
2.31.1

