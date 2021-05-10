Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A28D23796AA
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:57:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233004AbhEJR6H (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:58:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232710AbhEJR6G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:58:06 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A16F5C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:01 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id h4so17510846wrt.12
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xjxtXDywb0s139fONhfnTw35XQrmKhcgjPyWrpJqsa0=;
        b=bpkl3W8NLiBCjdmDwNEli5+utacZZnAe4SQWL6BbL1pYUxU+lfFyzjOOmvO8oP1icN
         mZkYsOsSxLhhMu+S/TkNlnxFEKI4tEc7QSNjO7W79L1kOOYc5ymDs/tUD833R8aZNt2I
         KR5dvlhXPdsOTniAEOjo0gICVGvME0cNGOB5CN1+GU+GPUOwXlktLvtWq5hfnffpfC6J
         CuKGrzAkj0Z7fzdGqqEg28+w8vUPDbyHSZn2xFLneVOuYzpjC4QvRpjGWlR5JNwdBuTg
         FVFiX/JQsqL7JaTf/ptSY6QY4+XGloGOhdLzOYf+U4tJy7oLgQkF6aFhNJyW3r/KJgVA
         T4WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xjxtXDywb0s139fONhfnTw35XQrmKhcgjPyWrpJqsa0=;
        b=Jy5vVb2n0x72SXNQ4U/FWBXIfLbsgOopcZkgHgTVQ0XgX/lzT4qN7bICm8jB6RkFSy
         ro99rqBKki7hPfR/xmaV98apyVH/6/5w2zRQaWe0AF41f/ZEubozE56fPEYXdjfKkSui
         FHaNxytkNH2Qo8/dY3QyArwPPU3ENFW/iumCLorix8ozjTOKXBwjL2ofW/qh5RncZrNC
         paTF+YmLx8Ka52Y810lqFMxEYqDJ9Hh5S6EBxsPAHzNJqZx7DDz9wBwiSPkpN9g43i8x
         HM0SYWAQ01rw1D/bGw41lDB6sxnJPfT/S5ZlScLxojMhdoEkCWI3nZVsY+oDctiDTtc5
         rsvA==
X-Gm-Message-State: AOAM532/cVVeTc5ZM8JAPFjsfdyeQi+u7Iwm5GCq9XCz1rauJgVe9SAP
        t7LWHLRuWO3Ku2QyQR6ISvk=
X-Google-Smtp-Source: ABdhPJwT0SfNY/VAmKey/5nRXYDl01hC5QVlGcYQPJMoCqVwReVp23aQK6lER6R9HFhchBvpNtnX8A==
X-Received: by 2002:adf:d1c4:: with SMTP id b4mr32651069wrd.301.1620669420410;
        Mon, 10 May 2021 10:57:00 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:57:00 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 30/39] pidfd_open.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:39 +0200
Message-Id: <20210510175546.28445-31-alx.manpages@gmail.com>
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
 man2/pidfd_open.2 | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/man2/pidfd_open.2 b/man2/pidfd_open.2
index d0bb1769b..cb91ce71f 100644
--- a/man2/pidfd_open.2
+++ b/man2/pidfd_open.2
@@ -27,11 +27,17 @@
 pidfd_open \- obtain a file descriptor that refers to a process
 .SH SYNOPSIS
 .nf
-.BI "int pidfd_open(pid_t " pid ", unsigned int " flags );
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_pidfd_open, pid_t " pid ", unsigned int " flags );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR pidfd_open (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR pidfd_open ()
@@ -89,9 +95,6 @@ first appeared in Linux 5.3.
 .BR pidfd_open ()
 is Linux specific.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-.PP
 The following code sequence can be used to obtain a file descriptor
 for the child of
 .BR fork (2):
-- 
2.31.1

