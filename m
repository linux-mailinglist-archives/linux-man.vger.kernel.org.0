Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1D9B27C26E
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 12:31:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727906AbgI2Kbf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 06:31:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725535AbgI2Kbe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 06:31:34 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78B5DC061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:34 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id g4so4779332wrs.5
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BuGrcJDek9H7nIP4gd20YYO/T/Qmr58JF+RO2Z2CIWY=;
        b=msit7W7B4tVKGAPN11pz2AHjm3WQGu06VFHxXUcFWa65jvxzcf/+3uH5+Xrah1NJgt
         OIQQnQ8079RTWAUetVcOGfmrpXvbo4ZpeAFdJfPjKxpW/fNiV9zLjbqLuxPIcfGIIUmj
         sWq05G7m29XpAIOf58IZAcccVLB43F3+odUf/CQzGP/gzYMn+4x6EUJAlPmasSchf25c
         p4Zr9YTOBWIlkizoBCLIoq5SCdmQh+yH+IGO4WfMVaTdAbSYh2EAkvzLL8FlMi/Y+wk5
         7IGbmPjMaTaLRUx3jLoKIRF+u6kkI6tD1wMIhQoYNeQM7aAAnUDhmUWNJMrdDYnlASUH
         ZnTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BuGrcJDek9H7nIP4gd20YYO/T/Qmr58JF+RO2Z2CIWY=;
        b=R/o+R9rmYs67iuFeo1y/UdBKjndgVeq+bC7eh5cMr+f6ekHNHOh0hLHsIMrn8V49FL
         VHct5GtyzI0av2gm4Kf8t61rapXM+vf+3jwf+SZ6CA4RD7ZzZwaRs0DbNbx+5HVzdSY6
         NEkU2ke1IENv7IDuWwVfIBshY6s3WL0ChM+dIQe8DWb5qYfO3BiGIiHdlay4z+HTxdvM
         if3SFZY1IK1MsdeH9JAn9XzuX0FgyGC5rzfVkoaxQnmWLF4puT/f0YP5hw2rf0i2+32Y
         RZwZhTsK5Ep6RX58G6Mernz3C09ydxwNwikFd7rrDf7Qicg2JJDMi+nQn6jz0YxZ+/hi
         wNjg==
X-Gm-Message-State: AOAM531RnwaKD0XPsGBewxJW28YYak1kS51yOtlFXXtZLyiaYK6q+pii
        ThYR2ljd2iQv4Fm7rnirhnz3uXitvQHfng==
X-Google-Smtp-Source: ABdhPJxpXsB4/DLW3acXGLZP9t1Wo04RrRSeuF1nb52TAkLLs52EJODLW9bHeWya3tXsOgPN9ixk5w==
X-Received: by 2002:a5d:68d1:: with SMTP id p17mr3354467wrw.378.1601375493163;
        Tue, 29 Sep 2020 03:31:33 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id t5sm5611464wrb.21.2020.09.29.03.31.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 03:31:32 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org, colomar.6.4.3@gmail.org
Subject: [PATCH v2 6/8] int8_t.3, int16_t.3, int32_t.3, int64_t.3, intN_t.3: New links to system_data_types(7)
Date:   Tue, 29 Sep 2020 12:30:28 +0200
Message-Id: <20200929103028.56566-7-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
References: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/int16_t.3 | 1 +
 man3/int32_t.3 | 1 +
 man3/int64_t.3 | 1 +
 man3/int8_t.3  | 1 +
 man3/intN_t.3  | 1 +
 5 files changed, 5 insertions(+)
 create mode 100644 man3/int16_t.3
 create mode 100644 man3/int32_t.3
 create mode 100644 man3/int64_t.3
 create mode 100644 man3/int8_t.3
 create mode 100644 man3/intN_t.3

diff --git a/man3/int16_t.3 b/man3/int16_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/int16_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/int32_t.3 b/man3/int32_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/int32_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/int64_t.3 b/man3/int64_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/int64_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/int8_t.3 b/man3/int8_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/int8_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/intN_t.3 b/man3/intN_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/intN_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

