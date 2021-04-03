Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2B7A35355D
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:41:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236761AbhDCTl7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:41:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236736AbhDCTl7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:41:59 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B54BC0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:41:56 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id m20-20020a7bcb940000b029010cab7e5a9fso5745632wmi.3
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=95FmrA4H8nqvZ9OQeG4Dh0kLkA1VLnSc6nqAgxvFvvI=;
        b=o9Kjn/YYIS3XLyq663sUbg+XyvzG/pWtPfLZDUBWYQZvBekQ6E9J0VAGHLO2cCCGcs
         iRrkbPwCKri8seUu6z24oxmlrveUryP5+sKB3KplGtSj0Qxk2Zaow91HsD0fNHVmr6ay
         lqtE97kODXTg+cbGDtV0iwxJt9aIUEOqi28a3RcKxvE53/JBPKqK34Rupgd+qIny5bg5
         zCTCikxgP24hzlrMKDbE+aoCIS0flF6xGvbl0iH0B8rg5Q8s9GQzi/+krXvro1kJVrm0
         LEz9ktch5V28wdQBeDXOYH6DCh7wza+2UQZR9tlADRXIBdf09E8WR8y1T0IJRlCi1w/N
         FkIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=95FmrA4H8nqvZ9OQeG4Dh0kLkA1VLnSc6nqAgxvFvvI=;
        b=X9+P391CaLAi20ztRuo3SdrtwWwF1pTPHDtSoV3UsGIoR5kx3xyW/EOiCKs8mFHfO7
         5V76uynF6zYQ2qnb5fCmaDuDLvIy4mb18UKkABAEHqTDnFTPB0hDGnZTmvv2qGsnXayp
         XhCeDnJTZPS5m9mBU8YO6+r9oDqImWCfl/kfJBIB3v24eZb/zvG4qOF62s70mP4J7dDZ
         W3INn44K8lMetgbN5t8cp3X+81OgSH+14tokjECQCH3xxkUsrxQOEhwv0X5nye7xHI7v
         6+TZdnuzawICGvzfh6h4q2u+arukJUb7EHzW+x+faHuQVHCrwoQmcyH3iVbFQJiUD/xR
         XmWw==
X-Gm-Message-State: AOAM531yMDW14VIW4koDV9w9mKwC1M2rx/HOEjwNSundyLanOILVEdKc
        xwKIZWcKUfwGSunWE3EVAac=
X-Google-Smtp-Source: ABdhPJzqDY2H5NrMbSTMjulx42xFm0sZfES2Puw2rd2NfsamGL044rxjbyqq5ENXypVRERUqi9VKTQ==
X-Received: by 2002:a7b:c119:: with SMTP id w25mr17764850wmi.127.1617478914870;
        Sat, 03 Apr 2021 12:41:54 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:41:54 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 10/35] capget.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat,  3 Apr 2021 21:40:02 +0200
Message-Id: <20210403194026.102818-11-alx.manpages@gmail.com>
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
 man2/capget.2 | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/man2/capget.2 b/man2/capget.2
index 6de51b72c..a2d897cc7 100644
--- a/man2/capget.2
+++ b/man2/capget.2
@@ -18,14 +18,17 @@
 capget, capset \- set/get capabilities of thread(s)
 .SH SYNOPSIS
 .nf
-.B #include <sys/capability.h>
+.RB "         /* Definition of " CAP_* " and " \
+_LINUX_CAPABILITY_* " constants */"
+.B #include <linux/capability.h>
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int capget(cap_user_header_t " hdrp ", cap_user_data_t " datap );
-.BI "int capset(cap_user_header_t " hdrp ", const cap_user_data_t " datap );
+.BI "int syscall(SYS_capget, cap_user_header_t " hdrp ,
+.BI "            cap_user_data_t " datap );
+.BI "int syscall(SYS_capset, cap_user_header_t " hdrp ,
+.BI "            const cap_user_data_t " datap );
 .fi
-.PP
-.IR Note :
-There are no glibc wrappers for these system calls; see NOTES.
 .SH DESCRIPTION
 These two system calls are the raw kernel interface for getting and
 setting thread capabilities.
@@ -40,7 +43,7 @@ The portable interfaces are
 .BR cap_set_proc (3)
 and
 .BR cap_get_proc (3);
-if possible, you should use those interfaces in applications.
+if possible, you should use those interfaces in applications; see NOTES.
 .\"
 .SS Current details
 Now that you have been warned, some current kernel details.
@@ -239,9 +242,6 @@ No such thread.
 .SH CONFORMING TO
 These system calls are Linux-specific.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-.PP
 The portable interface to the capability querying and setting
 functions is provided by the
 .I libcap
-- 
2.31.0

