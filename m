Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C10EE28014F
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 16:32:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732435AbgJAOcz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 10:32:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732020AbgJAOcz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 10:32:55 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9973C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 07:32:54 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id j136so2057240wmj.2
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 07:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7TZle1L2C5hq0UJbPvW/MxD93u3Ydr5kNhgHweCtY0Q=;
        b=ORpg+32BB+UvhNl/mpifwSxAS79X3P62lvHW9NtS+QAWZOWBY5+LAYisaOomjQPkNG
         0TH52unVsr542JQ9YjKExKAVjITL2++PPZjacFDKLuiPnF3vsaYjwAUTlTkT+E1eh8fr
         c8Ut1DxLqPADd1328wUoHSzzdYIOLtBwvyXh1koSXwu00eyK8jWUfqHnwlhtc7yLYr08
         fwnp/xj//7H8vvII0cebu+nI//faWk8X5RiG37edccttFWsniaBh1JAWB1gO8MbzYnBH
         ezECnVA9sQaUIzPVn+C9UNdo0hefx7vFp6uZpo0qpTwOuwLBzJrhoLOZ2cY8e7a53/OI
         yloA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7TZle1L2C5hq0UJbPvW/MxD93u3Ydr5kNhgHweCtY0Q=;
        b=IooowtrNPFMaGRO3jlvlQAWeClHE/J+mJ7EWWittBFeHmoqsCYbNLg71O6Al9ep0AM
         R3JMZmKLW8aaR/v9eoWlQy3vVfRuNglYmOZaFRtlTW6IWmBMeyN5Ru2PbdbyFhW7z80y
         NWeANs36NJEoquM8UIAnFTMrj2kD86QzaA2r8Jd7Cqus8IzYsSRIT4d4zqxVFugokdMj
         eqABCLi3lyxVEPMB+zyTlxBf4U++N5qjD62yDpXYF2LL43caRMmyfTfGCXIHWoZOyF70
         ppo+96vLnwrpSdlH3MnAGVitGdgg4FoOdr/Y411PN85yS3yI5bikqlxMxj+beLSTKG1E
         7mbA==
X-Gm-Message-State: AOAM530xkTpqeQPqcd/cN7khw5dx9+r3lYZzWsXeZsYmCqb5dfy+6Owg
        Gf4XAt+RCfkxH3PGX6aOCE0=
X-Google-Smtp-Source: ABdhPJzFtXcSH6pFV8XfifUlafM6DFqw5+w//azh7fU8BKiR+Z8IBlCiWz1ZfkNnD3sPt9Tc1X8tFg==
X-Received: by 2002:a1c:2cc2:: with SMTP id s185mr298042wms.77.1601562773367;
        Thu, 01 Oct 2020 07:32:53 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id f23sm5463654wmc.3.2020.10.01.07.32.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 07:32:52 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 4/4] uint_fast8_t.3, uint_fast16_t.3, uint_fast32_t.3, uint_fast64_t.3, uint_fastN_t.3: New links to system_data_types(7)
Date:   Thu,  1 Oct 2020 16:32:04 +0200
Message-Id: <20201001143203.98803-5-colomar.6.4.3@gmail.com>
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

