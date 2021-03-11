Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 199D3338052
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 23:34:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229688AbhCKWeN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 17:34:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229791AbhCKWdu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Mar 2021 17:33:50 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10ECFC061574
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:49 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id e18so680617wrt.6
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hIPXV5VCEPaPMLD+26mfqastCeKgnkS0cIJ9FjKHlxo=;
        b=c4uZbiqobsD5AuRnHcewH52+XPSvEfqq9Xkl8v8Zbv0UBBA4kcajw2dPtxktyCGWyR
         npnDPjwjocL+T0ltToh46UD3caxzB73sIN7wCQuN6Hexl89K3bGk7DKJPbtZbyDbaN3J
         LuKSZq2ydoETh2l3G4T33wWdaTysn+BP5cO/epHLXIWDmEIRHyasJwPvSZmB8Qpgj+Vx
         xwzibPos2Yo5eGj+bqj4q6pMhWb1RpNAqpJsGAeQWy//+5sI7MgzPbqWkf60wtoPtlsO
         uczpM6jZVrzOnsw/JatM29eBH5HsHT/1n196Af0FBV8zuiuiNkXS1fOGyH0V3K2ztR2b
         cuBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hIPXV5VCEPaPMLD+26mfqastCeKgnkS0cIJ9FjKHlxo=;
        b=m8tb12WTYXpLrPdYoMeoKfdpDd4ADWnQc4xmKSlr2hB14Cr3T3/+ZISLlWSjZk8paY
         hq6HD8+3rz7Z7JwolVTYCoS8nL5zaEJ8cmaOZS4MsGM59W8wdXTpF/mEG2tYyioROc4t
         zOjBXxqE7ZXUjXoxwYl9SVmQ9eLJq1MND2r+kuK6M3b+ehO7hc7reuRHPGcyCo/f1KDq
         wgP55A8vb23mGUweW9Lpcl1H3ZV+SeuqoZz5ObL7uIokqa0O/rBU23hI/jISkzrDH7eC
         2OJsk40oDstpoW5G/ebJ9ZcNVRhn5ibMl32okdBT2cJgEfLxgZF2wDtS51FhsyTsW1yG
         Bo7Q==
X-Gm-Message-State: AOAM533rEQZdZ66q4eCEvVORM6TjR76yID5AoyFzLd3q6+7VfwLtfVKY
        VVRQzyBmhyFUqPofsw8U9wj+C+qHz8I=
X-Google-Smtp-Source: ABdhPJxPxFdmBzyWecT0qlrVzLjuxAjPQyGJhR2LlHzHxzvRDAYpdlxcN/nnVYVhsD0lGGjirkoDhA==
X-Received: by 2002:adf:a302:: with SMTP id c2mr10894452wrb.212.1615502027818;
        Thu, 11 Mar 2021 14:33:47 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm22365771wmj.1.2021.03.11.14.33.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 14:33:47 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 07/17] wcscat.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Thu, 11 Mar 2021 23:33:20 +0100
Message-Id: <20210311223330.722437-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in wcscat().
Let's use it here too.

.../glibc$ grep_glibc_prototype wcscat
wcsmbs/wchar.h:97:
extern wchar_t *wcscat (wchar_t *__restrict __dest,
			const wchar_t *__restrict __src)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/wcscat.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/wcscat.3 b/man3/wcscat.3
index c756337f1..acfb8d43e 100644
--- a/man3/wcscat.3
+++ b/man3/wcscat.3
@@ -20,7 +20,8 @@ wcscat \- concatenate two wide-character strings
 .nf
 .B #include <wchar.h>
 .PP
-.BI "wchar_t *wcscat(wchar_t *" dest ", const wchar_t *" src );
+.BI "wchar_t *wcscat(wchar_t *restrict " dest \
+", const wchar_t *restrict " src );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1

