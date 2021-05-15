Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56A77381A71
	for <lists+linux-man@lfdr.de>; Sat, 15 May 2021 20:20:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234189AbhEOSVz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 May 2021 14:21:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbhEOSVy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 May 2021 14:21:54 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4ED36C061573
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 11:20:41 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id z17so2254751wrq.7
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 11:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jtFXW0Yw6QsVAXy4B2XDrfrW/ia3HJ/vR4sHov/k73s=;
        b=CQVEr0HpQd2bJGweUbck+gujgzjGaG/VmtE8/MvFqg3v3WO+AKegedo+CGWdsW3ic1
         VGwx/fFcctc+F8a3h0GKZFxM0OOR9HsoPJeke1RwQuXXfZ/peUYUzlznuhmvIGdLf4we
         xTLj6RJYJ5nqV7bbjGAYhdvABAg0xxEuQeHc+4reZi2I/euKggYDLP19W5snBxKnoOtZ
         qHI7xuZSNX3b9ovhuYUKQsIVnPrpp6iZ9GAZa+uNcps+hMMP+ZZWn4Bfb3GIatODRlSO
         bdf4XId8/Xp61hiILS1zNNQy1akV5hXkxgwzGgwmOu0/99IF7RvB09sy+sxDMaE4lWv9
         +0fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jtFXW0Yw6QsVAXy4B2XDrfrW/ia3HJ/vR4sHov/k73s=;
        b=NZf4iWDS1Hcm32VedPDp5lT2bK1XABoKm6HU8p1MjP2j/E2NVnuofTX87S4mRlJs1M
         354uSDECBXDlPB7dHPiXtLTFwgdtoL7ts3rdx7csYcUNWKpXG/vlWPQuLH+f2/n0mHIA
         znglaJB2Kjo8nRFca7R6BPNrm00SX+fl95bk6tsEN2pQCgvUfWqgnTXbXzEAvisOA8mX
         XUd8dRfbi0/JNo+CUibs3FBRWlDu1tMskoqj0k5xPfCqQy5sWsxBWG2pshFlSEAmAfSF
         iU4zT8mHWnetih/eCGnf8rAwqugsVS+Wm/orH5WlsWEp6R8Cw8nMZdO/1oS8A1DQ1whb
         xlAA==
X-Gm-Message-State: AOAM530fC+5CDGXppXePdc/zUpkZ3rYiOqcUbpk6/PH939T/6tZWjPQT
        PbR3dp8FAS/DatQaodIcWqNP7xbqm4r1vQ==
X-Google-Smtp-Source: ABdhPJyMfLxtRxnmewuQ07gnxHKxrQwo19903wjZiFzFDhgl1exy4h+sPyCatoUUoudWbDBsO53gBQ==
X-Received: by 2002:a5d:570c:: with SMTP id a12mr12451537wrv.354.1621102840094;
        Sat, 15 May 2021 11:20:40 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v10sm12007254wrq.0.2021.05.15.11.20.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 May 2021 11:20:39 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 5/8] s390_runtime_instr.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 15 May 2021 20:20:25 +0200
Message-Id: <20210515182027.186403-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210515182027.186403-1-alx.manpages@gmail.com>
References: <20210515182027.186403-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/s390_runtime_instr.2 | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/man2/s390_runtime_instr.2 b/man2/s390_runtime_instr.2
index 2ec6e7d25..0685fde6c 100644
--- a/man2/s390_runtime_instr.2
+++ b/man2/s390_runtime_instr.2
@@ -27,13 +27,18 @@
 s390_runtime_instr \- enable/disable s390 CPU run-time instrumentation
 .SH SYNOPSIS
 .nf
-.B #include <asm/runtime_instr.h>
+.BR "#include <asm/runtime_instr.h>" " /* Definition of " S390_* " constants */"
+.BR "#include <sys/syscall.h>" "       /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int s390_runtime_instr(int " command ", int " signum ");"
+.BI "int syscall(SYS_s390_runtime_instr, int " command ", int " signum );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR s390_runtime_instr (2),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR s390_runtime_instr ()
@@ -97,9 +102,6 @@ This Linux-specific system call is available only on the s390 architecture.
 The run-time instrumentation facility is available
 beginning with System z EC12.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2)
-.PP
 The
 .I asm/runtime_instr.h
 header file is available
-- 
2.31.1

