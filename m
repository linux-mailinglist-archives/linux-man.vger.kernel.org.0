Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D0802ED6C8
	for <lists+linux-man@lfdr.de>; Thu,  7 Jan 2021 19:39:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728131AbhAGSjg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Jan 2021 13:39:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728088AbhAGSjg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Jan 2021 13:39:36 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3F2FC0612F4
        for <linux-man@vger.kernel.org>; Thu,  7 Jan 2021 10:38:55 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id r7so6622677wrc.5
        for <linux-man@vger.kernel.org>; Thu, 07 Jan 2021 10:38:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EKt1Xf4fLdv4fXSs8iOjDNG4D3J08apJ2efoEoNhw/k=;
        b=JvL/NECwj1f0RtTev/3ilGGjIZj9GSkWkgNKO0Vq2n38ZbF/Xsw/CPli+zvHwDDGpF
         w+pvrsoe/Yrq9fF128Q6iET2fSL04XJCAIuhQqWp6zdWE/DSc7Op3oJcL8QRq2ZUFeJD
         zO0bzndBU/uN0KIybpYdVzYTSE4XwGPtVerbO+5qO3WTO9KdUViMrcw9FLT9CKc7+JxG
         IJnHCTHk7c4BVsgDNhFANf+exl5RTRbTAXA7CxpYZNsPtFMqDOhsDX76i+Gd8478fxlG
         Pkml0hKiFgVBO7Vq3YHPZ6KaSNVrnL39bNPBdzKNK0V0UPRWbhYtWkIdK8QSW+tvFMpe
         ZZBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EKt1Xf4fLdv4fXSs8iOjDNG4D3J08apJ2efoEoNhw/k=;
        b=UvAzEj2EhlyOY9+UBUh0DrgSKH0eHzyCBtts6MvitkLBLcxRkQ6o37z9y5+luBQH+J
         WfzICPgUTZQ0j3KfxW/Un10TdhO7cpd+iktJJv8RSDd/46qqC5u4IVmVM/rbzgOLPWWM
         hiZcjKsRSjjdhh9Qqba8njZMYNPr8cVHGKZtrlAxwmUpFAaShq/fwM9X9ET8g9YlXhSD
         S2D/+K9bzUNDJL4ODYxboEoYR0hrfC7xLX0Tq01B7vFpCIZc/YnU5J9XG9miK5aSGcxz
         JXqJrvgnTwMkpi2QjPy+iuxoD7ekLwe2mLZv6xRjQT8dnJu/qH3w9Ms9s29bNH1TZfGW
         DkkA==
X-Gm-Message-State: AOAM532Gx7Mtjn54zbxleD91qwcw569/9wHju5BFxg9eaFiLOB7AolI3
        py4FPuOlaEMhW4YBpWHkn9A=
X-Google-Smtp-Source: ABdhPJyLvKYWyYcAgMG1bLDCGio3i1LVadlumAhOesLoIdfRdKJAQChxa5kQsZcyfB9/OA7S9J00NQ==
X-Received: by 2002:adf:eb05:: with SMTP id s5mr10140655wrn.333.1610044734097;
        Thu, 07 Jan 2021 10:38:54 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id y2sm8574856wma.6.2021.01.07.10.38.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 10:38:53 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] Various pages: tfix: Use Oxford comma
Date:   Thu,  7 Jan 2021 19:38:20 +0100
Message-Id: <20210107183819.42513-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Found using:
$ pcregrep -rnM "^\.[B|I]R .*,\n\.[B|I].*[^,]\nor" man? \
  |grep ^man \
  |sort;

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/mmap.2        | 2 +-
 man3/aio_return.3  | 2 +-
 man3/dbopen.3      | 2 +-
 man3/drand48.3     | 2 +-
 man3/posix_spawn.3 | 4 ++--
 man3/xdr.3         | 2 +-
 man4/sk98lin.4     | 4 ++--
 man7/symlink.7     | 2 +-
 8 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/man2/mmap.2 b/man2/mmap.2
