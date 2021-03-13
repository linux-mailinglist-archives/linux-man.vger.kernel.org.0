Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 082E133A060
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 20:27:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231329AbhCMT0b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 14:26:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234393AbhCMT0A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 14:26:00 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D93CC061574;
        Sat, 13 Mar 2021 11:26:00 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id z2so3601933wrl.5;
        Sat, 13 Mar 2021 11:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9VCy3PwsXOlp+t9P8TEk8gqJUNOzd1/Fb5yw/M+eqTo=;
        b=cH8xvL7Lo2udgJSqxC+NlqlkP5IIpgT4xs0dzeSpWwllyZH+zNa7dls+IyfKU6dutj
         alco1oy8aV+c1C0oUSPHUHnvrs+Nspz/0i95NDFL3dKdzQyl6zxN8a55SKX/P2qFTPhG
         BnyVR5FUgmAbUTTubmSyJYzoBLnyiJ0YLw6WZH1jT6Sbh46lwEMporxjSrwyTp7sNn9E
         RaVj17oyKm0LEBYCOVINMwRdUWaR3LxDqZDCWK5qJ9gm4cd5QY0nibmuRXanHhBqY0zk
         JTkxgRUa7eX6TL743vuGEZ35YeGQ0doslQuPVZUSqq/zvkl5TB0C408NBrRTPSXdcIPQ
         RveQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9VCy3PwsXOlp+t9P8TEk8gqJUNOzd1/Fb5yw/M+eqTo=;
        b=Jl+eBn5oxbpx10oFoKMNipZp4zwIAimWsAyImLNDeJv1aI1AxG05tj42vSyx1BVAKq
         gXalIAZssxXd9nxPsSnWkHzzmwSSufHMqdAAzvB9cyObwKvbLwLwFhbon1em9haXiE4K
         TToDqQlaMHrOp9d/dhwkLQdGaKT9XeCuycGju9P1LhftKYM4ksrEPKxod80cCfyKKp2D
         9urdKdSpLOph2hhXLsGHkAr0UeNWrqV6U+8gz+L3ga1/anXmgmd8+mbgbCjLygXmwF2p
         uVKSQJsmBuWcUr0Ngd9Lg03jrjQ5uompQ4iZ/8AzBVeNbazd2Syi6cyyXJcRG3byZGE/
         /IYQ==
X-Gm-Message-State: AOAM5323F3coJNXqGVGNasgZKtV0VPTc1BCFD9LvX0FbQj3rPNUIDisO
        8Lt4vC+GBcZ6GwO2tNUBsKw=
X-Google-Smtp-Source: ABdhPJzS85oZIdFISj0xy7H815EDeHntGPJsgnIKwfB9Cd5Euba2OfLlnSCmBIshhd4hdUjDZw/l7w==
X-Received: by 2002:adf:82af:: with SMTP id 44mr19370149wrc.279.1615663559022;
        Sat, 13 Mar 2021 11:25:59 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j136sm7670964wmj.35.2021.03.13.11.25.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 11:25:58 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC v3 12/17] getdents.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 13 Mar 2021 20:25:22 +0100
Message-Id: <20210313192526.350200-13-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210214133907.157320-1-alx.manpages@gmail.com>
References: <20210214133907.157320-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/getdents.2 | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/man2/getdents.2 b/man2/getdents.2
index ba41e0be8..7d5b0e01c 100644
--- a/man2/getdents.2
+++ b/man2/getdents.2
@@ -33,7 +33,11 @@
 getdents, getdents64 \- get directory entries
 .SH SYNOPSIS
 .nf
-.BI "long getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "long syscall(SYS_getdents, unsigned int " fd \
+", struct linux_dirent *" dirp ,
 .BI "             unsigned int " count );
 .PP
 .BR "#define _GNU_SOURCE" "        /* See feature_test_macros(7) */"
@@ -43,9 +47,9 @@ getdents, getdents64 \- get directory entries
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for
-.BR getdents ();
-see NOTES.
+There is no definition of
+.B struct linux_dirent
+in glibc; see NOTES.
 .SH DESCRIPTION
 These are not the interfaces you are interested in.
 Look at
-- 
2.30.2

