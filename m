Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71A9531BA32
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 14:20:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229983AbhBONT4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 08:19:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229802AbhBONTz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 08:19:55 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCF96C0613D6
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:19:13 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id u14so8871261wri.3
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=U0CPOjB9JaNq+9BCSOBNltfnUAYtJYJ9WrQ0NW+lYkE=;
        b=UDbS0LMzyEB9s2Jd+bstJeJAPeMBrRzV7rl1fX/aM9UsqeUO1K27Y9CgqOT6fI0S9e
         Gh0XUs483u5LmH4bA6r5LKQDpCBxWnSjaOcgX07upZIZOILBtTZ77d9p0PQkL2U+gXte
         480m7ssCGciOZDP5dkt3JKB6hz7YuWG+7grrE+NjI7AG99NKNGrtwQGxCsfZ+8nONhzn
         wM9MnVgl/XY3ZGoTUqt1QaJX6x3cXCRGdcmu+nkdML9ee6blIrpd2LfSbNrRppJsPFln
         kykgi05yOkNXaqRLd0AShIH374EftPGaMJiS6+8W+aPwRqoFkH/oNzuMfm/oxU4OOFH2
         pYSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=U0CPOjB9JaNq+9BCSOBNltfnUAYtJYJ9WrQ0NW+lYkE=;
        b=fuQQi9+sRPNEFT35Qut8nMVBf7VEVBk0r3L2XJ+13cMYFlwcjrYjZ6vHapskLSyv66
         yJxAAWl8Ww6krfmD4XjwoRs9fhaBsrIUmk2ZSP31jThHYvkaLWWKMfHz5RWWe7qrtJRC
         767oy65+yd2Bz51xsemWRopSIAo5FK45YP8+LO7XygkOtlySNxy+6QlUey4gEKH/grBl
         QHQtCZz9aOzPxQ8Zcsj8keFdm6W5Y6h0+RhTBernS9ka0StwkFbWxM0HhZZJoCbrQiBi
         rWhvcurUzYJCy+UedM7gme/Q+Pa7b+w0jo62zDlnAv++XEs/JYDc/rCkzDpFqaCVbrTR
         /yEQ==
X-Gm-Message-State: AOAM5312/FWaqHE/kG2ceNBSD/sMdA4uJzZWIv/WG6VpOjHs2fNdcC3D
        /0riltZWaSz53rPd3z+rZDI=
X-Google-Smtp-Source: ABdhPJwpYCIV09l3+L2BPhiCKDvRAaJkC4eXuQatU4L3BO8/Jb+yACjcxasuLur/x0YswWFip3I7Zw==
X-Received: by 2002:adf:8104:: with SMTP id 4mr18743450wrm.265.1613395152696;
        Mon, 15 Feb 2021 05:19:12 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id d15sm19309504wru.80.2021.02.15.05.19.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 05:19:12 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] lookup_dcookie.2: Use standard types: u64 -> uint64_t
Date:   Mon, 15 Feb 2021 14:15:28 +0100
Message-Id: <20210215131522.450666-10-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/lookup_dcookie.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/lookup_dcookie.2 b/man2/lookup_dcookie.2
index e38ca89a4..9180c1d42 100644
--- a/man2/lookup_dcookie.2
+++ b/man2/lookup_dcookie.2
@@ -29,7 +29,7 @@
 lookup_dcookie \- return a directory entry's path
 .SH SYNOPSIS
 .nf
-.BI "int lookup_dcookie(u64 " cookie ", char *" buffer ", size_t " len );
+.BI "int lookup_dcookie(uint64_t " cookie ", char *" buffer ", size_t " len );
 .fi
 .PP
 .IR Note :
-- 
2.30.0