index b44a8f1b7..a4aa205ed 100644
--- a/man2/mmap.2
+++ b/man2/mmap.2
@@ -563,7 +563,7 @@ was 0.
 .I flags
 contained none of
 .BR MAP_PRIVATE ,
-.B MAP_SHARED
+.BR MAP_SHARED ,
 or
 .BR MAP_SHARED_VALIDATE .
 .TP
diff --git a/man3/aio_return.3 b/man3/aio_return.3
index 062dce2cf..4ea2c0e10 100644
--- a/man3/aio_return.3
+++ b/man3/aio_return.3
@@ -53,7 +53,7 @@ If the asynchronous I/O operation has completed, this function returns
 the value that would have been returned in case of a synchronous
 .BR read (2),
 .BR write (2),
-.BR fsync (2)
+.BR fsync (2),
 or
 .BR fdatasync (2),
 call.
diff --git a/man3/dbopen.3 b/man3/dbopen.3
index d76ee3e6a..2ea5ad3cf 100644
--- a/man3/dbopen.3
+++ b/man3/dbopen.3
@@ -522,7 +522,7 @@ routines may fail and set
 for any of the errors specified for the library routines
 .BR read (2),
 .BR write (2),
-.BR free (3)
+.BR free (3),
 or
 .BR malloc (3).
 .PP
diff --git a/man3/drand48.3 b/man3/drand48.3
index 36309550e..26c5bd09d 100644
--- a/man3/drand48.3
+++ b/man3/drand48.3
@@ -147,7 +147,7 @@ The value returned by any of the functions
 .BR erand48 (),
 .BR lrand48 (),
 .BR nrand48 (),
-.BR mrand48 ()
+.BR mrand48 (),
 or
 .BR jrand48 ()
 is
diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
index cbf6802b1..a56aa3e86 100644
--- a/man3/posix_spawn.3
+++ b/man3/posix_spawn.3
@@ -513,13 +513,13 @@ and
 .BR posix_spawnp ()
 functions fail only in the case where the underlying
 .BR fork (2),
-.BR vfork (2)
+.BR vfork (2),
 or
 .BR clone (2)
 call fails;  in these cases, these functions return an error number,
 which will be one of the errors described for
 .BR fork (2),
-.BR vfork (2)
+.BR vfork (2),
 or
 .BR clone (2).
 .PP
diff --git a/man3/xdr.3 b/man3/xdr.3
index a225acfe1..a0b686d33 100644
--- a/man3/xdr.3
+++ b/man3/xdr.3
@@ -99,7 +99,7 @@ Note: encoded characters are not packed, and occupy 4 bytes each.
 For arrays of characters, it is worthwhile to
 consider
 .BR xdr_bytes (),
-.BR xdr_opaque ()
+.BR xdr_opaque (),
 or
 .BR xdr_string ().
 .PP
diff --git a/man4/sk98lin.4 b/man4/sk98lin.4
index 1301300b2..7fb91a5b4 100644
--- a/man4/sk98lin.4
+++ b/man4/sk98lin.4
@@ -248,7 +248,7 @@ If AutoNeg_A is set to
 .IR On ,
 all three values of DupCap_A (
 .IR Half ,
-.I Full
+.IR Full ,
 or
 .IR Both )
 might be stated.
@@ -278,7 +278,7 @@ If AutoNeg_B is set to
 .IR On ,
 all three values of DupCap_B (
 .IR Half ,
-.I Full
+.IR Full ,
 or
 .IR Both )
 might be stated.
diff --git a/man7/symlink.7 b/man7/symlink.7
index a2a34204b..8b691aa1a 100644
--- a/man7/symlink.7
+++ b/man7/symlink.7
@@ -548,7 +548,7 @@ the
 command acts a little differently.
 If you do not specify the
 .IR \-F ,
-.IR \-d
+.IR \-d ,
 or
 .I \-l
 options,
-- 
2.29.2

