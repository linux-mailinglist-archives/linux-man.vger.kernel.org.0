Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C8EA31EBAB
	for <lists+linux-man@lfdr.de>; Thu, 18 Feb 2021 16:45:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232575AbhBRPmE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Feb 2021 10:42:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231387AbhBRPPv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Feb 2021 10:15:51 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 037FBC061574;
        Thu, 18 Feb 2021 07:15:07 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id x4so4278382wmi.3;
        Thu, 18 Feb 2021 07:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4oZWeumg03d8Z1y5Lnt1KGkf0PD/+G44xxBEli+me8o=;
        b=vW8TmiLiGX4AAFg/14PsYui7gubBWEMlEkNvBVNmyfwt0+DdrCN6C98O7iPgaxvNKJ
         fltwCxn0bXoofh7LLDh81dLzYDEyJYpu6RIscxwmcEv5nJnpXKf4mPJ9x0guRRZPGbik
         dqsTQ6Sda/IVEUZJXPKgOqKlxtQblJWDFaUCMGgCj8oszmAgvQGEiLt+BcgXQR+Y4E1S
         hZcuSGC3YehlehZr/JtVr8E5dy44XS/T9jDXqxkO2cIVJDpzYC26TNeXyIdxGHBNbYCa
         MRHA0IoYAogZc3bYDBlL+r5I5qhILBOGTYF7GfIHslHg/hNCFYO9/tRtGeHLqX0yJXWa
         Z1vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4oZWeumg03d8Z1y5Lnt1KGkf0PD/+G44xxBEli+me8o=;
        b=OMA+2PFlWu3N+yKwH7nTSyFtJgzvJEZNqJCdFayafd9GLVIME132QQSZoVsMRi94d+
         Byvf1SY/jig7OVqJraqHDhMWFJya0Seh1YOlyaS4C3y0Q5SkxLTvHInHJtNFfc4+Oghg
         sLxfPhRmCDPelzJBZmOrPQ6us4gsG3RSR+QYMkUIu4B76cTcBWTu5vllkM4PKyC0QBjs
         DVpr55v7sIik9SAKA9UNCcFpcQwPvQ4Ded6khRJlOmWTsq8FPvBqKIMPtxiZGoyuiX6B
         YfmINwhO87sqTRvX1uY1aXvyMcDBZmYqp+CsewPx4xQskXFjrbLrrLUrBTeCJcuR1qlW
         Lnbg==
X-Gm-Message-State: AOAM531A+unhTCsSxnOkd14KD6nrnjo0vuMifm7ibcJsEQmvPII0f189
        1IyNPM/9cjt+y695+cCNU6UJkx4lt984sw==
X-Google-Smtp-Source: ABdhPJwtIJqjqzAGT9hXk10R/Qa398m5v2JYPqfHkS4B5i+SEsUvq1nXBulTGEu+ecSq189+DIW5sw==
X-Received: by 2002:a05:600c:3516:: with SMTP id h22mr4076388wmq.35.1613661305650;
        Thu, 18 Feb 2021 07:15:05 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k128sm3363760wmf.42.2021.02.18.07.15.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 07:15:05 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Florian Weimer <fweimer@redhat.com>,
        linux-kernel@vger.kernel.org
Subject: [RFC v2] execve.2: SYNOPSIS: Document both glibc wrapper and kernel sycalls
Date:   Thu, 18 Feb 2021 16:13:42 +0100
Message-Id: <20210218151341.51095-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <938df2c0-04b5-f6a4-79c3-b8fe09973828@gmail.com>
References: <938df2c0-04b5-f6a4-79c3-b8fe09973828@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Until now, the manual pages have (usually) documented only either
the glibc (or another library) wrapper for a syscall, or the
kernel syscall (this only when there's not a wrapper).

Let's document both prototypes, which many times are slightly
different.  This will solve a problem where documenting glibc
wrappers implied shadowing the documentation for the raw syscall.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/execve.2     | 15 +++++++++++++--
 man2/membarrier.2 | 14 +++++---------
 2 files changed, 18 insertions(+), 11 deletions(-)

diff --git a/man2/execve.2 b/man2/execve.2
index 027a0efd2..318c71c85 100644
--- a/man2/execve.2
+++ b/man2/execve.2
@@ -41,8 +41,8 @@ execve \- execute program
 .nf
 .B #include <unistd.h>
 .PP
-.BI "int execve(const char *" pathname ", char *const " argv [],
-.BI "           char *const " envp []);
+.BI "int execve(const char *" pathname ",
+.BI "           char *const " argv "[], char *const " envp []);
 .fi
 .SH DESCRIPTION
 .BR execve ()
@@ -772,6 +772,17 @@ Thus, this argument list was not directly usable in a further
 .BR exec ()
 call.
 Since UNIX\ V7, both are NULL.
+.SS C library/kernel differences
+.RS 4
+.nf
+/* Kernel system call: */
+.BR "#include <sys/syscall.h>" "        /* For " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_execve, const char *" pathname ,
+.BI "            const char *const " argv "[], const char *const " envp []);
+.fi
+.RE
 .\"
 .\" .SH BUGS
 .\" Some Linux versions have failed to check permissions on ELF
diff --git a/man2/membarrier.2 b/man2/membarrier.2
index 173195484..25d6add77 100644
--- a/man2/membarrier.2
+++ b/man2/membarrier.2
@@ -28,13 +28,12 @@ membarrier \- issue memory barriers on a set of threads
 .SH SYNOPSIS
 .nf
 .PP
-.B #include <linux/membarrier.h>
+.BR "#include <linux/membarrier.h>" "   /* For " MEMBARRIER_* " constants */"
+.BR "#include <sys/syscall.h>" "        /* For " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id );
+.BI "int syscall(SYS_membarrier, int " cmd ", unsigned int " flags ", int " cpu_id );
 .fi
-.PP
-.IR Note :
-There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 The
 .BR membarrier ()
@@ -295,7 +294,7 @@ was:
 .PP
 .in +4n
 .EX
-.BI "int membarrier(int " cmd ", int " flags );
+.BI "int syscall(SYS_membarrier, int " cmd ", int " flags );
 .EE
 .in
 .SH CONFORMING TO
@@ -322,9 +321,6 @@ Examples where
 .BR membarrier ()
 can be useful include implementations
 of Read-Copy-Update libraries and garbage collectors.
-.PP
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
 .SH EXAMPLES
 Assuming a multithreaded application where "fast_path()" is executed
 very frequently, and where "slow_path()" is executed infrequently, the
-- 
2.30.1.721.g45526154a5

