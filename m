Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D948240794B
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232830AbhIKQC4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:02:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232960AbhIKQCx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:02:53 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 383FAC061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:40 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id m9so7372188wrb.1
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mTJdv4/q4xVsWBWan7FdeqmLkV+L0MTJVd8tc5yYSoQ=;
        b=meqhXiU5z1IwRd115d97AcIANFFQiyZgULQ83rREvHdkNTcSK/ccaWiv4T5vVBq+/V
         l3rN1e01WutbLeZ0Jrv4s/sQzOZBWMB01UI6cFzZRZaxmmzVCNNNvikjlXj2/PQRj5Q6
         hSIpOXTfwkKEYgVAg1CdbDHpPionbqyxaglDE3zTUpZPiXnIdn8Hb7kr0NjkHqCTDYEO
         SmD2+WBfqRFQVRlRj6slZsN9rgNVM15t77g6hXJnMpSIawIktUWmpDxaYDwFKdoxXKO1
         ZMtGr9r5WxqEyxnaC8zzsmtAVu/jvivrzJ2wzCIaDrudtajaBXx78X/Wo4IBs6O4LEDf
         WUXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mTJdv4/q4xVsWBWan7FdeqmLkV+L0MTJVd8tc5yYSoQ=;
        b=E7grBUDT6LX3dCSqqlit4TSeefadB/E4RNpv4m1TKYzPlZrtO/BsqfWIl1DlM0eSg1
         FbLTAN9R75LMsfwNtqj1hG3Df6Wh2n3qfWzpApN/rOQsJiWXSN/Vfuaepp2VlLA8vFoR
         u8lLHLYokAEw2oAErro2AVn9O6jdRdcZMlS4f/MY1tscu3sgovbYGUj9DBAqP5ij1x+h
         OHaGu/vBYlImp+fM+wdOB37aTq3gAv2uLZJWu+mmSWiHJSkDPJecxOrvDIuCYKNeGbBl
         KvjFKaPjzW5bgRDvc6Ee16B3W4XkENY8g8+VGTolX8z8AlLUTVp3NpTAYkmschWoeUQu
         cjhQ==
X-Gm-Message-State: AOAM530EguNx3vGnYmCihRLXBV1ThhxyJ3Q8objhyy5zsMNUKZ6U/H/b
        DRHhy41jw53DXNRNB+9adhwclvlxXPQ=
X-Google-Smtp-Source: ABdhPJxtEsFhr7ZM2Kt5NWmUGfTs3+WmHY+tFFydaOpBSGQBG41+Z6hxmoq6tjMki0x0DddGIH8eoA==
X-Received: by 2002:adf:d1b2:: with SMTP id w18mr3829349wrc.6.1631376098844;
        Sat, 11 Sep 2021 09:01:38 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:38 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 12/45] utimensat.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:45 +0200
Message-Id: <20210911160117.552617-13-alx.manpages@gmail.com>
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
 man2/utimensat.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/utimensat.2 b/man2/utimensat.2
index cb5f6b693..ca5fdeb44 100644
--- a/man2/utimensat.2
+++ b/man2/utimensat.2
@@ -26,6 +26,9 @@
 .TH UTIMENSAT 2 2021-08-27 "Linux" "Linux Programmer's Manual"
 .SH NAME
 utimensat, futimens \- change file timestamps with nanosecond precision
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .BR "#include <fcntl.h>" "            /* Definition of " AT_* " constants */"
-- 
2.33.0

