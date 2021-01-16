Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C4272F8DFD
	for <lists+linux-man@lfdr.de>; Sat, 16 Jan 2021 18:16:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728162AbhAPRKV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 16 Jan 2021 12:10:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728151AbhAPRKT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 16 Jan 2021 12:10:19 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE32CC061384
        for <linux-man@vger.kernel.org>; Sat, 16 Jan 2021 06:59:50 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id y17so12150587wrr.10
        for <linux-man@vger.kernel.org>; Sat, 16 Jan 2021 06:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gZJPUC2BG+TOT9o2aEVsA+qGMnWjxfBaPQzPbkEro94=;
        b=LUwKhAAiEfvrAduMkuXdTN80R8PZFXdJ49toTlSkp10hvYHOfx46xUC9GIXLde0Ib9
         pDunGSc6ZX9G4gSR8rhERqLa09Fj+UsQlVlJxJ1x98lN37UMA8w1Xp6R6fNRRpDTcmSr
         Pbegn3se0NbAmGa5tfrWcAFOUGFb5y074TkhxN2+Yo1Py/ukUWdfqVYSfi+i6hOLB6+G
         2uZOuz8E0+RYvjHPFJOOKLQ/YmOfWcPoEQFnyEiPzjajzeoIFZlm0SS1ARVXdKMBoz7U
         NqtrXFS0xIGMHyFX4gvNkPFeSIRq6T/p7HcvY955bKfkqXSsZYC3JO2Qx+eKANlxWf38
         c4GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gZJPUC2BG+TOT9o2aEVsA+qGMnWjxfBaPQzPbkEro94=;
        b=oCcrG3dkvhymllRRfUp271hfd+ZFBXGZUOPq+LtgMeOu6op1+DWwfy4xV2qJOKOB11
         rOYm7aVH+2QLZUJbOWPO4HQCDYeHyR6NESImEIUHjuB8U6uFTQHwpwCaCqyykYYI88gM
         BkejHx7NsnnEQjkESSEY1o7mNxcX58aTyiMyNiiwzAsj0wKGZRfPE5WDHaCEjEzfWoDK
         GMm1XJKcgIaooeW7NqWu5JYLmqjl4foTUFr3E+Q8ag0zNYHjCJZzePLfl6U1BpoOdzaH
         245GwzoVd6LeZWSk3RRnRY/0dwLS0mKDuTNzoH77SqzJ8hO1zb6UROhcp/9h53Ewwq60
         T/GQ==
X-Gm-Message-State: AOAM531WBlJLpr1oTUMTMsaVJe5WQTaEy5jTijCAMcWs4XnjsTtdB0JK
        Uyb6AiwFo5ma7Ks3b4xqRt4=
X-Google-Smtp-Source: ABdhPJw7KAZjohdErqxIzYb5Y6fZxoHiz7xBb7isjSsaTKQMzBnYPuS2pZQ5A3JqOj8YJEe3BE3G6Q==
X-Received: by 2002:a5d:6206:: with SMTP id y6mr18738998wru.413.1610809189604;
        Sat, 16 Jan 2021 06:59:49 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id w4sm15876237wmc.13.2021.01.16.06.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Jan 2021 06:59:49 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] execveat.2: Normalize notes about missing wrappers
Date:   Sat, 16 Jan 2021 15:58:59 +0100
Message-Id: <20210116145858.7754-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

It's been a long time sine kernel 3.19.
There's still no glibc wrapper.

......

$ grep -rn 'execveat *(' glibc/
$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/execveat.2 | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/man2/execveat.2 b/man2/execveat.2
index ef3606d8b..02d9c7331 100644
--- a/man2/execveat.2
+++ b/man2/execveat.2
@@ -30,10 +30,13 @@ execveat \- execute program relative to a directory file descriptor
 .nf
 .B #include <unistd.h>
 .PP
-.BI "int execveat(int " dirfd ", const char *" pathname ","
-.BI "             char *const " argv "[], char *const " envp "[],"
+.BI "int execveat(int " dirfd ", const char *" pathname ,
+.BI "             char *const " argv "[], char *const " envp [],
 .BI "             int " flags );
 .fi
+.PP
+.IR Note :
+There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 .\" commit 51f39a1f0cea1cacf8c787f652f26dfee9611874
 The
@@ -160,8 +163,6 @@ is a file descriptor referring to a file other than a directory.
 .SH VERSIONS
 .BR execveat ()
 was added to Linux in kernel 3.19.
-GNU C library support is pending.
-.\" FIXME . check for glibc support in a future release
 .SH CONFORMING TO
 The
 .BR execveat ()
@@ -207,6 +208,9 @@ the natural idiom when using
 is to set the close-on-exec flag on
 .IR dirfd .
 (But see BUGS.)
+.PP
+Glibc does not provide a wrapper for this system call; call it using
+.BR syscall (2).
 .SH BUGS
 The
 .B ENOENT
-- 
2.30.0

