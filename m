Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC32D28014E
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 16:32:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732429AbgJAOcy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 10:32:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732020AbgJAOcy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 10:32:54 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91B6DC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 07:32:52 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id s13so3149570wmh.4
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 07:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AQn34fQlwTBZh/PWX0LDgku3eePP4sow3MpYt4eKTh4=;
        b=Va5kyvkEbojwpLinG/L8dG0BA+cDHvpsFJnaLEYK18io51iRyEqjhdwKi3LVG8VsGs
         z7CksJkJ+AS7nYsqzCpXsAb/KzXQhJp6r6wGZMZnQy5PUT3k30oL6xl5tevP0SvtCMw7
         Tw49zA8vYKrRWLKd6Y7QOapRd7ZfC5z1T4jj7bBIx/O/qtaxCKWTI/LbCz7+YJIEEOF+
         2CLgsOTPX6oTZLJhMR8Bo/PNal32RgjC3nV9E9DyOe7d9sXAGpvPTFxd5ttpnwR8ObbT
         I0yGuP177o/lfM/t8nCbFkO0z/Obe6eiLZUNtRRqfOQS+ZQ+uoea+EPdq83wX1PwKAFW
         fjsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AQn34fQlwTBZh/PWX0LDgku3eePP4sow3MpYt4eKTh4=;
        b=DR02aqsNoIpFDCeFn4VdgtXkDjjtHDuggA8NJfXhR6hwwNMTk4gtZsUdZRSR92T5FI
         diTsExsY9UlmVzqclzd6BpUBd3YmCXZIGwQFSAU/XZIAQdBrDPhxzWvraDZqx6dwXZG5
         +WdZg3kdbAaLBR8i8ckYOLFl88t0zJ6V5i38ncblDKiInm2eKzUFxJnCqsGu1/6ghjdr
         HsQSF5sLQscnOJBxYmWVqzSzJBlXaM2Nu2QdJ+NBcbrr//q0zrKqCYYAELPbWz5/HS/2
         ohUxxNCyCEIw6OIFiviCrvZuu7t/zRxigqsZf3IXNMJ/i9tUSmoRM0O7onhgQ2S1o+5I
         Pdkw==
X-Gm-Message-State: AOAM532IBksKknueE1DFP5xT/vaOkKGnsy+j1m0QpYnS6BYksEKXLm8Y
        oXbUu5uZ4Q3q6YJ1HjFrYL4=
X-Google-Smtp-Source: ABdhPJyyqZmf8kBycu7h+yiFsYsNFhTnDwewLM81BPgWPctj5nxfStvHuYLu3wto/JayBqQjHpE2mA==
X-Received: by 2002:a1c:c906:: with SMTP id f6mr319348wmb.9.1601562771299;
        Thu, 01 Oct 2020 07:32:51 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id f23sm5463654wmc.3.2020.10.01.07.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 07:32:50 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 2/4] int_fast8_t.3, int_fast16_t.3, int_fast32_t.3, int_fast64_t.3, int_fastN_t.3: New links to system_data_types(7)
Date:   Thu,  1 Oct 2020 16:32:02 +0200
Message-Id: <20201001143203.98803-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001143203.98803-1-colomar.6.4.3@gmail.com>
References: <20201001143203.98803-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/int_fast16_t.3 | 1 +
 man3/int_fast32_t.3 | 1 +
 man3/int_fast64_t.3 | 1 +
 man3/int_fast8_t.3  | 1 +
 man3/int_fastN_t.3  | 1 +
 5 files changed, 5 insertions(+)
 create mode 100644 man3/int_fast16_t.3
 create mode 100644 man3/int_fast32_t.3
 create mode 100644 man3/int_fast64_t.3
 create mode 100644 man3/int_fast8_t.3
 create mode 100644 man3/int_fastN_t.3

diff --git a/man3/int_fast16_t.3 b/man3/int_fast16_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/int_fast16_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/int_fast32_t.3 b/man3/int_fast32_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/int_fast32_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/int_fast64_t.3 b/man3/int_fast64_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/int_fast64_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/int_fast8_t.3 b/man3/int_fast8_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/int_fast8_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/int_fastN_t.3 b/man3/int_fastN_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/int_fastN_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

