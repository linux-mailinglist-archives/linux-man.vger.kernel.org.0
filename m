Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FC7B379695
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232947AbhEJR5i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233197AbhEJR5h (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:37 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2951C06175F
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:30 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso11643223wmh.4
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XKdpBKSMuiZJDGlYuAWIvkxYovN6rRDYr0Mh9rQWVBw=;
        b=BuZ9u+vC50qOS/v4cqfbLabbsg8Q3nY8ZKYrJ9Dz0OSw2f8Gzyhp/L/tAmcm2xIsPR
         JWvRXGdRqSWaciGVsI+4qijPNBhywH1x3UcPnzziTswlQsGLTbSG4RMfpXDTt/+a8Sw1
         rBAxUYO5lmyr9sfOYNWSNQxM7yEwEq2tBsbIlNJa3WMdEeko/UV7Mp9ZcgJsCWB915OD
         38KtZFG79/e/NC5CGj+bUAGE1+MZd72S1kbwOfBHLiVpODk/ki+2Hbfp7S9zAdVtm/H9
         hYIVSKR1/qyGwMjAIPc8OARphSY6+bjRQ789SIrx+l33FJjk33hxCqLNnxW65uB/NP2Z
         Ikfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XKdpBKSMuiZJDGlYuAWIvkxYovN6rRDYr0Mh9rQWVBw=;
        b=ZZeGseqgijw+9i1VayP0157iyvkYPkhz8C/TFsHelpfz/rfpi62jhDO0RcTQ8UdlpG
         X3yP+vb2xJ0Id2TLopncS0RgLFQfFAmQEH/0uA31zFVe5i0Yj3nKI2twN2pCMDDkxzi0
         BhJ4ZX1RKVbA5WAMixDhc0V7yELwiXnon43q/PYw3TBOKFosHpxHBTwXFyLac35orP3H
         YnZhuTv1IulMxxuJQmWy9Fn4obB/DwmkqIGxR7ZoJ6lvlpRW3CdjQo+OGC/jIPrRXxpK
         9Z9aTzk0/IIJslQSqdyKpulnqHaqV2Cc6o3KgL6bLIYTtNZvDMHKThuEPuo9lFh43YdC
         Uvew==
X-Gm-Message-State: AOAM532660hVkUIpeATeM5/Z2gG8fy5RvtYQ3sziIUKhTJDFjjkkKxcE
        Ynk6w56HLFcxe6zcDXXagSE=
X-Google-Smtp-Source: ABdhPJyc6dFrnFU41NB7YSeoELCfSOH+MqnZyYftnsEo+xHQm4X71uf3a/kBk2k35sExJ8RRTD+Jbg==
X-Received: by 2002:a05:600c:26c9:: with SMTP id 9mr376673wmv.176.1620669389657;
        Mon, 10 May 2021 10:56:29 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:29 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 09/39] ipc.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:18 +0200
Message-Id: <20210510175546.28445-10-alx.manpages@gmail.com>
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
 man2/ipc.2 | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/man2/ipc.2 b/man2/ipc.2
index c0ba4651f..f505fa1c9 100644
--- a/man2/ipc.2
+++ b/man2/ipc.2
@@ -27,12 +27,20 @@
 ipc \- System V IPC system calls
 .SH SYNOPSIS
 .nf
-.BI "int ipc(unsigned int " call ", int " first ", unsigned long " second ,
-.BI "        unsigned long " third ", void *" ptr ", long " fifth );
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_ipc, unsigned int " call ", int " first ,
+.BI "            unsigned long " second ", unsigned long " third \
+", void *" ptr ,
+.BI "            long " fifth );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR ipc (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 .BR ipc ()
 is a common kernel entry point for the System\ V IPC calls
@@ -56,10 +64,6 @@ system call; instead,
 .BR semctl (2),
 .BR shmctl (2),
 and so on really are implemented as separate system calls.
-.PP
-Glibc does not provide a wrapper for this system call;
-in the unlikely event that you want to call it directly, you can do so using
-.BR syscall (2).
 .SH SEE ALSO
 .BR msgctl (2),
 .BR msgget (2),
-- 
2.31.1

