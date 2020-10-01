Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37E9D280024
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 15:29:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732018AbgJAN3N (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 09:29:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731993AbgJAN3M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 09:29:12 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 625D3C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 06:29:12 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id j2so5757683wrx.7
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 06:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VIdnXT4gddXTVPS1q3Y4HPYlAzwOcmsWf0Hn2UUFmlk=;
        b=GL/158pxcoBf7qfRklbPMK2/4Bw/AvtHZTXTsrpXEGQCFzDqQCkqCqbln+ePdE0VQD
         ne8mnP1ylPSPyk9kMdymeFIGh5EQs5O8BaOzfUpEJ6ecYoSF0TyAM2jk6xj1F/pkc29a
         yL0M6JRICWt6ZVyB97iXiSxBO5rLAy1wbl/0wnNKihy1Zqhlz+0HEKCikdbFUuJtnOsP
         telSRfeY5xdJ9ag+dLGKOOiPdcHSnPVuYtX4tQ9bZcR/+TjvHrDnZyfJLLuyxJBU05Mv
         odUSrh6ReIjSVToRStDl/dql4lYlHbLiIOmfx26gMzfTf+9XX13XKGkH7Y8qNaN36dih
         ONzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VIdnXT4gddXTVPS1q3Y4HPYlAzwOcmsWf0Hn2UUFmlk=;
        b=bpSbW7zPEFZg4rLH3TgFduhgJMSrj6KufuQEptr1yLR/Ah2GIBhgnFX/zVx/fikXo3
         5bJ6SSesGM7qZ5wdxFqtXiAh0tP7wOclKResxn1uHg5Zkj2FeNTOfjFCGStxcs267ZyA
         /5a9XYYRK2nemDgxwAfLn4PrZ8Xok5oT6eDQyITk+uymKWlwm7qcuHWiwq+1M7SMYkT6
         1O/pLFDTf//S9lgY66tv8Aihc2dPrEI0CfkoEx0EhRJqSXp36rXiRYAp9KMH5fP+NxOM
         e2AM2TjT8s1Tx7upl0Z/YMJZjXP6qUQ3a6f3Y/c1Dmsx9ahcSOylhgE9GgJnqHhc2Isr
         bnWw==
X-Gm-Message-State: AOAM531CQt7PqtyzhmQh1TYDsmxcNkJ3S7l+OpM8g0hcFeR602YP2aDV
        A5NrUFBsl97Qt/rNka9m3TU=
X-Google-Smtp-Source: ABdhPJy+TRYipHxXnZL9Xb2lHb/c9JBsLjp3v6hMBhu2PSWEmi2YwsYorQMgfhYkd6wXKxibhCG9qQ==
X-Received: by 2002:adf:ce05:: with SMTP id p5mr8976842wrn.110.1601558950795;
        Thu, 01 Oct 2020 06:29:10 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y68sm8973458wmd.39.2020.10.01.06.29.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 06:29:10 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] system_data_types.7: Move "Bugs" after "Notes", as man-pages(7) specifies
Date:   Thu,  1 Oct 2020 15:29:04 +0200
Message-Id: <20201001132904.93549-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 8884d3e18..b0aff2cdf 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -40,13 +40,13 @@ system_data_types \- overview of system data types
 .\"		* Description (no "Description" header)
 .\"			A few lines describing the type.
 .\"
-.\"		* Bugs (if any)
-.\"
 .\"		* Conforming to (see NOTES)
 .\"			Format: CXY and later; POSIX.1-XXXX and later.
 .\"
 .\"		* Notes (optional)
 .\"
+.\"		* Bugs (if any)
+.\"
 .\"		* See also
 .\"------------------------------------- aiocb ------------------------/
 .TP
@@ -516,6 +516,9 @@ for printing
 .I intmax_t
 values.
 .PP
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
+.PP
 Bugs:
 .I intmax_t
 is not large enough to represent values of type
@@ -526,9 +529,6 @@ is defined and
 .I long long
 is less than 128 bits wide.
 .PP
-Conforming to:
-C99 and later; POSIX.1-2001 and later.
-.PP
 See also the
 .I uintmax_t
 type in this page.
@@ -1611,6 +1611,9 @@ for printing
 .I uintmax_t
 values.
 .PP
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
+.PP
 Bugs:
 .I uintmax_t
 is not large enough to represent values of type
@@ -1621,9 +1624,6 @@ is defined and
 .I unsigned long long
 is less than 128 bits wide.
 .PP
-Conforming to:
-C99 and later; POSIX.1-2001 and later.
-.PP
 See also the
 .I intmax_t
 type in this page.
-- 
2.28.0

