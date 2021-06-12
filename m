Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C3253A4DB0
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:33:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231168AbhFLIfR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:35:17 -0400
Received: from mail-wm1-f46.google.com ([209.85.128.46]:37711 "EHLO
        mail-wm1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231145AbhFLIfP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:35:15 -0400
Received: by mail-wm1-f46.google.com with SMTP id f16-20020a05600c1550b02901b00c1be4abso9937996wmg.2
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fUsfMOGS4WUdIabEmz/ZbqsUN1En4tGcaRJHlOIsWk4=;
        b=oF5Qc4o0zAv2orhb3bcNFSIFJ7PyKoLf8xyWcVCznC7KRdkUc2ZmWPWGZGFj9sQ2hW
         6XhzgtueJGzfsNxIyALmqIqd8z74r40gqvx7ocbFSJz8qeoDhYiVLCNBMrbtEwdPK8zJ
         YUb/FWupOBkGC/WDvpO3yTcSBAE6MLJwcqX16CpsXPdFPpQ0q2lxDT0JA4TXP33XqZRj
         iauzP7UoI41SbI7NNoo9GSvPXCMZ6nuREYqy4AbQqAEuW1dP6Bt7isqbX6SX2tTRgrqQ
         b0AqjcGh+2Yjs0kdGIgCM03bzsai6VV2mCae5o8wQexLhMlSVeJ6CJwT/hzamlU8RqEP
         Uf4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fUsfMOGS4WUdIabEmz/ZbqsUN1En4tGcaRJHlOIsWk4=;
        b=Y6R7PTzhAY7zAn+5AuvCy9t5W/USlJCEcil3XCRxj8D5Nog1CUc1Ga5JT+Jguo/GsM
         icyAM6YUULEcdw1+Sk7Cv3C4007A9GUjhUMyj2KkH6CoIgPuO8p7YYY68C7GZyGRCmYU
         qohnSoaiCqVUSZy/mwD7eYdC68U5xWf2/oN7bGm20hwCfk2KDPxBDOoU6YZxnyMVpqLB
         73YtoHs/OFBlw+Esf4YoNLlV7PWPVic8uqlVbwkNoqZuZzZfU9dh2ehlELLg/JWPw+7f
         oA4dE25Jnyq0aHvSbrHAHt1i+Fd+8kUbWwj5DPMiF4i45lscQ8AzxWzVIt4DGEaZWvL3
         pL5w==
X-Gm-Message-State: AOAM531YZbf7LBvwEiqT3Isn1BrmAzoTbt5tTf/43UV46GAYugUiZF78
        sAIWygHZv/8PMMhAc4wzTjI=
X-Google-Smtp-Source: ABdhPJzsecpYRU3kPUWf/x/xEReQHykkRCo27IPVb5tQUdy4LWBUOGZYPJMgjR9VteLazTTPz2LTwQ==
X-Received: by 2002:a1c:7218:: with SMTP id n24mr23701453wmc.104.1623486723161;
        Sat, 12 Jun 2021 01:32:03 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.32.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:32:02 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 22/28] userfaultfd.2: Remove unused includes
Date:   Sat, 12 Jun 2021 10:31:39 +0200
Message-Id: <20210612083145.12485-23-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

<sys/types.h> makes no sense for a function that only uses 'int'.
The flags used by this function are provided by <fcntl.h>
(or others), but not by <linux/userfaultfd.h>.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/userfaultfd.2 | 2 --
 1 file changed, 2 deletions(-)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index 593c189d8..e1a18a9d9 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -29,8 +29,6 @@
 userfaultfd \- create a file descriptor for handling page faults in user space
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
-.B #include <linux/userfaultfd.h>
 .PP
 .BI "int userfaultfd(int " flags );
 .fi
-- 
2.32.0

