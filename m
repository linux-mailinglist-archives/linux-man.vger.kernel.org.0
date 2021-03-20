Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0026C34304A
	for <lists+linux-man@lfdr.de>; Sun, 21 Mar 2021 00:23:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbhCTXWH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Mar 2021 19:22:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229863AbhCTXWD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Mar 2021 19:22:03 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0682CC061574
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 16:22:03 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id 61so12786723wrm.12
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 16:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=d6FPwd0DM2WShmGk8wx2+8TJ8sOWQ7uReyLnh3v51zY=;
        b=ELWik9q3Wz6oC/nm6T9YwcMIWxMuWaUOziGQdHt7BrBlvtl9DE5mlRwxQoz44szvel
         SO6eUOAahCLipKivptni9OR4IEb1zQYTo3rCIyt51LSkouseTa11XvawgFH5w8vD4BsA
         Nd3f2Yiv3twaDzbNHJ3cDeq4j40osRgUYMVq8ImuUL9KJRXI15RaUslsmGJG69Qz5BG/
         9JttShOYbSraOn4g2xKIfold+sUt6HF/hO40crZJGiK1HV/K/YllVnzIiELqCP+Azckp
         s3Zc1LNJuNzckiY/TRrpICt+5avrG1aZt55FOPOojPUaXqj2LLwbMb6lEOsQozkJlD1y
         yrfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=d6FPwd0DM2WShmGk8wx2+8TJ8sOWQ7uReyLnh3v51zY=;
        b=QAwPch7Zk8YA95wiNe2NX1ioQ0D2tAHvy4HTMEvRoz/VLXTBWLtn6isG89u0eo7qfi
         MsaN4awe8eOIHjEeFLg8AA6vu4S3o1X1UYLnGB8ZzJhR9EbzmkbLUP5hk6X2zuLIxmW+
         /bCTLm3q3AL0uPDN7qPo7KzWCmXR6bVzdWJNV7z7jf6uvtLm1HRaDWXHZOSihqDeQXTb
         tk+641la+DCV6C095t8Hhz95seg2QhI/fIX5BBTOmkDLpNDHTUBflyWo72ux6SYnQXmO
         9JrAwcpOTMpCFfrlvdWNYyACBtaDwYZtMAg4+CjzV8p4NR3rhzmHRtVNGWkMp/t/DSrb
         zRSg==
X-Gm-Message-State: AOAM53108E4uww8kpecjmBq17QHDXpljjX6y1I541kbDphgYSxZnrUsl
        IByri3EDAQE2Mey/ZgQnfOc=
X-Google-Smtp-Source: ABdhPJyKK+2ot9rAJrwDgBmq0WtkxM25JrWoV8RZ49Z5GHQ+Ru1ahtF9OX595D3vByZfHeT/igszNA==
X-Received: by 2002:a05:6000:223:: with SMTP id l3mr9852217wrz.5.1616282521882;
        Sat, 20 Mar 2021 16:22:01 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c2sm12189140wme.15.2021.03.20.16.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Mar 2021 16:22:01 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Debian man-pages <manpages@packages.debian.org>,
        "Dr. Tobias Quathamer" <toddy@debian.org>
Subject: [PATCH v2 2/3] Makefile: Fix bug when running in parallel
Date:   Sun, 21 Mar 2021 00:19:50 +0100
Message-Id: <20210320231949.183276-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210320230659.182237-1-alx.manpages@gmail.com>
References: <20210320230659.182237-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Prerequisites can run in parallel.  This wouldn't make any sense
when uninstalling and installing again.

For that, use consecutive commands, which run one after the other
even with multiple cores.

Cc: Debian man-pages <manpages@packages.debian.org>
Cc: "Dr. Tobias Quathamer" <toddy@debian.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

v2: No changes; resend

 Makefile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index a7a4ca284..683dd12be 100644
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
2.31.0

