Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E2713778D6
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230016AbhEIVpR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230025AbhEIVpP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:15 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9E7BC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:10 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id b19-20020a05600c06d3b029014258a636e8so7759552wmn.2
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9kjlm1hXWvT/FVFoxKbkZ2MwN+QktJ9F92J2Bfew7kc=;
        b=dADrr+XlgyTCgcysOcrE2hIjzf55SSAWeVh1ukayhWOn2qWdYk+/SRtqcuOBphCMPn
         jaNaXMvSj2Qc/Ky1LGGXZYbLZB7JG89uKSowZxMPq+1rJA+W2i83SmA3uA57Ec9+p0vt
         Y7ilkTUDI5f87y0uVZpiikiJNKg9sz8sf+pBZ7QqlfRP3PRU2c9c/aeVEllhf6fhvRx2
         6YLZ5113Q1vlHKBYjcdu0kLPRCoU5d86LLpkOUb4JaoBgyKAG/94Y7W/z1jWJp9gYS3o
         9Nfn9JOSdGxkg4a7Y5yO7QUhU7arbzXMRjW5wwUXZcWf41D5CoDSQkIGR6LSf9pu5BIJ
         PXjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9kjlm1hXWvT/FVFoxKbkZ2MwN+QktJ9F92J2Bfew7kc=;
        b=LJxeTjr1Ycpx8oLqYF6vEoEvn1mT7ZCD/5uaTwkqgpFsVuCu9vh2xN63w7DXrXfSic
         LPHzk9tqja73BpFWgzJ4ohfXD2QvGOj2/s7MENBmBSzfzjbDii6wB0XSYtmJ08nG0fBZ
         yFDrS/M2V4byWoMd+nkjoU733EKBeTd8bCL1mRdYmBfeo2VTX3BE0cWyU4Zlf0N4fJM7
         ad5MNFAkKd6PuwgUj3ZTGKa+s6qE0PAlOjMco9luTiLwAlUmOXvYYzo6mO55mpwPhVvw
         iFdP0fvexRJeI+dfYE25lnVoUrioQoIKIQ4kcoOiMcNTVa8dERb9m7lJPJCwWzRwMQf9
         6hpA==
X-Gm-Message-State: AOAM530rI8JRRzCboc891VQP7LE3+9nh/QmSR7wwN/ylr48p2qDPqJKn
        /9Rt0O+aCJ24ncazBiWHKVg=
X-Google-Smtp-Source: ABdhPJzUoWe93so2DZfCDPeR0nx/rbnNjYAVV0MdJUoooK/VNgNEuW82A6wambhn3ucTrAdjMFHzQw==
X-Received: by 2002:a05:600c:4105:: with SMTP id j5mr33661080wmi.141.1620596649688;
        Sun, 09 May 2021 14:44:09 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:09 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] strsignal.3: ffix
Date:   Sun,  9 May 2021 23:39:13 +0200
Message-Id: <20210509213930.94120-19-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/strsignal.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/strsignal.3 b/man3/strsignal.3
index cfea6c8b4..6a5a1e610 100644
--- a/man3/strsignal.3
+++ b/man3/strsignal.3
@@ -39,7 +39,7 @@ strsignal, sigdescr_np, sigdescr_np, sys_siglist \- return string describing sig
 .BI "char *sigdescr_np(int " sig );
 .BI "char *sigabbrev_np(int " sig );
 .PP
-.BI "extern const char * const " sys_siglist [];
+.BI "extern const char *const " sys_siglist [];
 .fi
 .PP
 .RS -4
-- 
2.31.1

