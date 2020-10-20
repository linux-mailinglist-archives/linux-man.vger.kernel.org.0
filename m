Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3C32294496
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 23:32:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2409947AbgJTVcB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 17:32:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2409944AbgJTVcA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 17:32:00 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8551FC0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:32:00 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id j7so4454152wrt.9
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nzKSSoJZKqHUBfJ6ZLDZnMwADX64oPb1gvyEPaS2uOs=;
        b=WCgUZBJRJrQY15RdhxX5AORBFtzCXQ4areVesK6XWQ6ZF7WPsT0NyiSmAbiz2BhE8H
         d8YSrKhTNdzZH9geREQDYpJweJTEd1nO0Rhjz1Vrmq1iCR4UVoK+kT8yzMuRxkxP1Gm4
         HoydhPaD/nHIVVGZn3UiRMs7DxzyqojqB6PaWWd+/d7maW89MK9uFoaB12DDmBz9yrIz
         6MLUgU7u1GWNfX7x4AyIEpwXCVscGRUCu3W7PV+69cBWvaOpDQU5mDBDvQPCLziPoFA/
         noUZFwHiBojvG7zhZwTRFXDJ7HuH8uhaQjOqhPvNeOwbT2r4ZfWEPt6o5v4xJE7dYdUj
         1Rdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nzKSSoJZKqHUBfJ6ZLDZnMwADX64oPb1gvyEPaS2uOs=;
        b=gCgIAKCO+yXpqMpVx4GxtkFLZEukBprNKdgr3rAWoR3jFa7MQ5qz4++sSg80lSuDrN
         Xvd7wNJYI5x5u7yoEouCdxdxHlHQZ1farekakMeYtP3eZsMtXOPBJzmnD17n59tb9bwV
         6iJ1n1bbV7VEUa0UocXCzGWC7G52I3Pf1OgTTBRCYYo8WNeo1FKwk37MXsyW0bYopTlo
         C6qcUYS4riuUKyvUwZE3ed/iujvtOXz8Yt9NXzqGxR8vTpqksy4ujIszQWUN7OQku41N
         O6r6p3VIQHCoGcsT/QchmnQ+mrVfvLJjmoUIv0AV02drLDx/XN/XVoat4/2LQDcPdO2E
         XbTw==
X-Gm-Message-State: AOAM530tp+UPcZWEYGPTpIqM0PViOBE6MTWXYY76hCCzKL2DnWq8qx2M
        jicuiubfufxxWqXhy1KPtsg=
X-Google-Smtp-Source: ABdhPJyqjEjfa/drJPb7GU6gn6BhTl2I3et05WHVpxW05hr2NBpR5M4yO49Lbx5P+82nLc2ctIdC0Q==
X-Received: by 2002:a5d:4d8a:: with SMTP id b10mr386082wru.5.1603229519349;
        Tue, 20 Oct 2020 14:31:59 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y4sm35387wrp.74.2020.10.20.14.31.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 14:31:58 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Hans Petter Selasky <hps@selasky.org>
Subject: [PATCH v2 10/10] queue.3: SEE ALSO: Add list(3)
Date:   Tue, 20 Oct 2020 23:31:08 +0200
Message-Id: <20201020213107.83837-11-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man3/queue.3 b/man3/queue.3
index 0f55a899e..90fd3db0e 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -1275,4 +1275,5 @@ functions first appeared in
 .Bx 4.4 .
 .Sh SEE ALSO
 .Xr insque 3
+.Xr list 3
 .\" .Xr tree 3
-- 
2.28.0

