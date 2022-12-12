Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 359CE64A32E
	for <lists+linux-man@lfdr.de>; Mon, 12 Dec 2022 15:24:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231194AbiLLOY1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 09:24:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231467AbiLLOY0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 09:24:26 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAF6211477
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 06:24:24 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id bg10so5538931wmb.1
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 06:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h5LtCu1OG7ST9zUwh85D4d56B1gQTrgTy6KgwrA7+tw=;
        b=Z9LRJ0d4WtfGargJ6WwHSLaZ+xvl7tGVjLWiVxk54Z0y/1XBAUMsuvDEGkurWQwxOq
         8ug2ujuiNBdPdISWVfWo5iwE5+kXwsnrE2azavQhkw08CxDrg/o+BMAm9d/6WVKXJ1Zm
         qy+qN/5r2+iGrEqJkDVttGCksfn9lPPW4+MfUdx8aYbeYg7P/65IpO7fKHKY2VcGWRd3
         kPFFQgOm27W53cqgiQmmuJv7LWycXCnmAL6CifVzZDHohyOjD6VlpZ15MmX4Ayx6MCwV
         kGJnm/YMqhZ5m+eWccfABFr/isK/LSu3P85azOR2uCLFwQ3nW0s36qQvUlhNYNqFJrZq
         Twaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h5LtCu1OG7ST9zUwh85D4d56B1gQTrgTy6KgwrA7+tw=;
        b=oHJ0DsJGnonjf3AJU3yzMYT5+//LX5CYjtjZGMn6PVa0omJOvZx27J1A+SHtEzWSrc
         SH6xUhNY8D8GTQFzvrs437xJasbB7IA7793PLJZeiL/romtawvRansaUgT55d9Uas09D
         Nu3iwA6BCIy2ld0qVNlceyNK2klHSaEN8FYDqbRtakEWS21UHENrw4LKdioaIp6b1srp
         a1+V2Hh2Uf3CXhzW4NlkMMex/si3I3jUJVgPgFZb+R7u5WGYuAB3vgCuG0qAOnzNu3RB
         4kU7pO91NJLSvUp4+Nh1nUxnOmuNf4kelHA92BEPMnSZ4/WTNiz4bXCIgYjmZrFG6Cez
         L5Gg==
X-Gm-Message-State: ANoB5pn5zgSHRshizt3E8uxoLy/HwVBZorNG4DPsBgdSpp2XPIwoMxUS
        6/RDPD0h/i/aD9j7bfPkM9C2CzQwL08=
X-Google-Smtp-Source: AA0mqf6qHpuW7VVJVUaiNjsWHvIGmKYUAs4s+DQosC51g6tp5aab351nNnb3Vl42uhz+Ep16qRXylw==
X-Received: by 2002:a05:600c:4688:b0:3d0:480b:ac53 with SMTP id p8-20020a05600c468800b003d0480bac53mr12739495wmo.12.1670855063569;
        Mon, 12 Dec 2022 06:24:23 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id j18-20020a5d5652000000b002427bfd17b6sm10802902wrw.63.2022.12.12.06.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 06:24:23 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>
Subject: [PATCH 3/3] stpecpy.3, stpecpyx.3, strlcat.3, strlcpy.3, strscpy.3: Add new links to strcpy(3)
Date:   Mon, 12 Dec 2022 15:24:18 +0100
Message-Id: <20221212142418.27615-3-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <176225b0-4b0e-698b-b79e-f8ed78b4cf8c@gmail.com>
References: <176225b0-4b0e-698b-b79e-f8ed78b4cf8c@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/stpecpy.3  | 1 +
 man3/stpecpyx.3 | 1 +
 man3/strlcat.3  | 1 +
 man3/strlcpy.3  | 1 +
 man3/strscpy.3  | 1 +
 5 files changed, 5 insertions(+)
 create mode 100644 man3/stpecpy.3
 create mode 100644 man3/stpecpyx.3
 create mode 100644 man3/strlcat.3
 create mode 100644 man3/strlcpy.3
 create mode 100644 man3/strscpy.3

diff --git a/man3/stpecpy.3 b/man3/stpecpy.3
new file mode 100644
index 000000000..ff7476a84
--- /dev/null
+++ b/man3/stpecpy.3
@@ -0,0 +1 @@
+.so man3/strcpy.3
diff --git a/man3/stpecpyx.3 b/man3/stpecpyx.3
new file mode 100644
index 000000000..ff7476a84
--- /dev/null
+++ b/man3/stpecpyx.3
@@ -0,0 +1 @@
+.so man3/strcpy.3
diff --git a/man3/strlcat.3 b/man3/strlcat.3
new file mode 100644
index 000000000..ff7476a84
--- /dev/null
+++ b/man3/strlcat.3
@@ -0,0 +1 @@
+.so man3/strcpy.3
diff --git a/man3/strlcpy.3 b/man3/strlcpy.3
new file mode 100644
index 000000000..ff7476a84
--- /dev/null
+++ b/man3/strlcpy.3
@@ -0,0 +1 @@
+.so man3/strcpy.3
diff --git a/man3/strscpy.3 b/man3/strscpy.3
new file mode 100644
index 000000000..ff7476a84
--- /dev/null
+++ b/man3/strscpy.3
@@ -0,0 +1 @@
+.so man3/strcpy.3
-- 
2.38.1

