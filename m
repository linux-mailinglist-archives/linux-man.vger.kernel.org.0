Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B51222E73F3
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 21:39:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726156AbgL2UjJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 15:39:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726111AbgL2UjJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 15:39:09 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1165DC061793
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:38:29 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id q18so15739939wrn.1
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NKqYHFYo6lN0Ac7awxFK09iEudIJ72yAFCIVnC29tuU=;
        b=Nxxl2qyqmtUorbIZ1jGJAn2uIgY38a4pEJRmwzYpE4ffctULOTPNjrCcSaQb+3F7el
         padyYZ6XYhHIbekKql0f3R0w6u0RCTeOSK2JMhv/dWevlzhmFUPX1bLBNb74Mqb5jmMG
         4Allk5hMsCxdQOIff/705ugVWEtG35DT2CbQqIApVo+gAd8X8rs+qmOw5qAX8jYmRuIP
         nbooDmWnXM7KcOualGgk0JKS1FPZvrPPx/NqammM9f4z59FO2LdC+T+/zIf6EIVPaoat
         GUzFop8b7AMmtMq2cYuJPqJ1tl6nIN0bckunlDzztAowMuUzwEik/TAG5fMO0vQaQ6Kk
         +EBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NKqYHFYo6lN0Ac7awxFK09iEudIJ72yAFCIVnC29tuU=;
        b=JhtK/F8thUWVGwc+63tUwXJmjb25Y+D4OOnVNJHA75mLplfd88i4MsglTFureqT6rH
         E5BwLRTDcfKHftcEH/byUhVp9zuNjhP+Q4+ORYndgk5WjKgHyHofQ1Hh0QZ0xH4Y0sJn
         YAwukEGPDtvIg79w/IBt4wxjLIOCnQf8x7gAdJMHjdWpOjgSIrUfvBtdvJTXviEqGB8p
         geXPJ6Aq3gSk5rB6aYijjdNIjGern94MIBNzdJgo8vuRnc/uI3rsIB1JFYjTcPB08cNh
         TwcFcLnz2r1YugRGnIzomJr+COPNFbrBkDAbp/iiHPWRNNa9Bdlp6HbmCAp/Ch082W7L
         Avlw==
X-Gm-Message-State: AOAM531JnM4pR59SgVKHVV0Jog4We0LEn97S9SGFrlo+Cg/e1q9Qkak3
        1zZz2N2ihDh3WeAXgq3zt84=
X-Google-Smtp-Source: ABdhPJxEcnWpAQ8N/WDxGqUFf/6pH8kHLTW8oWt1yqlsICMBe4T21yc5gL3J4+ampW2YkQ7R8EwPyw==
X-Received: by 2002:a5d:68c9:: with SMTP id p9mr56981246wrw.139.1609274307829;
        Tue, 29 Dec 2020 12:38:27 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id l8sm4783226wmf.35.2020.12.29.12.38.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Dec 2020 12:38:27 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v2 2/4] cgroups.7: tfix
Date:   Tue, 29 Dec 2020 21:37:46 +0100
Message-Id: <20201229203747.3199-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201228094211.4917-4-alx.manpages@gmail.com>
References: <20201228094211.4917-4-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Jakub Wilk <jwilk@jwilk.net>

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/cgroups.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/cgroups.7 b/man7/cgroups.7
index 0d525d91f..f6e7a8d8f 100644
--- a/man7/cgroups.7
+++ b/man7/cgroups.7
@@ -1123,7 +1123,7 @@ mount \-t cgroup2 \-o remount,nsdelegate \e
 .EE
 .in
 .\"
-.\" ALternatively, we could boot the kernel with the options:
+.\" Alternatively, we could boot the kernel with the options:
 .\"
 .\"    cgroup_no_v1=all systemd.legacy_systemd_cgroup_controller
 .\"
-- 
2.29.2

