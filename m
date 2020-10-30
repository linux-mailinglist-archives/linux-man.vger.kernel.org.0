Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6F1D2A05C8
	for <lists+linux-man@lfdr.de>; Fri, 30 Oct 2020 13:50:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726096AbgJ3MuI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Oct 2020 08:50:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725834AbgJ3MuH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Oct 2020 08:50:07 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BFBAC0613D2
        for <linux-man@vger.kernel.org>; Fri, 30 Oct 2020 05:50:07 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id a9so6304816wrg.12
        for <linux-man@vger.kernel.org>; Fri, 30 Oct 2020 05:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aBev6z/GO6J8XXdbRtYZsG4Zr6tkyL6kcGiK3DQO1tU=;
        b=M4uAPdgUy6RnTN4VpSELEezEEfvZ0x3gEEU10px1/1FtM26pdV5jkL+jb8+pHx+WBC
         rJr4Uarzl47lo17lWsOuV5vo43f//4fS/ZaKwA91Z3GKAqh1gxjLgimXcEFfdpOt6C1J
         93XGKvE2pYmPnYmjvo5gqmocLFXyJ1xwJUEMX/eFbtHcQ8uf9nmdFJUZZq0cD4dOZ9WM
         1pOtu0LfzdhmXFpBFBnLgfnwYSpZ11zF75HXypkAkDsxhKc/DESPlQ6e6k37p92BV1kO
         H603hGXD63PDbNqoqaAFirjgutNbi7CyRTXjZLaSE9/r2JN6+X/Cd0OEGrweupoelt/y
         iSjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aBev6z/GO6J8XXdbRtYZsG4Zr6tkyL6kcGiK3DQO1tU=;
        b=nNqDRS9xOENeFZ62iWUmbeV9inqTKzmrc1r3Og/L7pI4JGouuztv8N+cZ+NQlAIg/M
         k8v8OEir2bQrHpQVdPwc5g30FlkyrZJHXLXSg3UHLDwcTMoVQOBU7l2UYHuXTk/Pxa6V
         jFHx6BgSWkS0XT2DP/NzKNDPRElO5/gR0VBPGkVkKM3gnomGb9kPOv3i4FhvdFTf/CvT
         RuXj+gr3Ly0pHIOPfcVZxpZsDrSztT5MWIHLDzbp+frysmP/EArnCZng9CV3uZVHhNaB
         Zp+LDKj8cXTMTe5dYb/z1I07G+i+h2dsD8K7nrMYJ4RQ6BYE4JPfbQVQBHVyPtgSVMW1
         dWvQ==
X-Gm-Message-State: AOAM5310NjicApjOGWHbFs6TR7yfrZ7luF7ymsfDxJjE16D40j1/P+t4
        MFW6SlKc5aZ5rlkcSzS3dxk=
X-Google-Smtp-Source: ABdhPJyMcsHLW73bAK2TZfNX+lwwCw+pJqoTLe8Ka41/jKuaZw45oaAwXc6wEt4C6ZxeD6435VQfeA==
X-Received: by 2002:a5d:4103:: with SMTP id l3mr2977845wrp.260.1604062206331;
        Fri, 30 Oct 2020 05:50:06 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id t12sm10619888wrm.25.2020.10.30.05.50.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2020 05:50:05 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] futex.2: ffix
Date:   Fri, 30 Oct 2020 13:49:22 +0100
Message-Id: <20201030124921.36716-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

That comment wrapped on an 80-column terminal.
Divide it into two lines.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/futex.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/futex.2 b/man2/futex.2
index 73de71623..538001e1d 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1816,7 +1816,8 @@ fpost(uint32_t *futexp)
 {
     long s;
 
-    /* atomic_compare_exchange_strong() was described in comments above */
+    /* atomic_compare_exchange_strong() was described
+       in comments above */
 
     const uint32_t zero = 0;
     if (atomic_compare_exchange_strong(futexp, &zero, 1)) {
-- 
2.28.0

