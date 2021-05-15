Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F32C381A73
	for <lists+linux-man@lfdr.de>; Sat, 15 May 2021 20:20:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229445AbhEOSV4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 May 2021 14:21:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234379AbhEOSVy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 May 2021 14:21:54 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0317C061756
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 11:20:39 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id r12so2287996wrp.1
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 11:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ejgRcnqnZ1zBe8me5Kq5RF3/4N40S88C8kDVIKZGk9w=;
        b=n8ytIYjLogz/RQ2Z2pnk0o689pH3Loj0Uxt0YEc2YT9U3PfZnqcc+43EZozTNwQipZ
         4oZPgba9t4rxiA08TXDKOotfHQwFRFuFGO1oTnfw3b9oMrtBi1+zQPT6ZJ+xRfBVi5IA
         5LXM5W1IG/SQTjAcOeePRIed/l414uRoP45u/K4rodEX99VKiKJxkuKjwo8ciQj+aylk
         8Th98HVkurwph32nqGMaI4plrDpHjLJbkbv8rqUiRXNenUDNrdhWXWuoIo2gGmQudMiA
         Ab0FnnUA9QQCkr9Mogz5GLz2zAKJVXuRnVZgXGBCYO2x2L4al6PEDHX8Szl8ZqJ0550e
         IDbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ejgRcnqnZ1zBe8me5Kq5RF3/4N40S88C8kDVIKZGk9w=;
        b=DvTvV7aNzleYRvV8juiQuRMYyQ4VxHClPUCf9vRgYmleUotLKXUw2CJ5JM17XTWYK/
         eL254J0PGhhBxylIu2/2vVasNukmOGCODPPxjSMBIgLhPbH3CZLRKiruc0/Uo22ZVO89
         fxx13dzYgtaLmriAIRFuEf6ovBbMEOuF7azElXK74O67ZUKtbFgnKr8NzpxbgxfDDvrT
         ShPY2mD6T4C1bYn7Y6/r/sJre5gDYLDX3ICqdbxEA5ePjAA0st0fnXId4ja3ts3LEOcE
         UxVRtShr8SAprEbsCJ/FIZkb15xzkb5r0EbS0sikFwdAmvqmLd56tf/sUFw69YQr7IFw
         SSjg==
X-Gm-Message-State: AOAM532AfeCcQmdDawA6scYPd4tURGwn9BUF+kQxgrf5/7yFNxH9pmQV
        51osRNnZacZh/lTKocFcw+c=
X-Google-Smtp-Source: ABdhPJwbiKfjIaR2/nVfV/rrvMrDedmlltSKYDrV3+DTzEfCq1Y3LyXMirfhIcaeC0YF8jLOOm/omw==
X-Received: by 2002:a5d:4ac6:: with SMTP id y6mr65256190wrs.414.1621102838510;
        Sat, 15 May 2021 11:20:38 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v10sm12007254wrq.0.2021.05.15.11.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 May 2021 11:20:38 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 3/8] s390_guarded_storage.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 15 May 2021 20:20:23 +0200
Message-Id: <20210515182027.186403-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210515182027.186403-1-alx.manpages@gmail.com>
References: <20210515182027.186403-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Also document why each header is needed.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/s390_guarded_storage.2 | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/man2/s390_guarded_storage.2 b/man2/s390_guarded_storage.2
index 1d4cb5777..747c45c3a 100644
--- a/man2/s390_guarded_storage.2
+++ b/man2/s390_guarded_storage.2
@@ -27,13 +27,20 @@
 s390_guarded_storage \- operations with z/Architecture guarded storage facility
 .SH SYNOPSIS
 .nf
-.B #include <asm/guarded_storage.h>
+.BR "#include <asm/guarded_storage.h> " "/* Definition of " GS_* " constants */"
+.BR "#include <sys/syscall.h>         " \
+"/* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int s390_guarded_storage(int " command ", struct gs_cb *" gs_cb ");"
+.BI "int syscall(SYS_s390_guarded_storage, int " command ,
+.BI "            struct gs_cb *" gs_cb );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR s390_guarded_storage (2),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR s390_guarded_storage ()
@@ -144,9 +151,6 @@ This Linux-specific system call is available only on the s390 architecture.
 .PP
 The guarded storage facility is available beginning with System z14.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-.PP
 The description of the guarded storage facility along with related
 instructions and Guarded Storage Control Block and
 Guarded Storage Event Parameter List structure layouts
-- 
2.31.1

