Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1DB4379697
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233228AbhEJR5j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233216AbhEJR5j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:39 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C8E0C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:34 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id d4so17520851wru.7
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SnUiudXLqLGUXWxfTqP+91+DkoZGHPr6kchEeZQJTNs=;
        b=HglVEjuaiocY5I2rHHPLniXAPQJ4iRtMGvANpGTGcrd+OjLhxwVNwkwi2C3/ONum+9
         YVCJ8ceEbcMoEjVESXbCOkUSe66EgJ4QmGRlf737V+G9xjVpbVkyaGUtm+cBKD8QSIAL
         P437qv+WGRQD6UhDuxXwPVo3YbeauJOCc7cULF+HnxRgjLGqSOjfNlwbId06kshqOh5G
         gRarFlh7T4P9KqF9G1E8e75BuyZ2i4MjC3xj+W2VRfKT4/7s5e+5zp/J9AydXHNx4XGf
         YW9MhigzzaemwTeRDJ3jTSXZ/ujlO8AOeNLu6AnS0mXm1TXq6oD0u6oSi3/Two17pQ0a
         s8nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SnUiudXLqLGUXWxfTqP+91+DkoZGHPr6kchEeZQJTNs=;
        b=R5qwi8Imdxe+po3pGZuQvF6NriW/p1Z2Gi6XmWlVR7mdZOhN8u1hp/XT+pcvhYnZKO
         dGKDQM0Rp6WQCbGeqCVk1MJRA7QIGriwMcLS3EvoVBw7YC7CcGk48u4lk3vLw5e0q2b+
         XI2/2BcosLDW2qgstSLobDgn9Sg1QNMUNUzfu14Ae3+fTKz/2KLv0WfJBDv/KMa2zmFo
         QX0om+t3NPiAu23Q1ZW9CZKC/i8InOLHqpDGLfducarGlROOBTtxS1cOcoR1fJYkr617
         27P6bjz0wnff54najrnSsoRCdXP0Ws33QhspdmvOlBiL0t4YA75sqiGkKiHZEy9gI7qO
         ZVxw==
X-Gm-Message-State: AOAM533rrznooLU8DGYMOrYYyv9AlOzNt0wvlEqXA9ycJJ/1nu+MkC9j
        vtbC1w8+mmKWP5USBEzN4Gc=
X-Google-Smtp-Source: ABdhPJzclYY2wEsgT2IAwSBpHWtXuGO53l1sVL+jOMpSwTMmnhZUiRLdprTmzB5wJPgkmt6jjV7zXQ==
X-Received: by 2002:a5d:5745:: with SMTP id q5mr33147642wrw.250.1620669392795;
        Mon, 10 May 2021 10:56:32 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:32 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 11/39] kcmp.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:20 +0200
Message-Id: <20210510175546.28445-12-alx.manpages@gmail.com>
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
 man2/kcmp.2 | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/man2/kcmp.2 b/man2/kcmp.2
index 3cc7f7d6f..b0994758a 100644
--- a/man2/kcmp.2
+++ b/man2/kcmp.2
@@ -30,14 +30,19 @@
 kcmp \- compare two processes to determine if they share a kernel resource
 .SH SYNOPSIS
 .nf
-.B #include <linux/kcmp.h>
+.BR "#include <linux/kcmp.h>" "       /* Definition of " KCMP_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int kcmp(pid_t " pid1 ", pid_t " pid2 ", int " type ,
-.BI "         unsigned long " idx1 ", unsigned long "  idx2 );
+.BI "int syscall(SYS_kcmp, pid_t " pid1 ", pid_t " pid2 ", int " type ,
+.BI "            unsigned long " idx1 ", unsigned long "  idx2 );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR kcmp (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR kcmp ()
@@ -303,9 +308,6 @@ system call first appeared in Linux 3.5.
 .BR kcmp ()
 is Linux-specific and should not be used in programs intended to be portable.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-.PP
 Before Linux 5.12,
 this system call is available only if the kernel is configured with
 .BR CONFIG_CHECKPOINT_RESTORE ,
-- 
2.31.1

