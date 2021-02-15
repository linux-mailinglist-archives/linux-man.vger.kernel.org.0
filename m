Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9042231BA27
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 14:18:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230162AbhBONSA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 08:18:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230014AbhBONR7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 08:17:59 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59019C061756
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:17:43 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id w4so6189424wmi.4
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:17:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1c+DnRNagBpBzvlgCmeb7u6iUbg+3aVt0C1emBBqrHE=;
        b=vOIwcU8jOADE8NabTwT7czS+K1lXjLl4PMyFCk2KCbQWzEmqQFpOzxdpg1no4Eka12
         o9lMFgZ5/A4knP4wK8esURBpOgXqZApMVFskkDXOD0okRNbBWOSrrwKZEsAhVKQTdcTd
         wKqlNF++Iu+sBVh0ZRK7oUdSaXbUHk81soREiUmrjD9oX+o7Plu24oJ3LR03GuGAi1+p
         shmzvBB6U+jMQ7qxyiKBAlQRIyGkZGX9yppjU6+aGYvvZVlxwskVzA1S3cyMv1N56Z4R
         3WNQ2Zjgi5Rt7jfGtSnrmxrRQ8pWcHkwhqDsif6nZDGykH4Jmww55w3yOtfTMJooQukS
         Bzxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1c+DnRNagBpBzvlgCmeb7u6iUbg+3aVt0C1emBBqrHE=;
        b=NHSist9n7sqRPx1WdpbTbRdNOxMM/+vgqBbpxVPk2gIM/rPiQKOn/QSTMnCiTHKTlt
         o7gtjWuQA5cgBU1loXiNB+d+KFCuryDavH2vcKskkg98FamgJg3yGKssA9AeSJaivSKT
         jeKXHX3y9Gnfzw+2NL70M5uqE/twJ3vKvOSnPin18/A6HyljfnfAUHlRRpAtk2Vojg39
         +DiO61v1G3RfAroqMh/QZ7ZCEpQ0HvOI1mL21LoBLnwirF1Mgd1WGrZYNiVacUQW+JF2
         lQ0LOxGiJWp4R7ZAjzfYnTR0fZx/p6QXzGpa/JJoJG88QT1U2sy+/gVGiN1VcLoMV7Iz
         8OUA==
X-Gm-Message-State: AOAM531dM1acpriSbAM+3jTusymBZKES8lEQk4Q0uWYCn6QhKMRqdMQv
        R99lghcRWTP/KEi3kwrTu8E=
X-Google-Smtp-Source: ABdhPJySPJnMMn56SJVHawIjq4CiGgIg3rM1+2jm9EAxRNhJtPQRWUtaUf+Y2ajm8zJdq4vFFVhDrA==
X-Received: by 2002:a1c:a553:: with SMTP id o80mr14117435wme.20.1613395062154;
        Mon, 15 Feb 2021 05:17:42 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id d15sm19309504wru.80.2021.02.15.05.17.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 05:17:41 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] spu_create.2: SYNOPSIS: Fix prototype parameter type
Date:   Mon, 15 Feb 2021 14:15:20 +0100
Message-Id: <20210215131522.450666-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The 'flags' parameter of spu_create() uses 'unsigned int'.  Fix it.

......

.../linux$ grep_syscall spu_create
arch/powerpc/platforms/cell/spu_syscalls.c:56:
SYSCALL_DEFINE4(spu_create, const char __user *, name, unsigned int, flags,
	umode_t, mode, int, neighbor_fd)
include/linux/syscalls.h:1036:
asmlinkage long sys_spu_create(const char __user *name,
		unsigned int flags, umode_t mode, int fd);
.../linux$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/spu_create.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/spu_create.2 b/man2/spu_create.2
index ff0dbdc20..2493b16bc 100644
--- a/man2/spu_create.2
+++ b/man2/spu_create.2
@@ -30,7 +30,8 @@ spu_create \- create a new spu context
 .B #include <sys/types.h>
 .B #include <sys/spu.h>
 .PP
-.BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode ","
+.BI "int spu_create(const char *" pathname ", unsigned int " flags \
+", mode_t " mode ,
 .BI "               int " neighbor_fd ");"
 .fi
 .PP
-- 
2.30.0

