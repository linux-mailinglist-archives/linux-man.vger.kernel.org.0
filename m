Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6554A2F8E02
	for <lists+linux-man@lfdr.de>; Sat, 16 Jan 2021 18:16:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728146AbhAPRMl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 16 Jan 2021 12:12:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728383AbhAPRKv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 16 Jan 2021 12:10:51 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88E55C061389
        for <linux-man@vger.kernel.org>; Sat, 16 Jan 2021 07:06:19 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id a9so8719687wrt.5
        for <linux-man@vger.kernel.org>; Sat, 16 Jan 2021 07:06:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0ngzN48o9KxxF/1CTfdWj/qMG5zCQVZwtkG9r9+4yoI=;
        b=fSMAqF4pH8zBfg6uzi9gFcnW1HDPXgXfNsyGoc/27Ku2rXSkr6J+aHBrGlkTfumEKg
         YK+o2LJmabAfJMLCYOJO92AsMPJ2GNjiXach0lcs6CfgsfzMZmTo2B3KBlcfg6obZvV/
         vi8qGFkFbsW2YP/5rAeqLjI/s/1ByZSjTOjp3nGKy5aEDPZitp/zPjB2+JZ9EfvqxATD
         GsQ/vjTaudDXhtMARjwLmcQIHxdya6GAcVDAeudq4diDAElNUhCZ0fA4eZJ1zpZohdLX
         Xo94nu1in70y9m33DxmfJ9CZt3l3Msjpr8oCVe21Fo7+6pADL4X/pFh0i/qJxzJoTNdQ
         T7nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0ngzN48o9KxxF/1CTfdWj/qMG5zCQVZwtkG9r9+4yoI=;
        b=k99Uhnnj8qKq5MQw60GbJjUmtbraxAFUylcmU4eKNaWPLJmaAUrvmoFrA+yu+lbjMT
         o/3E1dR9Umo9AcK7byTGUMRpYCrYOCwkLNOEk01q88y7qk/cBj+VSTGip2GT11PXiiVj
         on3C8DQxqFd0eI2NfQYzxi0fnLCqdA3LAnlMKcHTX7M9IZk2rlf69aJtVjNuXMz3XDrn
         5smNmupYiX/kNxAagpl9+VgkNDE6wVAyzYN7J0pu+9FHswwSwPnWjiUJ1lQccZExE8FZ
         0QCFMR9Q06bHXD1Iv+RMPvclV1RNX+dc3YZITO/NKsrD50lh64UsKyrxfP5/EbaD+lo1
         2zcw==
X-Gm-Message-State: AOAM530hpqvZtxwsNK/Y0ra12XGg5dchZvaOrGvdbSfpffiVVMP5KIEj
        ggQeTmzapg28JNxm1fqJAfm2a19lpFI=
X-Google-Smtp-Source: ABdhPJzzsDuLu5ABDr4JndFBb1hTK2PrJn+qudgT9AZ//qziD7OJRNIS7VYW9LNtN38ootaPhQ5kQQ==
X-Received: by 2002:a5d:400c:: with SMTP id n12mr18497464wrp.218.1610809578304;
        Sat, 16 Jan 2021 07:06:18 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id y24sm1462248wmi.47.2021.01.16.07.06.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Jan 2021 07:06:17 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] netlink.7: Fix minimal Linux version for NETLINK_CAP_ACK
Date:   Sat, 16 Jan 2021 16:06:01 +0100
Message-Id: <20210116150600.8001-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Pali Rohár <pali@kernel.org>

NETLINK_CAP_ACK option was introduced in commit 0a6a3a23ea6e which first
appeared in Linux version 4.3 and not 4.2.

Signed-off-by: Pali Rohár <pali@kernel.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/netlink.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/netlink.7 b/man7/netlink.7
index b14e981d1..ec5d0e71f 100644
--- a/man7/netlink.7
+++ b/man7/netlink.7
@@ -491,7 +491,7 @@ The
 .I nsid
 is sent to user space via an ancillary data.
 .TP
-.BR NETLINK_CAP_ACK " (since Linux 4.2)"
+.BR NETLINK_CAP_ACK " (since Linux 4.3)"
 .\"	commit 0a6a3a23ea6efde079a5b77688541a98bf202721
 .\"	Author: Christophe Ricard <christophe.ricard@gmail.com>
 The kernel may fail to allocate the necessary room for the acknowledgment
-- 
2.30.0

