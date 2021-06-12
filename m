Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 107E53A4D9F
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:32:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230511AbhFLIeQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:34:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231157AbhFLIeQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:34:16 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66520C061574
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:02 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id g204so9253486wmf.5
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Lkb9JVwed0J0QQfd6bQwmgHPaDHtmw3mtaxnMwJir48=;
        b=GssmnWugpKgDlk5FkLjMUtkLucMq5/KarH1XbNSCOyRssYxuP8iSscrUbgqg99TAFu
         0FJNZNm9xQjrS1N2/p58Wu4QOhF8zmcJKlQnLRyy0TFCSG9KUXYCTFgk00oHHfbIS5El
         W+I1PKrhkYSukzN1vgFAWQ3wjSWB9qgGcH1iC0Rmckfb5D4+ithImEqjc5pG7Jw1YiVY
         vhmgnppOu6BG74cXb+M5P0vSR9SwIlbFT8OmTOAopUD2oZfiY0mdWEYII40tLu06VMKh
         SjL4h/08tmw62E/kde6JjwDEjpV396VgHLXLi8ISD7OkeuGFHYICfTiYrOsnzNv9NMQ9
         bEOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Lkb9JVwed0J0QQfd6bQwmgHPaDHtmw3mtaxnMwJir48=;
        b=IpY1I4jEu4ojl37leyUK6jybrL9arwa0JoxAjJQ2pt6cexyO52/sa9tct9GgRDafWj
         aFc4O+zbsQrEUZUsVO+dLYSLQ4VExkyDn8zPIceJRJAN3xgYUTxfqXMC4opmDbYsQrca
         K2r+fDD6i97kmymXiIEt3GEPgnLTR+dS4Qt+q11IyAH/0DJERmV4fvgCHg1EMzQ+DOuD
         tiVTm+os0AEpfIZehEuKCtTea3SaJFNGwJQqGfGLKRovzcGhGoPKAAuOyt5CQwSFpnOV
         gZWIGVdpxJCamUVlsNv+OZ6+uXO8FYeghWslzdn89PZHk/5MZ0fqzKcH755O4GJ5FlkR
         wMOQ==
X-Gm-Message-State: AOAM530K0TDZP5iyjZSoRl2mxDhuVQdVjcOUtBEn3ztiS36GIaWSPu2A
        TbW6z+k8RReDv+8VXlCyHS0=
X-Google-Smtp-Source: ABdhPJzkoG9DoiG3bLXVVF7KMyY/x9nPNPCrnqwGkG/rTLIci4mUBLdwuE6XCNXXH/iTbSnPcAJbBA==
X-Received: by 2002:a1c:4c07:: with SMTP id z7mr23171122wmf.90.1623486721106;
        Sat, 12 Jun 2021 01:32:01 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.32.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:32:00 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 19/28] truncate.2: Remove <sys/types.h>
Date:   Sat, 12 Jun 2021 10:31:36 +0200
Message-Id: <20210612083145.12485-20-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

'off_t', which is the only reason this might have been ever
needed, is provided by <unistd.h> since POSIX.1-2001.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/truncate.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/truncate.2 b/man2/truncate.2
index a882e41c7..ebe3c4ef4 100644
--- a/man2/truncate.2
+++ b/man2/truncate.2
@@ -46,7 +46,6 @@ truncate, ftruncate \- truncate a file to a specified length
 .SH SYNOPSIS
 .nf
 .B #include <unistd.h>
-.B #include <sys/types.h>
 .PP
 .BI "int truncate(const char *" path ", off_t " length );
 .BI "int ftruncate(int " fd ", off_t " length );
-- 
2.32.0

