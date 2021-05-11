Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 309A437A396
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 11:27:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231278AbhEKJ2L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 05:28:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230493AbhEKJ2L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 05:28:11 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A27BC061574
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:27:04 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id h127so15622248pfe.9
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3bfosfsT8isD5uZ3/uWquHARDJxW6K97DfSD1wXdD+0=;
        b=X9THyzTCQuB4nSisZYGdZg33vPWouELE5mPGmmqtQYghclVbIEDsU20EM4b5mgH1Mh
         tf+U3eFwSYlvlln8Fmnd9/IkcLC0k9jLIEyl1at1ZIR+sjnfHYDnXh4J/Or98M0uNNPB
         W79PWrC6xeNJXy94FoYTDYEt4rlxnv7HUPmQV0J061xd4GedAS4wEUYmjMICcrrMczUG
         4ZLYGtZMSJKTG3RBx9obC1riKLiWWYPcK2TyCdOTu5rYphLvSsXe/1+ueSINr5LjYzQg
         V6J+UC9o4yHyTZX8R5e6hqRAjog2j89Gtn/I7o17rSo+AQXw1CFSif0LL3lAVAKvfewE
         55EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3bfosfsT8isD5uZ3/uWquHARDJxW6K97DfSD1wXdD+0=;
        b=R/tOYqShPcExVcevVdnU63f2VxTrzm9UbXG8zhykhfKbjPPYbMyFl2qRq9jr+F3tsA
         W4OSwTcN1yj+JeMDerD9CnS6DjpYjP+s5hl3QWVgg7OsGHvluuDiS2GjP6zSAHAP28LV
         NpJQS/LA2r1WW0Kx9sp0KPrVEY6t+XOIWjo3PUHJilzngR09euhA7gkKTxnp6mYiDhFm
         fIDDidt4h/SGmHxGUlRblhHcPB4vrymuRVLC1e0qGxYgHl1NbyC5y0HWkPt2RZDjb78D
         wTUIM80PGNqhTW/9Jzdq/d1mMWJ7ClqZB0Agb6JvWh3qQh6SPamwMGsn1R7VsNFyNJRk
         zOIw==
X-Gm-Message-State: AOAM533qk4s75o13dsU7B+UL8kn29muZiGBIJL8FYVx6iS3ikLURDowB
        HNqwWnM74vaWTzM6H9UGGs83foWv4RsMghOF
X-Google-Smtp-Source: ABdhPJyW+7m12ZEpGfaOafNokbcVrIUwjX+lhxq+oRS9Ra8kZtJSKsEPUxcN9Trlm+3hzlhqF4ABRg==
X-Received: by 2002:a63:5158:: with SMTP id r24mr5403572pgl.41.1620725224026;
        Tue, 11 May 2021 02:27:04 -0700 (PDT)
Received: from localhost.localdomain (sp49-106-215-222.msf.spmode.ne.jp. [49.106.215.222])
        by smtp.gmail.com with ESMTPSA id w127sm9827093pfw.4.2021.05.11.02.27.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 02:27:03 -0700 (PDT)
From:   Akihiro Motoki <amotoki@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, alx.manpages@gmail.com,
        Akihiro Motoki <amotoki@gmail.com>
Subject: [PATCH 1/5] tgamma.3: tfix
Date:   Tue, 11 May 2021 18:28:46 +0900
Message-Id: <20210511092846.98095-1-amotoki@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Akihiro Motoki <amotoki@gmail.com>
---
 man3/tgamma.3 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man3/tgamma.3 b/man3/tgamma.3
index ae3f24ece..5cd58f251 100644
--- a/man3/tgamma.3
+++ b/man3/tgamma.3
@@ -203,7 +203,6 @@ the glibc implementation of these functions did not set
 to
 .B ERANGE
 on an underflow range error.
-.I x
 .PP
 .\"
 In glibc versions 2.3.3 and earlier,
-- 
2.25.1

