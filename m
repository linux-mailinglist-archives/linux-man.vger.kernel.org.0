Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48D99324134
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235906AbhBXPoL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:44:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238309AbhBXOu6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:50:58 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FD42C061A2A
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:09 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id d11so2128705wrj.7
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wwG/UDsOeyvAQQQB5GEHITQ15p7AnLb7+ytBx/VHbCw=;
        b=DqWw/rpwWEDyQMLvU82FCBovt0SowzdiI2QEVeU25QODzMpr2NKa5LRPIX8r1h2HDx
         mGdSDm+ohgDQRRPVmk7Bs0x0+5G5fOfK0DKeZooAtgkyvSCDTyHAd4eV8FPCdd5n1mLf
         5x2EyX0FeYgkle4W2DqMgQm2zvB9Kn7cJ4CJY27/ye54+0mK2pEdzO9+poCFt3gicpHQ
         fq4AelCNXY9VHf0qcEOblDc3nB2S4DtAI0cK80QsBybSugDWmfOoN453MKydG1g3vj/y
         Km5kkWuvraAmcSNzt38oDHFpaJ9HiVasa06e/6AV7pUr8L7zVUayWeIZ3POFIQ1aVCMT
         XG3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wwG/UDsOeyvAQQQB5GEHITQ15p7AnLb7+ytBx/VHbCw=;
        b=LQu0bWTo3n5h3UtRTXVwD9mLUOghUBE+Jt9htMz0A7AE6h7gLWb18SEkFypYKJRHvw
         y7WDc38jQJdV0tKG3HbrN6YgoIEdurHeoEd1AUEg5d2dmCxHLpCrT2GNIFNLnVu0qd1D
         gtyNdY6ZR+NWmPXNDJOVZJhVtM5xNfV99YZYl2ll2xyNrfBZJtkcr1m3x5RSDLhzeIpp
         p7mxnvlhGA07Q9Fk7i5jeeAsOn1E9YtmPquUEN04qpmeLsLDMacFhfDLeeZO6fajT6lv
         BJ9/GQl+XI1piZBK+43iq7AKEVOT/vmT0jhRDQBfZIpP+rUHg/SpFk9pfNJkC6XY0GVr
         /nxw==
X-Gm-Message-State: AOAM532p6OxBUAlXbex4P+ieWde2urFQNeiZbg7HRCPUI+KeKX2/CfkZ
        6EZBazLr2Vaoi9Wa3Ysk2BxVwgY/BM4QPQ==
X-Google-Smtp-Source: ABdhPJwbe3X6MtDaoPFg3tUcVcqKD1xvMDWEzIpVtuRBXeXEs5NyCPBbKwt0ZkDAISOkw+CpK8YUZg==
X-Received: by 2002:a5d:4d85:: with SMTP id b5mr30020236wru.192.1614177848112;
        Wed, 24 Feb 2021 06:44:08 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.44.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:44:07 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 17/20] fopen.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:43:08 +0100
Message-Id: <20210224144310.140649-18-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' for some of these functions.
Let's use it here too.

glibc:
=============================  fopen
libio/stdio.h:246:
FILE *fopen (const char *restrict filename,
                    const char *restrict modes) wur;
=============================  fdopen
libio/stdio.h:279:
FILE *fdopen (int fd, const char *modes) THROW wur;
=============================  freopen
libio/stdio.h:252:
FILE *freopen (const char *restrict filename,
                      const char *restrict modes,
                      FILE *restrict stream) wur;

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/fopen.3 | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/man3/fopen.3 b/man3/fopen.3
index 65ca99f75..d7af3fe96 100644
--- a/man3/fopen.3
+++ b/man3/fopen.3
@@ -48,9 +48,12 @@ fopen, fdopen, freopen \- stream open functions
 .nf
 .B #include <stdio.h>
 .PP
-.BI "FILE *fopen(const char *" pathname ", const char *" mode );
+.BI "FILE *fopen(const char *restrict " pathname \
+", const char *restrict " mode );
 .BI "FILE *fdopen(int " fd ", const char *" mode );
-.BI "FILE *freopen(const char *" pathname ", const char *" mode ", FILE *" stream );
+.BI "FILE *freopen(const char *restrict " pathname \
+", const char *restrict " mode ,
+.BI "              FILE *restrict " stream );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

