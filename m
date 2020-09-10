Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 10279265273
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:18:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726286AbgIJVSe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:18:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728071AbgIJVPM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:15:12 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8935CC061573;
        Thu, 10 Sep 2020 14:14:37 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id o5so8702841wrn.13;
        Thu, 10 Sep 2020 14:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TzEm2scSLES6WjsyM6iO//Wl6U7ZWi8QP6rMUqxU0zw=;
        b=USeiSt9vAcfkIWT9ODmSAMpQPtyLMHNWQHaduLG/9afYqf6Knq4YkuBT4Mr37TFUoz
         c/Kcjwq2udc5pXHNQHlKIjeHB/YOxtSE6N82CNVqhlVegtg8jApTy0Uu5rnZ1aeDm3T/
         d2HX/18Wzt+WfKv3edOv/TjuWFGkt7FHpwBpNhm3+qmXrsJJrt1c0p/4B1QoXlpc2XOT
         VnuzXbSL44JrwwiYY0NK1Wv4whvqKtJ/PdmM3CPTHjRufai6adpAmB2wC1gZKEEMzv7o
         ibbWpTelzXyKWsNXrbj6k4f7vWNP6NIcfDY8FzCuC6rLQy/I5ESRiIkDycnIa5os/wlt
         uilQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TzEm2scSLES6WjsyM6iO//Wl6U7ZWi8QP6rMUqxU0zw=;
        b=aNTmlTRFMAcNHxd4XBuYoU4gGjviWAoVHi9IGJ6Uk1On0NDvHxhsX+KtqTytvamPAy
         1gZDfg7twESjuhpNDgpH3Def3xLvoCX/UZ28DuaT1NLNA0OJNgwkuW6nL0UEkA406jzt
         TakJ71C3EanGP3DcDzc04vQk2beQm1/oC6Tq8LuhD6hYArFBnMejVIsg7BH90TTCI2Fy
         30orKmH6iWZsTspPqTJ9Pxppmj+v2k0n9Ug9rUQpKNEXZ1lh7aE9JFBaPVZLTPVxrjDY
         AUFRHVJ9vsxlqZLO1ezyLLZd3bufKzwrZespkxacNkpu2iWJc+rkRgyHxWP9sXKWfNHX
         johQ==
X-Gm-Message-State: AOAM530ezB8wF7co41x63+lPqDTC1YePssjyVlm75AB/AYgl1D/HMD0K
        0sYBfkDuyLNG/TSN5+yghE4=
X-Google-Smtp-Source: ABdhPJwv7cN1eq4601HFYnL0/rT91pwU2DwpXiShKv8XGjktS3Bd6466LCwNF1S+gEgFcmDWI9WrhQ==
X-Received: by 2002:a5d:470e:: with SMTP id y14mr6637853wrq.354.1599772474914;
        Thu, 10 Sep 2020 14:14:34 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:34 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 23/24] select_tut.2: Use MAX(a, b) from <sys/param.h>
Date:   Thu, 10 Sep 2020 23:13:44 +0200
Message-Id: <20200910211344.3562-24-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/select_tut.2 | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/man2/select_tut.2 b/man2/select_tut.2
index f683dd49d..d23683d75 100644
--- a/man2/select_tut.2
+++ b/man2/select_tut.2
@@ -354,6 +354,7 @@ from one TCP port to another.
 #include <stdlib.h>
 #include <stdio.h>
 #include <unistd.h>
+#include <sys/param.h>      /* Definition of MAX(a, b) */
 #include <sys/select.h>
 #include <string.h>
 #include <signal.h>
@@ -364,9 +365,6 @@ from one TCP port to another.
 
 static int forward_port;
 
-#undef max
-#define max(x,y) ((x) > (y) ? (x) : (y))
-
 static int
 listen_socket(int listen_port)
 {
@@ -483,7 +481,7 @@ main(int argc, char *argv[])
         FD_ZERO(&writefds);
         FD_ZERO(&exceptfds);
         FD_SET(h, &readfds);
-        nfds = max(nfds, h);
+        nfds = MAX(nfds, h);
 
         if (fd1 > 0 && buf1_avail < BUF_SIZE)
             FD_SET(fd1, &readfds);
@@ -499,11 +497,11 @@ main(int argc, char *argv[])
 
         if (fd1 > 0) {
             FD_SET(fd1, &exceptfds);
-            nfds = max(nfds, fd1);
+            nfds = MAX(nfds, fd1);
         }
         if (fd2 > 0) {
             FD_SET(fd2, &exceptfds);
-            nfds = max(nfds, fd2);
+            nfds = MAX(nfds, fd2);
         }
 
         ready = select(nfds + 1, &readfds, &writefds, &exceptfds, NULL);
-- 
2.28.0

