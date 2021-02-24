Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 58715324132
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235885AbhBXPoG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:44:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238305AbhBXOu6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:50:58 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCD80C061A28
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:07 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id k66so2063037wmf.1
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WxNakyr8yawXQJ3Lc/21Qfan9W/PfgzSr9d4cc3UdAw=;
        b=jti79LMhTP1X7E4ejN+jnI/+HlkXUeYphYL2TMF42JnhJnX2xrI0PvYJeqjliDjRgF
         4Zgu2vSXLUge7tvxdkijiymBbDTrCF+6mIJzgM+5dsSzsb1YE1lBoYJi0ZnQ1ty2F+gU
         sSFt9oqFp+EaTOpNhWSTSuOmUmnBR7DkZWx6n1oX2anRT//Kn1B54LRiYnmL141Cl6pk
         0u/9FRUUyDbwd7wNa7FGZs3bpFIx1Yr3PXGfiTBPVkHPuR8CxkDIrL7NouAckntdlvSI
         YVKalSzrGUStWftSdCXDKY/fFDSdQyeEJXLW/lvUa176SA6f2+4/ADohdfOoY1tiNUj+
         8G0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WxNakyr8yawXQJ3Lc/21Qfan9W/PfgzSr9d4cc3UdAw=;
        b=AHS0OBkQ0hLpH1PlpZqFYKPb0HyinkUv7LPi0pRV8WQEvMN7iqwW5nb+sCWbUeZeDk
         p10OGVqQVGaSSMuN9Y3iodXumd4Pq+qx0kLvJNCMlHVw53GSpG2gqznEyfpBtfrDpuVh
         DqJu4f9jl5/zyMkolPdkjPtTRE2xHOYDXST1xGQ/55zOazNA8Cnj7kUahJpfSl51UVdq
         LGj/lfL8avSDs7p19kjZpJtkzdN9CjETSMvNE3O2Pw0jvo9SNYz5Gj/JaApyD52Y2wH4
         +wcOBCmwpqmOF4I7i7soBc8RgU+ChGYUntZl74gRXoATha34IQ9tD3eYlKqQn/BCwcxT
         N2aA==
X-Gm-Message-State: AOAM531QwTn2P00dexlDNT2fUmwb8cp2NmJRZpPKvQDBQt1FaoMBaFG5
        OsjppuhFtwyy3ZKD5DkoNnA=
X-Google-Smtp-Source: ABdhPJwKhhjdX2bGc53E8QvyKie3Buk678IR2Cm7kZ43CZKUG8j/gHyEPQdtw+uNGQ1+Wu9hud2Qeg==
X-Received: by 2002:a7b:ce14:: with SMTP id m20mr4202793wmc.12.1614177846683;
        Wed, 24 Feb 2021 06:44:06 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.44.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:44:06 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 15/20] fgetws.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:43:06 +0100
Message-Id: <20210224144310.140649-16-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' for fgetws().
Let's use it here too.

glibc:
wcsmbs/wchar.h:758:
wchar_t *fgetws (wchar_t *restrict ws, int n,
                        FILE *restrict stream);

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/fgetws.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/fgetws.3 b/man3/fgetws.3
index 4ce0fe79b..652507937 100644
--- a/man3/fgetws.3
+++ b/man3/fgetws.3
@@ -22,7 +22,8 @@ fgetws \- read a wide-character string from a FILE stream
 .nf
 .B #include <wchar.h>
 .PP
-.BI "wchar_t *fgetws(wchar_t *" ws ", int " n ", FILE *" stream );
+.BI "wchar_t *fgetws(wchar_t *restrict " ws ", int " n \
+", FILE *restrict " stream );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1.721.g45526154a5

