Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49F2C3778C7
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229992AbhEIVpJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229994AbhEIVpH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:07 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BACDC061763
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:03 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id l24-20020a7bc4580000b029014ac3b80020so10051769wmi.1
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Dxrip1DriFG4mNty1fFibeeBdt/qTPXSz05eCLUPgGM=;
        b=UPS/S0M3/l67QP2DNhRVpm8/dktlEIUkVR5+T8rnC+C+Jt3IpzV6868hUKMcEQHXMa
         BBHUvlr31yxi+mPuZrUNFBfV8ri9ZMFJVO8/LcK1Gr4M7aWEYKFcT7/Uf7oMY2TRi25o
         bjYpimHggzG4JJAI02Z0MyS90oQ2MRbLLWFBb8f/N3vrUL7xCVC9gxRoWK4TEL+CxgVX
         zA61+DFVpz2nOngGt3ZPTF2I5IVU2Fa7r5uiLj3opfaq2ARpBvyLR73UUOuSH61vHW40
         FahUsjbeknjCy64x5qTya2EfEdpjGz1Ny6owr0O9Z6sTXEpiXERp4gTDSpvp3MXU4/Hb
         6QpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Dxrip1DriFG4mNty1fFibeeBdt/qTPXSz05eCLUPgGM=;
        b=SQqQBu3FoBhWCRK4xahFiuYd4yJiXsObGma19fYfIxsu4zfLLhajvSthbNgrf4O/k2
         T11vIhiV7Yhd7pfZr+lCqI7q/luRJ8c/rBafP2uOVWN8tg5ihdFceaW9N0DMgJ+FdbFI
         /eLNkIokb2DvJmEFjtPuAXwpW1EvBrlvsjyrLyT/+VpuewvRPBX1BUzghpG0azT8W1rX
         6R1LB1opTSX89gjowBM1CmRQ11egxhEwB7rXLkGqmk0ac2o0tfBwpnCbOGJevBm2wiSc
         DXHn5pI72+lh2RacrWlDvrvDvqO/22iH5E+ZXHev4ZBpzkd/gQdftgStb7x4dxxmqgJR
         LAkg==
X-Gm-Message-State: AOAM533KEwk3sfFoKkB/mpgwx1ZjNxbko5qn7pseqLjq2PZxBoVzI55F
        wOcx4wudd6zeVI4ofvqVeV0=
X-Google-Smtp-Source: ABdhPJzbYB5+WNCqDM72wGZ8zsOnBR+hRKLRfa69IsukuI3yiS+Q5AjHj28iJEXPV/PulOQu3wn04g==
X-Received: by 2002:a05:600c:3542:: with SMTP id i2mr19585726wmq.171.1620596642215;
        Sun, 09 May 2021 14:44:02 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:01 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] getutmp.3: ffix
Date:   Sun,  9 May 2021 23:39:03 +0200
Message-Id: <20210509213930.94120-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getutmp.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/getutmp.3 b/man3/getutmp.3
index e5e85aced..012cfdf6f 100644
--- a/man3/getutmp.3
+++ b/man3/getutmp.3
@@ -31,8 +31,8 @@ getutmp, getutmpx \- copy utmp structure to utmpx, and vice versa
 .BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */"
 .B #include <utmpx.h>
 .PP
-.BI " void getutmp(const struct utmpx *" ux ", struct utmp *" u );
-.BI " void getutmpx(const struct utmp *" u ", struct utmpx *" ux );
+.BI "void getutmp(const struct utmpx *" ux ", struct utmp *" u );
+.BI "void getutmpx(const struct utmp *" u ", struct utmpx *" ux );
 .fi
 .SH DESCRIPTION
 The
-- 
2.31.1

