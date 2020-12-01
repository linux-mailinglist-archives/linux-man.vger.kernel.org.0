Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C04142CA604
	for <lists+linux-man@lfdr.de>; Tue,  1 Dec 2020 15:47:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389543AbgLAOoW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Dec 2020 09:44:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391447AbgLAOoS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Dec 2020 09:44:18 -0500
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A787C0613CF
        for <linux-man@vger.kernel.org>; Tue,  1 Dec 2020 06:43:38 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id 3so5555501wmg.4
        for <linux-man@vger.kernel.org>; Tue, 01 Dec 2020 06:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ctybn8UhvPJG+NuJtvPQ8hHbZKdr1B33Q4O05AikB4A=;
        b=catH6g9PIHPx+ElZP9+ygkCRMJluX6lmqUnTbXKMWNU8PXME5em6GHbUrUCgQk+Wx8
         pDdPgtT0kpQKh/hA4tIHktbLBetvc7h4fDUoU1Siawd/s3FF2uYaULICHDqPvTsWQQ1X
         i95aL6XTVHJu7XhRjbDu2bbEOTaUKpRW6hAtcq7PzuLqA+hD2qCUUcv1dLYMGi1GNXzD
         PuFr44NTC4XKwkQ9JOIl9OHeKx2e8RMAieCUwaPgpI257A7KNQSxk6aFd21U4kqy8j9M
         l9p3o4s7sS5QyyXitqH3XF0U0cvq395LwxaQbKvRWFhSjhVQ5nXU2CeLwNqgKUB8CzfF
         cDFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ctybn8UhvPJG+NuJtvPQ8hHbZKdr1B33Q4O05AikB4A=;
        b=HSSFa1SPfw+gLIpop4IGSFTAKuUGNIZhGi8y4+GuTkvgFs7d4h/6XLrCUZt6sNGR5d
         syNiJIuS1Koy+n2qCkCTLQ018omAjKL3eW+dMRB5uGE2TAL8+y8buqlRd/6alADoAXTq
         4lRhwPqzkYib8qe14SiBS1dlwW8h41+1CmnEGcllfvJpE5PYQkPe9mABBxrqsNeU15S7
         unlpKWs8FWDPr4ynQMM65vYpZs/tw36aNerK1BVKUV/jWhgsMMivg5z8Zv3IXxyjbCSG
         HhGC0GGYuRiyUxQNDNg7cM5J329E35zui4Q4xB8TQnO/gj8sXC8KEtjuEnZyqqTyvoNV
         RVPg==
X-Gm-Message-State: AOAM533JA8ADNCAvtDP5acDc856chheCnaKWSMpxVsZJbeignqxt2PQP
        5J1AWTGgjc6oqi/QTeBJN2U=
X-Google-Smtp-Source: ABdhPJwZ+/HvZflCXNkUFsEJH0sCOwEQzXzQw6P66HP+92jr4TRutZDhPtcORie57Ll5AIilSwaN6Q==
X-Received: by 2002:a7b:c7d8:: with SMTP id z24mr3004400wmk.1.1606833817268;
        Tue, 01 Dec 2020 06:43:37 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id v125sm60003wme.42.2020.12.01.06.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Dec 2020 06:43:36 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Arusekk <arek_koz@o2.pl>, linux-man@vger.kernel.org,
        Eugene Syromyatnikov <evgsyr@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] keyctl.2: tfix
Date:   Tue,  1 Dec 2020 15:40:26 +0100
Message-Id: <20201201144024.7556-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Arusekk <arek_koz@o2.pl>

Fixes: fa76da808eff

Signed-off-by: Arusekk <arek_koz@o2.pl>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/keyctl.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/keyctl.2 b/man2/keyctl.2
index 8930fb78b..4fa54bc14 100644
--- a/man2/keyctl.2
+++ b/man2/keyctl.2
@@ -33,7 +33,7 @@ keyctl \- manipulate the kernel's key management facility
 .B #include <sys/types.h>
 .B #include <keyutils.h>
 .PP
-.BI "long keyctl(int " operation ", ...)"
+.BI "long keyctl(int " operation ", ...);"
 
 .B "/* For direct call via syscall(2): */"
 .B #include <asm/unistd.h>
-- 
2.29.2

