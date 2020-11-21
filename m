Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA8822BC25F
	for <lists+linux-man@lfdr.de>; Sat, 21 Nov 2020 23:07:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728611AbgKUWEx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 Nov 2020 17:04:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728588AbgKUWEw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 21 Nov 2020 17:04:52 -0500
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79E56C0613CF
        for <linux-man@vger.kernel.org>; Sat, 21 Nov 2020 14:04:52 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id x13so5209753wmj.1
        for <linux-man@vger.kernel.org>; Sat, 21 Nov 2020 14:04:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lKCRujaSMdLAti9MAWc1NQg+l0NFViLfb0eqjjrdC48=;
        b=l0wXbtUreSVqSjuZ0uwK9WM0bp/6wP0BytLYFUPQYiMzDLcxgm7c/t1oFzaIAcYSrI
         0WA1DNHb5yMLByLCm93jCxOKF1fzJVdfm61GBVjZLbQSy270wU5TneJninb2YEOenLSg
         ARoXuJmqyY7saup2VOgd4idcWLbjxxq5joD7AkI/8uGarx4tIWAKKHm1Vm3lwD4B6qvv
         2ZG7y5F+ejnFPYufxtBLYwWqaAm4X/5iVqqUwQLNqewuJCCOi4YBDMkKeN4HAT/g5to+
         jkyQh6LoM0NP5xb26Xj7Ddi6tKGOJMiEuUI1sLXkPB7oDjRzxG3R+qToqwwq0DXB1hhE
         fpCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lKCRujaSMdLAti9MAWc1NQg+l0NFViLfb0eqjjrdC48=;
        b=J/lYlMJXjvHxis/9eRQiUtGYzgktSq9MjLbYSB6zpl+JdZ2+tlI794DfSzEcDzqLIU
         uZZw4LrlgpfENjsvnYizVUtMwqeb4L+nWKgzUjALQ3oaX4kF390TBZPFYyRlCmTCkULW
         qbKXE2/dT3lTv4LcgmX+oyf88STTT6MvYXDCAYVyWew0dflEqkE8uvXJnKUGuBHpPRX3
         DtimVfwj61tASTz1EnQHEnHI1Cv8AKPd86/3WZecs40QI962u/0r67lhrPa5SB6IQ5ta
         WGEPJgi+vfB3Hxu0dvmwingfuX3RZEK0xqGskCaa3Wei+kgA+5+VEfkWLdfVBiEUbxxo
         3E3w==
X-Gm-Message-State: AOAM530g73bXmcnvYKXxEQTAPKS1FAfTA5c1fJCyLVQDEDeRFIwdG+yK
        p4Ey7ugraV3i8FcNCEnJeGbckAcFFvoUIw==
X-Google-Smtp-Source: ABdhPJwW6c9/xJQkBG9x1aIxs1ncKWPX1zlrTOgsCbOV5sCosG3jAAVlCorOwjAdKXPwBXYk9vSuUw==
X-Received: by 2002:a1c:6002:: with SMTP id u2mr15277560wmb.29.1605996291243;
        Sat, 21 Nov 2020 14:04:51 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id w11sm9003930wmg.36.2020.11.21.14.04.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2020 14:04:50 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2] capget.2, execve.2, readv.2, socketpair.2, utime.2, utimensat.2, getloadavg.3, proc.5, mount_namespaces.7, unix.7: ffix
Date:   Sat, 21 Nov 2020 23:03:50 +0100
Message-Id: <20201121220349.18510-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <2c1df93c-15d9-fb81-b85e-1a4a310b0cac@gmail.com>
References: <2c1df93c-15d9-fb81-b85e-1a4a310b0cac@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

{.IR var [x]} -> {.I var[x]}

There were around 15 entries of the former,
and around 360 of the latter.

Found using:
$ grep -rn '^\.I[ |R].* \[.*\]' |sort

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/capget.2     | 6 +++---
 man2/execve.2     | 2 +-
 man2/readv.2      | 8 ++++----
 man2/socketpair.2 | 4 ++--
 man2/utime.2      | 4 ++--
 man2/utimensat.2  | 4 ++--
 man3/getloadavg.3 | 2 +-
 7 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/man2/capget.2 b/man2/capget.2
