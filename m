Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9AE037969D
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233252AbhEJR5t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233268AbhEJR5s (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:48 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3A9FC06175F
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:42 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id b11-20020a7bc24b0000b0290148da0694ffso11662879wmj.2
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bWna9DkZKtvjtUgHC5+aDclHxQnDt/WptwevwThFHGI=;
        b=AYA1DMbP36JuLyF7ujzpmMpBKOAbb+2q14Ovf5dySx0Q0c5PEmObI+OIcK7kpvYKJ3
         cJ0uSXHSgClvA7Aau7WSyhno2P8Jc9wJveDl5LbD+CKwNVCOGtkNEMFD2mlFGTg0U/Nm
         VkmdJtnhyBmnYAVlm/kueW1s1Xx5r4I5vceA1NVspZ1NTFGPmOqnCHX3QQV5riL24zdK
         58ewdSJixQuOM5J9+BygTQWItMMdjJbPnXFfso+/WG1rqFyCbXFxM+JeusZEjN84g5BS
         0m0YDUVsnc6WE8X0GSNvLd6RyXHFJJBa6o7JwsBbmCx8ODDC1KXE3OaILygkVCfVaOd+
         4z1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bWna9DkZKtvjtUgHC5+aDclHxQnDt/WptwevwThFHGI=;
        b=MWePJ8QVvxlvDRtsHlh4GqR68T7sceNCuTJbnF76U4V1lZAGvYEuueVH8tHAtVVf02
         lgNA6fJCkm1eyUz+R1ff1VDN3j9gVSea9ihzBlco+4lMofVG2C960jKHXrk4vvVvRb5q
         MMBkax9VoWL2E8PAiL2c1CBxOrCCU6HImLqz/PojQB329oLGYZ0w+GkR57j2p12fMKgS
         r8vunVLGAcKJlR4rSd9MHOAgN47ui1DgfYkIYf0Fkjwtuh3aR9JdQBCMWsMSdbYigscm
         e2y1uISv/O3dR1X3lo1e49mhfa3KQJDnPp8Pv+UR8x8nNbkiRmmJ6go/WgvatC1HRA5W
         Naxg==
X-Gm-Message-State: AOAM533N+3bZ/i9R3seJRxnjWUg8obe0gAWCz6apweCtKDyBXLkXUKh1
        tWBax31e4nob1n+AOXyPK/g=
X-Google-Smtp-Source: ABdhPJztNgPh6EnEKcbCajgtI+950P1BI5Y+lC5Zz6BOOqZqixsArhg8s+C8Qbt82ZtZ7QeGK3X8ww==
X-Received: by 2002:a7b:c252:: with SMTP id b18mr27919096wmj.32.1620669401642;
        Mon, 10 May 2021 10:56:41 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:41 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 17/39] llseek.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:26 +0200
Message-Id: <20210510175546.28445-18-alx.manpages@gmail.com>
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
 man2/llseek.2 | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/man2/llseek.2 b/man2/llseek.2
index 6a36fb6ea..87f45f219 100644
--- a/man2/llseek.2
+++ b/man2/llseek.2
@@ -31,15 +31,19 @@
 _llseek \- reposition read/write file offset
 .SH SYNOPSIS
 .nf
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
 .B #include <unistd.h>
 .PP
-.BI "int _llseek(unsigned int " fd ", unsigned long " offset_high ,
+.BI "int syscall(SYS__llseek, unsigned int " fd ", unsigned long " offset_high ,
 .BI "            unsigned long " offset_low ", loff_t *" result ,
 .BI "            unsigned int " whence );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR _llseek (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 Note: for information about the
 .BR llseek (3)
@@ -97,10 +101,7 @@ is invalid.
 This function is Linux-specific, and should not be used in programs
 intended to be portable.
 .SH NOTES
-Glibc does not provide a wrapper for this system call.
-To invoke it directly, use
-.BR syscall (2).
-However, you probably want to use the
+You probably want to use the
 .BR lseek (2)
 wrapper function instead.
 .SH SEE ALSO
-- 
2.31.1

