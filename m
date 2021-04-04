Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26D90353802
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 14:00:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230470AbhDDMAD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 08:00:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230364AbhDDMAD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 08:00:03 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C933C06178C
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:57 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id q26so2914422wrz.9
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K5YwIWG/8F5sW1/imtEvmVktAteriFqdqPrFxoJWAT8=;
        b=KHxqsPnVAAlYhEsyveWvE6EcAPfZ4nCWYGjSTpgMcbBsD/Z5ksfXRRZBwXB0Sg5ODb
         t0t/3l41Pal5vs9Y8eeSmhNZ5OsBrkmPhlTQQI9tzSmQAlBdt6WsSnkwBMmrCYuLcPqO
         6wogSwU5j1VUeifOKq9epyF+zw46SPrAsD2aBYBf1mUxZGIIrabgNB4KDBn8GQPAObtF
         kIKjp6I5fYAepxEsVgYS2LWZeAc90cG+usHBWsVji/w6LKLtUS6B1ol/fTKMRtALtSIn
         n5+9K9yuLVOdRpTPWM9UCXit5MoRxfpiSi/Y6a/mogdNi8sLAg8oP5NPK1LyrypLrqv6
         sJBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K5YwIWG/8F5sW1/imtEvmVktAteriFqdqPrFxoJWAT8=;
        b=m9Mzuxhi18RsA3SsO3mAiq4UtqfbwmgIlNA70iyL+dI5F8o/GA6i2JtJro0rq8/dfe
         Wqs120JbU1adhUH+RRdecsfdY9kcK6FkAW0dIv+15VKJig1jm6m4hTXlJFGvnA7wEw7A
         hJVRIK/0F5OZLMho/n1tyFsOLtOc5N+FeAGhqO9CR2mCf+gbYZJGj5CsaVPJNJsNXxQy
         wtPCbxNcPXC1Pxw+rshLXGpmfQgBBGM8KoKFqsGiOhb2QFOJrSd1jFS+HQO6dYFJk95g
         RV7H/7mu7s96Nsx3dxmwbelWW9r/kPrzowCVvtc3uwmitAdZp9cDvVh64ZLq+veC145/
         Bo9Q==
X-Gm-Message-State: AOAM533jjt7ybaJffqulsPiOFheaIVquYeB5J2DR5jn9iPuzrYKFoZTh
        fDeDEMOxHo7ZGIQj3Rb5vog=
X-Google-Smtp-Source: ABdhPJzYjtQqtOxb+XaZz/eiKmzro5Fa6YeXJBnipBCElFvUSjR+du6XC0eHpOctNsvAUNiq4xLC1Q==
X-Received: by 2002:adf:8b45:: with SMTP id v5mr24106339wra.398.1617537596240;
        Sun, 04 Apr 2021 04:59:56 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:55 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 33/35] ioctl_fslabel.2: ffix
Date:   Sun,  4 Apr 2021 13:58:46 +0200
Message-Id: <20210404115847.78166-34-alx.manpages@gmail.com>
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
 man2/ioctl_fslabel.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/ioctl_fslabel.2 b/man2/ioctl_fslabel.2
index 9f5e0dbbd..af17256f0 100644
--- a/man2/ioctl_fslabel.2
+++ b/man2/ioctl_fslabel.2
@@ -36,7 +36,7 @@ If a filesystem supports online label manipulation, these
 .BR ioctl (2)
 operations can be used to get or set the filesystem label for the filesystem
 on which
-.B fd
+.I fd
 resides.
 The
 .B FS_IOC_SETFSLABEL
-- 
2.31.0

