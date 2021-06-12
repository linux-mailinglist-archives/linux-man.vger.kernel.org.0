Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 091953A4D98
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:32:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230474AbhFLId7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:33:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229584AbhFLId6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:33:58 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D742C0613A2
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:31:59 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id a11so8460388wrt.13
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=S849LDVl/4+Fe0QYg/mIXLkH+V8gLRm2wfjbNFPajik=;
        b=olykZism9mSJm5mpKh8ufyoca4eUoSYilHG2+wlqaI1G7iDedvMe5tFPSSI9jDBU8C
         u6lVbvI958DuC+R5ku1Ac+f0kh/sv4WHqQ8vzAVGWGXsF6cxsX2+JLJ4/iDT3lwOUyqs
         tfF4gtKAGiGGFP10F5uYwFwdpDawGEtYqbUIpnl/JTDCme9eLwiSXsZo94+9UUYvu0jU
         1gvcLuoSfhza1hQ21k2lTxxLj0d1L3oz7unlaPjF7PpRcYbWoy98KJ5y0syvDkBSEP16
         sMDlSFzIC0BTKcmpg7sqMXBsVWH7KS4R0CuGSOxpdPu4YsY3Led7yUnCUw/hJEepiX6f
         +C8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=S849LDVl/4+Fe0QYg/mIXLkH+V8gLRm2wfjbNFPajik=;
        b=TQvky2ZJYcZqAOskRVfR6lq+e/E8JjLbxXOBZzWc2G4jYnqCBMf4J4e4gabAUGPB2m
         4vGoquPhOQxneMRo75XSKlYQ76zYxgVyZCtOXHQQ7NhWvAFcDT+DxOL3s2HFZaxh54Ey
         r/cFxLtVm/4soyieWBZ9mB5YPEjuESo6XeO7dY65w49MrwwkmldeYBVxZVVBr2pJD9Ef
         8pukgsdYbPhVH5RQGB71i98ysF700+xINP3C0nMFRSwsaii6jzwUgQ7af2pjkfFEsqyP
         NfJ9bwMCZadx/EoHyYf7DsK5O4UZPpXxPKZOuq8GTuGNgGmXbwR5PHaKupXp2ZoQ8Yne
         SN6Q==
X-Gm-Message-State: AOAM533+N3BWGx8afQO7w8/9gSAeackBUYCZNUPXd1YOKkjAW6TLX9FY
        h41cB/9bdOszDopH5wU7dSs=
X-Google-Smtp-Source: ABdhPJyNaHsdASkkJ1EsOjx4rhNKLV04TSjLDU397Lk6qjorURT5OviDb5kBK8oKC3PNTYvSDVCa9g==
X-Received: by 2002:a5d:4fc6:: with SMTP id h6mr8283177wrw.1.1623486717747;
        Sat, 12 Jun 2021 01:31:57 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:31:57 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 14/28] timer_create.2: SYNOPSIS: Document why more than one header is needed
Date:   Sat, 12 Jun 2021 10:31:31 +0200
Message-Id: <20210612083145.12485-15-alx.manpages@gmail.com>
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
 man2/timer_create.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/timer_create.2 b/man2/timer_create.2
index 7f81914c2..9d3534570 100644
--- a/man2/timer_create.2
+++ b/man2/timer_create.2
@@ -28,7 +28,7 @@
 timer_create \- create a POSIX per-process timer
 .SH SYNOPSIS
 .nf
-.B  #include <signal.h>
+.BR "#include <signal.h>" "           /* Definition of " SIGEV_* " constants */"
 .B  #include <time.h>
 .PP
 .BI "int timer_create(clockid_t " clockid ", struct sigevent *restrict " sevp ,
-- 
2.32.0

