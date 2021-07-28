Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 673923D9693
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231539AbhG1UUh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231236AbhG1UUg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:36 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10D76C061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:34 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id o5-20020a1c4d050000b02901fc3a62af78so5240976wmh.3
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=w9vQwFcASQb3EzHQLNWp4nDbfy/m65eBhxhxbhipZGg=;
        b=eO/hn6Kg7KIqd3asEXCYfCnMmDyO76IcbRxLk/4hu/bmZ3Na3KUz4VT84S23cyWqLx
         dc9DLh34ebbb6dE8Bx74eiqVpmH8noabqxLzJd8QAJZVmFla/fpJ1EFEMgLEUt9NV3HU
         ikJ4aSgjBLbeg5NAGOZ0lbB6gdhUV93hrv/IpfCUM9MODpn6foDsIP/HJJF1YEAY23/p
         EsJeZXkBBx+GTHiviqxWJXqSUkA5FssJPO+MUXfzqS61dPktWaYZ4MQRrto9pk93Oh1E
         VK9sstc6SQ9HSbNROXO7pbL0yEleAkh+Z8B9Mqb8LCuHcHulO/sqUKMQYoyU7o1cg6FJ
         hXIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=w9vQwFcASQb3EzHQLNWp4nDbfy/m65eBhxhxbhipZGg=;
        b=UKmoxGegFYkOdanUXUUjdp25NyyJt2KwifJ5RIzUW2hgPFNHZ2xv+AURxApL6TJHNx
         H6e8ovxkQQ9a1dCs2eLXMQqFNmVN69X3mLUiI52zoRETIN18NagilTrjNyMkfgNrCLLj
         eBTvy/T8jaaTGnC9XJfXB/RhhRSv30O3w05toySGhMD9t4hG5S1oPQDEwlME/YUMGot2
         1oXZTv8lqSYgWojHfV/u7mHeeepqzay2bEr6dmfGAgI1mftI8qeHGRvtEuaXnEBup39e
         XgNLfa4mGeAQ2nqEBfcmpaMfaB6YzPgkN7qbxsrNR/Mp+IDiJTH/J4m2Zh/i4ZKH79l7
         mEKw==
X-Gm-Message-State: AOAM5307jRkXJn7+YJAIwqt8MMHf/DeWfOpCsEVFTFGeAQKlUTaaDU8x
        RpChrc2SvnhgHaLo6TcP2/g=
X-Google-Smtp-Source: ABdhPJx356Cr2+12oERrCGsrwPD4HEOreCd8CoGnoTVYSeKcQ5rWGlZG+1y9jX35swta7ka6hLdu3w==
X-Received: by 2002:a05:600c:3581:: with SMTP id p1mr11297962wmq.150.1627503632697;
        Wed, 28 Jul 2021 13:20:32 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:32 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Richard Palethorpe <rpalethorpe@suse.com>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 20/32] wait.2: Add ESRCH for when pid == INT_MIN
Date:   Wed, 28 Jul 2021 22:19:56 +0200
Message-Id: <20210728202008.3158-21-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Richard Palethorpe <rpalethorpe@suse.com>

Please see upstream commit:

 commit dd83c161fbcc5d8be637ab159c0de015cbff5ba4
 Author: zhongjiang <zhongjiang@huawei.com>
 Date:   Mon Jul 10 15:53:01 2017 -0700

     kernel/exit.c: avoid undefined behaviour when calling wait4()

It avoids negating INT_MIN by returning early with ESRCH.

Signed-off-by: Richard Palethorpe <rpalethorpe@suse.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/wait.2 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man2/wait.2 b/man2/wait.2
index 5ae955b3f..63d872ee6 100644
--- a/man2/wait.2
+++ b/man2/wait.2
@@ -455,6 +455,15 @@ was caught; see
 The
 .I options
 argument was invalid.
+.TP
+.B ESRCH
+(for
+.BR wait ()
+or
+.BR waitpid ())
+.I pid
+is equal to
+.I INT_MIN
 .SH CONFORMING TO
 SVr4, 4.3BSD, POSIX.1-2001.
 .SH NOTES
-- 
2.32.0

