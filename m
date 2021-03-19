Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E48C34293C
	for <lists+linux-man@lfdr.de>; Sat, 20 Mar 2021 01:01:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229708AbhCTAAd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Mar 2021 20:00:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229648AbhCTAAQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Mar 2021 20:00:16 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0678EC061760
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 17:00:16 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id j20-20020a05600c1914b029010f31e15a7fso99217wmq.1
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 17:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1WybdLxujsAiKPw+nCKJ4447jrwRitBABcCybJrA/r0=;
        b=Gsyl2uO5+Fi5jMPijnagMlP5uBWw1ecPJ1+J9NHWsyoGc6qxejMpN4vEa6JZfQ55fX
         5arRoMz3DvQ/CY/oJpEcBI0f7UNX1xKTqcB+7pKU/LDTtg+Vwxs02KfpXtr9txZ154fq
         nD/k+lyV4PtG6P1sYd47mEFJgzDZ1iVd7nxCKlr12zJiyfNeYPj3XYP6ZAC2XLmXc9jO
         YFCWXg81h+5WzC7tbGCjtKxAlaMp78HVNq2YygPlNKibTHpPf1j0OQNIzcMJbW3rlFNw
         EYmeAsMDfhiKB2A0NcGyRmt7TqtIPWe3d7wtpj9/U0FNrFs873sUYgY6OydeuWJaAFy2
         J+7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1WybdLxujsAiKPw+nCKJ4447jrwRitBABcCybJrA/r0=;
        b=b3sTT+4110aCbhMnPhy/Ff7m4imnlFRkV7M4tTx3DA6Y6nY7/nwUrIitmkGYlvgNtT
         ikmk341mCnp9N4utYr/SeM4MDqe44+7Jv7zk89BKElJ0XYqPcaBoIZYal8Dw6TWDb5r3
         +N61x6XjMqYj1zjx6Mo1ssqoQxK/UbpEQ2nob09kOR7bVKiBmm6RuMhzx/sfrEreg3Hj
         y4GZVQ8ff12Z569eJU+cu4iAG7mYgibotXnyDmn9wdTHFfjCGZou9ygbegP6b5LRcBA3
         FAVsXwKDAzUNVmLsdU+t/bD0ZPA5yZ5nL87suJM/YKv6US/qwzqeWtWGZDaI1km1IRb1
         Fh0A==
X-Gm-Message-State: AOAM533ENORQMSDTYDebWB32EohCXtERJPTLnl/REiIZEkzBsTXg5YPw
        lU5SFqJ2MN5Dzk+xQSHknPw5caEe9Rc=
X-Google-Smtp-Source: ABdhPJyz76ZufGpm177wqGrCxHFSeg0G5Vve0IYQcgDqwx4EZqhHaoZKMLpb/AzgC7grG5YuiQYlDw==
X-Received: by 2002:a05:600c:378c:: with SMTP id o12mr5717830wmr.69.1616198414859;
        Fri, 19 Mar 2021 17:00:14 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id q207sm9327832wme.36.2021.03.19.17.00.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 17:00:14 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Josh Triplett <josh@joshtriplett.org>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] Remove obsolete admonishment of the GZIP environment variable
Date:   Sat, 20 Mar 2021 00:57:22 +0100
Message-Id: <20210319235717.28264-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Josh Triplett <josh@joshtriplett.org>

gzip deprecated the GZIP environment variable long ago.

Signed-off-by: Josh Triplett <josh@joshtriplett.org>
[ alx: srcfix ]
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/environ.7 | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/man7/environ.7 b/man7/environ.7
index ee8ca97f6..d618ac749 100644
--- a/man7/environ.7
+++ b/man7/environ.7
@@ -339,16 +339,11 @@ etc.).
 However, in some traditional uses such an environment variable
 gives options for the program instead of a pathname.
 Thus, one has
-.BR MORE ,
-.BR LESS ,
+.B MORE
 and
-.BR GZIP .
+.BR LESS .
 Such usage is considered mistaken, and to be avoided in new
 programs.
-The authors of
-.I gzip
-should consider renaming their option to
-.BR GZIP_OPT .
 .SH SEE ALSO
 .BR bash (1),
 .BR csh (1),
-- 
2.30.1

