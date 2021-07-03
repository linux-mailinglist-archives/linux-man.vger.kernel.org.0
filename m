Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 332003BA9CE
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 19:26:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229601AbhGCR2m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 13:28:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbhGCR2l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 13:28:41 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F51AC061762
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 10:26:07 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id g10so2734175wmh.2
        for <linux-man@vger.kernel.org>; Sat, 03 Jul 2021 10:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9UrbXfok05pHeBkhGWrLJWasymBZOl2LKg7FfrbKMoQ=;
        b=TERMw/olQ8t2nOYL9HHPSiMkJuMIit62T51Sy71tX3p+Q60D91umQwRZnk1fsZ/tDe
         dOYYBEIhZgNRFf8zkm5L4+vABA9GZYbC+fUwG9wUMuAiyfzxpB6StNBCE4dAb/TPyYFF
         YFj7oUkYAQ2OQ149/MVRq1E8n+TFbxRz3N6vKGzyaKMig6fjXOm6tBXUxIsoOcjlNaIN
         0F/qo9CZvjtFZuR2OLNMSIOSS8rBW1huC+3Eh1Rlrc0TRVDDak/+xM8x324QklSQl5Tm
         xaiGnO1PBI0dlSPsKse7UzwShinRVV8Ock0NBAX3P4wXVT078K1owZIrmXTiRfe6gAzy
         2M1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9UrbXfok05pHeBkhGWrLJWasymBZOl2LKg7FfrbKMoQ=;
        b=SfshLEHqIo3ukm53BJLdJAPl4DGPJI+C4arwxTxnp50/VhMRM0tmIKyZGTbhLUU8YI
         5KhHXDuYGOtq1K0fLatiYsvL3E04je8VKzvtsOdx3S7nea50ku9JHBKEQuk7Wdquy43h
         GSItbGEMrP8/ST6ImsmbRHlynhWjGW/+jbxfSv6RrdQqvMdSmzyVy8z4BC8V1BwF3WAi
         5tZ2lIpIfs+bueQR3g8JddgiBZGjvgQUMACasg+gbzASr/BgbcbYGK8KnO+s7ry4oOiL
         GBgq+cVdb1AtG0x/FxMPHHt9rbJ0oHl4Zg2u0qMAbona16LWYqkk1d6c9PUtaS54Iw4K
         HpSQ==
X-Gm-Message-State: AOAM532MInyU1pvxq+i9btqw1yo0WT8m/hmjd8dU5RIuePjAnSLyxTK0
        bh9cuaXH12nIXgBBS70Zotk=
X-Google-Smtp-Source: ABdhPJygpL0Mw0zBzQOwmt8NhTVdhtIgdy0GIDavx0gviQjFSmiXCC8DYQTfxge9fsRu4Uq3CeickA==
X-Received: by 2002:a1c:6a16:: with SMTP id f22mr5671871wmc.53.1625333166341;
        Sat, 03 Jul 2021 10:26:06 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id m7sm4195308wms.0.2021.07.03.10.26.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jul 2021 10:26:06 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Christophe Leroy <christophe.leroy@csgroup.eu>
Subject: [PATCH 1/2] vdso.7: Remove outdated limitation for powerpc
Date:   Sat,  3 Jul 2021 19:26:03 +0200
Message-Id: <20210703172604.79658-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Christophe Leroy via Bugzilla:

[
https://man7.org/linux/man-pages/man7/vdso.7.html
(as of today, flagged 2021-03-22)

ppc/32 and ppc/64 sections both have the following note:

       The CLOCK_REALTIME_COARSE and CLOCK_MONOTONIC_COARSE clocks
       are not supported by the __kernel_clock_getres and
       __kernel_clock_gettime interfaces; the kernel falls back to
       the real system call

This note has been wrong from quite some time now,
since commit 654abc69ef2e
("powerpc/vdso32: Add support for CLOCK_{REALTIME/MONOTONIC}_COARSE")
and commit 5c929885f1bb
("powerpc/vdso64: Add support for CLOCK_{REALTIME/MONOTONIC}_COARSE")
]

Reported-by: Christophe Leroy <christophe.leroy@csgroup.eu>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/vdso.7 | 26 --------------------------
 1 file changed, 26 deletions(-)

diff --git a/man7/vdso.7 b/man7/vdso.7
index ef6bef5bd..1d527c38e 100644
--- a/man7/vdso.7
+++ b/man7/vdso.7
@@ -385,19 +385,6 @@ __kernel_sync_dicache_p5	LINUX_2.6.15
 .in
 .ft P
 \}
-.PP
-The
-.B CLOCK_REALTIME_COARSE
-and
-.B CLOCK_MONOTONIC_COARSE
-clocks are
-.I not
-supported by the
-.I __kernel_clock_getres
-and
-.I __kernel_clock_gettime
-interfaces;
-the kernel falls back to the real system call.
 .SS ppc/64 functions
 .\" See linux/arch/powerpc/kernel/vdso64/vdso64.lds.S
 The table below lists the symbols exported by the vDSO.
@@ -423,19 +410,6 @@ __kernel_sync_dicache_p5	LINUX_2.6.15
 .in
 .ft P
 \}
-.PP
-The
-.B CLOCK_REALTIME_COARSE
-and
-.B CLOCK_MONOTONIC_COARSE
-clocks are
-.I not
-supported by the
-.I __kernel_clock_getres
-and
-.I __kernel_clock_gettime
-interfaces;
-the kernel falls back to the real system call.
 .SS riscv functions
 .\" See linux/arch/riscv/kernel/vdso/vdso.lds.S
 The table below lists the symbols exported by the vDSO.
-- 
2.32.0

