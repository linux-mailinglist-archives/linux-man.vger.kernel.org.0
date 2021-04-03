Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3135A353557
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:41:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236731AbhDCTl4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:41:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236727AbhDCTlz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:41:55 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7E9DC0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:41:52 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id j4-20020a05600c4104b029010c62bc1e20so3804472wmi.3
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=05/KP7vJhvkE2Vr+ZV4ZGftwCp2ksqL5BUThcW4yjm8=;
        b=Qkts8vG1c/0m0VifsUbAV3L0oRVMReueYKkvaklZ7EQg18LJhOEmHO4n4ikcROMkAw
         AYL0xaMN3X8+aLHluIxU9UKoFRdMzwGYgUgI6SHKN7piQCq1cOsAfBJJK8F+rKh6kH+D
         pZETtpNIXYb8Y6vODMoHOd7gsXnPJJgPwHJRqsZkZQ5Ou/LBhLzACctG1YyXk1Nf4d3Q
         5wSvGfHoAQPjziCkqe5HyOmuAgd5kAYwd90UYhiNJnozbOsGSXZaz0sOD+bYce1wlNp5
         q2FS85WRNIQ78VEUrA6/4cRQAFQpNnAtLfdHFwfO5uWSovf1YbM3bcwQDoWOIKtllvES
         ilQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=05/KP7vJhvkE2Vr+ZV4ZGftwCp2ksqL5BUThcW4yjm8=;
        b=hfzmRvRUv2hANTs6eg4LXM1Oud14INlEOEBmF4CLt4hvNfeDYfsa7zj+fv2dJvOkQS
         tWmhBAnWC8WK/3aiAXFNDw1zPHkRbUoC349P0M8HadXhWPKx53Eg0+fPrXu+EdL5ge0M
         u4a/8lmg8mO2hEzA687vOglF/JsirapHn3aDoLtA74z4zp8y6f3HdrpXKOUNa+N5eNSV
         /1Gv5DgTZXzVaouFblVugB5LT3OEMzDUgDquQU/dt//vl9DS8DVuN1qsdgqcxrcqqNOv
         LKe+c0ly58UiMd5+1kuUojKq9PdjAJV+iW9R+x1gdsdeNXiJ0ek7JMR4F+KGId8Pn/a+
         AXNQ==
X-Gm-Message-State: AOAM531FUx6wg6uqpTWakZoOPsecYZZ6AzxfWK21pVFmo0cBHcSfAthr
        OdvyPQbmPLzCmEEmYUd30rnejZ6Ink8=
X-Google-Smtp-Source: ABdhPJw+1kfTp8GmC/kI2SOUEPBF/W7d28/M/aPxf14OzuSpyFFYTQRVy0JTBFalCIIM3mX39q+2bw==
X-Received: by 2002:a05:600c:2cd8:: with SMTP id l24mr17890018wmc.88.1617478911506;
        Sat, 03 Apr 2021 12:41:51 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:41:51 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 05/35] access.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat,  3 Apr 2021 21:39:57 +0200
Message-Id: <20210403194026.102818-6-alx.manpages@gmail.com>
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
 man2/access.2 | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/man2/access.2 b/man2/access.2
index 4a6e28db3..f24a73161 100644
--- a/man2/access.2
+++ b/man2/access.2
@@ -49,15 +49,20 @@ access, faccessat, faccessat2 \- check user's permissions for a file
 .PP
 .BI "int access(const char *" pathname ", int " mode );
 .PP
-.BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
+.BR "#include <fcntl.h>" "            /* Definition of " AT_* " constants */"
 .B #include <unistd.h>
 .PP
 .BI "int faccessat(int " dirfd ", const char *" pathname ", int " \
 mode ", int " flags );
                 /* But see C library/kernel differences, below */
 .PP
-.BI "int faccessat2(int " dirfd ", const char *" pathname ", int " \
-mode ", int " flags );
+.BR "#include <fcntl.h>" "            /* Definition of " AT_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_faccessat2,"
+.BI "            int " dirfd ", const char *" pathname ", int " mode \
+", int " flags );
 .fi
 .PP
 .RS -4
-- 
2.31.0

