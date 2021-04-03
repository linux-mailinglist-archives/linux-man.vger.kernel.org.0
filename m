Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7237E35356D
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236821AbhDCTmK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236829AbhDCTmK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:10 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 516A6C061788
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:03 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id a6so1471354wrw.8
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=28zBalVKo2kS79bb6WX7Y54TEzZgkL3eEQgmpO+rtvk=;
        b=X0JA3htkTBTBG8lx2TdV1O/NgsJCyj8SsoNtTZG07lES5LLC5CVr5lEPb6oX6fujTz
         zPbdD5njSIYHqNyrUzeInFbcqUZINnErpL5ahtsH7CEy1QgZMx8WGITeeYCgEV3xWxOC
         Icvevg/4saNJ48/7hLYaTNDdigjHZYCiL24lsMoy2m0sNmboRh8J1gXjzGZFcpqkxPfq
         IClswshhw4cHgnmNEDw4yL51gNSKbNOtrzBIA7tvJYy2iOSl85H0r2+mbhILBFrkAyHo
         0Ey3LmAzvup2S8vAZN/StUBkt3y26sl5IBhZBGQFtOiTOmUEfG/ckgVxDiGekq9tIOqw
         /vhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=28zBalVKo2kS79bb6WX7Y54TEzZgkL3eEQgmpO+rtvk=;
        b=khdytzh56Sxqlo1R3WiDBlU3pOVpADpwPE7W7GZaoVR4iVbp7oahv8RFNc8MpxyGf2
         DbLWN4GT8xn8EoQh8BBCN8yUHz5WLJ2MVFtJTGxhowBa2XpBRB63Wm/8fDbsElzJrVjv
         OGGUmS3uhdFX4GoIBY3bZn2I9jOAlkghDft4QxI2Gp9kb7zdo22xP+UuDgVi57MvPN42
         Q9gOpYlUBm2OPsZoiY+KyKWO5qeMRGC/M506et3Zt7hQnYMJ5xL1m9s+gcirq3jTYdY3
         0SLMa6zqvKx+HM3F50u3PUhSKuH40f15fH7Qg3iJksW9aQhlkXBNtJTfGgP5qyIIxloo
         n+ww==
X-Gm-Message-State: AOAM532o9lvbF0lsOA+esoQbVpEXok+wkLESdJLndpsukVU6hN//ZDRv
        FdJfaVBqc8248CBS2v/Pa68=
X-Google-Smtp-Source: ABdhPJzjFK/K7bZYbbPXigcEmrN1EIpkgzvl+yzceNNKRBYTBiJKWcRTVXtxRInDvV/ZDjIjkDWMSg==
X-Received: by 2002:adf:c449:: with SMTP id a9mr9768556wrg.146.1617478922166;
        Sat, 03 Apr 2021 12:42:02 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:01 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 21/35] getdents.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat,  3 Apr 2021 21:40:13 +0200
Message-Id: <20210403194026.102818-22-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/getdents.2 | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/man2/getdents.2 b/man2/getdents.2
index ec00a73ba..6a9f4e04c 100644
--- a/man2/getdents.2
+++ b/man2/getdents.2
@@ -33,7 +33,11 @@
 getdents, getdents64 \- get directory entries
 .SH SYNOPSIS
 .nf
-.BI "long getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "long syscall(SYS_getdents, unsigned int " fd \
+", struct linux_dirent *" dirp ,
 .BI "             unsigned int " count );
 .PP
 .BR "#define _GNU_SOURCE" "        /* See feature_test_macros(7) */"
@@ -43,9 +47,9 @@ getdents, getdents64 \- get directory entries
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for
-.BR getdents ();
-see NOTES.
+There is no definition of
+.B struct linux_dirent
+in glibc; see NOTES.
 .SH DESCRIPTION
 These are not the interfaces you are interested in.
 Look at
-- 
2.31.0

