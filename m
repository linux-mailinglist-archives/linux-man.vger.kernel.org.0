Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82BD331BA30
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 14:20:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230207AbhBONTc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 08:19:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229983AbhBONTa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 08:19:30 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DAB4C061756
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:18:49 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id x4so9321258wmi.3
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:18:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3jsy14glelNnTwQP+W+A/f++e3w8p/rRY5P0negQRYs=;
        b=N/DmvzBbA6YR/AuZRBolSaMe4MiN8w/JDMuNLWEk+0308SqY0Ax3pGSudqrScuBraV
         uS09sGpxDBi7mDeiIX1GYJebdbZW7wYlTJedK2++356iuyN7IEK2ev17+N12HNUn9IyR
         YyvL3w30PbJUJ0lKTS+lmXKwoN6JtzMC6Nb+IEGiJMzAWwYoT1z7skN7IUxdIL75l+5p
         TUifpgD9ZTP4ALOIi5bkg9lOU4c/81h4dKN+SNobjVTKZgZn/0MMbdWaw4fB/9nDvEa7
         aik/8wnvHsYEH+3xnrgI88Q//iSZL8AKjdIAjHH+x+tJ/GDiNaFce9dD2EpoCUSh3lxG
         I/2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3jsy14glelNnTwQP+W+A/f++e3w8p/rRY5P0negQRYs=;
        b=HZQExkjgw/4+1KDBPKzVpGNS91B928UeQOq+Q4pbtGd70yaQkTTRyy0Q+OyXKcuOG+
         uUVggJyTtxCgGNidMVYBN6HUknnI/crbC9ttRe5I5s5DWs4kMgHkcHm5dvPnSnSJkpGX
         Y8wM3MSPWeZeb4bZcNkmuMrU2O3qxmwtOzeQH/9gp+ILiYq+S4C+PPDmZbpYx2EnqMMj
         70rSJjd048k/NxYq5Q9zx8Rb1B9lOE9e/Yw0BOloVTVkBDRw0tA/GFkrivPnJxHwKs6+
         +b7n1BPEXdwHe2GIb0qdP3m0boVDfWmU6QLmV1Pf89l7wkbF1UPIhh26UVHnmnvkgcpn
         uoWw==
X-Gm-Message-State: AOAM533Sk/in4ik3Lj03ue48E0GCG9sQpvqxKLHmRJXPUUvqVc5RxW9H
        ixUqRPd9oHbocCV4w8Mx5zM=
X-Google-Smtp-Source: ABdhPJwqszZdL/OmXylVJs6MLXi8M7MEMaDf/omag2jUxcBmuGY4sRb9HtTVjpJmq3bukdGzKa3sdg==
X-Received: by 2002:a1c:2311:: with SMTP id j17mr14229146wmj.38.1613395127960;
        Mon, 15 Feb 2021 05:18:47 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id d15sm19309504wru.80.2021.02.15.05.18.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 05:18:47 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] tkill.2: SYNOPSIS: Fix prototype parameter types
Date:   Mon, 15 Feb 2021 14:15:24 +0100
Message-Id: <20210215131522.450666-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

All but the last parameters of t[g]kill() use 'pid_t',
both in the kernel and glibc.  Fix them.

......

.../linux/linux$ grep_syscall tkill
kernel/signal.c:3870:
SYSCALL_DEFINE2(tkill, pid_t, pid, int, sig)
include/linux/syscalls.h:685:
asmlinkage long sys_tkill(pid_t pid, int sig);
.../linux/linux$

.../gnu/glibc$ grep_glibc_prototype tgkill
sysdeps/unix/sysv/linux/bits/signal_ext.h:29:
extern int tgkill (__pid_t __tgid, __pid_t __tid, int __signal);
.../gnu/glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/tkill.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/tkill.2 b/man2/tkill.2
index 4b4eae312..24636719d 100644
--- a/man2/tkill.2
+++ b/man2/tkill.2
@@ -31,8 +31,8 @@
 tkill, tgkill \- send a signal to a thread
 .SH SYNOPSIS
 .nf
-.BI "int tkill(int " tid ", int " sig );
-.BI "int tgkill(int " tgid ", int " tid ", int " sig );
+.BI "int tkill(pid_t " tid ", int " sig );
+.BI "int tgkill(pid_t " tgid ", pid_t " tid ", int " sig );
 .fi
 .PP
 .IR Note :
-- 
2.30.0

