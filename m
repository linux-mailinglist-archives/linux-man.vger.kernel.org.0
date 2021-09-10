Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D4E8C407388
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:47:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230210AbhIJWsj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:48:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232523AbhIJWsh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:48:37 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A869DC061756
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:25 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id c8-20020a7bc008000000b002e6e462e95fso2481527wmb.2
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=C5pX/G8fgmCqNvpSTXlKu/EF+pA1YOSeN0csOSVZ2o4=;
        b=f2aL6XOqZXUsPNMIgYwkfx+iA0Su6VORnpvInrzJX6EEs6mg9JexVH+Afl5w/lUPrx
         QNK3GOPk7zxbfvjLTunyUDzyOPCJyXtPj/iZAtioOmDFqCjYl67XVNY1c2jO0eSkPEbV
         SwjqUOvf6SgZN/8vx4ePPAjJdyjN0vSKewTlM+auKZUYFNN5C+wMOf/ensfxUW0UffAR
         CT2DxvYS5seeugx2qog0YwOiMF1+cSlVSrfFa2Nagt8VnhhsYKbxD1xDZXTGc/OUxIpM
         pZ+b36+31424MgE1KDI0gtiRUvvuOLa3l3KcWpXt4z+kixzKKCJCNv3pvhJgZ5dIj4ER
         eFrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=C5pX/G8fgmCqNvpSTXlKu/EF+pA1YOSeN0csOSVZ2o4=;
        b=abTbu6BNs/oVxj8Q3F6/nmMMYVXNpAks4Ts/ycVJceV4J05bT0FliixFM4Df1Aw3Lo
         Kzd0YnVdmIvNxRbxUKR1D2EtWmDWXzYQLgERek9k6uLOw3zaJJzW9siDdQjdwue9tl78
         2ThN7c7fJYPvFfDluzgzsa+z27W6Xg1mHJmi+qLaIqOChO3BYQtDyBo/lCZh6T0ZYoni
         clDWxLbI2QySvNwJeJ++S3zkYEStQWegDzQZ8ADsqyB2tg17Z4HZHBUJWOqsefQwnfih
         yiAoF2GJWKGqNQDFvoTxe9j6YBWBBN7cgHfAfcqb1htIVbmI3PtGc0DpmjVGVKR3/QF9
         o3ZA==
X-Gm-Message-State: AOAM530MurRl9zOQg2UyMF9fM3VlM0e/ZF2ErJu++3QNXuNEeKBv+xNe
        WG70/hbcpSD5Kg6+PDA0nQw=
X-Google-Smtp-Source: ABdhPJzYQXSnxHIcPtqnryhxvC2o4O2ZxpwBSbJmay4jpORQlEM3ZabpnDqD9CZp/LWm4svJuQ8ewA==
X-Received: by 2002:a1c:f713:: with SMTP id v19mr24872wmh.188.1631314044311;
        Fri, 10 Sep 2021 15:47:24 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k18sm15520wmi.25.2021.09.10.15.47.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 15:47:24 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
Subject: [PATCH 05/15] ioctl_tty.2: Minor tweaks to Pali's patch
Date:   Sat, 11 Sep 2021 00:47:06 +0200
Message-Id: <20210910224717.499502-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910224717.499502-1-alx.manpages@gmail.com>
References: <20210910224717.499502-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Cc: Pali Rohár <pali@kernel.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioctl_tty.2 | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index fd1f3dc25..d0a10a508 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -772,17 +772,17 @@ Get or set arbitrary baudrate on the serial port.
 int
 main(int argc, char *argv[])
 {
-#ifndef BOTHER
+#if !defined BOTHER
     fprintf(stderr, "BOTHER is unsupported\en");
     /* Program may fallback to TCGETS/TCSETS with Bnnn constants */
     exit(EXIT_FAILURE);
 #else
     /* Declare tio structure, its type depends on supported ioctl */
-#ifdef TCGETS2
+# if defined TCGETS2
     struct termios2 tio;
-#else
+# else
     struct termios tio;
-#endif
+# endif
     int fd, rc;
 
     if (argc != 2 && argc != 3 && argc != 4) {
@@ -797,11 +797,11 @@ main(int argc, char *argv[])
     }
 
     /* Get the current serial port settings via supported ioctl */
-#ifdef TCGETS2
+# if defined TCGETS2
     rc = ioctl(fd, TCGETS2, &tio);
-#else
+# else
     rc = ioctl(fd, TCGETS, &tio);
-#endif
+# endif
     if (rc) {
         perror("TCGETS");
         close(fd);
@@ -822,11 +822,11 @@ main(int argc, char *argv[])
         tio.c_ispeed = (argc == 4) ? atoi(argv[3]) : atoi(argv[2]);
 
         /* Set new serial port settings via supported ioctl */
-#ifdef TCSETS2
+# if defined TCSETS2
         rc = ioctl(fd, TCSETS2, &tio);
-#else
+# else
         rc = ioctl(fd, TCSETS, &tio);
-#endif
+# endif
         if (rc) {
             perror("TCSETS");
             close(fd);
@@ -834,11 +834,11 @@ main(int argc, char *argv[])
         }
 
         /* And get new values which were really configured */
-#ifdef TCGETS2
+# if defined TCGETS2
         rc = ioctl(fd, TCGETS2, &tio);
-#else
+# else
         rc = ioctl(fd, TCGETS, &tio);
-#endif
+# endif
         if (rc) {
             perror("TCGETS");
             close(fd);
-- 
2.33.0

