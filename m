Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE19A35355A
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:41:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236752AbhDCTl6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:41:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236736AbhDCTl6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:41:58 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B042BC061788
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:41:54 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id o20-20020a05600c4fd4b0290114265518afso992741wmq.4
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mrkfk1quWdjBX9VDibOMAzdhIk8NhlqMcKJaPgXG5vw=;
        b=A0PHmaejT2aBwmRH7NAo6dUtLuYsQcO7v4a5ee90i2Zpo+pXBIkrW7lWY5bUQfo3Jz
         kR1rC/tAMwa0S8a/RKA+2SpTL8Mln4SJ8TKvFFb1V6CBhzJqR+lomH/QMCq3k9tdLMKP
         M5AirXLqCroMxaEQu04fGFscfTtq2wMqSOI3Ne+DtyqpjLaPZW93xusCNb+Ll5Hz3Bj9
         3kHoAyNbn2K72RG6HYQG5/YVX7OfIHSGnY0veMDxWGu3VD87U+wJNREPqTdwb2fnTI6t
         RiDEXKCiRtxOOrgk5JUd3tEPNrbOiNAiwpOYy9aT1xUygTGqWiQsL/z5EOjvAzBGTh+n
         dm2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mrkfk1quWdjBX9VDibOMAzdhIk8NhlqMcKJaPgXG5vw=;
        b=gv466S7T/7oSDKRSrxLhoU4UhBhak92MWF4q1W8XTLUYHaeRXItuKQS4Z11/PYu2XO
         747sRGSag7hG+OWa3R17qYPhpFTxYQL1zXDtKczaaTk1B+JqSnujV0eEKtcXbFAFx8PG
         JR1JhSmKTkhpR39Q2eIPn4Y2jeUudSrZNXc4GfFqa5kNI36agtIm4F1BFKnBbBIsxHdk
         GN9GDI4qujxGps9g+Kn1XtlgHsxmSnk/rgmyce4kMWT7fDD7z0KZsga9XxYsg2aJO1fI
         ttgpw28kYJMrokUvjXeD/2GSIfybLFIueKO2TrS7AMtHK7idflBg/tYIThYdwAAD/gjQ
         pSbQ==
X-Gm-Message-State: AOAM5303I0sOFqv0gJQHCbWIbKwVqf/G3PFtHPDJ+Zur5bYFZQjSpegN
        xEH7IrNx/qbUMdCJ5A+hV0IHkgN4kXE=
X-Google-Smtp-Source: ABdhPJyG61E8VOsYvZFS+o+IivYLoPJK4N6RLwtIsQvAE3y8TVoA/aiXvjfCbaso0qcdN4cVejbQLw==
X-Received: by 2002:a05:600c:2204:: with SMTP id z4mr18813744wml.31.1617478913506;
        Sat, 03 Apr 2021 12:41:53 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:41:53 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 08/35] arch_prctl.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat,  3 Apr 2021 21:40:00 +0200
Message-Id: <20210403194026.102818-9-alx.manpages@gmail.com>
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
 man2/arch_prctl.2 | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
index 1ddeca595..f8073d625 100644
--- a/man2/arch_prctl.2
+++ b/man2/arch_prctl.2
@@ -27,15 +27,14 @@
 arch_prctl \- set architecture-specific thread state
 .SH SYNOPSIS
 .nf
-.B #include <asm/prctl.h>
+.BR "#include <asm/prctl.h>" "        /* Definition of " ARCH_* " constants */"
 .B #include <sys/prctl.h>
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int arch_prctl(int " code ", unsigned long " addr );
-.BI "int arch_prctl(int " code ", unsigned long *" addr );
+.BI "int syscall(SYS_arch_prctl, int " code ", unsigned long " addr );
+.BI "int syscall(SYS_arch_prctl, int " code ", unsigned long *" addr );
 .fi
-.PP
-.IR Note :
-There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 .BR arch_prctl ()
 sets architecture-specific process or thread state.
@@ -177,9 +176,6 @@ and
 in the same thread is dangerous, as they may overwrite each other's
 TLS entries.
 .PP
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-.PP
 .I FS
 may be already used by the threading library.
 Programs that use
-- 
2.31.0

