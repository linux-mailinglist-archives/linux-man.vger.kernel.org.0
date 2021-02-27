Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B187326CE3
	for <lists+linux-man@lfdr.de>; Sat, 27 Feb 2021 12:23:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230001AbhB0LXY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 06:23:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229990AbhB0LXW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 06:23:22 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 819E8C06174A
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 03:22:42 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id f12so7269385wrx.8
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 03:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=goU9R9t+JlJ5zBWIJBJ3LUCxhb2VZ+jjAsmzQUlbm8k=;
        b=jRcFmJ9ol02Y9CNvbF6u8C0BR3D0OJjXSw39LVCGh0rvibFzYHCwxKHjIPMd13GVGh
         nfA0Hhot9ntPpvQx2zduCMqbFLP9LOqln80hslO8uH7brB6YVwNkTuTrrsq7ceO8ZmJ7
         kzbNwZiHIgwU9eaEpY8FsH9mC8EihcDIw5/dFbnTn1GckvNldzNwDoi4QR0UtoGtedzY
         5cxWapHfPYQOQEH59l+Ba6M+VNP6hOBCy3g4ME3fZvSd79lgMucAKIauJU3OstKF9W3C
         VyI0B0D4YaNnle34x8Jc6i3xlSso++Sm1hi5r+ADt7cLOI6qEpM2nAS8qJS0HWiHNnFi
         DzIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=goU9R9t+JlJ5zBWIJBJ3LUCxhb2VZ+jjAsmzQUlbm8k=;
        b=G0PFwKLzw3yBGRE0dA70xHN2FGOU+vkLufirc1e6oc/gUaOqkOWyp13uClvmgwmA6m
         lcMS2hho9wVpyeBCUleXJdrQhAPGu+ZN0c/v7Mq2zaui0UAs2tWrinApUjUz4iosVyiq
         fghsXL+3obOqlo30ePC8BxYrxY8T/wAGgShemWohIdnhN+1BN/xnZ65xMmhjqKzXk/Vh
         UMOGFLp8ky9x40NhNQkErE/Ib+bBEY0NWzWd5nk7pC/hswtYK8smCR0DRdh3uplx/XqZ
         SSayXl/ppfn+8SYFEMZTS53JEgxDZ6GtcepPb/FKAyFL0qO3cSBo4R0ZYMZlxo4EzCF4
         rObQ==
X-Gm-Message-State: AOAM533Bb12vfxhK1DUMyXzw89HfwzxvgRh44c3WLTTBfafzH74AvbNH
        8zkEb3PtmetIY1ba+oz+hgw=
X-Google-Smtp-Source: ABdhPJw10jn5MpAdnyu4MJGRHy0LJ60k/TodTYtwlpLvG7xC9ZpgZf9ZPQrgpanajXrsMrvlkCCmQA==
X-Received: by 2002:adf:e947:: with SMTP id m7mr7840359wrn.292.1614424959799;
        Sat, 27 Feb 2021 03:22:39 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id c26sm17835792wrb.87.2021.02.27.03.22.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 03:22:39 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Walter Franzini <walter.franzini@gmail.com>
Subject: [PATCH] inode.7: tfix
Date:   Sat, 27 Feb 2021 12:22:18 +0100
Message-Id: <20210227112217.1629-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Epoch is 1970-01-01 00:00:00 +0000, UTC (see time(7)).

Reported-by: Walter Franzini <walter.franzini@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/inode.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/inode.7 b/man7/inode.7
index fe50a4596..d3b9fa1ff 100644
--- a/man7/inode.7
+++ b/man7/inode.7
@@ -207,7 +207,7 @@ It is changed by writing or by setting inode information
 .PP
 The timestamp fields report time measured with a zero point at the
 .IR Epoch ,
-1970-01-02 00:00:00 +0000, UTC (see
+1970-01-01 00:00:00 +0000, UTC (see
 .BR time (7)).
 .PP
 Nanosecond timestamps are supported on XFS, JFS, Btrfs, and
-- 
2.30.1.721.g45526154a5

