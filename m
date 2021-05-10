Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68C623796AC
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:57:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231931AbhEJR6K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:58:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232710AbhEJR6I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:58:08 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06F46C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:03 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id o26-20020a1c4d1a0000b0290146e1feccdaso10140058wmh.0
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QgZu+gP2yWfAhEHD5uxeXcbfWgid6BmGJqNyW/ERkgQ=;
        b=I/vnmxaPha0l9dAF1seSSXJfc4dbTkppnuEY/X4jhHypLOWLBoD7Wt83vwZAZIhQmk
         JjeKoP4KCqvFI0tTiJXMJ9Fe64funDHKaMOMZ524nKHB/G0LYkiLJ3RXEcTe5dNO7h6F
         PvOx3PgttmSZu34PjPzFnUneot8EEHmfXiUyVqItJKpRPKJ38xeW8JK12G66p06mCq22
         CPB9Bx7P1uCV98f+N7QP/nELp9YqgaPEH34xz/JGovKK3ngsuKV+3BFXU6GpvV9c7r5C
         3lTbT0cDLwm2+W9AdwtxWkesGkZvnzTi045Zo5j+KO5Gfsm1IAjYIq7WD3uh7N1b3S7J
         UCfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QgZu+gP2yWfAhEHD5uxeXcbfWgid6BmGJqNyW/ERkgQ=;
        b=NdQT1VXyzfWFc7Jfawf/kx/v6geePpACw29ZLgAlDe5xcj5BkBRdjd79xCkkIQsXo0
         20Z/tMBzvK1dJD8en+sBD9px2TbGZZXHYOu6bKQ7ztl71/jBO2hTPKqVWqI5JjiBjgfU
         XSPxSiGlgjGYY85lOVWllpXfTuZ4FjFfPnzbfOXjh3iwajBH8wvUVz6Vw239TZePS9xT
         ZNxFEg1B1ZyhOQshzEnSE3VVwivQ8fbfhMmdMmiJJsMZarREYXJ3QuS3Pa8e2byw44PD
         aEVs2jhqUuJPU7BaaExKO4yk66BVK7BLvxwEoyHv0YyFErHXomwFmdLyS7ViNgbdEAs2
         73Zw==
X-Gm-Message-State: AOAM5331wHqKP32LGt1PhdqWBx6OXRE7CwG8gZAgPW6prG30cKcZ/Dqv
        MxNNy7Nq+SgNuBvsJsVsMZ0=
X-Google-Smtp-Source: ABdhPJy0jaW1PrkfMDBHOsCMdh8vZTiiHCdILAiBTKLtOXZpx8IcfyLSkGNnm8FhdDrrHUfs4JXnpw==
X-Received: by 2002:a05:600c:4f90:: with SMTP id n16mr405333wmq.98.1620669421817;
        Mon, 10 May 2021 10:57:01 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.57.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:57:01 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 31/39] pidfd_send_signal.2: Use syscall(SYS_...); for system calls without a wrapper. Fix includes too
Date:   Mon, 10 May 2021 19:55:40 +0200
Message-Id: <20210510175546.28445-32-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/pidfd_send_signal.2 | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/man2/pidfd_send_signal.2 b/man2/pidfd_send_signal.2
index b025e22a0..12412c6d8 100644
--- a/man2/pidfd_send_signal.2
+++ b/man2/pidfd_send_signal.2
@@ -27,14 +27,21 @@
 pidfd_send_signal \- send a signal to a process specified by a file descriptor
 .SH SYNOPSIS
 .nf
-.B "#include <signal.h>"
+.BR "#include <linux/signal.h>" "     /* Definition of " SIG* " constants */"
+.BR "#include <signal.h>" "           /* Definition of " SI_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int pidfd_send_signal(int " pidfd ", int " sig ", siginfo_t *" info ,
+.BI "int syscall(SYS_pidfd_send_signal, int " pidfd ", int " sig \
+", siginfo_t *" info ,
 .BI "                      unsigned int " flags );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR pidfd_send_signal (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR pidfd_send_signal ()
@@ -136,9 +143,6 @@ first appeared in Linux 5.1.
 .BR pidfd_send_signal ()
 is Linux specific.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-.\"
 .SS PID file descriptors
 The
 .I pidfd
-- 
2.31.1

