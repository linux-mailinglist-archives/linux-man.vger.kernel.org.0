Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7A123A4D99
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:32:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230516AbhFLIeB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:34:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229584AbhFLIeA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:34:00 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D34BCC061574
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:31:50 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id a11so8460110wrt.13
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ExebsN56b/xPylzCPw5CcjiwIE0jvTqkaUYckUyu0lY=;
        b=jtQ93c9pMbMWc6Bj05ZE9xpq+DVuKML7O12aA25Zih3n6epv1N4J+yNGSw43cgv37c
         rEkUo1JBD6I2gtkFs4c0XO3R+2V+tvKC5yZi8YSp6JoQwIEMW8NAadkPHUBjueOCqGxH
         bqLXzF3vsLvnyTgfLQSEPkGn/re25Ck+1j34PTnMQTH8aUyn2KpegHTr3vH5+jiUMbi+
         s9P5z9rAJzsyQvkfirO5Pm0Lslh0MgCFRhGbIhhXbWQxvnKa8LzKIqT2CUmRQGVm5RPD
         zD1P6ANXmNL1bIKOF+dVXjE4DEBOI0AcDtM6c42Nkus34+1/zbJXe1/vrWGvYbDOTGL+
         pyUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ExebsN56b/xPylzCPw5CcjiwIE0jvTqkaUYckUyu0lY=;
        b=QdZwkwzM/od5HvQT5QQK9eR0m0puI9SBYDwdlbbgRIlYCIIw2H1SjItecZ0VbCGEkF
         n1IHztDDP7VePX6M8Xwivw3tXPkyFYbzMfUSa94UgRAt5vBia46CxiaLpMZMaAqs4W53
         U3XTsEZO7lqpT3d5jq1ikPreJEwawWIkd6PcFtCdnnz8DWDuWzKPzo1RvK1EbxFF9RHV
         IBTteqFD/psBiezRPxke/HWdYYRaE8npXQyWheyO2mjRWaIV8QXGEf9ezG6KVgGMMf/A
         jdRPPZeZ7xBbKu08fopDyJiH7ZCtT9c1fcs6vcV9xxPkzcdzgLbG5Z3t/AGHlOFHswY4
         C1sA==
X-Gm-Message-State: AOAM533SXNIPwEBe0KwZdAQswBrDGHBlbg1STG57HhteuKNxMl6z2yYy
        bycK8vxMZnkhsLwqu7XCSreOO+21VvI=
X-Google-Smtp-Source: ABdhPJyrPBOhuCWusPN1YAQy9pd/gTt9ZhViuQAbswJ+tklxiPvIkFaJoKAYCkBuVsYIt6e7XjCBMw==
X-Received: by 2002:adf:d1e4:: with SMTP id g4mr8141661wrd.405.1623486709533;
        Sat, 12 Jun 2021 01:31:49 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:31:49 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 02/28] seccomp.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 12 Jun 2021 10:31:19 +0200
Message-Id: <20210612083145.12485-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/seccomp.2 | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/man2/seccomp.2 b/man2/seccomp.2
index 53f473a78..a3421871f 100644
--- a/man2/seccomp.2
+++ b/man2/seccomp.2
@@ -38,13 +38,18 @@ seccomp \- operate on Secure Computing state of the process
 .BR "#include <sys/ptrace.h>" "     /* Definition of " PTRACE_* " constants */"
 .\" Kees Cook noted: Anything that uses SECCOMP_RET_TRACE returns will
 .\"                  need <sys/ptrace.h>
+.BR "#include <sys/syscall.h>" "    /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int seccomp(unsigned int " operation ", unsigned int " flags \
-", void *" args );
+.BI "int syscall(SYS_seccomp, unsigned int " operation ", unsigned int " flags ,
+.BI "            void *" args );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR seccomp (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR seccomp ()
@@ -930,9 +935,6 @@ Tile (since Linux 4.3)
 PA-RISC (since Linux 4.6)
 .\" User mode Linux since Linux 4.6
 .PD
-.PP
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
 .\"
 .SS Caveats
 There are various subtleties to consider when applying seccomp filters
-- 
2.32.0

