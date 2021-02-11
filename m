Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02A03319179
	for <lists+linux-man@lfdr.de>; Thu, 11 Feb 2021 18:51:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231311AbhBKRso (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Feb 2021 12:48:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231659AbhBKRp4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Feb 2021 12:45:56 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F48CC061794
        for <linux-man@vger.kernel.org>; Thu, 11 Feb 2021 09:45:16 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id u14so6579745wmq.4
        for <linux-man@vger.kernel.org>; Thu, 11 Feb 2021 09:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YV+G9ZaHKLzaz0pqZQ2nn51CJhNYEO8t6RlOf7ZfIA4=;
        b=jTk+y6Q9olhU+zgI4sA9KBVG3cwS91JE/rjl2B9vBcyj4YWqpJ1+kRNiKDU/6KmsTa
         SUzeGBtYepxwpVWFVEdIp/gI1KrkDVW7D79Lq397mL6oUZ0Il7vxj8ja2zoYmAWjiBUg
         R7ZQ2PV7WWgk2t6v/LUpVNcStdZPoVdC+JYUPrwMxrRIUKRPSWSvD9D/fQZIsMWBplnl
         fJeF9I7ohedf69CyEc5wT2EvfiYrjSjl6OUDLW28ALZwPCTfI/ri87i8SjyHfPIkkq9R
         QAQUUwEtqmO81EIxx46wlv/d4kO6rm7P/7jw+Z/qCf393Jg5AM71VEFROK2OivG2uhzD
         EuEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YV+G9ZaHKLzaz0pqZQ2nn51CJhNYEO8t6RlOf7ZfIA4=;
        b=SegYpuXBelMnz+lMhaJMSHvvrubop6d0dKsOzlVfhQRkv8kOOSfWyMyVMxFLM6kkki
         4i69ruYZZ0UL/qk/5ScW3ULYAmy2OBIw1scDX0LbCbP2boCaWXEIluRx3AQPimNAiC5G
         gXsZqzIdaI0pXAW1n2MaNBYf8d3/To0+mlT3Zwsk6uED0piURms5EMr9kJjt1FuiIa+k
         kdkVIN9St6djjQ8T2olmf1w/pxodyJFHMtlPquktXJTx/tvjf/16Zyh9RZKEgqE9ALm4
         ra681oev0YSzo6yKhC597YyY6EEwOstxz+7/fLu22Uj4FjSLGxrTQupx7exMlaPTh59W
         kj0g==
X-Gm-Message-State: AOAM533Hivm3G2gQ8BLLDqOI3U/R3h3cSqunqE1oj9weLUKtSGT1MuTe
        7Wcm4mYDuPWQQkW1CO0VZJ8bxrAHQ9s=
X-Google-Smtp-Source: ABdhPJw+1CkV6R3BtlfIaSXcCc18BLpV0aGPqaooo+B6wziVO/MCZXInchpvQW6EEcZjMAiFMlMSIQ==
X-Received: by 2002:a7b:c206:: with SMTP id x6mr5882252wmi.81.1613065515067;
        Thu, 11 Feb 2021 09:45:15 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id o14sm5223113wri.48.2021.02.11.09.45.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Feb 2021 09:45:14 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] move_pages.2: Add notes about missing glibc wrappers
Date:   Thu, 11 Feb 2021 18:44:53 +0100
Message-Id: <20210211174454.48112-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/move_pages.2 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man2/move_pages.2 b/man2/move_pages.2
index 6ed3fd682..28fa9adac 100644
--- a/man2/move_pages.2
+++ b/man2/move_pages.2
@@ -29,6 +29,9 @@ move_pages \- move individual pages of a process to another node
 .fi
 .PP
 Link with \fI\-lnuma\fP.
+.PP
+.IR Note :
+There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 .BR move_pages ()
 moves the specified
@@ -218,6 +221,7 @@ first appeared on Linux in version 2.6.18.
 .SH CONFORMING TO
 This system call is Linux-specific.
 .SH NOTES
+Glibc does not provide a wrapper for this system call.
 For information on library support, see
 .BR numa (7).
 .PP
-- 
2.30.0

