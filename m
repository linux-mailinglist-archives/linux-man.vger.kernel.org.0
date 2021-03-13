Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE1D533A064
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 20:27:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233635AbhCMT0c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 14:26:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234402AbhCMT0D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 14:26:03 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A687CC061574;
        Sat, 13 Mar 2021 11:26:02 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id u16so6608828wrt.1;
        Sat, 13 Mar 2021 11:26:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iXXxzEq/i1zvFxmlPejyeaUZtpudNa9FZiKCSQB8D80=;
        b=J4YU8tmCuhKwJsNCaIn6PKjG9xn8/E3YvjJJkN64Ju43M24T33SNatWUKb8vd17NvU
         xAGuq26PvRY/uidYJoRoMDE3yMI6L9T9SYULRSe86re83svLdOJyNAyg9OTGcvc4rAXf
         16ubHgJKexQE6MKnDaeV48cLpiDdviEpkrf5bQ4GfMcVgV2AZs9mnGjXKEiMkcQHrh3h
         fBVemR0ToZPnz+GnWyU7/XrZpqKOpVOlHY5DZAatO9I0tZnYGGS2prURChxUizZfKDq5
         ZR/FSDTdztLZOujVpIh6dtz+IdWEJdMUh/cUGeZrRZFgffR7TCbZG3TMY0Cz5uCFzFnE
         x3OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iXXxzEq/i1zvFxmlPejyeaUZtpudNa9FZiKCSQB8D80=;
        b=n0rdJpoOo/soa+B6e4g1oOhWbar1ltPI7E2MCroYVOY6IYakyArtVVJJ9GscbosEYA
         zwmW4qewGeplbR0agF2ECp2V5fsYl06I2UIXsmwD8L5dlzEvHYu0tAys8kMG8PVs9JyQ
         sDcSMkMrs6MM2s7gyjYow3xAOn7sB+Mnrc3JcMY+8YK2CvjcVd89VmTCBQjK6RDkjzW2
         nf3U4UU/4FYxZwrTGiOpmXTra9wjTupPHLVJbKPIMJRYEdWGmpW9Pt/QR9Y1RIt9f//S
         9h2+pTDvroGIqald+ZyB3KHe46fYxiyb5w4v9NAKMF31Ne5r47gtPASJ/FIvey2eQFqw
         Bj9w==
X-Gm-Message-State: AOAM530CYhKGdzP5r3X4/6hJssbotSMxexGbWx0uG3NM4/RV1/lFe4TH
        +OvFipnpq2cfhc6aqWFYzQRJBLIcleqT/A==
X-Google-Smtp-Source: ABdhPJwIIxTXko09NS0thsrhkFe+mFWr89bBrsTEyWVtSoe2bpZD4vk06WVJpYIC+8WY9qS+99IiEg==
X-Received: by 2002:a5d:6cd2:: with SMTP id c18mr20006031wrc.330.1615663561484;
        Sat, 13 Mar 2021 11:26:01 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j136sm7670964wmj.35.2021.03.13.11.26.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 11:26:01 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC v3 16/17] init_module.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 13 Mar 2021 20:25:25 +0100
Message-Id: <20210313192526.350200-16-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210214133907.157320-1-alx.manpages@gmail.com>
References: <20210214133907.157320-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/init_module.2 | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/man2/init_module.2 b/man2/init_module.2
index 31229ea93..9bc2080a3 100644
--- a/man2/init_module.2
+++ b/man2/init_module.2
@@ -29,14 +29,22 @@
 init_module, finit_module \- load a kernel module
 .SH SYNOPSIS
 .nf
+.PP
 .BI "int init_module(void *" module_image ", unsigned long " len ,
-.BI "                const char *" param_values );
-.BI "int finit_module(int " fd ", const char *" param_values ,
-.BI "                 int " flags );
+.BI "            const char *" param_values );
+.PP
+.BR "#include <linux/module.h>" "    /* Definition of " MODULE_* " constants */"
+.BR "#include <sys/syscall.h>" "     /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_finit_module, int " fd ", const char *" param_values ,
+.BI "            int " flags );
 .fi
 .PP
 .IR Note :
-There are no glibc wrappers for these system calls; see NOTES.
+No declaration of
+.BR init_module ()
+is provided in glibc headers; see NOTES.
 .SH DESCRIPTION
 .BR init_module ()
 loads an ELF image into kernel space,
@@ -268,11 +276,6 @@ manually declare the interface in your code;
 alternatively, you can invoke the system call using
 .BR syscall (2).
 .PP
-Glibc does not provide a wrapper for
-.BR finit_module ();
-call it using
-.BR syscall (2).
-.PP
 Information about currently loaded modules can be found in
 .IR /proc/modules
 and in the file trees under the per-module subdirectories under
-- 
2.30.2

