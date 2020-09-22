Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05AEC2745A8
	for <lists+linux-man@lfdr.de>; Tue, 22 Sep 2020 17:44:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726672AbgIVPoV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Sep 2020 11:44:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726566AbgIVPoV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Sep 2020 11:44:21 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33B8DC061755
        for <linux-man@vger.kernel.org>; Tue, 22 Sep 2020 08:44:21 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id x23so3829213wmi.3
        for <linux-man@vger.kernel.org>; Tue, 22 Sep 2020 08:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3pCsQAXgsOsasV517KEYUIxDMwXz5AtPJfJx3bz3+mg=;
        b=DQjcmf3me3qnJBvCpDv6m5PgBKuMR3fkdt8H92yZAggYbQrX30f5NZostUNMfkIIMp
         Ipcf42WQW8EkF+KtaQ5VSSTpxYLM0QJGTmUD50fmKAXaIlVvqFUa4NZP5UV+euEm1I7J
         0XsEENyktrGC7bLZlHOCP1LIW4gqBH8cbjZNYoGSdii0ooGtVUDNAReRTAAEnfbcyG3I
         Ple0g3fjubZrd0gfNysHqgEcL/UkXYRyKu0aMw7T9nvuoV9lSw2uOKE/QKZ8W5KCR0oz
         Edjz0vf4Y+/ZrGac0ncfY6r8bG0AwM9mjGBE0wTQpSGCj0z0Aw++IOYOVkR96dC8+Tmg
         quyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3pCsQAXgsOsasV517KEYUIxDMwXz5AtPJfJx3bz3+mg=;
        b=AsU4ATnD8LqPe8L4oOnCsbETZf4KtAG50KuPmQb87VH6J+P0DOamwVlUk8BMMeMul3
         sxkupZJzubTtBeZrCb/eHLB51nzC/EeOB4Hoivwj3k3cv4k1joTFBUwxoYfHXhlbbJO6
         T7ozI5epkRloMXh2XhBCI3JzZure3YQ2Lmcb4EIS/DJBWOGqqGrcGD2oLuvmw4I3EO7I
         mwiNJgJvObXjsF1g6h9Jau/fQmYBYqBxwmaeXg0K0hjUlsZ/wwXeJdrKOIj2pOnTPVcr
         KvScA8+57d+ACSjbhEpKwFz1iTKyZFvdET7IgDl4RLQqn4YsqPK/Xm3hlACCUGKMV2Ax
         mAFw==
X-Gm-Message-State: AOAM532GDpI5W+1MViF5iqHtjLOcf2VsRU6ZLIkWHXaAyyuzobPx9HwM
        lDHdDU3O5ErY2FXeFL1Ywv4=
X-Google-Smtp-Source: ABdhPJxMJAGuH2uohNcZaX3R/I6HVatUkedN4fAa5/Z6cTVjgivrWeezauE7icA4dvRM+49mAG+E3A==
X-Received: by 2002:a7b:c215:: with SMTP id x21mr1643874wmi.138.1600789459825;
        Tue, 22 Sep 2020 08:44:19 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id t1sm4802644wmi.16.2020.09.22.08.44.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2020 08:44:19 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 1/2] system_data_types.7: Add 'fexcept_t'
Date:   Tue, 22 Sep 2020 17:38:22 +0200
Message-Id: <20200922153822.33728-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Note:  I used this commit to fix the comment that separates with gid_t.

It wasn't aligned with the rest (col 72).

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

Would you prefer a separate patch for the cosmetic change?
I put it in the same one, as it was in an adjacent line,
and the diff looks good; to avoid noise in the log.
But maybe a separate commit is better.

Thanks,

Alex

 man7/system_data_types.7 | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 59c64fb89..97411a193 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -111,7 +111,29 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
 .IP
 See also:
 .BR fenv (3)
-.\"------------------------------------- gid_t ----------------------/
+.\"------------------------------------- fexcept_t --------------------/
+.TP
+.I fexcept_t
+.IP
+Include:
+.IR <fenv.h> .
+.IP
+Represents the floating-point status flags collectively,
+including any status the implementation associates with the flags.
+A floating-point status flag is a system variable
+whose value is set (but never cleared)
+when a floating-point exception is raised,
+which occurs as a side-effect of
+exceptional floating-point arithmetic to provide auxiliary information.
+A floating-point control mode is a system variable whose
+value may be set by the user to affect
+the subsequent behavior of floating-point arithmetic.
+.IP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.IP
+See also:
+.BR fenv (3)
+.\"------------------------------------- gid_t ------------------------/
 .TP
 .I gid_t
 .IP
-- 
2.28.0

