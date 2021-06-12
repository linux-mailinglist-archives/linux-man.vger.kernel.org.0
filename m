Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7A153A4D9E
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:32:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231158AbhFLIeQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:34:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230511AbhFLIeP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:34:15 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F02CC0613A3
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:00 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id n7so2341703wri.3
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Bmz4sANDKH/jnSvmxxijyVMLi9gMaxoHwHyyCQmpYQQ=;
        b=Clx72nXljb+b96/V1DcQO2rwzE9VVUvCuyTKzh9Yh6oYSoKrpFrOSeGRQwJMphN82j
         wI1mmVfSr7pwdpbx0aTYBPJ6GGUCoQUGWI2PvQZ1KKlLXxhAekKB74Jr3hoYQ6G2C8sx
         XIjFRbd+VF6oQ3S3oHM66x40NJvuRmmg36OnB4hRKjCECEU5SLklJLy54ebIbBsmmvKT
         VAIl/VgEPmsKTuE1++xnY9AcUnhGxjEHzrrj4VeJjUoaCw6XiIKHwTFAN4l623i0RPeR
         qo4jO4SN3sOmCxWbLG7JSR9ZVU+pUPIV3YASlJ7HwVV9sGZqzrFxYx1SgGSL6PpUSGIs
         HD4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Bmz4sANDKH/jnSvmxxijyVMLi9gMaxoHwHyyCQmpYQQ=;
        b=LojaebKV8RAxC19oZ4hnZUJQFI/6bRViJLUA3/SykPTYNqoO6s4nlISzT5KrjVlaV0
         NMdFG/9ixuMM5bUetQbAyD6Bcs9JvtNe4D3kJlPYONnL05NFFTrNSQPap3e53o9Lk7tZ
         ideUPkuGJULW4lYCeCARUwiSg6li04b98uWgRA8vnaPVTm/R6sckhDy+/j9BOioOlacH
         8isDAxxZpndprn1WahRSms8nTujMILsl5W6sCwvceyqQetuGi9T3twd+UVSW5Pg1M4Yi
         HSNPD4eOjfAbatU5mLsAF17ZpAxNdu1gwsBYwdyNm3JnTVPPV6C2p9FHAEcgopeukiLV
         qNoQ==
X-Gm-Message-State: AOAM5323/Gc7Z3DkuykBOBvIO67iwe8dmgLXqm8qlXVZUThP8HRcyZJy
        e+8VO7hfRx8lvgGr/gXKIOHDTgHryW8=
X-Google-Smtp-Source: ABdhPJwnVyWUVOwWr3JJZqiOCi5XEhbFy9w6lO1VcLslMZZVZldc9jonFtGPNw3S2/e0ExKwrXn78Q==
X-Received: by 2002:adf:f382:: with SMTP id m2mr8142986wro.394.1623486719089;
        Sat, 12 Jun 2021 01:31:59 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:31:58 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 16/28] s390_runtime_instr.2: tfix
Date:   Sat, 12 Jun 2021 10:31:33 +0200
Message-Id: <20210612083145.12485-17-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/s390_runtime_instr.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/s390_runtime_instr.2 b/man2/s390_runtime_instr.2
index 0685fde6c..a043cfd9a 100644
--- a/man2/s390_runtime_instr.2
+++ b/man2/s390_runtime_instr.2
@@ -36,7 +36,7 @@ s390_runtime_instr \- enable/disable s390 CPU run-time instrumentation
 .PP
 .IR Note :
 glibc provides no wrapper for
-.BR s390_runtime_instr (2),
+.BR s390_runtime_instr (),
 necessitating the use of
 .BR syscall (2).
 .SH DESCRIPTION
-- 
2.32.0

