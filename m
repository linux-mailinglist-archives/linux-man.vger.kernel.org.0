Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92BF83778E3
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229987AbhEIVpc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230085AbhEIVp0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:26 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFCCAC061344
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:20 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id z6so14559587wrm.4
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gXM8+4PzVofU9cvKLuTdeWXQtlG8OnU3Cf1SkVMOQqY=;
        b=gL6J/dhKquqNIJ3tUmZvj6h3c2nIBH9Fqng9g5u/ptL3zPGxzUBJGJZjm2KIuT2Aym
         /g0296H3bx117jggaGSeMgRrazt+NX/T5M2Mxx0LILKSwLOiPRJOHQ/yVPVJt+ftswqV
         qAXYUkPHgsLubwQVYWDSNlO0LijQb6DFARpQPEHE0OxAlpj+2HPs5I304/GMtFOIORgq
         txuGdtZwenSEqCdDBqId5iR5F9PjnommVxf8DTaE9vXPowLDv+QC63WJ5xbwx9HixAkr
         RL7ODvw6W9swwRbXpYybNnnI2Syt7gmwLOBgs9uwGqqZc3FMFLXX7wJlQCShdZCpuLUD
         +vxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gXM8+4PzVofU9cvKLuTdeWXQtlG8OnU3Cf1SkVMOQqY=;
        b=pc05QpbViQMv+WFMDg1UF9ioET2OrW8Z+Wq4CePOMWz9nFfS1qD3mXHvNxlxXBHzHg
         dFlvop8e0emgCOu37KzC2MJIrmOv+XGUYiAG0CezEJ+/9hQcx494ehGHDGqRAUvVfvsu
         f1TNkB/U3YTQbxqV2MOl2H0XUBVmj92hAA4+m2iX5Qrgo8S/MlyzHqZXzdyCLKc+ljXE
         sfleP+8D4p0ZS6bmxsx97JFYttqo0whGZcO/wjPjt694RxOJQw3PlDk0U53M5KCCLZHQ
         hQAC4US9pnuqVVWJrHDYzyjc+pxhh1CTyHFDsjQVRKhkxTlxMlLXp0ajq5ftjy0VoeVX
         jZ/A==
X-Gm-Message-State: AOAM533yTqkpRGwHgt+dIVTLqZ49odVUSHXe4EjfwgWiPmNjWjlCmBSS
        8LJCDhJ/Pw4mzcDd1u5TEXulqBDjZTVlmg==
X-Google-Smtp-Source: ABdhPJzEN4LM2cS0oql1Kk94sy1QzKWfyGWFgtXbyXMmtcUoMGgKLTvXGc/POfb5KexCVb2H+BIAlg==
X-Received: by 2002:a5d:6687:: with SMTP id l7mr27326090wru.235.1620596659476;
        Sun, 09 May 2021 14:44:19 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:19 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] Makefile: Fix bug when running in parallel
Date:   Sun,  9 May 2021 23:39:28 +0200
Message-Id: <20210509213930.94120-34-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Prerequisites can run in parallel.  This wouldn't make any sense
when uninstalling and installing again.

For that, use consecutive commands, which run one after the other
even with multiple cores.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 Makefile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 430090801..fdfaf9645 100644
--- a/Makefile
+++ b/Makefile
@@ -20,7 +20,9 @@ INSTALL_DATA = $(INSTALL) -m 644
 INSTALL_DIR = $(INSTALL) -m 755 -d
 
 .PHONY: all
-all: remove install
+all:
+	$(MAKE) uninstall;
+	$(MAKE) install;
 
 # Use with
 #  make HTOPTS=whatever html
-- 
2.31.1

