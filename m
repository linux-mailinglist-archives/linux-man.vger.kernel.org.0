Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB1783D9682
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231396AbhG1UUX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229878AbhG1UUU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:20 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2113EC061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:17 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id e2so4022467wrq.6
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9UrbXfok05pHeBkhGWrLJWasymBZOl2LKg7FfrbKMoQ=;
        b=lKBLnVoYKUF1x3oH/GN3zqdfs5AIKrxMcHNybKAIki0JBZ+L+sDxbCtCmWEnkzke28
         rxzHt1ZtTF5khxpVfmFAIp/pOp95Qxw8U19wZAtMX7MyL/O0SIdwMXRYmwLZ7Jjy3tnL
         cLO/OAIq18b8LIJxjDIl30pZUqLt8iFHbdhKbEnlMiUoAQHjq5iVYWcmnLbbkNZPFRrq
         RQENLQyqLvUTRW34Uv27snxx5hRaA0hgy8XjwcHxz6H0nb4Wgft6ivo1+UesydFTam1p
         R/u7KzqXjAU5VKpnjhltFQNKuUlmoFcW85AdcMSexV4knnQLL86eej92Kq6mt8+rA2HA
         UKuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9UrbXfok05pHeBkhGWrLJWasymBZOl2LKg7FfrbKMoQ=;
        b=RSs1KHn4761kSyGVonySN5SRbBr6Nit8GbMdAvwTdz1Tuyf3R0qhX8GHPbi3QFTxxn
         BFOitgxD0IZq8jhG98tWzIbq7GCO8VzX8hzbaf+O5OUxdYOBvnywGGJEBx3A8cdhzw4w
         lc08Ca60jGs43XThmF5UHw5DCcIHqrf2ExbP1tGddFdPN4FE2nNbgBMx2Ul9/3p5AU6i
         CbiOMTmqlDsgYehO6/bIbJyDkSRnX6zFlroqlav/w0XQKi9X1/wtIwdB4Lolys4Gp43b
         koY/4NhUrTA4cdcO+FYzn3MWNd6AfQE7wGHuAu/6A6mEKEIdZ4zLS/YZrmk5hCVObHCS
         znmw==
X-Gm-Message-State: AOAM5302M7O2otlJS2H7uaRKL91HzKIXQjpYImPs5ZlOLU/5A6QB50P1
        PPlyfGtLX6qiHN3i317C2zG0OrMXCcQ=
X-Google-Smtp-Source: ABdhPJzkS4KPOFE74WR0/SwpifrwGBRNY1sA4RzZ2lBREqo5ARMMC8pkXnGdxQB23egFuavroRrcyg==
X-Received: by 2002:adf:cf07:: with SMTP id o7mr1085970wrj.216.1627503615756;
        Wed, 28 Jul 2021 13:20:15 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:15 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Christophe Leroy <christophe.leroy@csgroup.eu>
Subject: [PATCH 03/32] vdso.7: Remove outdated limitation for powerpc
Date:   Wed, 28 Jul 2021 22:19:39 +0200
Message-Id: <20210728202008.3158-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
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

