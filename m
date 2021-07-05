Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B4333BB947
	for <lists+linux-man@lfdr.de>; Mon,  5 Jul 2021 10:29:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230118AbhGEIbt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Jul 2021 04:31:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230115AbhGEIbt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Jul 2021 04:31:49 -0400
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C259C061574
        for <linux-man@vger.kernel.org>; Mon,  5 Jul 2021 01:29:12 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id e20so17673768pgg.0
        for <linux-man@vger.kernel.org>; Mon, 05 Jul 2021 01:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Bta3MFM7kNEN2cJdtBkGK9+BKZO3fP1gqIaYPsO9DAY=;
        b=HsLaRBbEY9XI31Q/YdeIUzy7KH2TLi3KZj3kioJxuF3D3c5Xey4BBcZKp9978xBJTg
         Yt5w1t0c8N7ZoPFSEscSKpnCglKiX0xVtxh7zxPci5/BCQScrKleOxCdxCRxDlOPNgYb
         oVhe7fT7iCSy+4QfYZMWCK+bRPHBcMc9Sx3VAQ1Uz3QGyfBwNB39plk6MJoF/PgNVn8a
         PN3WJVXgaWwBAPMHq60UCGMsmJ4pWXevgcsFXnnxy1F4zNZYZn5BvuEQ2A8JNB06srgV
         LfBb+ws5GdoZ7/UOFVF97v0kdX1crnOU9bplJpeG1syVab3ji1U+jf0Kh5c8sTwLuViO
         KelA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Bta3MFM7kNEN2cJdtBkGK9+BKZO3fP1gqIaYPsO9DAY=;
        b=DlLJWdUBpKqxVTFnFwW53MZ8LQ/TmRFU9WbVruH9Ob90CeUm1YjoRkkrK7UKAve91S
         1SFrcLYrYZuvMtvnDa6WICU/FKWcZjkuShZkifqN6WeLNAWa1qWVmNUjJar4ydO9DCtS
         oRmseD/mnkeYbILBfNtrTyCwa4slIO3TZOzyJVf7tpltGqzZmo7jf23gbhSbjWlnIGje
         HjPgKFfUN5DXWRZLxLChUbyCkkLBkwvw3tBSoaK5wIOw7B26xnSTTiguHBYYUZs7tysJ
         z9Orv8a5ZBrMwCKanTm8znFjihnevpLlPuVHEHaywxvJ9cWYEsmQZztic19gtO2GAJ8N
         p0+w==
X-Gm-Message-State: AOAM532P0WZHgIWYnja7PwizK15isZwtxzJTN+nwWgibO8aNG3oDcl6L
        6e78t3uOyUFfGQ4t7Ksmjpe0phHJfLV2ACWf
X-Google-Smtp-Source: ABdhPJybV4nGdGnIJKwxmWPqsfU8GWsjBlI0DWGGFpNdOaiG+Ieztq/6BrOEDcHSueSRqjwG3pWu3A==
X-Received: by 2002:a63:f916:: with SMTP id h22mr14581351pgi.6.1625473751468;
        Mon, 05 Jul 2021 01:29:11 -0700 (PDT)
Received: from pc.. ([129.227.150.165])
        by smtp.gmail.com with ESMTPSA id d20sm11785726pfn.219.2021.07.05.01.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jul 2021 01:29:11 -0700 (PDT)
From:   kXuan <kxuanobj@gmail.com>
To:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
Cc:     kXuan <kxuanobj@gmail.com>
Subject: [PATCH] recv.2: tfix
Date:   Mon,  5 Jul 2021 16:29:07 +0800
Message-Id: <20210705082907.1513197-1-kxuanobj@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The recv.2 misspelled `SO_EE_OFFENDER` to `SOCK_EE_OFFENDER`.

This patch fix this typo.

Signed-off-by: kXuan <kxuanobj@gmail.com>
---
 man2/recv.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/recv.2 b/man2/recv.2
index 2659957a6..884c86355 100644
--- a/man2/recv.2
+++ b/man2/recv.2
@@ -196,7 +196,7 @@ number of the queued error.
 is the origin code of where the error originated.
 The other fields are protocol-specific.
 The macro
-.B SOCK_EE_OFFENDER
+.B SO_EE_OFFENDER
 returns a pointer to the address of the network object
 where the error originated from given a pointer to the ancillary message.
 If this address is not known, the
-- 
2.32.0

