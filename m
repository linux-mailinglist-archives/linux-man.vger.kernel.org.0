Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C4DE3D9691
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231521AbhG1UUf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231158AbhG1UUe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:34 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04734C061765
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:32 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id h14so3991401wrx.10
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RAlEimxfYtRVWsnVJqLiLZmlvAM80yuURaf0c209pgE=;
        b=j9dG7E+htRMho9nShjRQwAlm+RvSp4SBJvNlfAZ9swr28+o0WP82KhkBIeePGCEQ8u
         5rc+X5vVMEnL1WqJ3ghg2MYj+PZiOdEIG4Ut9J7KDx42I3lZq++G1L1gDpP8+sjV65Dd
         n6t4jhxcWEzRph9UzonCcaDBpI4g2O34XQ5tDPvGlQGGpckK4+5fNOXWtH0X1gKcWOG2
         tTRbV0IeRx/z8vnklv2ypmiuldHn3cQcRxv2RygZ5UnTD9HBIBLj3mw6rP9KkJ0YIkt2
         pYEHhSgFlovyu1g2XZQct2xu9RH6FxT9LRcDcs0JEi5zqElc7JK8c9HINI76yf/VJleI
         VrnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RAlEimxfYtRVWsnVJqLiLZmlvAM80yuURaf0c209pgE=;
        b=QMsgn3OVsANIs3B+GFACUqKTU5xr0f+zgTUyJ+mT9vaaupyW9g0UayP/edFzHmb3dq
         ff7hKdQDkImQxvnJyn/JqbbmCCeTbICNi4Gl7GHSogwj13NG5L/E5OTYyv35nklPdRFG
         eE//K7WV5u7GlW/i8WE86Vgap1XQIlTElgbXDesSAVy1CARN7F+m9lsfo22iN9kK39wV
         jwmQaXZySTlLkafr0UIaVrx9OQDGX4FDDnnUQU1Q85cdf/aGl6c/h8SUWZ3NkDKyzHZF
         QWa5LrEPGQRK3c34IodgGRUehJ8PoDtYnAfJhyneaaSIkXHTQDJ9yhLOeC+5/DO3AQuG
         jMKw==
X-Gm-Message-State: AOAM530ZnEAC4T+z3H16r63dBUP9tY9BeiMV1NXR2OuzRzJkU00atxKb
        MXo35v/p8Q477E6u+1wh7h0VBo7BMzg=
X-Google-Smtp-Source: ABdhPJxHt0EtHHcOndo8bNhsCqVLKCHsL5OsOzgkRs6IdWtU4Qv9XVWOiU7TwO//6+9kc984g2pAtA==
X-Received: by 2002:adf:ef4b:: with SMTP id c11mr1073527wrp.35.1627503630692;
        Wed, 28 Jul 2021 13:20:30 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:30 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     kXuan <kxuanobj@gmail.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 18/32] recv.2: tfix
Date:   Wed, 28 Jul 2021 22:19:54 +0200
Message-Id: <20210728202008.3158-19-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: kXuan <kxuanobj@gmail.com>

The recv.2 misspelled `SO_EE_OFFENDER` to `SOCK_EE_OFFENDER`.

This patch fix this typo.

Signed-off-by: kXuan <kxuanobj@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/recv.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/recv.2 b/man2/recv.2
index 2659957a6..884c86355 100644
--- a/man2/recv.2
+++ b/man2/recv.2
@@ -196,7 +196,7 @@ number of the queued error.
 is the origin code of where the error originated.
 The other fields are protocol-specific.
 The macro
-.B SOCK_EE_OFFENDER
+.B SO_EE_OFFENDER
 returns a pointer to the address of the network object
 where the error originated from given a pointer to the ancillary message.
 If this address is not known, the
-- 
2.32.0

