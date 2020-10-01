Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7B7827FD17
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:16:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731908AbgJAKQl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:16:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731704AbgJAKQl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:16:41 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF320C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:16:40 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id j136so1115488wmj.2
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=btnmodXbjUP2U13z8cU7mIXNODGWQ7RLOqleIhkibo8=;
        b=kvBAoG7bFusAwYdYAHL1bStGUNFJdeD32n636+ZYNRH5Jo2h9NJ4bKpsRrGmfUEg/4
         e49AsQOZm68lb/XEFttW+9UgLhQo9zJNmT7ODVKBEnek4sEwTbv4wX/NHBinJO2LRwtK
         C1JnFLfoaICvLopOJ7OLWh5mJLTID44kmWB5ZueTWnHppXTjp+Jmf6/NJ1CqdmIXv3hm
         oOiFFw3lIYxCPrlWpBJWnLE5ntuGUQyel363dlVQc4EHa3bYjmNogBsbweylEBIwcjR8
         droLdfVeGO/ukqRiz0TR5UEpLCL4GW7b2jI6MFjhOIyVWDyX2kXIUA7RCPm8jw0im6cA
         sBmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=btnmodXbjUP2U13z8cU7mIXNODGWQ7RLOqleIhkibo8=;
        b=QhEx5qOZSbNqK033QLicuTfyEsHaURy+Ak2AYvBobD31qAxLZ/tphj2hWNwJ+rIsMF
         Nu3HjXsbAQDM+jNe3jaAnYa951NuRdorehCj2jO6CmcnuXUntf2K8zXi6CiiVXqscIJd
         uSxs/2v2g6OzdtMgF4uRMiKNZCZRINNyRRymzbxomFhnHpUReJmyvwnEfQcWMMkiQQ59
         ZL+sXiC2XaDaOTTi1jtVpTK/tzBSjOSnx6QDQiXkN7v/KeefiU7Pe76iN+5Xb7J//zDt
         5ZZc0ollcIrVQxmT+fb2KiDdaUHaFhB1cx08MAqZ9WdoVyqUjM2hDb0gEx3weyriN8TV
         8/IQ==
X-Gm-Message-State: AOAM531+2CQuGZvW+DW08ntTKcfYpp6zi1fuR7JqOv52lxiUCFAINrSv
        fB1qC2L5QZ9nkU7/EYOuUUw=
X-Google-Smtp-Source: ABdhPJyQOeE95ADp4/BU1jLdJ75VHlo0iWsPsJSvCy0tZ8Ke5c1WYzk6DDHxNvJJ9/AudP0qIlDdqg==
X-Received: by 2002:a05:600c:24d:: with SMTP id 13mr7822924wmj.86.1601547399494;
        Thu, 01 Oct 2020 03:16:39 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i15sm8671922wrb.91.2020.10.01.03.16.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:16:38 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     colomar.6.4.3@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: [PATCH 10/16] int_least8_t.3, int_least16_t.3, int_least32_t.3, int_least64_t.3, int_leastN_t.3: New links to system_data_types(7)
Date:   Thu,  1 Oct 2020 12:15:54 +0200
Message-Id: <20201001101559.77163-11-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
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

