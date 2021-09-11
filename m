Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB00340795C
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233215AbhIKQDH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233089AbhIKQDH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:07 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94A98C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:54 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id b21-20020a1c8015000000b003049690d882so820874wmd.5
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xuMTAB6+OVojRW4d1JpMR0dE17z1zGhMVk5Qa1JPJY0=;
        b=ZNh6of1uKVH9QtvTvgB5XoXeMkt5ReDx9JTm6Q2N3paTAEZTJIqrE3SAtc947mrEHu
         hT9iUvyghfhWnh1rBX7/96YAi7y32MTGStoh+REtvg7rgRbppuQBs9mNnmSw35XUGEQ3
         OWZKD86qEY9ab982hVmjXjUFi2GF/YECS3pwT2rK68ISJ9pjxnRmaD3+rbRxAAT7G5kN
         74m6uuHTOkxuLiKD2ebC1hzpofuEnobDh1if2zkqkxrB8/NghjAxl3bNBacuF3+sDcT+
         lSXB4Ow+CuPBQiXMijw5lWsHPIMya4ZptJYEdii4LCcyCQy+qwt8lOcJcsZ714y8VRUr
         NsaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xuMTAB6+OVojRW4d1JpMR0dE17z1zGhMVk5Qa1JPJY0=;
        b=0dSIqNyFa6/jbo+sfFrgnMlP5I0QpyZ7Ultwu7FahHVxyBpWFMrpnmVfk4bIGqQi3p
         puT1v16ZqMsZNbCjxdnHTURayPYrE0HTx2KV06AFRaIUd5CJ9QWSaZNLgswIy8pKf/+F
         0PEemuXnXG7aHZl/KpH8JveDfF/3eFSsQ2wCwAgFT1sRx442mZpRKVz5o+ZdbSWzu76/
         IxSydwcyEeRKKQTmf3bqmmnq3ZBEumP+es4b7kZrSYjj2KM3Pva4quSJI46mb95mZ8YJ
         0swehXZdtkV717U4J1733TFftenRv6SL+HtjXZSfAPB5SmjTLYLD2JvENRukoWkW//qe
         k/Jw==
X-Gm-Message-State: AOAM530RIJ51a+3HeJHteR+rTw3BXufQanh6GAcxHp1ANuuTA4XK5WVG
        /AGRM+DhQxIASVwxOC0/H2XdewG+8M8=
X-Google-Smtp-Source: ABdhPJyj5NWnbL0IukfEACAZobEa4zFHmpmKPqNVfdydC78DtjRRfxgWHv2RU25bXWwuqtX/4I2tqA==
X-Received: by 2002:a7b:c255:: with SMTP id b21mr3207996wmj.44.1631376113269;
        Sat, 11 Sep 2021 09:01:53 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:52 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 29/45] tee.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:01 +0200
Message-Id: <20210911160117.552617-29-alx.manpages@gmail.com>
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
 man2/tee.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/tee.2 b/man2/tee.2
index d2ceef331..11d6281d4 100644
--- a/man2/tee.2
+++ b/man2/tee.2
@@ -26,6 +26,9 @@
 .TH TEE 2 2020-06-09 "Linux" "Linux Programmer's Manual"
 .SH NAME
 tee \- duplicating pipe content
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
-- 
2.33.0

