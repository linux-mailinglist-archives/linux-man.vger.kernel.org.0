Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82D91357E8A
	for <lists+linux-man@lfdr.de>; Thu,  8 Apr 2021 10:57:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230211AbhDHI54 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Apr 2021 04:57:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229588AbhDHI5z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Apr 2021 04:57:55 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEF4EC061760
        for <linux-man@vger.kernel.org>; Thu,  8 Apr 2021 01:57:44 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id p22so797230wmc.3
        for <linux-man@vger.kernel.org>; Thu, 08 Apr 2021 01:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iw8n/FSk3Jc9bFPImzhTzY6c4YmUEz17qiWTFHWVb9A=;
        b=PDW7mRnWB/tA+xMvokzmNVS8heJKek+1nMztq9FwAFSgwSi9M/AXdBRquaby7sdP7c
         JYsO4+M94as1DmAmi0WniQws95XsQkboO9JlTDrVMIzP2wxLOV7ZJa/PiKIL74TbYvE9
         tGcy9eMl0ulWm0ed0ORSavNLDv8DR7H8Q3vdUfuBxz6ScyOzbvCNgrwB1E+WGMpMytks
         L7uda3Ujh1SV8MISVndOua3mEUThbjR6gukNlanlcqyDEaCVgFb/C7hyazJ11gdEaJwS
         t2NuGbTzAEmYyBClI+XZMtO1jwqlx9vjezaBTWPwhAaAEJ6FGShU7KKwhhuek3OnYJbW
         S90w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iw8n/FSk3Jc9bFPImzhTzY6c4YmUEz17qiWTFHWVb9A=;
        b=L7tY9zIBkGNE61PQG1D7pZ6mdX6QT3G1ISD+nZQOM4FLZbjkZsulPA/Fw6zx1N/N9q
         e+9EzA6t/iVLK+EQupLBiz6KA9dXLZNWd2mKf7IIeXjeJJs2+DbX82XCaVydY40eJFZ1
         jzu7UG7UyppC4rgzXDDnMtf77MWlznZ9k6RlNVbNrtz67oBum8DAkL1kq1orQgu50zmJ
         4UWfLxC1+L9I+Yi6xswL03MPgsP0IL2gwiLQV/CHHmLaFJJG3tyvl2rgCb50tR41SDCB
         8v7ammuEC+iSwF4Do/MM2dxtDObIPR4PvLqn9MG3/6Uwaf6cwCSJRqEeP0DrkmMZxK+N
         5DEw==
X-Gm-Message-State: AOAM531sjGEIoFCyJmLfL9t9Mlo/AD0iXMxNKGj3BiRF2tpiCTKJXK/s
        +GlZuFpoe4/LWzkQRKW02p0=
X-Google-Smtp-Source: ABdhPJyoG8jSxe9voky6ZJy12knW7g80hLoAEanaetBzY+PmbqLsagCL8MY30gC4c3oiPuiEu2hswg==
X-Received: by 2002:a7b:c357:: with SMTP id l23mr7169325wmj.152.1617872263675;
        Thu, 08 Apr 2021 01:57:43 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f2sm13071875wmp.20.2021.04.08.01.57.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 01:57:43 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
        Debian man-pages <manpages@packages.debian.org>,
        "Dr . Tobias Quathamer" <toddy@debian.org>
Subject: [PATCH v6 2/3] Makefile: Fix bug when running in parallel
Date:   Thu,  8 Apr 2021 10:57:13 +0200
Message-Id: <20210408085713.7093-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210406111448.20392-1-alx.manpages@gmail.com>
References: <20210406111448.20392-1-alx.manpages@gmail.com>
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
Cc: Dr. Tobias Quathamer <toddy@debian.org>
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
2.31.0

