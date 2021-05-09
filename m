Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C93537786D
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230047AbhEIUVS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230059AbhEIUVQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:16 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E436C061574
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:09 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id v12so14428477wrq.6
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KMWFAtOrPbtAShTYwwuGzlOQvNzIB0NugSOWoHeugfs=;
        b=GjRXilFxLYD/9ssOda40WDG9wbZs3m6J4mvuxJhKDieRigfWwtzESjPiHp7kxuRYcb
         zbdE3fu9BIF3JDc9yLrE5OKTNgjO7KumB6PP3QejVQKIpwEC4eWTn0Kat1rYoxChfNab
         v4fF9HTwe67Y7v4tT7iWR9D9ox/vtO65/8QFCr5yeb0j2uzBaq7ExzHIuMjQwxVFqhwF
         CjvMcjy+iSoYHfa02nwPcqrdd0pDyZSO6Xgc841Qb5/hwQy89Vj7LQ8n31zYrMKF3oy/
         xfE7Ofb4CrlVVVCwKoGhqLLYUhaHsJlY8Q28Pvkk107Rou+izPmDfiie8ciN1m2htPzu
         d4CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KMWFAtOrPbtAShTYwwuGzlOQvNzIB0NugSOWoHeugfs=;
        b=G49GmfJ1PobNKA0IyL8I17ne2e/nO3L2LhT1/wgXltf20v7ULigE66+teHIlainSdo
         +xqeANe2n+2GWHQgmJCCt0G7x9FfZkZAgcfhrNwG4M7SP9RXLgVTJo7oIa4mle2bQVpB
         I7WSU9fMbW12rxGoA9Mck4LLj2ThPSH8rJ4ZFZ/eKVhqywQuAi+Xr1hwwgrc6ItM/QIO
         boAtusrpdyXvMzPhzVTnd4TPg3oxJVU5il5rEt5V1Jwin9lsHh9bGL/3LasUtDzkxwc0
         ag1qN6bCXrK8+zwp/kcrlI6wYpxuVWjSMI5kAzO42rufVviv2t3fuTu7N6Ry72ahM92r
         jNsQ==
X-Gm-Message-State: AOAM532YcODLI/xlr5xn1JC0CVFWFaSXs3xdpT0whEwh/41zBYHZJs4B
        1mIsCrClgToCMCWSJvdVlIs=
X-Google-Smtp-Source: ABdhPJw24Y56i1S5l7n6dnFeTS+tQVMd2ZLmsiX7mdpjjLlKoYciZ7V1ucv/HcDr92UZsgVUylPpfA==
X-Received: by 2002:adf:8046:: with SMTP id 64mr26051310wrk.176.1620591608307;
        Sun, 09 May 2021 13:20:08 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:08 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 07/17] Changes.old: tfix
Date:   Sun,  9 May 2021 22:19:40 +0200
Message-Id: <20210509201949.90495-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Jakub Wilk <jwilk@jwilk.net>

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 Changes.old | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Changes.old b/Changes.old
index f863583b1..067fce382 100644
--- a/Changes.old
+++ b/Changes.old
@@ -53581,7 +53581,7 @@ Various pages
             Generally, place '||' at start of a line, rather than the end of
             the previous line.
 
-            Rationale: this placement clearly indicates that that each piece
+            Rationale: this placement clearly indicates that each piece
             is an alternative.
 
 Various pages
@@ -54119,7 +54119,7 @@ system.3
 environ.7
     Bastien Roucariès
         Reorder the text
-            Move the the text describing how to set environment variable before
+            Move the text describing how to set environment variable before
             the list(s) of variables in order to improve readability.
     Bastien Roucariès
         Document convention of string in environ
@@ -54152,7 +54152,7 @@ man-pages.7
     Michael Kerrisk
         Add a FORMATTING AND WORDING CONVENTIONS section
             In man-pages-5.11, a large number of pages were edited to achieve
-            greater consistency in the SYNOPIS, RETURN VALUE and ATTRIBUTES
+            greater consistency in the SYNOPSIS, RETURN VALUE and ATTRIBUTES
             sections. To avoid future inconsistencies, try to capture some of
             the preferred conventions in text in man-pages(7).
     Michael Kerrisk
-- 
2.31.1

