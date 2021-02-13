Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AEA3E31AE71
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 00:12:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229733AbhBMXMH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 18:12:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229716AbhBMXME (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 18:12:04 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48E1DC0617A7
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:47 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id u14so3708322wmq.4
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RFAs0dWYIhnRjl1ZRml8zUvOz1WFpXkB2XXBJwqeu3I=;
        b=R9uXtwlOq09Bt8v42HptuqVfyxe2zbC+OilgV8k1asfVhH6r3KX+JR4FLUJ3GpFuUQ
         U91E78JXQTeZ0scZlOOTAqYRsKOvQbB3eqtImWfGGFh9vKx2XrmC+4zbKWFse+bdesLn
         G6bW0zWYHtuEJLF+oI7pu17rIfGGbe0q+x1i8251codLYzDajsQ+u/wlHvqa+tNlwsvJ
         LxZBfsC/CGMS8woc3BE31ojDtwjll7biTSicU5K6XtIcW/wkUzcTbJFyNQfg03Pvb0D/
         dqf7mayC7/joYzfUAoagV7Q9cfP8wws4CdCvw//CpVgYwh5r4Z1MIzOVt58YaEXCGZI5
         MyyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RFAs0dWYIhnRjl1ZRml8zUvOz1WFpXkB2XXBJwqeu3I=;
        b=MG/qUIFJnRlC9TOpQ+PPEFxf5v0y5JVXB0Qcz05bpg0kdGysUDWidcapZ4Pk35VIhY
         0we1ItM2pyWbDh7qHwxtHhbRSBND2Ge7wZIgB7cgEDfoCqvrO5tHaRU77wcxTDCmeaO4
         8V64USluWVHfWu2xoVARVD2/hxHJA3C/s0KIuyoVmAZ913dR6XV+4d6L5UhMia86KQLw
         iBTX39C0kp32/b4xGUivSoeQzHvQUg9pfm6xmH755/zfJmHP3o9KBUPZC+XzMg/dg5kl
         6j4Xs0iHDsYqSiY2tuGVwZX5mN9JW8ohjnLKr4gA64MyDc/5Pyy/LkA/onCNeeNKr98F
         k9Vg==
X-Gm-Message-State: AOAM532ZvUaDDkdET1pAyubYpKBgfSFWVckpk9z7Q5+Yy4+HVUeBjRkx
        Wy4DRMpWlLAlyEo7tDyiHf5JGLGJ5Yo=
X-Google-Smtp-Source: ABdhPJwt1bGDjl2NPGPkETNC2UjJpOTu1eYUxSnLkwFC2+wptCtKSM4eN7rzBy0Hk0F80Nfy0KGXAw==
X-Received: by 2002:a1c:3b8a:: with SMTP id i132mr8129261wma.26.1613257846129;
        Sat, 13 Feb 2021 15:10:46 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 64sm21011878wrc.50.2021.02.13.15.10.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Feb 2021 15:10:45 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 11/14] statx.2: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 14 Feb 2021 00:10:21 +0100
Message-Id: <20210213231024.440020-12-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210213231024.440020-1-alx.manpages@gmail.com>
References: <20210213231024.440020-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Glibc uses 'restrict' for the types of the parameters of statx().
Let's use it here too.

......

.../glibc$ grep_glibc_prototype statx
io/bits/statx-generic.h:60:
int statx (int __dirfd, const char *__restrict __path, int __flags,
           unsigned int __mask, struct statx *__restrict __buf)
  __THROW __nonnull ((2, 5));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/statx.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/statx.2 b/man2/statx.2
index 9539ccb2b..aeb3d377d 100644
--- a/man2/statx.2
+++ b/man2/statx.2
@@ -37,8 +37,8 @@ statx \- get file status (extended)
 .B #include <unistd.h>
 .BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
 .PP
-.BI "int statx(int " dirfd ", const char *" pathname ", int " flags ","
-.BI "          unsigned int " mask ", struct statx *" statxbuf );
+.BI "int statx(int " dirfd ", const char *restrict " pathname ", int " flags ,
+.BI "          unsigned int " mask ", struct statx *restrict " statxbuf );
 .fi
 .SH DESCRIPTION
 This function returns information about a file, storing it in the buffer
-- 
2.30.0

