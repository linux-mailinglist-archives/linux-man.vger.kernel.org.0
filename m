Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B98C7443555
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232856AbhKBSSG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234868AbhKBSSG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:06 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C80ADC061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:30 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id b184-20020a1c1bc1000000b0033140bf8dd5so26269wmb.5
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/YrxFHtXZDDtN6RJ0VOu0Lyl9Nj+aCxB+cmudIIXEjI=;
        b=PxYTwnIqpilat6fnkOUxuF+1Hck5cCYUC2xkyIB1wtl1iHkc9+CqPrqXI09w9urCtc
         EGfDCJiTzx6s6GNCu7E/B0oM5OyY+qhmKaujm74XBTxK5O9la+t6glkeNO0SMFHNkr+8
         lQ0zzBp6PGoJA7UhKjs15MaZhUoLGC1TokSXg5R6Js8WMQG1+RLNNDgEtgdCshKd8Glb
         4GsTJ3WvK2omCZLIjen5LyVClCaF+TblH0cJiWpVc4zIxytY7wKK3JpjbKVnQUIs+y5Q
         4yBfcB5rAK9HwA8X4y+aWCMxkleVMcXoulnpoRMuAromsprAzRLW0hMZrgQ1dyZJIUkv
         lLEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/YrxFHtXZDDtN6RJ0VOu0Lyl9Nj+aCxB+cmudIIXEjI=;
        b=EzkVPN8ACG7ZpOhbAS7VqIO1DtdrZHMo5xjhmQFrGH9M4yCUL/P/cwdDCC6j05b8df
         CqsfS6F/5rbnLJV5RUofaZLRaWU1Zh/K3tDiHcSijue3ryFzDEpIfQmcSCgkzALZ5S+i
         N4NkXSqqCaxF02T7YyB67N8AhBp11PCVRlV7C31l9b24lUvSbTQAngWR+om2Zjwe2Rae
         Zi5ftJjrka8JU6CotBOYdtQ/HWtkNp5fKI0GpnPBZYhum5zFEaxWR4mboLRxQG+SshLP
         iTYPSY/ebaTYnDcaiBk7g9NLk/eZmXIdP4KMfmZ/MtkzBlzeroiWWqS5U0WgdUUzWK59
         Rk8g==
X-Gm-Message-State: AOAM532FIjndHx9nNz8SPxIHWD472TEnUuptjQrDbdtSmfgnTK+VBQDt
        6lFhtSjwbl8m+HH6lXwj354=
X-Google-Smtp-Source: ABdhPJyWngN//IQHdc512RFyKNE3+SLFFUkT/c4i0H7U5AoSVA7c2iqu4RBX+5O+9ccfhpSFLYo4IA==
X-Received: by 2002:a7b:c359:: with SMTP id l25mr9028861wmj.84.1635876929439;
        Tue, 02 Nov 2021 11:15:29 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:29 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 25/37] id_t.3, pid_t.3, system_data_types.7: Move pid_t to id_t.3
Date:   Tue,  2 Nov 2021 19:14:42 +0100
Message-Id: <20211102181454.280919-26-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/id_t.3              | 42 ++++++++++++++++++++++++++++++++++---
 man3/pid_t.3             |  2 +-
 man7/system_data_types.7 | 45 ----------------------------------------
 3 files changed, 40 insertions(+), 49 deletions(-)

diff --git a/man3/id_t.3 b/man3/id_t.3
index 5baaeb9a6..0cdd163c9 100644
--- a/man3/id_t.3
+++ b/man3/id_t.3
@@ -1,14 +1,24 @@
 .TH ID_T 3 2021-11-02 Linux "Linux Programmer's Manual"
 .SH NAME
-gid_t, id_t \- process/user/group identifier
+pid_t, gid_t, id_t \- process/user/group identifier
 .SH SYNOPSIS
 .nf
 .B #include <sys/types.h>
 .PP
+.BR typedef " /* ... */ " pid_t;
 .BR typedef " /* ... */ " gid_t;
 .BR typedef " /* ... */ " id_t;
 .fi
 .SH DESCRIPTION
+.I pid_t
+is a type used for storing process IDs, process group IDs, and session IDs.
+According to POSIX, it shall be a signed integer type,
+and the implementation shall support one or more programming environments
+where the width of
+.I pid_t
+is no greater than the width of the type
+.IR long .
+.PP
 .I gid_t
 is a type used to hold group IDs.
 According to POSIX,
@@ -26,6 +36,22 @@ or
 POSIX.1-2001 and later.
 .SH NOTES
 The following headers also provide
+.IR pid_t :
+.IR <fcntl.h> ,
+.IR <sched.h> ,
+.IR <signal.h> ,
+.IR <spawn.h> ,
+.IR <sys/msg.h> ,
+.IR <sys/sem.h> ,
+.IR <sys/shm.h> ,
+.IR <sys/wait.h> ,
+.IR <termios.h> ,
+.IR <time.h> ,
+.IR <unistd.h> ,
+and
+.IR <utmpx.h> .
+.PP
+The following headers also provide
 .IR gid_t :
 .IR <grp.h> ,
 .IR <pwd.h> ,
@@ -41,11 +67,21 @@ The following header also provides
 .IR <sys/resource.h> .
 .SH SEE ALSO
 .BR chown (2),
-.BR getgid (2),
+.BR fork (2),
 .BR getegid (2),
+.BR getgid (2),
 .BR getgroups (2),
+.BR getpgid (2),
+.BR getpid (2),
+.BR getppid (2),
 .BR getpriority (2),
 .BR getresgid (2),
-.BR waitid (2)
+.BR getsid (2),
+.BR gettid (2),
+.BR kill (2),
+.BR pidfd_open (2),
+.BR sched_setscheduler (2),
+.BR waitid (2),
 .BR getgrnam (3),
+.BR sigqueue (3),
 .BR credentials (7)
diff --git a/man3/pid_t.3 b/man3/pid_t.3
index db50c0f09..af7be45e3 100644
--- a/man3/pid_t.3
+++ b/man3/pid_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/id_t.3
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 4fc3c714a..41300d311 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -513,51 +513,6 @@ See also the
 type in this page.
 .RE
 .\"------------------------------------- pid_t ------------------------/
-.TP
-.I pid_t
-.RS
-.IR Include :
-.IR <sys/types.h> .
-Alternatively,
-.IR <fcntl.h> ,
-.IR <sched.h> ,
-.IR <signal.h> ,
-.IR <spawn.h> ,
-.IR <sys/msg.h> ,
-.IR <sys/sem.h> ,
-.IR <sys/shm.h> ,
-.IR <sys/wait.h> ,
-.IR <termios.h> ,
-.IR <time.h> ,
-.IR <unistd.h> ,
-or
-.IR <utmpx.h> .
-.PP
-This type is used for storing process IDs, process group IDs, and session IDs.
-According to POSIX, it shall be a signed integer type,
-and the implementation shall support one or more programming environments
-where the width of
-.I pid_t
-is no greater than the width of the type
-.IR long .
-.PP
-.IR "Conforming to" :
-POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR fork (2),
-.BR getpid (2),
-.BR getppid (2),
-.BR getsid (2),
-.BR gettid (2),
-.BR getpgid (2),
-.BR kill (2),
-.BR pidfd_open (2),
-.BR sched_setscheduler (2),
-.BR waitpid (2),
-.BR sigqueue (3),
-.BR credentials (7),
-.RE
 .\"------------------------------------- ptrdiff_t --------------------/
 .TP
 .I ptrdiff_t
-- 
2.33.1

