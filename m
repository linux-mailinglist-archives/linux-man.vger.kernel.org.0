Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB5DC27FD14
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:16:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731895AbgJAKQj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:16:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731704AbgJAKQj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:16:39 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEF9AC0613E2
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:16:38 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id x14so4993922wrl.12
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7TZle1L2C5hq0UJbPvW/MxD93u3Ydr5kNhgHweCtY0Q=;
        b=f2SAuOkOYGCbz1O7DF9qm0pJVwJwQpPoKHeYlLXzgkbeqxRYwc5DaLDl+0fE9y9bGi
         +fXHFk0zMT2BB3SXsQU/ZUXmFLMM7XqK2Fn/rbvVU75/8olwLLRBGnhcv0aAXWnXF2D+
         h3fNBvx/VP5tmzI0yFP7lSPaRfMkpgsc+mMmfM9Ks0MQ2Uq4mLKWmWmcAl0fJw0yX8Wu
         PCYDmGloorryvG8MoOyNrGMwVDXqppn98iMrlmJNrAnAbCsOmsNMW+nBadKw+FzQ/xOo
         wy8bl7yKqm9bCl9Lz2nazwJKv/bJ28W4eUx4FWOxlLmgGi6Y7QRAAaqXfm58TPoaD+IR
         LqjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7TZle1L2C5hq0UJbPvW/MxD93u3Ydr5kNhgHweCtY0Q=;
        b=OmVe5i1I9MIvCIOzIbEPIvDIs0oaSpxKXOf7I5Vikl6wLsmHzRom4Z17zUoT2atKBs
         MypWe8X6/hV2xLwCq8wckR2rPLPMI2EnisecJ62+RURL4WIZlE1gz4lR03CNoo6+ysTb
         pQ+Vhl34ucqAtAOxLDa5m1glMtv+7Ow4vgbTe+bZgbfSlK4E9IaWvbZm8qZq/11fP49M
         wgGWWQXOlFPpNf20CYjsDvThHjW/ZAbSHez642+5kGvEgNeBfDkj0INh+OGIn0mgW4Vm
         hsqHEzgg/NcvJiqSMmdUAwgGDWRN2oK7+sFwlbktNa0IoaE3lwqTte7EkG3IsuG1/Cl4
         prSQ==
X-Gm-Message-State: AOAM531GXGhxdkYjHyWwpQNZTYGkOofmmTFoe6nSp6q7b8sOk2ifaYLf
        x0o814fX4A1kI/bumdJ5Ny8=
X-Google-Smtp-Source: ABdhPJzFyjGgqNonR2+0eq92eYNOz6Z8fZBZzJlq2/Stxm6bvZaAUCf69Kv403/G68z8rJR8dg6fRA==
X-Received: by 2002:adf:f04c:: with SMTP id t12mr8180454wro.121.1601547397429;
        Thu, 01 Oct 2020 03:16:37 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i15sm8671922wrb.91.2020.10.01.03.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:16:36 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     colomar.6.4.3@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: [PATCH 08/16] uint_fast8_t.3, uint_fast16_t.3, uint_fast32_t.3, uint_fast64_t.3, uint_fastN_t.3: New links to system_data_types(7)
Date:   Thu,  1 Oct 2020 12:15:52 +0200
Message-Id: <20201001101559.77163-9-colomar.6.4.3@gmail.com>
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
 man3/uint_fast16_t.3 | 1 +
 man3/uint_fast32_t.3 | 1 +
 man3/uint_fast64_t.3 | 1 +
 man3/uint_fast8_t.3  | 1 +
 man3/uint_fastN_t.3  | 1 +
 5 files changed, 5 insertions(+)
 create mode 100644 man3/uint_fast16_t.3
 create mode 100644 man3/uint_fast32_t.3
 create mode 100644 man3/uint_fast64_t.3
 create mode 100644 man3/uint_fast8_t.3
 create mode 100644 man3/uint_fastN_t.3

diff --git a/man3/uint_fast16_t.3 b/man3/uint_fast16_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint_fast16_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/uint_fast32_t.3 b/man3/uint_fast32_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint_fast32_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/uint_fast64_t.3 b/man3/uint_fast64_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint_fast64_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/uint_fast8_t.3 b/man3/uint_fast8_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint_fast8_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/uint_fastN_t.3 b/man3/uint_fastN_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint_fastN_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

