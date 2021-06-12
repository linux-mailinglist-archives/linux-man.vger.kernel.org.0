Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98A553A4D9B
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:32:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230527AbhFLIeG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:34:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229584AbhFLIeF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:34:05 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A18CDC061280
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:06 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id u5-20020a7bc0450000b02901480e40338bso7248520wmc.1
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=U/HVfJP50c4AzOtBKSicxnAAC36NsOakbSfBjYfLjp8=;
        b=hQ92SW9hbOi1KYDdArhKHxFb93rgtlVkkFTxtbipQ0ylW81G0Z02NJd4AhRYsZjKq3
         pfjexixT2D0iaEZfrFZEyBzjyZrHaVtJmdym9+u2JBjmHvNHXDPGlYs2LWHYolOSfCrW
         6qxqkucApiTvmflDZil9CvRkkvf1skoZ5fCKZpFUAV1PISIVCyJc1JT3L8hYP4jKs/VE
         7LM4Y+fI8W2P/Ez9EArzDGCD5isMZ/M2mpNI6J3YB6XwfyTkI4gpmT7n3mJXkSoO/TdN
         lo+SGJbjAR8HlL56TISoXBIiDN15oUuTbhUFLk4uImR86Z4PZCdfHJ8p5jmwfH9E+JCQ
         CWVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=U/HVfJP50c4AzOtBKSicxnAAC36NsOakbSfBjYfLjp8=;
        b=kQdqsnyZnEEZ4oevHy0ChV0J/nLUk/UlMLkpyAZL1YVYR4x4tMfJHByXVT/QUKB8nY
         IipCIH8N7DghdPpZy8e6iNHAzN2fOAuQ+SxcIXOnMX2HmSH3WuMPmowOzRQ0A3a9UzYy
         zekqFPKRmtytXz9JG6cbKlJOemKUSnJllW7yB6Cy3B4VjgqFarHTJDVCyTGCM9NnLqBN
         c1IfPo0EGK+Wl9sFaTjEPtlvoPQsC7FqFA4fNomBQugznJWlKOQIVPOrCsysQwuPA8Fw
         apwqQQI7vrNfRMHjiGs6xNEVIrpXzqU6Pt0L5SmkQNWK87rc/pnpvcIlkYY2xAqImSay
         b9OQ==
X-Gm-Message-State: AOAM532CnqBCgsBvx+0av8jc0vU3uaedwJ1T8ieuWy7FCmFOeIYUm8CZ
        EOI+Xii820z/v/uXOag4Xls=
X-Google-Smtp-Source: ABdhPJyFIA3kTNZun9b42iX4mBWjhhE2HpaEHXjfJz9YlGx478C6zIPil/n+NHWLokB+3yrdvLuhbg==
X-Received: by 2002:a1c:a382:: with SMTP id m124mr7339184wme.40.1623486725284;
        Sat, 12 Jun 2021 01:32:05 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:32:05 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 25/28] utimensat.2: ffix
Date:   Sat, 12 Jun 2021 10:31:42 +0200
Message-Id: <20210612083145.12485-26-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/utimensat.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/utimensat.2 b/man2/utimensat.2
index 05b36c9e6..006677db8 100644
--- a/man2/utimensat.2
+++ b/man2/utimensat.2
@@ -28,7 +28,7 @@
 utimensat, futimens \- change file timestamps with nanosecond precision
 .SH SYNOPSIS
 .nf
-.B #include <fcntl.h>           /* Definition of AT_* constants */
+.BR "#include <fcntl.h>" "            /* Definition of " AT_* " constants */"
 .B #include <sys/stat.h>
 .PP
 .BI "int utimensat(int " dirfd ", const char *" pathname ,
-- 
2.32.0

