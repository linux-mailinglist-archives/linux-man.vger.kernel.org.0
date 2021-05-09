Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07EA8377874
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230059AbhEIUVV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230073AbhEIUVT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:19 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6CD3C061574
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:14 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id b19-20020a05600c06d3b029014258a636e8so7695314wmn.2
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=e3fgkoEzDei41qA65CkkokkHF6maC3GS4qmQ9DCiM/E=;
        b=jgXVL7GI4MdXIS97hsnGHzXYA1jeyF2OQpZ2TsTb+o9nZ72LLUtimPj6eSMS/ADdod
         hz7Lleh6Vd+a0Pfcos/NdPhhRFr9EtYZqH+HsTrwgpYiv14XIuXSvOS7Bt91wk0g8b21
         BLEsi8KY5FLBB/qSY6LiMW4sXkoNT9W7fEMw7Y29tyTiSZ0zrjUC4PgksVXrCm+mS10p
         M+enW98BdZAbo+NKtrPhmsZRFHkC3KE90R2CHYOuu7SH+AKf7rETDzUZHRdzvqyreiXz
         jXn86gc35xZs3iF8qSFLcYeJoLr6CBOxPSNkZk8/loiWR0wzxbnZyctJ274RcSY7byGv
         kaOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=e3fgkoEzDei41qA65CkkokkHF6maC3GS4qmQ9DCiM/E=;
        b=d76DASa7OCVcDJBrB3mbfBRpOiIaAjTMyKKwzMP9f6SWz38V1bX6e4vY4f468GI9PB
         WLJKOMA5ZwonS9Ac8MCawa8QkXdbqucZ7LJdgitWyxpcU7M5ECzcoJ44CMOWk1KEuf2v
         JwjN154LcU0Uz0wymFLirxiuqcCsmLbqL+VkqgB9FYoynqdaBwRoSfDLaxYrliTaa/91
         WRN8MuOg8JHkLQ7eWNSKY2Du0XT87FmIcVZbllIyRuS0x0TDnL9IdDAxdlRXo8swMPAJ
         Oxkify8R6x8vLCtqbWPUmf1okN2DQp24cGHC7G6PU4jIpayOoQ/RrBM5FqugCckplSge
         WJDQ==
X-Gm-Message-State: AOAM531VIMbvBJZ+Ku+iny1orYdcMIBSQuW4Gml6J+6QOpj9PU+9IA94
        2EPquaSRoa9NxjMxBJxMgRM=
X-Google-Smtp-Source: ABdhPJzS5cCo1mmx3Hv55UQK16nqTSgMv/K3LVj5k/XFylbcjviciZxkHsGRZqvRukK0if80++tMMw==
X-Received: by 2002:a1c:6754:: with SMTP id b81mr22314233wmc.16.1620591613595;
        Sun, 09 May 2021 13:20:13 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:13 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Akihiro Motoki <amotoki@gmail.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 14/17] move_pages.2: ffix
Date:   Sun,  9 May 2021 22:19:47 +0200
Message-Id: <20210509201949.90495-15-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Akihiro Motoki <amotoki@gmail.com>

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/move_pages.2 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man2/move_pages.2 b/man2/move_pages.2
index 69c182f95..f229df177 100644
--- a/man2/move_pages.2
+++ b/man2/move_pages.2
@@ -180,6 +180,7 @@ The number of nonmigrated pages if they were the result of nonfatal
 reasons (since
 .\" commit a49bd4d7163707de377aee062f17befef6da891b
 Linux 4.17).
+.TP
 .B E2BIG
 Too many pages to move.
 Since Linux 2.6.29,
-- 
2.31.1

