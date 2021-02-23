Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6523B323433
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 00:27:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232947AbhBWXZ7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Feb 2021 18:25:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233954AbhBWXSa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Feb 2021 18:18:30 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BB06C06174A
        for <linux-man@vger.kernel.org>; Tue, 23 Feb 2021 15:17:49 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id v1so84238wrd.6
        for <linux-man@vger.kernel.org>; Tue, 23 Feb 2021 15:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DZmO3zNW5LHtZECyzeRI+IbshNJZYe7OeCYXDIFhGlQ=;
        b=QmluvKITVgFB2mYovLM9NkZm3+DCmE7eNVcEGJiBkvR5qEZX9PSDBZAx1hzLpf3N/S
         L8H9qb9f2fa8mq+9szTBtFGEApCiCVH8QlaUSUQ33L4XfNibK/47rWJ1xaKeGXGEQAqE
         CrvyXkImX0/JiUqjcmPtJVpzO/kdkRTDNp3stPJZPUL8PKXMgNJMDBlOw0klBYixZKhD
         KaK9k9YOfiAkbYYOuJRroLEsmlf+TjrBYK5txrcB9vTw72FL3v+GO3CXRZ5RcglPNcym
         g2/J3/2GEn7lhcsmYT+sqBm3Li2oHxib7oocTIZjEXNvAZc18/E5/ga39cMuUFP3ovYY
         UhYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DZmO3zNW5LHtZECyzeRI+IbshNJZYe7OeCYXDIFhGlQ=;
        b=C/xhCoMpuRFE1fPggrABK5b8SW2O4sIitj5hOJho7jJBu54iJjTgOZcIjGVfQlF8NG
         Zm8BKTybZYhQIQMqFWy4f4BSi5bAW1mG1VQmIGUW+kp+vAucU7C1c76KdRSXU6rfDuwu
         DWXNPsVZSb/P037w4XCDHJDqrp3qjXpT+u/80onut39yt8yvdEgZVxJW6nXRvEX29ajA
         L6wIZnRVkXVAY5o32/2Qaq2LNnKrEkGsJzMbTIGnWF7ZlhZYo/GifCfvEmrvotnkFprr
         xUxcQDMGNUWwCz5HIi1YNlh3RB1dZOMWfuJFAeSkDu8kLVkIb5RtYFrq+zXmhXmBxKkU
         65Hg==
X-Gm-Message-State: AOAM533Y88mRUf+3MhxhbzhqO/URhZYJ5huoPMuT0I9tj8LTSiKXHQsw
        HdCF1N2qrIJS2vCbv6Km02aP8QRIYU0Ttg==
X-Google-Smtp-Source: ABdhPJxZDV/AJMqHAhlliOeljL41Q/JSy6XS8nOg+RvlqpOUz2OGRBjd9AV+z26rMpOrizombziS1w==
X-Received: by 2002:a5d:6042:: with SMTP id j2mr197494wrt.336.1614122268414;
        Tue, 23 Feb 2021 15:17:48 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id v9sm259618wrt.76.2021.02.23.15.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Feb 2021 15:17:47 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] fflush.3: SEE ALSO: Add fpurge(3)
Date:   Wed, 24 Feb 2021 00:17:14 +0100
Message-Id: <20210223231713.124003-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

fpurge(i_stream) does the same as fflush(i_stream), AFAIK.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/fflush.3 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man3/fflush.3 b/man3/fflush.3
index 26b91e618..bbe3c453e 100644
--- a/man3/fflush.3
+++ b/man3/fflush.3
@@ -133,6 +133,7 @@ or
 .BR sync (2),
 .BR write (2),
 .BR fclose (3),
+.BR fpurge (3),
 .BR fileno (3),
 .BR fopen (3),
 .BR setbuf (3),
-- 
2.30.1.721.g45526154a5

