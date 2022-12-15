Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF0A864D4A6
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 01:27:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229846AbiLOA1H (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 19:27:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229913AbiLOA1B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 19:27:01 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCDCF1E716
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:26:57 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id m19so12648344wms.5
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=47MjXLbaU0XSkV1JB3LLMJSzBwh1QI9GQ8awLV/H1dA=;
        b=EYQzRwk7E1ofLmJXRUl4fLqTWgxQb4raRjTZ5/09yQ40A5T9ib9F7H0wIXpOM74lq9
         aegIRc5GukBpE0gi65yJib0K8dsO4pa/AcIvCdWXl+2ox+sBjrPMJ/UzybInp8dULmPw
         fFTvWRz29vI197R1UA8PqRruUkBrL3pzWWFHk0Qe5gvjLkdRjK8tdiIc2F/D4IZg4Ysu
         MIMtd/QgLJKBKaLR8R931Zkk/KzlaBZeRNj5E39k9Nef/6J4nnfJe6Frb9BZP+f83CmP
         ImhZ0BEslO6mGeT/jaQMFNBl4/dZJCtkA1q2GuojonhpOrRxpD4dVbrUS5MfOxgDhXwE
         VsEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=47MjXLbaU0XSkV1JB3LLMJSzBwh1QI9GQ8awLV/H1dA=;
        b=jDm0ubQ0jsqQnQAY2XjSUNTteI304W4ACIZiJsNssERjKbZ1yGXGjsNSWPuZmMkhqF
         2pqDKk8lAXwFMYT+7C1ekIOqXL4Z72FC1VJqo2BRplokGpUf3xQc/CUrX22qks72mSkF
         ZdkGC3i24ZPOU/3mEsWO/iMJRQMqJV7YRkmphxPgrW0PKfHFyO5QBkPPQ6Srmx/iCi7v
         qgl8pXjaN061Xek33LFHoHxjbr1nw0Mbzp8RmrFO/jMEK4lgf+f2mvaj0to6hfDWhkIX
         GHyPFUv3qp7KplNkXlM6rj6zU2ms9cp1WhpD1oREis81aB5sqbZvG4Op1f1xkRCsY2h1
         +xjg==
X-Gm-Message-State: ANoB5pkXx5XTavm6XI+SeUPrV8t0JHaHLBPUAMC2wi6Z7tgU5IVwLBI7
        +sf+9vGesq7Bbys3B418xCg7MPE9GhY=
X-Google-Smtp-Source: AA0mqf43jNcbwaXAWJpJJB0UCm+F+DkmzkYEEIPvXUs+4qjYUuADWrJUsFdqU/KL6urW3oGj81MBIw==
X-Received: by 2002:a05:600c:13c8:b0:3cf:69a5:3621 with SMTP id e8-20020a05600c13c800b003cf69a53621mr20513804wmg.41.1671064016463;
        Wed, 14 Dec 2022 16:26:56 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id j41-20020a05600c1c2900b003b4ff30e566sm13511901wms.3.2022.12.14.16.26.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Dec 2022 16:26:56 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
        Iker Pedrosa <ipedrosa@redhat.com>,
        Andrew Pinski <pinskia@gmail.com>
Subject: [PATCH v5 2/5] stpecpy.3, stpecpyx.3, ustpcpy.3, ustr2stp.3, zustr2stp.3, zustr2ustp.3: Add new links to string_copy(7)
Date:   Thu, 15 Dec 2022 01:26:45 +0100
Message-Id: <20221215002648.35111-3-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221214161719.12862-1-alx@kernel.org>
References: <20221214161719.12862-1-alx@kernel.org>
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

Cc: Martin Sebor <msebor@redhat.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Cc: Jakub Wilk <jwilk@jwilk.net>
Cc: Serge Hallyn <serge@hallyn.com>
Cc: Iker Pedrosa <ipedrosa@redhat.com>
Cc: Andrew Pinski <pinskia@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/stpecpy.3    | 1 +
 man3/stpecpyx.3   | 1 +
 man3/ustpcpy.3    | 1 +
 man3/ustr2stp.3   | 1 +
 man3/zustr2stp.3  | 1 +
 man3/zustr2ustp.3 | 1 +
 6 files changed, 6 insertions(+)
 create mode 100644 man3/stpecpy.3
 create mode 100644 man3/stpecpyx.3
 create mode 100644 man3/ustpcpy.3
 create mode 100644 man3/ustr2stp.3
 create mode 100644 man3/zustr2stp.3
 create mode 100644 man3/zustr2ustp.3

diff --git a/man3/stpecpy.3 b/man3/stpecpy.3
new file mode 100644
index 000000000..6ff53887b
--- /dev/null
+++ b/man3/stpecpy.3
@@ -0,0 +1 @@
+.so man7/string_copy.7
diff --git a/man3/stpecpyx.3 b/man3/stpecpyx.3
new file mode 100644
index 000000000..6ff53887b
--- /dev/null
+++ b/man3/stpecpyx.3
@@ -0,0 +1 @@
+.so man7/string_copy.7
diff --git a/man3/ustpcpy.3 b/man3/ustpcpy.3
new file mode 100644
index 000000000..6ff53887b
--- /dev/null
+++ b/man3/ustpcpy.3
@@ -0,0 +1 @@
+.so man7/string_copy.7
diff --git a/man3/ustr2stp.3 b/man3/ustr2stp.3
new file mode 100644
index 000000000..6ff53887b
--- /dev/null
+++ b/man3/ustr2stp.3
@@ -0,0 +1 @@
+.so man7/string_copy.7
diff --git a/man3/zustr2stp.3 b/man3/zustr2stp.3
new file mode 100644
index 000000000..6ff53887b
--- /dev/null
+++ b/man3/zustr2stp.3
@@ -0,0 +1 @@
+.so man7/string_copy.7
diff --git a/man3/zustr2ustp.3 b/man3/zustr2ustp.3
new file mode 100644
index 000000000..6ff53887b
--- /dev/null
+++ b/man3/zustr2ustp.3
@@ -0,0 +1 @@
+.so man7/string_copy.7
-- 
2.38.1

