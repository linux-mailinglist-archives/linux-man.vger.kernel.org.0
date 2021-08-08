Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67AD73E39AB
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:42:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231202AbhHHImc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231176AbhHHImb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:31 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 688B4C0613CF
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:42:07 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id l18so17135818wrv.5
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KrXf2leuAmvgBJnB6vuaabMKhsBmC84h5k4yU6FKATU=;
        b=OgdDKrUoxLg1CJjreZahDpWX8sRLDpB/bFhCrCnYD0IDmjvesHKGDDAMSsFPRZVvaJ
         YnSSNsAbUGuGQNpEqYAujw+y4Y8C7fjafTRdWsilbxC8qsklBTTjJUuYX46r2MuHTHhI
         0o5Y18Ay+9a6OA0Dge4sL1+KLKkBPm+Jis+BxtKrw44BPWd4xZvetqvSaOMRpUcU1lhz
         YuE7ZK6DaPgdBGkVcgl3szin32MfArE77tpSPV64GMw/NH8H2ARZFR063ScGoIrHHpFZ
         eRTC2NBqJICilJzQJpSV7TdSbxONJ3eMkUkCvdJ8t9nTY1fDHh9lCG4loBnNiEhov3fc
         sXTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KrXf2leuAmvgBJnB6vuaabMKhsBmC84h5k4yU6FKATU=;
        b=Hyl5z2O40zEa0PGgIaf1+WW4bwyP2PAHS7llh3kh+E7TgpcrQ35RTNiWSe1vB8m1JA
         6dwGMq0Rq44lEjLhu/5uOV9zG0BPm1cPHsTAT/QXu9H0jqEoqAOXzitRyk1lQUuPJv7z
         iWDY3S1psBTD7/Dotr6pd7enYewkhyoPwffOULFgcGsLBkzPlWEqanOXfD/HzxT04fv8
         GhW335kDVoKAhZXDRoB+tAlM0PM/D9R/ixvTFKiDVZ/TlqgAmpPD0vGjflAdobJ9syVk
         mBU4KHyYI16e3BunFKw8EqdY6TjDUwjsX/noyod3pj8zTAUn+JGYGW99epqSbTbRFZq0
         GzGQ==
X-Gm-Message-State: AOAM533JTvxlJWKTQybQRlvtLXOXWXX+v4Eps5GrpXWFZxsbCJjm2J35
        p3Gtm7iXP5HYLgQqk3XQMBM=
X-Google-Smtp-Source: ABdhPJz39hAUBIH8jhoImCuUQiMKc7/fk3/NjDdEX5WNO7SFFa1GpemChvVX+wV2jIUN1SdLYnkTXw==
X-Received: by 2002:adf:e601:: with SMTP id p1mr19495651wrm.14.1628412126043;
        Sun, 08 Aug 2021 01:42:06 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.42.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:42:05 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 23/23] close_range.2: Glibc added a wrapper recently
Date:   Sun,  8 Aug 2021 10:41:33 +0200
Message-Id: <20210808084133.734274-24-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fixes: c2356ba085ed4f748b81c0ceeba1811b4a549e1c
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/close_range.2 | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/man2/close_range.2 b/man2/close_range.2
index ca84dc448..0bb5de436 100644
--- a/man2/close_range.2
+++ b/man2/close_range.2
@@ -33,9 +33,6 @@ close_range \- close all file descriptors in a given range
 .BI "int close_range(unsigned int " first ", unsigned int " last ,
 .BI "                unsigned int " flags );
 .fi
-.PP
-.IR Note :
-There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 The
 .BR close_range ()
@@ -100,8 +97,6 @@ Library support was added in glibc in version 2.34.
 .BR close_range ()
 is a nonstandard function that is also present on FreeBSD.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
 .SS Closing all open file descriptors
 .\" 278a5fbaed89dacd04e9d052f4594ffd0e0585de
 To avoid blindly closing file descriptors
-- 
2.32.0

