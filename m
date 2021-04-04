Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1A0F3537F4
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230410AbhDDL7x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230435AbhDDL7x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:53 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7991C061788
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:48 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id e18so8598151wrt.6
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=28zBalVKo2kS79bb6WX7Y54TEzZgkL3eEQgmpO+rtvk=;
        b=MtucsjlJDlYLMlXawh756mlNN31V1Lzy9c9wjRhJQdT+DqAWKlY+0VL5PiHuFJzyoM
         CRU/BUtzj/3Ix6HQxSM66agpNhyxs6gzNKFc0zFkXKxHZlOrpTV4GYaTEzrl8OjfnsN9
         GzdfSCC62aSh46zKaFYpkkI4p0NR/2Ecne2Bkek2ve9MuXl8QElANTSl3pelOW/pa2r8
         xD6tzfjmbrnV3uzYzIFVz7JbxH58SAFbxIKJzEFG7GlurkbGV9sGsbDq2+ebWHnyDwuk
         cQmDWWNZaYO5j4goL8++v9GTgdvasydHdB5smjmZDn8zFRBMmaEEpE62qAelSmXXzO8m
         nfWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=28zBalVKo2kS79bb6WX7Y54TEzZgkL3eEQgmpO+rtvk=;
        b=ZwxvoHr+oJHBxRe4pI/KONGC1UHO+rVTfF2upxPc03podQM+W/U9Qk5hZ43xmXCQWw
         jJ1+Qckg/unBasyO9dx91LjNcIy4qlTgv6IJz+IN/Ei6Oi32uPYf8QBf8gk98QvhN3z5
         BlGQq2F9AfUxFu1XzkuQDJc/UdDlWz6j7wJl/9Ga+OyCDpNoT7B1XtHI0XH6QAYOAFyg
         pr3eoiu2v+wGAkB0EN0PmPAaKxu8Km8mO94aZbmVHLtd5mP31jy2nQnvpjzUQTBo4g/x
         CfG6qLrapzxIS1E55R8udovHt+yRBlZZ+OiUp7ijajQn7PFLTGkFHYuAKsfSVvWJGc0r
         XIyw==
X-Gm-Message-State: AOAM5315rEG1w2GNNWS6fx66Op8UOm5067NnM6yUCetUkLkkWJ7zVb4e
        kZqVrp3MCY8GNkbDV0BX6XXm+iGf3JM=
X-Google-Smtp-Source: ABdhPJzql4Xd8AYMyEcLYgGdAATPAcz63d+Yn5Bs/rhJL1+ChrrbabTvY7vgith2z1rBvbMTyyv1BA==
X-Received: by 2002:adf:ee0a:: with SMTP id y10mr23392421wrn.177.1617537587651;
        Sun, 04 Apr 2021 04:59:47 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:47 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 21/35] getdents.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sun,  4 Apr 2021 13:58:34 +0200
Message-Id: <20210404115847.78166-22-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
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
index ec00a73ba..6a9f4e04c 100644
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
2.31.0

