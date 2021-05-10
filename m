Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A34743796B0
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:57:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233308AbhEJR6Q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:58:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233267AbhEJR6P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:58:15 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B307AC061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:08 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 82-20020a1c01550000b0290142562ff7c9so9388962wmb.3
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FljSassscloY2stR8BJfNO0D3IwHqV349sWRkF9HwOI=;
        b=AEaLgAwMDEtOG7jdPhGWWmVD3BEI9o2iIXLrIjGz+f+btt7uvvVaFuugG5M2Onh3up
         1G9mi5lj6HGG6gRdm/DzO4lDWofRN2H7FVI5hXO0StLrrfPTkTYBcCLk364mmKf1wFOm
         wPMfYvb+/DzHP9gdDwwmqZiRs/woS2BFb4oX27cyjZ8QPtA1AVwYOkjyMUq/u0WsGOgv
         YiLTP3kpFyApfRsEyTeRHTBnoFISfWhZuKxvfQSHDCibKxMCoIRakyO2JZnWJ4llvjZZ
         oJEbxQl9xKO6+B2flsNDgCGUT6lme988aFVsv5m5pmwcEcMaXUvL4OvVaXMAq/C0ljXi
         yxaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FljSassscloY2stR8BJfNO0D3IwHqV349sWRkF9HwOI=;
        b=QK56bcAf03FpTY/icrrrqt6EUafOhHQxLViimHdmu+zdK3uMisdYq+p6hTQcw6CI8v
         m2TIw23Vk+qhV5OurxyJPYXqBrYlxrLUKV6hyVyygyiLsgVGBe/0Y9fMwVokEGLTla+w
         Cvmk5ikz565jofpz8BblubThJA59EtG5Ci9aqxR0taPJB+UHjE7rfYW9iPFwb4ID+gWH
         HH/a9ecQxU06Ge2HLCqWHcmXMiRYgN6k1x1pkYs1GHXi0JwevhFrXzB9kSY8/7oyk3D5
         Qb1tSXE1YmP3/00MMbmNSqjwr+S0Yrcj4WYpcssy/TlFMCIv64425btwYnF0oXcjHF2Q
         vB7g==
X-Gm-Message-State: AOAM5333k7MNefzmw+MGVSs85DRaiSRx7kawzSX9u5Hyy0+6R5QTZ7Hr
        55jzitZRgplgdm0WZKoMfA4=
X-Google-Smtp-Source: ABdhPJw0wwVMIc8F89Qt0iD1yEXo9T40ohKPcjQDhPmOhtHqjsAYc8PVw6G61+C3QFkyRRhnOTCHxQ==
X-Received: by 2002:a1c:b783:: with SMTP id h125mr381352wmf.182.1620669427517;
        Mon, 10 May 2021 10:57:07 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.57.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:57:07 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 35/39] process_madvise.2: Use syscall(SYS_...); for system calls without a wrapper. Fix includes too.
Date:   Mon, 10 May 2021 19:55:44 +0200
Message-Id: <20210510175546.28445-36-alx.manpages@gmail.com>
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
 man2/process_madvise.2 | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
index e2b8c16ac..0cdcf9c9a 100644
--- a/man2/process_madvise.2
+++ b/man2/process_madvise.2
@@ -30,15 +30,22 @@
 process_madvise \- give advice about use of memory to a process
 .SH SYNOPSIS
 .nf
-.B #include <sys/uio.h>
+.BR "#include <sys/mman.h>" "      /* Definition of " MADV_* " constants */"
+.BR "#include <sys/syscall.h>" "   /* Definition of " SYS_* " constants */"
+.BR "#include <sys/uio.h>" "       /* Definition of " "struct iovec" " type */"
+.B #include <unistd.h>
 .PP
-.BI "ssize_t process_madvise(int " pidfd ", const struct iovec *" iovec ,
-.BI "                        size_t " vlen ", int " advice ,
-.BI "                        unsigned int " flags ");"
+.BI "ssize_t syscall(SYS_process_madvise, int " pidfd ,
+.BI "                const struct iovec *" iovec ", size_t " vlen \
+", int " advice ,
+.BI "                unsigned int " flags ");"
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR process_madvise (),
+necessitating the use of
+.BR syscall (2).
 .\" FIXME: See <https://sourceware.org/bugzilla/show_bug.cgi?id=27380>
 .SH DESCRIPTION
 The
@@ -205,9 +212,6 @@ configuration option.
 The
 .BR process_madvise ()
 system call is Linux-specific.
-.SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
 .SH SEE ALSO
 .BR madvise (2),
 .BR pidfd_open (2),
-- 
2.31.1

