Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56FB7342937
	for <lists+linux-man@lfdr.de>; Sat, 20 Mar 2021 01:00:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229637AbhCSX7Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Mar 2021 19:59:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229618AbhCSX7B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Mar 2021 19:59:01 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E208C061760
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 16:58:49 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id x16so10725147wrn.4
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 16:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EFqss6rX7KHo+zQ2YQrdQ7Dv6XtAcsvIGyFH74BAGq8=;
        b=Bq5V2LmxoV6Bm645i/bEaN4TLfvbVjRT/4EfxIPusfuSDciPlkxniNnNMCjQK9ZGBP
         ckYPh4WcDSnJ1Btia4cFcbMS6glMWSAIoZSc8CYxvAOaKPI+RPw58+EpnpK/KqI5AUYZ
         V9wfBMuKGJms3biS4BV4vUgI1XJ0ovnFfoH8xeRbX+M3llMYm263qaWdgImdEAtZgwNq
         iJk11Y+JU1mhEr/Mj9YheCG+z2+n2Yy241tk8t8V57eTpO4/GNPF714YE4w4a7tG8/z7
         hyKK9G8RMu77bmpGhzEtpDqK3s++UN80Z92ZgSmV+rnXkI+VcBgE6Kw42g9JUQ1bEScE
         K/Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EFqss6rX7KHo+zQ2YQrdQ7Dv6XtAcsvIGyFH74BAGq8=;
        b=oOAiLjrKsDxCUsmcb3e0+VCsQE4lWJM4FpU1bPeeeaNMGMFmOqcbbeRfEAi8XIJPW1
         2fLJfcjkqp6jt2qLHjpY+kHSIDq6T23VvTqAZyPPpwfIcPIV6vJUOenJKkillx+gNu74
         XyBhtHMWF8RQK9GTnTJa+Td2QFZJZBdnv4jq9WcDwXcwvMLGmoe0inn5vLEDbYqP05b8
         HWj5hXk1dbY1CYA4YHBiFz0G2nKGtyUYTl2rsqu5kNz2YVJDlaNX4/3Fq+orHW1YE1La
         7bRF9gOqsX7L1kZOiWPiJN6pZtCtq5/UkYxoA5k/5HIGFDCNnXH1QJaTo9HHZAEwGthq
         gGlQ==
X-Gm-Message-State: AOAM5304F+YPouqL6PXktdddGJKaG9bGUeBmwOUIE8DbBUvz3JGqL7bV
        7ZBJZkiaiHtuCy5/0b9eGcVlGHWb1XA=
X-Google-Smtp-Source: ABdhPJwqVSoUlKj+GSe6mcCqG2IwfkmkYOnTJXuYVh2OteL/+D130ZWOzcQFDURgmKQQRNMYN6e9Wg==
X-Received: by 2002:a5d:5088:: with SMTP id a8mr7015578wrt.294.1616198328301;
        Fri, 19 Mar 2021 16:58:48 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id q207sm9327832wme.36.2021.03.19.16.58.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 16:58:47 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Josh Triplett <josh@joshtriplett.org>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] exec.3: Clarify that execvpe uses PATH from the caller, not envp
Date:   Sat, 20 Mar 2021 00:57:16 +0100
Message-Id: <20210319235717.28264-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Josh Triplett <josh@joshtriplett.org>

Checked via the latest glibc source. execvpe calls getenv("PATH") and
searches that; the PATH in envp does not affect the search.

Signed-off-by: Josh Triplett <josh@joshtriplett.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/exec.3 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man3/exec.3 b/man3/exec.3
index 3d936d08d..9c5b02b5c 100644
--- a/man3/exec.3
+++ b/man3/exec.3
@@ -146,6 +146,13 @@ a list that includes the directories returned by
 and possibly also the current working directory;
 see NOTES for further details.
 .PP
+.BR execvpe ()
+searches for the program using the value of
+.B PATH
+from the caller's environment, not from the
+.I envp
+argument.
+.PP
 If the specified filename includes a slash character, then
 .B PATH
 is ignored, and the file at the specified pathname is executed.
-- 
2.30.1

