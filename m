Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB63F2971D4
	for <lists+linux-man@lfdr.de>; Fri, 23 Oct 2020 16:58:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S465415AbgJWO6n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Oct 2020 10:58:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S465408AbgJWO6n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Oct 2020 10:58:43 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22268C0613CE
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:43 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id n6so2200116wrm.13
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GvNtEr0hfGPwqcb5DRG10TmQezrqwtDlnASbKXbSUZ4=;
        b=GeHJR1FZXqu2sBpCWHoaxChjX8hqBnJfMA8BHdgMu76CsUXWC7Vol0e7BMURI8tydm
         0Edgh87iN6SiyXoLE+GCkz/P2Gn9DEkKmLnAnz8phQpyhqWIG1p5gJ3D8jK3dCIwbfXx
         nhCLJvMzXfR35oX6XJCejzcmSrNFRCw1PPK3UxRdh4bG/5+a8DlURrguRibYHXpH4mUQ
         3/bVX9F4Eo00uXhP3UPMSDsRQMOy3wuGQMBLE6ghvtqPpAyr4AgjOCvD4nJyA3l+B0K6
         LyzKC2vx9YdBPqYNE8CYlzaFUA576PpH4R5Dy5H8VlM/GQsR5Fs4eTjGTrB/hlnrOxaT
         5CnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GvNtEr0hfGPwqcb5DRG10TmQezrqwtDlnASbKXbSUZ4=;
        b=UtBCY3bS7F4MfdHocW9vfVgCvJarmROUxAo0npxbvwI0c1YUx+I1VtJ1q/GKsWQs66
         mPVy9SBgFu+A7GcKT/QZt3ytfxV9ONmE3ECuach2oZ4JCDKnGiSepYa5drOsaRhYM8PZ
         hNsIQt4cyhTUHD9neJ9RYCng2Q4Hb70PWB4i3wDLKb+w1Fn3h6A2W55PjlCootskIBQv
         m2fHasehAyucvtpkvAnIeosL5cwdA2DHVOE+0Sls+JYge/H3AZl7khTcDlh0WkIVwy0h
         CFyns/r4dttY0DWaeuB3WobU0fz4uIBjgOlFoZsnU5swW+Bu4FgiQsVyDeMXOrwH3Sin
         1S6Q==
X-Gm-Message-State: AOAM533z2LVsxh84xNGzAKlSdgS3SRcifbABftGcylBwVpBnBOjjqsgJ
        oP1gw+itHpDiAR+RMHLJbkpg1xphlFc=
X-Google-Smtp-Source: ABdhPJwnKpIheRdFoa2NWX1MQrU4n6jsN9tdUnmaf6XWQpqum8CWpRSC4Lspe74fxXPALn0y9LuMyQ==
X-Received: by 2002:adf:e942:: with SMTP id m2mr2978914wrn.123.1603465121920;
        Fri, 23 Oct 2020 07:58:41 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm3755268wrw.17.2020.10.23.07.58.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 07:58:41 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 10/11] CIRCLEQ_ENTRY.3, CIRCLEQ_HEAD.3, CIRCLEQ_INIT.3, CIRCLEQ_INSERT_AFTER.3, CIRCLEQ_INSERT_BEFORE.3, CIRCLEQ_INSERT_HEAD.3, CIRCLEQ_INSERT_TAIL.3, CIRCLEQ_REMOVE.3: Link to the new circleq(3) page instead of queue(3)
Date:   Fri, 23 Oct 2020 16:57:36 +0200
Message-Id: <20201023145736.102750-11-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023145736.102750-1-colomar.6.4.3@gmail.com>
References: <20201023145736.102750-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/CIRCLEQ_ENTRY.3         | 2 +-
 man3/CIRCLEQ_HEAD.3          | 2 +-
 man3/CIRCLEQ_INIT.3          | 2 +-
 man3/CIRCLEQ_INSERT_AFTER.3  | 2 +-
 man3/CIRCLEQ_INSERT_BEFORE.3 | 2 +-
 man3/CIRCLEQ_INSERT_HEAD.3   | 2 +-
 man3/CIRCLEQ_INSERT_TAIL.3   | 2 +-
 man3/CIRCLEQ_REMOVE.3        | 2 +-
 8 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/man3/CIRCLEQ_ENTRY.3 b/man3/CIRCLEQ_ENTRY.3
index c2956c9fc..ed0fc9a3b 100644
--- a/man3/CIRCLEQ_ENTRY.3
+++ b/man3/CIRCLEQ_ENTRY.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/circleq.3
diff --git a/man3/CIRCLEQ_HEAD.3 b/man3/CIRCLEQ_HEAD.3
index c2956c9fc..ed0fc9a3b 100644
--- a/man3/CIRCLEQ_HEAD.3
+++ b/man3/CIRCLEQ_HEAD.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/circleq.3
diff --git a/man3/CIRCLEQ_INIT.3 b/man3/CIRCLEQ_INIT.3
index c2956c9fc..ed0fc9a3b 100644
--- a/man3/CIRCLEQ_INIT.3
+++ b/man3/CIRCLEQ_INIT.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/circleq.3
diff --git a/man3/CIRCLEQ_INSERT_AFTER.3 b/man3/CIRCLEQ_INSERT_AFTER.3
index c2956c9fc..ed0fc9a3b 100644
--- a/man3/CIRCLEQ_INSERT_AFTER.3
+++ b/man3/CIRCLEQ_INSERT_AFTER.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/circleq.3
diff --git a/man3/CIRCLEQ_INSERT_BEFORE.3 b/man3/CIRCLEQ_INSERT_BEFORE.3
index c2956c9fc..ed0fc9a3b 100644
--- a/man3/CIRCLEQ_INSERT_BEFORE.3
+++ b/man3/CIRCLEQ_INSERT_BEFORE.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/circleq.3
diff --git a/man3/CIRCLEQ_INSERT_HEAD.3 b/man3/CIRCLEQ_INSERT_HEAD.3
index c2956c9fc..ed0fc9a3b 100644
--- a/man3/CIRCLEQ_INSERT_HEAD.3
+++ b/man3/CIRCLEQ_INSERT_HEAD.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/circleq.3
diff --git a/man3/CIRCLEQ_INSERT_TAIL.3 b/man3/CIRCLEQ_INSERT_TAIL.3
index c2956c9fc..ed0fc9a3b 100644
--- a/man3/CIRCLEQ_INSERT_TAIL.3
+++ b/man3/CIRCLEQ_INSERT_TAIL.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/circleq.3
diff --git a/man3/CIRCLEQ_REMOVE.3 b/man3/CIRCLEQ_REMOVE.3
index c2956c9fc..ed0fc9a3b 100644
--- a/man3/CIRCLEQ_REMOVE.3
+++ b/man3/CIRCLEQ_REMOVE.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/circleq.3
-- 
2.28.0

