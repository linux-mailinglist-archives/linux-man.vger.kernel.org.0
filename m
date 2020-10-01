Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9449327FD19
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:16:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731915AbgJAKQn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:16:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731704AbgJAKQn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:16:43 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF2FBC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:16:42 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id e16so5014009wrm.2
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qDmg2z60k+vcqpl/kiEg56IWCOyf3Ailc29MRo5mb6Y=;
        b=IOjqkU9ZK8BFaqExlBmNFdtcYJ4wV3/Bzvvx9ThLi/T40F65pALSc8r+iuJwVfDKig
         tUSCv3+AKO5Wp9tj626dcgYB84235MZH9reW2dntbCb4R8VuUXqAyLbCdA+jw3FHArOE
         QhNJ5uoVGl5cBomDm/J80MsNQI7h/8n85S09Z7qWUbjF7XheiOyufJjI0r/zT8GDTGB2
         ffD+z6Stp7ALuW8z73ehXc4KUcI3a+x4q1Z2dkaumbBgnfTeYNG39OLLAPmx7KsBfbSr
         Ab1Qkxc2m+ggQZQk46Wj9dVsNdBLsxlEes+QD6RoittAyao67pfuLthd0q6U220/PGiE
         E31g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qDmg2z60k+vcqpl/kiEg56IWCOyf3Ailc29MRo5mb6Y=;
        b=NovPvMkR4EqV3mfZCxYyhTMLWWXA8SRj99bI+V4aXgtW2N5X0xLwdqbcHfcUhy19sh
         p1LvilICylAf3yuUC04iytMH6VwQBM+JfUJ5qqntsHurmQe8cy5k6K7llu95PAKUK+KY
         XhbiE6sQ0B4nxXqvlfRu24IiMPUXv4aJSAnLpWNhS3Erb2162R32ZtnKF3moGn+AbZqE
         JeBcdxfLgVqgjsURx4QkoFAhvZPeFXm3Rr3yX00LWHVctsy3pNQL/8ixAvsGg310jUcq
         s64gZSD2t7MSGDaI8twj5GL/0IQ3th4LBL1c7qQwvezk+mV2+CaSU+2ozMSjyvTnJjR1
         QmMw==
X-Gm-Message-State: AOAM530qVJ42ifYYhOi/SmJKR40RbQVH4T9rT2ahmN4KldUMKOYLxjAD
        1LX3iqv6WnZvxHSm6qX7cXA=
X-Google-Smtp-Source: ABdhPJyGR1WquvT44Br0NHNzVa9w8tpRh2jevi4Ji59Bg4xLOqk8wQ7S/yyp1jTzadC/ioyAg1+e4A==
X-Received: by 2002:a5d:6404:: with SMTP id z4mr8462762wru.423.1601547401601;
        Thu, 01 Oct 2020 03:16:41 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i15sm8671922wrb.91.2020.10.01.03.16.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:16:41 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     colomar.6.4.3@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: [PATCH 12/16] uint_least8_t.3, uint_least16_t.3, uint_least32_t.3, uint_least64_t.3, uint_leastN_t.3: New links to system_data_types(7)
Date:   Thu,  1 Oct 2020 12:15:56 +0200
Message-Id: <20201001101559.77163-13-colomar.6.4.3@gmail.com>
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
 man3/uint_least16_t.3 | 1 +
 man3/uint_least32_t.3 | 1 +
 man3/uint_least64_t.3 | 1 +
 man3/uint_least8_t.3  | 1 +
 man3/uint_leastN_t.3  | 1 +
 5 files changed, 5 insertions(+)
 create mode 100644 man3/uint_least16_t.3
 create mode 100644 man3/uint_least32_t.3
 create mode 100644 man3/uint_least64_t.3
 create mode 100644 man3/uint_least8_t.3
 create mode 100644 man3/uint_leastN_t.3

diff --git a/man3/uint_least16_t.3 b/man3/uint_least16_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint_least16_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/uint_least32_t.3 b/man3/uint_least32_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint_least32_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/uint_least64_t.3 b/man3/uint_least64_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint_least64_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/uint_least8_t.3 b/man3/uint_least8_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint_least8_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/uint_leastN_t.3 b/man3/uint_leastN_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint_leastN_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

