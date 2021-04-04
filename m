Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F4173537ED
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230399AbhDDL7s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230397AbhDDL7r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:47 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3016EC061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:43 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5-20020a05600c0245b029011a8273f85eso251539wmj.1
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ch5eqq1avqKbROCSo5D535aJuRy/ICKQTAFg9B9mLAY=;
        b=s5Lrg1T5mr5QtEqA4ypusRrHwTUv5K8UZ/mcAAZAlYm3EnAnXCI4A1qSuBsHZ1c45h
         KOBnSytAQsVLpkkfzfPN2Mfzzx8Q1CWw0/KR+ZTWRIkZyMXseUtmd7ehJm82W/bgcGM+
         mlA/3RrDHPY/4T+VVyJyOOs14xInKVwfMg7A6bgWyhuNsPssaBd1T4YAZQJ7dkw9Ib4n
         NO42Gc3GaBpl+H1HdocRc++pYlqAyHqBFZW4+8KcKuB2k45Kk/csJaDUA165QVp0Qp7F
         8vMPSsl/66iowDQrgEzA7chWL6c78GpKIpVDayE2VS7DlJ9XolTVudLzwnDsPsunj1Wc
         9tbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ch5eqq1avqKbROCSo5D535aJuRy/ICKQTAFg9B9mLAY=;
        b=mfsC/u1DkK/ubqU+SlpYCrAhzfcERA+fQSFRwlqCc1oI5QEFfXWjW/iV1eMw1peZZe
         0S1JzNh3hON2flQc49jSoUKBIEANGCfEMVYVrz8Lc3jsbpbd3DMfJBZcZIn/2limi/cZ
         0MnaLP/SbqKd0mf7Yb4/05YIMQ6aU6ktmLGbA86X4BKc33nWxPxW84qn7vdd9NOWq3p+
         W9KOO7O8WXiUbsV7xFAeqvNdtNpxarkE0Da3q89V4G9GJf5LDrNSMydSCZaC3FSJinKV
         Z+pP4GqDEhgbsheWkUrL5zd2tJx0gMoSfrBIxP9bOfzbmZoQYT8aUlK9zTAdDhBcxT1H
         2rEQ==
X-Gm-Message-State: AOAM530MjF3bOE0a+uNvLG2FNguaoKnzD+c1+1+TPlPuatBaNyhgaR5U
        y5xN6MZ1YkomZ94BdKbmhCA=
X-Google-Smtp-Source: ABdhPJxl3heZBrMZLjHZrEq9al4rg00Xa8kiebHCfl042S95vNrTvWsYZ890brVwhHEGzfMxThkCXA==
X-Received: by 2002:a1c:5455:: with SMTP id p21mr20863087wmi.138.1617537581991;
        Sun, 04 Apr 2021 04:59:41 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:41 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 13/35] dup.2: SYNOPSIS: Use consistent comments through pages
Date:   Sun,  4 Apr 2021 13:58:26 +0200
Message-Id: <20210404115847.78166-14-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/dup.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/dup.2 b/man2/dup.2
index 725b9d7d5..b9e0828b0 100644
--- a/man2/dup.2
+++ b/man2/dup.2
@@ -45,7 +45,7 @@ dup, dup2, dup3 \- duplicate a file descriptor
 .BI "int dup2(int " oldfd ", int " newfd );
 .PP
 .BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */"
-.BR "#include <fcntl.h>" "              /* Obtain O_* constant definitions */"
+.BR "#include <fcntl.h>" "              /* Definition of " O_* " constants */"
 .B #include <unistd.h>
 .PP
 .BI "int dup3(int " oldfd ", int " newfd ", int " flags );
-- 
2.31.0

