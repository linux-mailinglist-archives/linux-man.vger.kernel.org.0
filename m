Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BBC55267673
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 01:15:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725849AbgIKXPh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 19:15:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725907AbgIKXOv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 19:14:51 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B660C06179A
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:43 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id j2so12937491wrx.7
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Dfh4OMUxNbtfcjjSHOOb/wk3DHBlLA0QtEYiVnqt2VA=;
        b=IGkTlj2Ztf43mhQQWCaELPz09IX1BufNAsjuG82pTYfylbTtj1rWeQqm9dnkVnj6sx
         ChEESdLHtcXF4fRk7OSXfYvLnHu/AdfRo4d8dg8Liu4pk/B68EpVLq/Q9q/RoVmRr/en
         v/qmu0pNlj82kNYKdZ2zLxPkpotG2udxT2sc5QDGb98APHGDVmCp/jxv942vuTLCHk7R
         VZCfI6gPsEOLFsQ+hXAyIOQ9/r/0K0zOD2AXa5tVn/Ek8pobsJ2kyEF21tjl4ncKAloZ
         RBFdoAqIHzRad4dFKwBunVujHrw1HpXAoEdvA3HAY4UcTqYpFw3d7Nky4n2+uBl5cD2D
         9NPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Dfh4OMUxNbtfcjjSHOOb/wk3DHBlLA0QtEYiVnqt2VA=;
        b=ce+c1LuS+FNZjKH/K/FPZhK3s5QlUyN08xAgxLuY3SguYw7wWptTvappxDnBe82jcM
         VVf1j0hg/7F1rkrAllYcFqr0kiV3Bt7b4fr0BVpLBI2Vs5/JErdDhsrWGF4upP11QrI9
         udobqiVRrHWsBtdZu2JoLHRvYmVCDRIMo2xw/piJGGRCOZ3OJdjbofQRMx81Vr2+fcU4
         ZOVYj2brYjS9DoJ3l+Sn7QWi29rksQy9fFvU+PM7OVOmqQKh0U3uuFgV3s8hw7fexwQT
         6fZHt1j5HZCSiI7GkZXXSmOLr3R8Fh/4gimV+4sWGCypzO3i4rPKvOLS/rgprc9e9gnn
         mQfg==
X-Gm-Message-State: AOAM53345bKzXJXK2VLUNbKBvPlrR7Gfz4MhCfe2R+nts6mrwzVBv9jt
        4P4ECGPw9zapQApKonHotAJZwWUZUAU=
X-Google-Smtp-Source: ABdhPJx+eAVPkUAJKCQnlvJoktUqZeHMeo4XR1qDgixFSMjtB4I5WyZAZx5Tfz/z+aSP7e6Gy1itRg==
X-Received: by 2002:adf:91c2:: with SMTP id 60mr4536094wri.292.1599866082292;
        Fri, 11 Sep 2020 16:14:42 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id b76sm7300806wme.45.2020.09.11.16.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 16:14:41 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 10/12] spu_run.2: Cast 'int' to 'unsigned int' when printing with "%x"
Date:   Sat, 12 Sep 2020 01:14:10 +0200
Message-Id: <20200911231411.28406-11-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/spu_run.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/spu_run.2 b/man2/spu_run.2
index b6bc2c131..ddd03ffd3 100644
--- a/man2/spu_run.2
+++ b/man2/spu_run.2
@@ -254,7 +254,7 @@ int main(void)
      *   0x00000002 (spu was stopped due to stop\-and\-signal)
      * | 0x12340000 (the stop\-and\-signal code)
      */
-    printf("SPU Status: %#08x\en", spu_status);
+    printf("SPU Status: %#08x\en", (unsigned) spu_status);
 
     exit(EXIT_SUCCESS);
 }
-- 
2.28.0

