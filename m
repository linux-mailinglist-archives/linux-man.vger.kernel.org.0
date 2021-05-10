Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 861D43796B2
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:57:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232817AbhEJR6S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:58:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233311AbhEJR6S (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:58:18 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AE74C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:11 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id a4so17544831wrr.2
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Fl+Q6C223/HkiDOCidfVoM736Uwnb2Wvr18IljRFf5A=;
        b=rBaRjxL/oSWT3j84Mu8ttbQ1MK0/0U2c/VUIrxt0sN/Q6iCYOTHtwA5rP0RRxd6Uf0
         wheeS+0h/Ga3P7vsukgKB5HN4QO4iBWDfca4acDIxyQ7tYYR4xyhVfjm5urhaHS57xuw
         4ShGniITQMBBI3WomheHECSSj9oID7lxSdZdaw91A11S0OqpDW/zyYWuWVKpg5PFyhQ1
         RiC5/pTF9NoGXAezBb6kSMcoaS2JnLmJ9TXm/fBSBzmf7+YbbOk7B/cg+m1g/q3IszOf
         MvYfo/1ExWZo8zikLdJmbtXlMJDPFRZxbTVo7DCB7Zcic7i8YE53N3el82Jv4BpIJdzV
         yRSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Fl+Q6C223/HkiDOCidfVoM736Uwnb2Wvr18IljRFf5A=;
        b=ICgbwjwW42j5uhcVhd+BIbz+XhhTXQpbzvQzML3M+aylz1yayj4fRRSig8w/RTU1BC
         cmpHi8r/RcroKzUrG2GkYwjlo8wIhGJ+XyIEHktiZh4yIvhjVPTEd0MvQERIyYmIH1XE
         2NWoV7xSw3CXaYjoAxq/3PAAEjbDJIefLKF2/5yiwkKnoS0RXTpoLLOv/zqmg/OLVfPq
         BypX89FFDSblnUkpUkMc2B+11kUDavaAtTHOxvsacK3R6mYPLP3OscvYaP9Hijh3CC5a
         B1RYXp+aVsNlAPRgWh/l4+NLrWipdnVGhlJsbl+RkM/KrCxKQW2zI2PxLxAW8OdJCSuo
         fK6w==
X-Gm-Message-State: AOAM533YUgpEPBk6wnCf56Zfa7UCQhbkyBeLwIzhRW04Rr0bDn/urzzM
        sFEWmWvjo541/eACivcZL9ndYeZKZxo=
X-Google-Smtp-Source: ABdhPJyzBOgZTsSZ3blxGY4qLWNjgaSkzqVKb/iOirQkgIcNq52Gbfd89MaKSVTIeSdTQh0YYMVcaQ==
X-Received: by 2002:adf:f1d2:: with SMTP id z18mr32448484wro.245.1620669430319;
        Mon, 10 May 2021 10:57:10 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.57.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:57:10 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 37/39] readdir.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:46 +0200
Message-Id: <20210510175546.28445-38-alx.manpages@gmail.com>
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
 man2/readdir.2 | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/man2/readdir.2 b/man2/readdir.2
index f4bd5bdf7..fde142413 100644
--- a/man2/readdir.2
+++ b/man2/readdir.2
@@ -32,13 +32,17 @@
 readdir \- read directory entry
 .SH SYNOPSIS
 .nf
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int readdir(unsigned int " fd ", struct old_linux_dirent *" dirp ","
-.BI "            unsigned int " count );
+.BI "int syscall(SYS_readdir, unsigned int " fd ,
+.BI "            struct old_linux_dirent *" dirp ", unsigned int " count );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+There is no definition of
+.BR "struct old_linux_dirent" ;
+see NOTES.
 .SH DESCRIPTION
 This is not the function you are interested in.
 Look at
@@ -116,8 +120,6 @@ File descriptor does not refer to a directory.
 .SH CONFORMING TO
 This system call is Linux-specific.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
 You will need to define the
 .I old_linux_dirent
 structure yourself.
-- 
2.31.1

