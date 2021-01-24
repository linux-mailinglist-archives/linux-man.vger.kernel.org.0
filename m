Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47724301D08
	for <lists+linux-man@lfdr.de>; Sun, 24 Jan 2021 16:12:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726573AbhAXPMM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jan 2021 10:12:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726563AbhAXPMC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jan 2021 10:12:02 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AE5AC061756
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 07:11:22 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id d16so9071395wro.11
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 07:11:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ScGKmfgNc8oG/GbnpeiMcoYWDTwexvur6mrbDwizPtY=;
        b=gsYkMkKvzaHr0nUu5rAdT52Uw7wcg3Xk8dRuCVKajMEhbO+q0wuMT/CKecmYtc+zYk
         wB/h8Xot8t8FP7U6BQW5vSArtcQXRjQzkHn1/NYl3GWBSboUhn+2DH9QNhD2TdJnQISr
         Kv3E9969LIgFX3AFVYLtazukCWzgeu95D6KrWn+YHr+Ui3rIJhHLSckF4Dd4cihLGebM
         NcAvmAM+OIMrFW4oAJjqraQZaRk1AuYb2xM8g1in6ls0NvKkoRReHWfZ6JBGfjC/vpPS
         v+ds3lV1Jq9opzwyyxwiY4GWm16rXRUIN27wSy1TMmHffoQFkV2GbUTsVCzpkCwAyk6Z
         99bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ScGKmfgNc8oG/GbnpeiMcoYWDTwexvur6mrbDwizPtY=;
        b=ii4NJt4eLB3Mofefx1UCQWIxzGny4w5EtTS/62cVxv6ZNGVhgCNpnNlNozNQbXXHcC
         9o0ydNCQ61LkMTts+IJKrofjsXt8uCfGi2W08CQwlSsWQkT8A+a4ynTreWQVo6Yhc4Z9
         USuDn4dPWYCWmtl/uu72EwN1wwOxGqcr1nAB6DKNbh39egEv/xRMKTCu0zX6Y6PFmxW1
         DRlh2644ksGt5yHDECF2jnyWq6pxfPOpLi0D/pZ9z6pfw1XyNncIoJGfjDX+YKzRHbGr
         51rfNf3Qd7B/pRDLWuC+2zRBM6dtywF+PZG8vfpNNwO0f+PKRcH+1Bjg0gESZ1ot0Lu5
         xSGw==
X-Gm-Message-State: AOAM533PLFZMoyGcom47ASmTYGiOn0R57ajHG0umFUK5Vg4po/ds8Nl5
        L3Tkh4D70oqTO1DMSTAUNjVZ10crZkg=
X-Google-Smtp-Source: ABdhPJy8gsz3UdHaTwa0fwWSCcsS0TJDXEX1pJMa5zMPUfTbrrk1VoZBUo9boqO3Wx8hskMpLznPNQ==
X-Received: by 2002:a5d:538c:: with SMTP id d12mr2026619wrv.351.1611501081038;
        Sun, 24 Jan 2021 07:11:21 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j2sm18480099wrh.78.2021.01.24.07.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Jan 2021 07:11:20 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] random.3: srcfix: Don't break proper names into different lines
Date:   Sun, 24 Jan 2021 16:10:35 +0100
Message-Id: <20210124151035.70536-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/random.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/random.3 b/man3/random.3
index e57f5903c..eccccd953 100644
--- a/man3/random.3
+++ b/man3/random.3
@@ -184,8 +184,8 @@ for that purpose.
 .PP
 Random-number generation is a complex topic.
 .I Numerical Recipes in C: The Art of Scientific Computing
-(William H.\& Press, Brian P.\& Flannery, Saul A.\& Teukolsky, William
-T.\& Vetterling; New York: Cambridge University Press, 2007, 3rd ed.)
+(William H.\& Press, Brian P.\& Flannery, Saul A.\& Teukolsky,
+William T.\& Vetterling; New York: Cambridge University Press, 2007, 3rd ed.)
 provides an excellent discussion of practical random-number generation
 issues in Chapter 7 (Random Numbers).
 .PP
-- 
2.30.0

