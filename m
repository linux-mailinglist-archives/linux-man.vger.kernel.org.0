Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C134D35356E
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236812AbhDCTmL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236827AbhDCTmK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:10 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 378EAC06178C
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:07 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id e18so7476534wrt.6
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8TFK8xXdP43GW9I6xb7LKbzdmP2koXz0JhfalTMMk60=;
        b=lEzIF/8wixM3OfTZ/aOG9jcYyUes2L5GJ6uf6cNTIWk0YL3kukJAzswjqBOo7N10L4
         zZYb6LFcR/sheXHAfo56+RzZPtvOdSayXLmx5pHyB0c5dPL8/vrWJcr+QZqoJHjmdA3H
         s177ZodirnE3SRAbJE3eQnOhLR13DCkE7RIxW8AC5DaZKYTtAnSX8Suw4sXbH7iCN7T3
         1gTBH/BiOvkIkVsqhwBt76f8Y4LTNsCMjwoNAfgqlkJewGGsSKXT9nNcXTtvZgkUC+jy
         kDQOtmu3rSjRaeBQrFuCNB86QGMF1mDB7QoTgbaYcU2bevr0GwjlPVilaEivPTI6Jn7s
         q53w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8TFK8xXdP43GW9I6xb7LKbzdmP2koXz0JhfalTMMk60=;
        b=f71S3eMdZn5rdxGRWhNUJZ80pZZkOmknYen1gj662xGABMX7mq4iLUvMr1/GZzMurg
         ZrR1exv5cPCf49Sd1GHvEx/aWhjp1LawCVLKNSm60qTVHxBdanNnkPbbjM2QBOfHooaR
         jjPGXuYFWaEwfvm1I4YgNeurwmumfzT2ORe/n7nf8ztCgC87I0mUA5A0lz+Ey+IejDR4
         EvI51OoNmtlMgNkaJck6KDHvUEoOHFb0Jh/Oo6S5RPFXgjln4s3PdCI4Y57ruZMHwsZO
         S2vihdCX4wCebRyspb7f0xPEXijeEUj3k58OBiXHzNWP1+9SyuXRPWPVQkiaWb7s1tCV
         8YJw==
X-Gm-Message-State: AOAM532HRgJTHODnDfscMeaOZHNki5hA+Gyk9ykm4On8goJFGWtj/jUA
        vhDA81phGelERxRWfHIlXuFIbSpEMns=
X-Google-Smtp-Source: ABdhPJxlRrfozYACLJ+L8VMNTgx74VGEGfQbFwLNmf5mKvPrRGg1ZcAyE7ETwyjK7kEsoJMOI3a0aQ==
X-Received: by 2002:adf:fa0a:: with SMTP id m10mr8562010wrr.147.1617478926055;
        Sat, 03 Apr 2021 12:42:06 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.42.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:05 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 27/35] init_module.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat,  3 Apr 2021 21:40:19 +0200
Message-Id: <20210403194026.102818-28-alx.manpages@gmail.com>
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
 man2/init_module.2 | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/man2/init_module.2 b/man2/init_module.2
index e158ce9fa..13d1b7f0a 100644
--- a/man2/init_module.2
+++ b/man2/init_module.2
@@ -29,14 +29,15 @@
 init_module, finit_module \- load a kernel module
 .SH SYNOPSIS
 .nf
-.BI "int init_module(void *" module_image ", unsigned long " len ,
-.BI "                const char *" param_values );
-.BI "int finit_module(int " fd ", const char *" param_values ,
-.BI "                 int " flags );
-.fi
+.BR "#include <linux/module.h>" "    /* Definition of " MODULE_* " constants */"
+.BR "#include <sys/syscall.h>" "     /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.IR Note :
-There are no glibc wrappers for these system calls; see NOTES.
+.BI "int syscall(SYS_init_module, void *" module_image ", unsigned long " len ,
+.BI "            const char *" param_values );
+.BI "int syscall(SYS_finit_module, int " fd ", const char *" param_values ,
+.BI "            int " flags );
+.fi
 .SH DESCRIPTION
 .BR init_module ()
 loads an ELF image into kernel space,
@@ -268,11 +269,6 @@ manually declare the interface in your code;
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
2.31.0

