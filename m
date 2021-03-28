Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2809734BE72
	for <lists+linux-man@lfdr.de>; Sun, 28 Mar 2021 21:08:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229656AbhC1THx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 28 Mar 2021 15:07:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229950AbhC1THw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 28 Mar 2021 15:07:52 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82EE4C061756
        for <linux-man@vger.kernel.org>; Sun, 28 Mar 2021 12:07:52 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id j7so10696612wrd.1
        for <linux-man@vger.kernel.org>; Sun, 28 Mar 2021 12:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hRp1rDvJ62u7qoEDI49izstEbUDIaT2TWrfZgv+ZlBU=;
        b=jmfNEyuTQEF2u1/8NgzL43+EpfbggIhlS0Sv2gFE3zwOpwD6HoJqGvwkqks33niRSU
         XC5ecoEC/4Qoo2nBBIFG1fg9gTovOpPa/Wi5hG5bR+QsaKeJFMUVG/QzLH05pi0Srcz6
         1wtEFHOGOSGfix7C6yK83B9Z0W2+ImXg/Qiv+mSZdk/doAmcBbvJ07KRX6H9CgTGhSD0
         A2A7aAIC51VbPg1lvg7ZKSP1mGsKDrkBGJZsT9EeDK+O5K/hqXTEx3K98TEFdMDk4S8J
         A/nsOTcLkCIPJHA9ClLWZVqKSe2qPktXbCG7zjIAi6ICP3sJEDPx4FV1kSpGPLBCnHaG
         /O8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hRp1rDvJ62u7qoEDI49izstEbUDIaT2TWrfZgv+ZlBU=;
        b=Le/IzMI+BFMOrvbpmWNU7HIvsIKTG98LuSA7ZXH1hUNe9rhyeKMn4yqb7ilJmPLbga
         fNj+Op+MaZplJEaBNQaB4bjo6uDToQIJ+qwcFfflOpzGpX+0DwORVW94W96vPqkeHLiy
         dU/7SLn9WKS9lmrDhIJ3eU2HzuI7NyClHiwapsBje52kXUAolWWVItaDr8VEsTzAcqBL
         b5d7pvKE78AWNFWGq/yVkTsJyVrSl2h5xv/7C8peWlWgmahuoP1BwnnMbZho9q9WbiNP
         598gjVFCEbBJOc+lA8oz7d/bVZlhwL8P8YIj9NS7b0DYQOq7fJNT+cfoNjuj9q2wJn7E
         YR1A==
X-Gm-Message-State: AOAM530hJhK69O4jdk0KeKs62XJ4uv3+u8DTbpsAXPTuxksgBnbwyHhF
        DbvuoTz9tgK1zysrst1hnwo=
X-Google-Smtp-Source: ABdhPJw03KOaeJIBpCbkF3Q1hvy+c04h0BQLjuNP5zzSOBitsCkUzDIRmWpH3ceeJcoPzSASSp8b3w==
X-Received: by 2002:a5d:65d1:: with SMTP id e17mr23568257wrw.333.1616958471272;
        Sun, 28 Mar 2021 12:07:51 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id s20sm21406129wmj.36.2021.03.28.12.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Mar 2021 12:07:50 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
        Debian man-pages <manpages@packages.debian.org>,
        "Dr. Tobias Quathamer" <toddy@debian.org>
Subject: [PATCH v3 2/3] Makefile: Fix bug when running in parallel
Date:   Sun, 28 Mar 2021 21:06:01 +0200
Message-Id: <20210328190601.68165-2-alx.manpages@gmail.com>
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

