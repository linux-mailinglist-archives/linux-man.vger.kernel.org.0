Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F5A037969B
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233216AbhEJR5p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233268AbhEJR5p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:45 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6D17C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:39 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id o127so9679149wmo.4
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uCWxBpgSjSLQwTZcDJ0pb/KDZC8kbP4s5oy9KGsyTbI=;
        b=hz9chUpA3FxxGxqmA10oycaEHnbRJk5QSS7m1/Q5YhVvvvUlwDBeD50g1rLu0jP/QL
         xonTqLdqBvSZFIAhp9yfPYMvcavOBAYvQ2GqfFGz1GeYOxcrJ3e9EOGgdXzfW4pO6axt
         SvEc9+v5Wvt3KGjkzyyTz/DjZTZFL5XHuq/pSkHRyI7dodl9DLB1XIaNbfd+yozmMK49
         j5MnjmM42kvODPl+nc/ZDaUS7epT7bNt9ZCCVEA4jKH1fz4CdJQJL0HXbHF8HH4DfP0M
         A4l2BLTWN2ijKFhTxDJZpgjpUNQIbdei1o2SXx7WdpBnLHe19YYvcwf2F1tqVVgp1WYr
         LO+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uCWxBpgSjSLQwTZcDJ0pb/KDZC8kbP4s5oy9KGsyTbI=;
        b=CsZes2uWB+IvALGrzyjlTqmbpGZTY72FDTak7v25wNsNkBrRtA3oh9vS6pxB6OsJET
         HzZ8OnsnHzmQrIF1Voq2IVf+n41mQktoU7jixunNOADLH81KoqLCWgAKI9ySfIJmFAAk
         6j6wIuwuRQ4VPMqXIjQiYsXe6dXAtRy+/7DWccznyL9tqx+cTcqmA3zzOn/e1gMhL/FW
         uXdzqvR2HGyP330iQtiiStxo4rsb/Civ8iGcKNDv1CCOuBvFBGiTA5hCs1ZBf1Kvh6ud
         eFAxNFeEwkvEtCv/P32aY9M0QBdgoMxNz3dyuFudQqjgSAu1AQYMP1My/hBBMyXLFrcm
         IQ6g==
X-Gm-Message-State: AOAM5304DYsO/oqUoh5X1i3jSwfBdf3xR+7Hpe5V95HMuuH+AYT6Wqcg
        lhyQHxQPIRQfhHB8f4HeS0g=
X-Google-Smtp-Source: ABdhPJxYG5HCupHySwhtZ3scJtTq9lB/7kuG/ciIpzvbi41bSVrOg/KU+jMVqbx+EwLgmVl7ODpoaA==
X-Received: by 2002:a7b:c1c5:: with SMTP id a5mr360551wmj.63.1620669398616;
        Mon, 10 May 2021 10:56:38 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:38 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 15/39] keyctl.2: Use syscall(SYS_...); for system calls without a glibc wrapper
Date:   Mon, 10 May 2021 19:55:24 +0200
Message-Id: <20210510175546.28445-16-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Remove the libkeyutils prototype from the synopsis, which isn't
documented in the rest of the page, and as NOTES says, it's
probably better to use the various library functions.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/keyctl.2 | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/man2/keyctl.2 b/man2/keyctl.2
index 690781eea..7f5fcb951 100644
--- a/man2/keyctl.2
+++ b/man2/keyctl.2
@@ -30,22 +30,20 @@
 keyctl \- manipulate the kernel's key management facility
 .SH SYNOPSIS
 .nf
-.B #include <keyutils.h>
-.PP
-.BI "long keyctl(int " operation ", ...);"
-.PP
-.B "/* For direct call via syscall(2): */"
-.B #include <asm/unistd.h>
-.B #include <linux/keyctl.h>
+.BR "#include <linux/keyctl.h>" "     /* Definition of " KEY* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
 .B #include <unistd.h>
 .PP
-.BI "long syscall(__NR_keyctl, int " operation ", unsigned long " arg2 ,
+.BI "long syscall(SYS_keyctl, int " operation ", unsigned long " arg2 ,
 .BI "             unsigned long " arg3 ", unsigned long " arg4 ,
 .BI "             unsigned long " arg5 );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR keyctl (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 .BR keyctl ()
 allows user-space programs to perform key manipulation.
@@ -1954,7 +1952,6 @@ This system call first appeared in Linux 2.6.10.
 .SH CONFORMING TO
 This system call is a nonstandard Linux extension.
 .SH NOTES
-Glibc does not provide a wrapper for this system call.
 A wrapper is provided in the
 .IR libkeyutils
 library.
-- 
2.31.1

