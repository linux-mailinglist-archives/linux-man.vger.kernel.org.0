Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B891B27FD13
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:16:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731890AbgJAKQh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:16:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731704AbgJAKQh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:16:37 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2D3BC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:16:36 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id k10so5002249wru.6
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AQn34fQlwTBZh/PWX0LDgku3eePP4sow3MpYt4eKTh4=;
        b=h+g63J6GT5XvKzkb0AId8xOm671VW3kzN5xc5TCMytGUwUClhNu7gOkEAb8VKcmv0J
         Hoi85gHFCYha2IsNAU0YZZoPUYR3A4sys92NgwiFBw9CPomRHC4cE2ndqkIjCi3tRxOj
         sEr78O2zyA82BSfrc3lBr8Fhg54VedCHcJnRI6CuNDsH8i2EsOg1xUaziJ6BAF2jtBsb
         Cv3v5cAy8nc0J1U/1HfqjicgQployRFzljpgD0lyMyH738rAJXZPW3dfJ59mmjB3QahW
         oYumrHeEe9sipxJMjmlGTR02OlwafumhnUrRMdoZK+5F2PAhcQHsdH/te/GrmjWOPWD9
         VzUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AQn34fQlwTBZh/PWX0LDgku3eePP4sow3MpYt4eKTh4=;
        b=N0TdWx33ju//UyxENSDpFpMfr7bahmIaKh3N+mNYBARC3R/aj5LNC+V9xTHDzAiTzR
         U7TcyHh792xWbkBGzNFq7GsaDkPh1u5SzDTQhn2AK1VxsCDN0ORlWkoYxtm6pmRXgr7Y
         aG1zhYD6f3Bn5MZoOb+ZIeUS/81PWwWjxC0a+cMxpnsVu+oGvaNEh6tir2JF/yO1o/YE
         Q92uU1CBcR/8WyHz6+Y5pWc1goo2G5/fqD1fPmj4oT7b7hdwcdUBrkbLg/BI61Dqb1Iw
         CGkRRcoDGFeK0xGib8aVvly/SiAg6zv9tRzPjNeDMHOjQ7llBvep+Gh91FmjEiOWQse+
         ctDg==
X-Gm-Message-State: AOAM532Co/FOqv80eBIuHYppNF8hP4cbFrlcCo1j5rEWuUI7d6SqjNRC
        m/A2l0Oq6e1uyB4J5J8jgAM=
X-Google-Smtp-Source: ABdhPJzqJ/+Ei9UmGjz0Sw8xuJMJWeFqJDk4W6UDjH4k/Gi+6HE0a89W6CCvolcZv0DUqxKWYpsh4w==
X-Received: by 2002:a5d:4e0f:: with SMTP id p15mr8652007wrt.58.1601547395379;
        Thu, 01 Oct 2020 03:16:35 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i15sm8671922wrb.91.2020.10.01.03.16.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:16:34 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     colomar.6.4.3@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: [PATCH 06/16] int_fast8_t.3, int_fast16_t.3, int_fast32_t.3, int_fast64_t.3, int_fastN_t.3: New links to system_data_types(7)
Date:   Thu,  1 Oct 2020 12:15:50 +0200
Message-Id: <20201001101559.77163-7-colomar.6.4.3@gmail.com>
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

