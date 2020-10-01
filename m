Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8894C280160
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 16:35:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732299AbgJAOf5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 10:35:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726412AbgJAOf5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 10:35:57 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B53C2C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 07:35:56 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id k18so3362223wmj.5
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 07:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=btnmodXbjUP2U13z8cU7mIXNODGWQ7RLOqleIhkibo8=;
        b=PpK9MrEewOVWy9b7baAy2pSenGTFjTvbw3lWfcmh0XeHvj4CEdMWxuYDALyp3lLIV1
         +6RgTxRdeZEe31Houi/v2I3zmF3IvWT0C0M/Ps3SVLr8txIAveoNuRxcJChOT5sD4IXC
         RdtfOHSFxK6uVS+EmpOkGyh3W8xpiVlfRRiDxkIvmUE0JrLTRrA6M+j536fMqlE4GH/f
         QLnRySA394cbC0YBWmkxk5Mgcx7+nP65QGYFEGj9C8WUEc9TfQRp/IixnHQNRaGIA46D
         DmlS66rapfK9NJnY9DsUX14IA4JR4QU/PgsfSkZcONYjFpMFxSrmVLKVggP8q/IJHj1P
         SEwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=btnmodXbjUP2U13z8cU7mIXNODGWQ7RLOqleIhkibo8=;
        b=AcRaX/o5H58Z6HQP7JcOU+ibSyQvRbBjX2PKhFwG71uLbbANpKmECqb3jnAsjiL6zO
         OYqQHfwjwC9jtIvdABpfi9uhjSx9GWZ1SinpQ4z3cWUNKggqYVPMUCyWSCC2kxgc0n9N
         /1cWon7tJDwqJ6/SA1TidaTqS4/DEHOjXDTCy41Q1PwUjIha57cD4gVTyXx4Gy/7Gfd2
         9yn9Dwvxi8gmXZHxbyt/vTXR0bbi2+X0xb0tnx3g7bKgf9yN+7P8cvuXXDGOUnUMtQid
         2/5DNDtbGNpAs6op0GseWqDWqBwaEzQ7RV9tP7JWFZiwQv5UZZgZSQp6z5V2X8l1HyvS
         QK+A==
X-Gm-Message-State: AOAM530ml376jVk7A2FWi2DM1ueh8VVNWnTI6JdqPlVNzBhy2/18i6K5
        jLB1P9Wyoh8+rqrLBxi4q8S+U8TYkSjR/A==
X-Google-Smtp-Source: ABdhPJx1nhVtPXNVgzUlT3jL9JzOnvNZ38YEjpDHuu3OnAq0QCJZAs3r0RyCdtnoSmghVhyN/0GeHw==
X-Received: by 2002:a1c:5583:: with SMTP id j125mr297835wmb.75.1601562955441;
        Thu, 01 Oct 2020 07:35:55 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id p9sm209976wmg.34.2020.10.01.07.35.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 07:35:54 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 2/4] int_least8_t.3, int_least16_t.3, int_least32_t.3, int_least64_t.3, int_leastN_t.3: New links to system_data_types(7)
Date:   Thu,  1 Oct 2020 16:35:34 +0200
Message-Id: <20201001143535.98990-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001143535.98990-1-colomar.6.4.3@gmail.com>
References: <20201001143535.98990-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/int_least16_t.3 | 1 +
 man3/int_least32_t.3 | 1 +
 man3/int_least64_t.3 | 1 +
 man3/int_least8_t.3  | 1 +
 man3/int_leastN_t.3  | 1 +
 5 files changed, 5 insertions(+)
 create mode 100644 man3/int_least16_t.3
 create mode 100644 man3/int_least32_t.3
 create mode 100644 man3/int_least64_t.3
 create mode 100644 man3/int_least8_t.3
 create mode 100644 man3/int_leastN_t.3

diff --git a/man3/int_least16_t.3 b/man3/int_least16_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/int_least16_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/int_least32_t.3 b/man3/int_least32_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/int_least32_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/int_least64_t.3 b/man3/int_least64_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/int_least64_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/int_least8_t.3 b/man3/int_least8_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/int_least8_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/int_leastN_t.3 b/man3/int_leastN_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/int_leastN_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