index 9d2f6d90c..36ad7c27c 100644
--- a/man2/capget.2
+++ b/man2/capget.2
@@ -98,11 +98,11 @@ There was, however, an API glitch, and Linux 2.6.26 added
 to fix the problem.
 .PP
 Note that 64-bit capabilities use
-.IR datap [0]
+.I datap[0]
 and
-.IR datap [1],
+.IR datap[1] ,
 whereas 32-bit capabilities use only
-.IR datap [0].
+.IR datap[0] .
 .PP
 On kernels that support file capabilities (VFS capabilities support),
 these system calls behave slightly differently.
diff --git a/man2/execve.2 b/man2/execve.2
index 5f33332ca..5e995f289 100644
--- a/man2/execve.2
+++ b/man2/execve.2
@@ -354,7 +354,7 @@ is the series of words pointed to by the
 argument of
 .BR execve (),
 starting at
-.IR argv [1].
+.IR argv[1] .
 Note that there is no way to get the
 .IR argv[0]
 that was passed to the
diff --git a/man2/readv.2 b/man2/readv.2
index 5a8b74168..d8ae756a9 100644
--- a/man2/readv.2
+++ b/man2/readv.2
@@ -119,9 +119,9 @@ Buffers are processed in array order.
 This means that
 .BR readv ()
 completely fills
-.IR iov [0]
+.I iov[0]
 before proceeding to
-.IR iov [1],
+.IR iov[1] ,
 and so on.
 (If there is insufficient data, then not all buffers pointed to by
 .I iov
@@ -129,9 +129,9 @@ may be filled.)
 Similarly,
 .BR writev ()
 writes out the entire contents of
-.IR iov [0]
+.I iov[0]
 before proceeding to
-.IR iov [1],
+.IR iov[1] ,
 and so on.
 .PP
 The data transfers performed by
diff --git a/man2/socketpair.2 b/man2/socketpair.2
index 60a90f640..0cc6e5ae1 100644
--- a/man2/socketpair.2
+++ b/man2/socketpair.2
@@ -62,9 +62,9 @@ For further details of these arguments, see
 .BR socket (2).
 .PP
 The file descriptors used in referencing the new sockets are returned in
-.IR sv [0]
+.I sv[0]
 and
-.IR sv [1].
+.IR sv[1] .
 The two sockets are indistinguishable.
 .SH RETURN VALUE
 On success, zero is returned.
diff --git a/man2/utime.2 b/man2/utime.2
index 03a43a416..24f397b1b 100644
--- a/man2/utime.2
+++ b/man2/utime.2
@@ -110,9 +110,9 @@ struct timeval {
 .EE
 .in
 .PP
-.IR times [0]
+.I times[0]
 specifies the new access time, and
-.IR times [1]
+.I times[1]
 specifies the new modification time.
 If
 .I times
diff --git a/man2/utimensat.2 b/man2/utimensat.2
index b75adbaef..eb9d2a2af 100644
--- a/man2/utimensat.2
+++ b/man2/utimensat.2
@@ -89,9 +89,9 @@ an open file descriptor,
 .PP
 For both calls, the new file timestamps are specified in the array
 .IR times :
-.IR times [0]
+.I times[0]
 specifies the new "last access time" (\fIatime\fP);
-.IR times [1]
+.I times[1]
 specifies the new "last modification time" (\fImtime\fP).
 Each of the elements of
 .I times
diff --git a/man3/getloadavg.3 b/man3/getloadavg.3
index be1f114db..015c41dfb 100644
--- a/man3/getloadavg.3
+++ b/man3/getloadavg.3
@@ -61,7 +61,7 @@ averaged over various periods of time.
 Up to
 .I nelem
 samples are retrieved and assigned to successive elements of
-.IR loadavg [].
+.IR loadavg[] .
 The system imposes a maximum of 3 samples, representing averages
 over the last 1, 5, and 15 minutes, respectively.
 .SH RETURN VALUE
-- 
2.29.2

