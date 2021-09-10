Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D495640738D
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:47:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233121AbhIJWsl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:48:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231225AbhIJWsl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:48:41 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44C23C061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:29 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id g16so4740252wrb.3
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rhQA5dAbf15waWjPg4sWu6A/438CF0oRrmtv/64Wrbc=;
        b=ZaJPJldfz+8jvnMuit5iS5CcUQueENfK0tfaUQy9nXQ4xxTkwbyqC5RyLDhIufkiB0
         jYnXwPaJbw4v5Fvo0y71csHpg06Hkt7zPgAsOLZbJAfLxas/gmXjTMIf1+tqAYklkjFw
         6F1HWCtG0uFE8Blbiqu31LqqkHZCy90w/vRRJ9VJqFZIqNDzue6Jtc8qTFaUojKBxw7f
         rb6nKaioK6V7hIYePVWIJhNbCKymAq3pldlU0HM2r2V5AHeLefiOZylKhd9IEt90YX0B
         8w4k4P2bAYfIN+M1OieWmcDtGzcsho5b3uNjNb7mJyI9A98e45XkIHM721jZHq+KnyRm
         mPfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rhQA5dAbf15waWjPg4sWu6A/438CF0oRrmtv/64Wrbc=;
        b=FE457n5+cutl7q/l6iS7Y/yQ863aQpXX7mm2AmDoWWGhdtAdYXaj9KO4M4raNzHOJf
         QqeLIKczofLM9+XNYk6o/hOUiuVWv6rGB1Rf8u3e6l8/vB8c5JxIYjpN5o8GFHPVro4H
         hPNoeP6sVwakVgb4fv6uyHxoVbfDOVhmGUIEoCV8ppS5qQbazX4qSefw6pEKZnEmFrJZ
         PsPe4Lm+R7o7dRQg0LKAHqr8tO5bPbWLCbHtx2NUz96Dn9PyhW6/zsx+60vbmpdYxP4h
         qw0EPptfkschfJ8l54KaE8x7oWiiueF9l7D1FUqRvpVp6za3uSghnCat9cndM8gaTrT9
         bNPg==
X-Gm-Message-State: AOAM531FvAOQlYB6ikDSOmfDhih8ksyFDlZqMNxAmLpCxmbE8Q139YPv
        LlyAAz/Zfv2Kwh5VGqi4og4=
X-Google-Smtp-Source: ABdhPJyzHUU+MAkmcthbGTOg63xNYX8IX1S5BGIRvxIM2dZk2uvVQz54o3aq9h45nP0fHKhHckl8mQ==
X-Received: by 2002:a5d:534c:: with SMTP id t12mr80020wrv.219.1631314047961;
        Fri, 10 Sep 2021 15:47:27 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k18sm15520wmi.25.2021.09.10.15.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 15:47:27 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 10/15] ioctl_tty.2: Fix information about header include file
Date:   Sat, 11 Sep 2021 00:47:11 +0200
Message-Id: <20210910224717.499502-11-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910224717.499502-1-alx.manpages@gmail.com>
References: <20210910224717.499502-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Pali Rohár <pali@kernel.org>

Header file termios.h contains incompatible definitions for linux ioctl
calls. Correct definitions are exported by header file linux/termios.h but
this file conflicts with sys/ioctl.h header file (required for ioctl()
call). Therefore include direct asm header file asm/termbits.h which
contains compatible definitions and structures for ioctl calls.

Signed-off-by: Pali Rohár <pali@kernel.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioctl_tty.2 | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index d0a10a508..68b48a00b 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -11,8 +11,10 @@ ioctl_tty \- ioctls for terminals and serial lines
 .SH SYNOPSIS
 .nf
 .B #include <sys/ioctl.h>
-.BR "#include <termios.h>" "      /* Definition of " CLOCAL ", and"
-.BR    "                             TC*" { FLUSH , ON , OFF "} constants */"
+.BR "#include <asm/termbits.h>" "   /* Definition of " "struct termios" ,
+.BR    "                               struct termios2" ", and"
+.BR    "                               Bnnn" ", " BOTHER ", " CBAUD ", " CLOCAL ,
+.BR    "                               TC*" { FLUSH , ON , OFF "} and other constants */"
 .PP
 .BI "int ioctl(int " fd ", int " cmd ", ...);"
 .fi
@@ -31,6 +33,19 @@ makes for nonportable programs.
 Use the POSIX interface described in
 .BR termios (3)
 whenever possible.
+.PP
+Please note that
+.B struct termios
+from
+.I <asm/termbits.h>
+is different and incompatible with
+.B struct termios
+from
+.IR <termios.h> .
+These ioctl calls require
+.B struct termios
+from
+.IR <asm/termbits.h> .
 .SS Get and set terminal attributes
 .TP
 .B TCGETS
-- 
2.33.0

