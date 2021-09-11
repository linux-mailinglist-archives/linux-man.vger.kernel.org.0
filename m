Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 32DDA407957
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233162AbhIKQDD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233089AbhIKQDC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:02 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00F4FC061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:50 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id i23so7363773wrb.2
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gRLeWdYRY6WxVQ29MMC276Ar6sROmwEKOtflP4NXqXM=;
        b=ZdwleOfBMKjWuMTLj1uNLPip/i3P1SLglgjMj+NIdifGFTgkXchC5JwUiZYM5eMCDx
         N3GYMBQopae60dq+615EYuEqZTgzbv9tw2R7VjUZXM5vIU+0vxytQ44E7lLWLSBQjYpx
         0thDvy0xHEUKg6rcKmNIFzoNUd7XDnD3Z+8J4imjcKQ6nrsruQqoSEJi5jQRFKlf1KeW
         fL1jdoGqYKZiZLSAgScbAtV1IZb0pqj4TYTakVDdQEgcnYAK69mMfI2DVmQ9yXx5ZO9/
         BdXgR9zTCpoapmLCyS2Nk+NSs3LSMiZZL2XPUtkr2a1iJnQwZwzOXenYQUARnHMsvBzk
         s3MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gRLeWdYRY6WxVQ29MMC276Ar6sROmwEKOtflP4NXqXM=;
        b=LFRuguCDsS2tG01+9s83Dh2e860zUA3Dns2eFwEDyY558R1u4hyPQp2asE6meCCvvO
         Nnn4MbC9HE/rHOr+dZVth6FU9zU1SrCu++Smx5srAN5ud1JsgZWLduov+p208ctAy2f7
         x3K8HybWmEvHr0zJL2dD9hHdPsIdteENpmOzsALCgbOECHPGaS3EsdtG5Y1L0CGgux8E
         bg53KeGb9H5mKmXiNSR1sFxSNIDueIiqPtGhNh5SseSrIIysENU3XcyRtQQoGOI+ZlwQ
         uIs7Sl2zHH4Z2ESU5GLMWBQm9XGPMe5bpUgLed3zNPq6fAJTlPN2u9gq6cfSSnfqU4lh
         GlEg==
X-Gm-Message-State: AOAM533uXvStizH5O2720A8VfDSESznPVLCzch65IHKmMerLctJYjMuq
        x4zHIgoBZ4gzL7EgT9XuySM=
X-Google-Smtp-Source: ABdhPJx3kqb9UF1rkxwBBP/0UtXqAjrrxlGEO+d/Sar4/4rsAc2nlheBjIVZQAcKD8geO1ZeFpadvA==
X-Received: by 2002:a5d:63c5:: with SMTP id c5mr3704048wrw.135.1631376108680;
        Sat, 11 Sep 2021 09:01:48 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:48 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 24/45] timer_getoverrun.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:56 +0200
Message-Id: <20210911160117.552617-24-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/timer_getoverrun.2 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man2/timer_getoverrun.2 b/man2/timer_getoverrun.2
index 5a0601a49..94f86c1c0 100644
--- a/man2/timer_getoverrun.2
+++ b/man2/timer_getoverrun.2
@@ -26,6 +26,9 @@
 .TH TIMER_GETOVERRUN 2 2021-03-22 Linux "Linux Programmer's Manual"
 .SH NAME
 timer_getoverrun \- get overrun count for a POSIX per-process timer
+.SH LIBRARY
+Real-time library
+.RI ( librt ", " -lrt )
 .SH SYNOPSIS
 .nf
 .B  #include <time.h>
@@ -33,8 +36,6 @@ timer_getoverrun \- get overrun count for a POSIX per-process timer
 .BI "int timer_getoverrun(timer_t " timerid );
 .fi
 .PP
-Link with \fI\-lrt\fP.
-.PP
 .RS -4
 Feature Test Macro Requirements for glibc (see
 .BR feature_test_macros (7)):
-- 
2.33.0

