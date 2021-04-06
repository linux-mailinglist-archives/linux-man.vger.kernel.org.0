Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 836BF3551BD
	for <lists+linux-man@lfdr.de>; Tue,  6 Apr 2021 13:16:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238483AbhDFLQs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Apr 2021 07:16:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241474AbhDFLQr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Apr 2021 07:16:47 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DE35C06174A
        for <linux-man@vger.kernel.org>; Tue,  6 Apr 2021 04:16:37 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id e18so13785784wrt.6
        for <linux-man@vger.kernel.org>; Tue, 06 Apr 2021 04:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iw8n/FSk3Jc9bFPImzhTzY6c4YmUEz17qiWTFHWVb9A=;
        b=PMwn6gAtd6q0B/W30Th52VEOwplVC88iS8bjZQ185oyfOaT0tR/JpcnAjMwDTLkmrn
         xrbuUecSMyvMiCm0SvKFodQK4F4YYgWo8tzJLSwsUgMo6q+yNDV0NashfBLiaMQP2Vj+
         N04VHmV9NnXY+s9nB1ekeC6DoZs9TYyJ6j4Zwb4IhTqrp3YNMNZLmoJDzig3YyDSB4Lm
         DpVe2duWaCvm60iDRiYjo6FzXQ3J6Awbz3CenyReXbpw+xEVUlPn/agv2kQwQ7DbOLjL
         xBU43966plu8g59tR8OUEEfJ+8nyefkt6RY1NNCBLo7IWT63WRbnIZcAXxcr2H8Z5xnJ
         iEJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iw8n/FSk3Jc9bFPImzhTzY6c4YmUEz17qiWTFHWVb9A=;
        b=cvmCpR3hIcqawBE7t9OzYmO0+mABs+zIhZq/eT41rzhWoeIQlr2Tv0gD3h6ROGqpJA
         QTIBDDhZTJOsulGO/qXzDrIZSiPtXrkiWRmmA0wne0EpOUNIdatBxyKDLtxSg73tp9uT
         oMQ7x8sJw6A56PY/dns5ZZ1fsLSuGlQsveVYr5W9uArTkyj1kDCxaIQE8z3vAMTPNpT2
         eOG0oO22s4MUKtxU6tPoEjgva25TJdz5Nna9z8hvfRot0T3jNP9bFNN6+ny3e+PTW7A6
         zxBEWSJMFbF2LLY4phzw8vKmNd+jL8mlaGIWLPSeeGSG+po0jYmREUwvxB6lbxkh4qPD
         vexA==
X-Gm-Message-State: AOAM533/dg36uzPtyQ4FkuUG+sQA/4NXpjTOzfkrCXTnRR15g+ZeY82Q
        OyAwrDleX25vkRYqjmeY7dw=
X-Google-Smtp-Source: ABdhPJwIKIeCJpxIYW19bnU4dXnYyz/FFBJmciwIy3ud7HVxikOwoi+D680HiZq8iGiKORgyILYidg==
X-Received: by 2002:a05:6000:544:: with SMTP id b4mr5560729wrf.352.1617707796217;
        Tue, 06 Apr 2021 04:16:36 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id r11sm16552920wrp.70.2021.04.06.04.16.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 04:16:35 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
        Debian man-pages <manpages@packages.debian.org>,
        "Dr . Tobias Quathamer" <toddy@debian.org>
Subject: [PATCH v4 2/3] Makefile: Fix bug when running in parallel
Date:   Tue,  6 Apr 2021 13:14:52 +0200
Message-Id: <20210406111448.20392-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210328190601.68165-1-alx.manpages@gmail.com>
References: <20210328190601.68165-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Prerequisites can run in parallel.  This wouldn't make any sense
when uninstalling and installing again.

For that, use consecutive commands, which run one after the other
even with multiple cores.

Cc: Debian man-pages <manpages@packages.debian.org>
Cc: Dr. Tobias Quathamer <toddy@debian.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 Makefile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 430090801..fdfaf9645 100644
--- a/Makefile
+++ b/Makefile
@@ -20,7 +20,9 @@ INSTALL_DATA = $(INSTALL) -m 644
 INSTALL_DIR = $(INSTALL) -m 755 -d
 
 .PHONY: all
-all: remove install
+all:
+	$(MAKE) uninstall;
+	$(MAKE) install;
 
 # Use with
 #  make HTOPTS=whatever html
-- 
2.31.0

