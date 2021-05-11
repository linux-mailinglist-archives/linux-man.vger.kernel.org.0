Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AD7037A457
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 12:11:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231260AbhEKKNA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 06:13:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231177AbhEKKM7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 06:12:59 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59CB3C061574
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 03:11:53 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id b11-20020a7bc24b0000b0290148da0694ffso891494wmj.2
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 03:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4vH5NPEfL7QO/UmJG0j9+IOP0CtGdAJGcmeg9QXZ2Yo=;
        b=CI42pParGKnkCOEUiI9oBVdSlH3NLVG0YMSzQ2snXzMtHfGIpfmR1NPiP396sw7AVz
         cDoKIGV+CBxpUoQm+aaV9gX9fBMdy7p0Olt5/h3n9WRrqSXYGx0jAKnheZd8UyFMZdng
         4yhzRLNprIqzak9p4vELbU7XDOA68ni+F8dQNM3Okh68K63dQ63m0OquDYr3aoAgjMn3
         flYhuhwJhKVtkCVAd5CRDgK+4xbSHLp3ujQ1kG9IH42+pOLsNxvB23xo9gt/FRIEbTIz
         frSMYGmCXKhUwxVkBUXpAvPVh3NkqVUa6Yj8wDk8rczrROhov2Vy2QLzq5GHCt2m/3yF
         nSdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4vH5NPEfL7QO/UmJG0j9+IOP0CtGdAJGcmeg9QXZ2Yo=;
        b=pETaNT3qxLAGhY+4QZh02iVRnMB6X19i3lPfv1aZI7y0UGTEGQPJ/tcVmA+1w4o0lC
         5gLZ9wSjjiwEkTx9icP0/qOQjh60lZpFUvWGbpkY3+74yVQT5MQt5PF9JZVeNWb93DJk
         0UXJ/QT8dJUAvS0hz/ZtVRK7Unrdnx4OVh1YUPDVYbr9oFG23KYaQA9a7+at++FEahhb
         A6fFur3Gd1q26BSy861OjR2QoOmhF2kw6as4Dy/nFgrXK6icj0qZ49K9NY1b2dD3G+om
         8AvBpp2MIQRo1Cd0t2DBt7sQKRyRl3SMaHNyPLJele6w15n5WY2Ov3i1wtP1QLJ4rrm8
         n3yA==
X-Gm-Message-State: AOAM532cs4g2Z1O+eow/zeyaQj8muc1pSXRZbvW0RnpgO+oukiDvpVSp
        rLNRRexuDlk0v4rf7ercorDAj3vYCmw=
X-Google-Smtp-Source: ABdhPJzWore4l77Ieha7anPCKoq+L3XjZQK+7XdFokuFu8cyI3XB9Drb5WmCFQuoHneF+G4wyA9KsQ==
X-Received: by 2002:a1c:c911:: with SMTP id f17mr32327146wmb.45.1620727912202;
        Tue, 11 May 2021 03:11:52 -0700 (PDT)
Received: from msi.alejandro-colomar.es ([46.222.232.120])
        by smtp.googlemail.com with ESMTPSA id g25sm3171338wmk.43.2021.05.11.03.11.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 03:11:51 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Akihiro Motoki <amotoki@gmail.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 2/5] ttyslot.3: tfix
Date:   Tue, 11 May 2021 12:11:44 +0200
Message-Id: <20210511101147.24399-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d
In-Reply-To: <20210511101147.24399-1-alx.manpages@gmail.com>
References: <20210511101147.24399-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Akihiro Motoki <amotoki@gmail.com>

Signed-off-by: Akihiro Motoki <amotoki@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/ttyslot.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/ttyslot.3 b/man3/ttyslot.3
index abd3299e7..8a1f020c9 100644
--- a/man3/ttyslot.3
+++ b/man3/ttyslot.3
@@ -30,7 +30,7 @@
 ttyslot \- find the slot of the current user's terminal in some file
 .SH SYNOPSIS
 .nf
-.BR "#include <unistd.h>" "       /See NOTES */"
+.BR "#include <unistd.h>" "       /* See NOTES */"
 .PP
 .B "int ttyslot(void);"
 .fi
-- 
2.31.1.498.g6c1eba8ee3d

