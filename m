Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B58926057E
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 22:19:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729231AbgIGUTZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 16:19:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728834AbgIGUTZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 16:19:25 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACC91C061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 13:19:24 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id c18so16869418wrm.9
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 13:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lxXpwFG2Cp66O+C8DDHTRFhKWm1fpQJJQmeaXU7PPiY=;
        b=OKaxCDSsDS1ih8d3hA78aAKFBCI0M3lgWvm3k7RvTMChS3lQ34whp4kTyZ4Irw0qTD
         4+oyVsE4MbXbl68fV3RHKVrMcGvtwANjm5akMqHTSHqFkQNT00yl3ETXXI4NvbWmYq7e
         vYBTc5RxOTcrNtQ+sQbBmMuBnyjH0eRWiqcj9dwRLE29BhuI5wFXIcvaZ4rZvmVdmFeo
         Qy1+DYHavBwdY8m1HMztEjIFGxnUk2AJ1Yh7mpNoWnKZT9wKvDQy0QFR7rgr76+VN55r
         nXgObPXy8ttwLL2FH09Zyy0GfYyZjra/PpxezVxLlGcZFK83TyCYfxJtOnTj+dsVn448
         1h0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lxXpwFG2Cp66O+C8DDHTRFhKWm1fpQJJQmeaXU7PPiY=;
        b=PLQ5ANhV9hyTIfZS2gS5DE8cCr6uRP5MJhR4fIiUG8feuGk/EuTJB+BMgLH1F70m5y
         KLE0Kf4Q2eRWAivVdmrH6XuaBBvZ09Aa1Osi+NB4hlpMS3zSlNwLaVWL6uuc7iPF+7PD
         UAUp778hc/da3CxmDlb9aJ8ZPstg31JIsg1eBOgZaeHDt6DDUjWeqPdtknNuLgmLEEqz
         9llQTxTYHrpBxK4Ox3vRvfY1j63iOK70UQZXH1VzzClcYcXDph+A9ma+Ml1HWQkJoiIU
         N+QCYP9+aFUYybEZCzsIFaaxP98e393OqEPobKWZa2p9VwOOy80FJpe+azcoSPR6Hgag
         ipdg==
X-Gm-Message-State: AOAM530GeIsSoXMM5Jy9OERIsrD4+eGaSDLnqfE85mcQaQmnSOXiPgn+
        OSAMVdeNM3x9yXW6kKgdq1Y=
X-Google-Smtp-Source: ABdhPJztwFfbCeHIuuAyT/rHjwYeycGTEdo7vt1BqXgMsl21bsVc3WTGVV2Gxht+yZHMtZ5lWhHdFQ==
X-Received: by 2002:a5d:43cf:: with SMTP id v15mr23681794wrr.269.1599509963367;
        Mon, 07 Sep 2020 13:19:23 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id p9sm27686563wma.42.2020.09.07.13.19.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:19:22 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH] pthread_getattr_np.3: Use "%zu" and "%zx" when printing 'size_t' values
Date:   Mon,  7 Sep 2020 22:17:36 +0200
Message-Id: <20200907201735.3221-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/pthread_getattr_np.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/pthread_getattr_np.3 b/man3/pthread_getattr_np.3
index 863a44819..2989381e8 100644
--- a/man3/pthread_getattr_np.3
+++ b/man3/pthread_getattr_np.3
@@ -213,7 +213,7 @@ display_stack_related_attributes(pthread_attr_t *attr, char *prefix)
     s = pthread_attr_getguardsize(attr, &guard_size);
     if (s != 0)
         handle_error_en(s, "pthread_attr_getguardsize");
-    printf("%sGuard size          = %d bytes\en", prefix, guard_size);
+    printf("%sGuard size          = %zu bytes\en", prefix, guard_size);
 
     s = pthread_attr_getstack(attr, &stack_addr, &stack_size);
     if (s != 0)
@@ -222,7 +222,7 @@ display_stack_related_attributes(pthread_attr_t *attr, char *prefix)
     if (stack_size > 0)
         printf(" (EOS = %p)", (char *) stack_addr + stack_size);
     printf("\en");
-    printf("%sStack size          = 0x%x (%d) bytes\en",
+    printf("%sStack size          = 0x%zx (%zu) bytes\en",
             prefix, stack_size, stack_size);
 }
 
-- 
2.28.0

