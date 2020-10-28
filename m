Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 313FE29DCE3
	for <lists+linux-man@lfdr.de>; Thu, 29 Oct 2020 01:33:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729524AbgJ2AdN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Oct 2020 20:33:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733151AbgJ1WXR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Oct 2020 18:23:17 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 332AEC0613D1
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 15:23:17 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id a9so679278wrg.12
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 15:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7od1acnp61kz5BDkk25DiYPitQBHzX1bdBGvukqVtFg=;
        b=ntr7VazUyZoIodl3bkvoF+MifP7NVnoVSEXiXNYPvcdmEe7pOZ8KdRYny14qcbcinK
         2oOZoU/a/yD5hjKKclZhUtsVse4s9149cx0/seqRNPYwojKNOSJTU8lmg6I4I0y4+f1d
         77HXvu8BL0zxaz0P2IX2OZejz+BpSXR7g5ixH0hnujoegNVe/KvIJKk4lRbvsOu3Uxwl
         ONiwqCRUtpJy0Av+4h+3y1L5ewLfo/CufmPhdlEz0Fixmo2YhA4p2qg05xYUkj+PbY5C
         hVBawNntcosGxPJfjSs0pdlqGP5wrkPUu73mzgcZXLeFuZ2vJU3389tCRuhIL6bU5hrJ
         ifkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7od1acnp61kz5BDkk25DiYPitQBHzX1bdBGvukqVtFg=;
        b=M9st8JBYsIwM1ytKTAFO3pfZxnfzFamq7BuAQVYuOgHxp8bjjJQRf99omtFcSaTcGn
         iQUv7gGgPxnW2+Dnb9+OgxZOYZY+MgHnc3SGg9EnCID0AebiHKB6a0ZdX1Yc+OU/SDTW
         p5epbMcudfIOnqCVmBQEA8B/0b7KTrbvhY2i1w7afScfTMtVza38EkmqKwnpAmXQ4n8G
         sl0pYTvT6r8dpUyMDp1qlQE9WMJEvI5mSf8tOxqEbRA11+ILm9nMifYhZzaLqfJ0YvjC
         0pMFOKAVnTROOaJrob5N7ymtq+PQD5VDImc1JUAlB9q34TjsRzI6PlFT5/ZTYdhPO21C
         lvqg==
X-Gm-Message-State: AOAM531J912DcBjX++6BpPMJidsVdUCJkP1Eg+Ef4YqnFdIDgmQDR6fk
        shgwEVI3ae9pyjl2lQFXmErwlmpILPI=
X-Google-Smtp-Source: ABdhPJyoS+wCpuHQBuHSVFPsexhVf3ELzrcKOo5XOhzRP+xQc1ZOumm4M6eB9OePDFJiXlCXLr8MnA==
X-Received: by 2002:adf:814f:: with SMTP id 73mr1118589wrm.174.1603914776445;
        Wed, 28 Oct 2020 12:52:56 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id v24sm375119wrv.80.2020.10.28.12.52.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 12:52:55 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] getdents.2: SYNOPSIS: Add missing header and feature test macro
Date:   Wed, 28 Oct 2020 20:51:25 +0100
Message-Id: <20201028195123.123843-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/getdents.2 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man2/getdents.2 b/man2/getdents.2
index 02790b8f7..17904ed66 100644
--- a/man2/getdents.2
+++ b/man2/getdents.2
@@ -35,6 +35,10 @@ getdents, getdents64 \- get directory entries
 .nf
 .BI "int getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
 .BI "             unsigned int " count );
+.PP
+.BR "#define _GNU_SOURCE" "        /* See feature_test_macros(7) */"
+.BR "#include <dirent.h>" "        /* See NOTES */"
+.PP
 .BI "int getdents64(unsigned int " fd ", struct linux_dirent64 *" dirp ,
 .BI "             unsigned int " count );
 .fi
-- 
2.28.0

