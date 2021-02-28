Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71952326FC9
	for <lists+linux-man@lfdr.de>; Sun, 28 Feb 2021 01:51:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230179AbhB1Aun (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 19:50:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230139AbhB1Aul (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 19:50:41 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EBF5C06178C
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:22 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id e10so12040377wro.12
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9x9xJQzVIVgIIFKgABr5lFknmGhjncg+nSh2QLRkANs=;
        b=H828mIHPgDA1zYf/8oLX/58h86gCeRx3JcnsbWIcArAIp2mzELO9c1nLnufV3mvdIf
         l7+O9koV7xJKLskDsOIfj+3CYjCxMxpKKrbu4gpkXGkRGKJ35wr81ULAbnBzHJ93RJXu
         ttTWADRawkyXTu+Yl7BFZBREw3KJ8+JUyTlEQRQehsvV1BdhW7Fatc5jgvWsExd+mEEA
         QW2+3kC+KaLyag7v49VlL4Z1aCF9NRRKICe1FdbcRwj+4p4dg1noibVhcJ4ClgFECNlH
         VkFmmtnqTaiUQ5YYw9BMJl7mRpyRegctDF3kzAVKTv6onCzkHv6CiknkIrinZXrrZQrq
         7SNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9x9xJQzVIVgIIFKgABr5lFknmGhjncg+nSh2QLRkANs=;
        b=pNLCAcM8fSWNQpL/lMA336zS2IKxapXx7DXWhfikhBddlmvW1G8KBlHIJsxyWmps9E
         WSwVtrO+TRlmUFP6Jz+WEBhSku0j9j3S5x2e0qAqGpcklmkbvmYRO+EsEU+IVl+vKZ/3
         zXGkw1qLf+aBOB6hu4yPdbsZYHQ9KH04VPGBgxdBxBA0tCbhYQ1f8+vcYCzlS2bVaHOU
         ky4nGQC52qfe82pewF+NCb5yK1Sl2nzAbnfNUwHNi94xNLsSjGGZBhbA9A8hr+3xKoj9
         zK3ARcelS8SDddPhqliR7ZxZ6a14NEyta2o+gJC+NvZg0FlnN7WjAznJbqStTV0afjE4
         rx9A==
X-Gm-Message-State: AOAM533IOpRM25PnT5JMesbm8xho0nnhTkSLNtUo7hoVM6+rqasNJGkL
        QbkrYGuubSnvlP1GFlh3p+I=
X-Google-Smtp-Source: ABdhPJxT/t88GAaKJniPSCE959tObU6vH/CmXyfeceZzHoYVaio6f4Ba+g7JbvW5hcG87O7++rPqYw==
X-Received: by 2002:a5d:55c2:: with SMTP id i2mr10103251wrw.340.1614473360818;
        Sat, 27 Feb 2021 16:49:20 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id o14sm18212145wri.48.2021.02.27.16.49.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 16:49:20 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 03/14] getdate.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 28 Feb 2021 01:48:07 +0100
Message-Id: <20210228004817.122463-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210228004817.122463-1-alx.manpages@gmail.com>
References: <20210228004817.122463-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in getdate_r().
Let's use it here too.

.../glibc$ grep_glibc_prototype getdate_r
time/time.h:297:
extern int getdate_r (const char *__restrict __string,
		      struct tm *__restrict __resbufp);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getdate.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/getdate.3 b/man3/getdate.3
index 1f8432303..5334b4bb6 100644
--- a/man3/getdate.3
+++ b/man3/getdate.3
@@ -40,7 +40,7 @@ getdate, getdate_r \- convert a date-plus-time string to broken-down time
 .PP
 .B "#include <time.h>"
 .PP
-.BI "int getdate_r(const char *" string ", struct tm *" res );
+.BI "int getdate_r(const char *restrict " string ", struct tm *restrict " res );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

