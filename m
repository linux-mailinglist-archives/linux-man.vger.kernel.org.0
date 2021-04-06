Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1823235525D
	for <lists+linux-man@lfdr.de>; Tue,  6 Apr 2021 13:34:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245651AbhDFLe5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Apr 2021 07:34:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245758AbhDFLeg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Apr 2021 07:34:36 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B0A9C061756
        for <linux-man@vger.kernel.org>; Tue,  6 Apr 2021 04:34:29 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id u11so1416772wrp.4
        for <linux-man@vger.kernel.org>; Tue, 06 Apr 2021 04:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iw8n/FSk3Jc9bFPImzhTzY6c4YmUEz17qiWTFHWVb9A=;
        b=I8AxxRjOPnsw4d+PcswHybhvrJkBs+ZOK0EVUHaEZM34yXXSGMcOUHPl+yASPyzdMg
         ApofOobw7cCtc6FpkB1kMeHhkInNSUSG4zn4Mp6wyytmpGd5LNX/9o/l/EIBp4ipyElh
         8gXF4pQYJWVPyUxxd1tOBN4DccU4VjSqwjRre9krC15yXAcvjCFT+1mzqS4O+fsuNN0Q
         CAbju1AAyDoFs6UkMV0pcwm0iSziPscBnB+fvTOR0FQLCISH+riz/utjFUjzQmDcDrWr
         xfUTYV4G4jmHKki8HvMuKzgy9902cdG6HlrkK6uFLptlhNWVQxldET5I71RWlSq3ZSLc
         hGkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iw8n/FSk3Jc9bFPImzhTzY6c4YmUEz17qiWTFHWVb9A=;
        b=ixybWvyPTE9LwW5D2sxDVXoTVqJ/6XB7PAcG+faOmyo78TYTinEAhWsIj3Gf0MXCwQ
         QmTDD/6bxZNusXUSG/+u/8HCCl+gB6oSNmBhYC3hPFfLB1ixsEw2w4V+1aCOznAekLoj
         HehF3FCrY4NshA4ZNW/8nVb7LQYHz/nkpYhqwwjRkNRbp2E1mI1xQD05x3j2wX8mBPA8
         iBmVE7HS+d0K1OmQ9bLT2X69UNqaO7wNYTZzQ9GORRj/pkwKyWvcgI1XUIegmGT1+5L0
         /LztVBjnWS6bKnYjt2c9THpl6Uh7gNVMBYXd3U3j6TpXXEnWsg6O65aTpaceMyIWDbY8
         4Ckw==
X-Gm-Message-State: AOAM533DZtXt9H9K4zhfK6Ud+bMlNMcyZqMAwm4u8wQFl0Ihpo1sVWmQ
        jtVZi03kCaGq41R86Xm+J9fJz2WUIr0=
X-Google-Smtp-Source: ABdhPJwPlvNeJWm7UVz7pNmE7nS/plGDoZiabFMQa6aiHGViInts7DuL2B1EYbqe7aYOV47X3GTclA==
X-Received: by 2002:a5d:4905:: with SMTP id x5mr34263301wrq.201.1617708867956;
        Tue, 06 Apr 2021 04:34:27 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id 187sm4408030wma.0.2021.04.06.04.34.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 04:34:27 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
        Debian man-pages <manpages@packages.debian.org>,
        "Dr . Tobias Quathamer" <toddy@debian.org>
Subject: [PATCH v5 2/3] Makefile: Fix bug when running in parallel
Date:   Tue,  6 Apr 2021 13:34:10 +0200
Message-Id: <20210406113410.22384-3-alx.manpages@gmail.com>
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

