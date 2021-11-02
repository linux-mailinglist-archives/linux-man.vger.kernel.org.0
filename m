Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85EEE443556
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235007AbhKBSSJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234868AbhKBSSH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:07 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB4CFC061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:31 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 133so75088wme.0
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nRJkqEhH8ILxQpmDN/E6DLP5gEFh+hHiT/zQGxVCMJ0=;
        b=n1wY3Ph9i4t2U+wo/jIH0Ux4PrsAfXk/sN4MUElMi0z+zTlQwofb+6F827yTLdhoPH
         +19Fbl5b+9VycBr7pNJI5EK6JfYpJFILjN64TVmZ1FJ5N8hH2fN3djsnmYtK6tIW3tGG
         FnLgC2iK6XNBjUAYMOPvLgUPESrHQ3k2fSrdz7eSOhajEpObqcM68zerGzksKXkWjWF+
         r7PY5VNYEo0RXYDVLwcAM8SFRwsAYVamlnrFHPnb9/2bBXZUKsZ3PdMPmFOiDgpqkxpC
         JftNxMfh3SNptXCv7XzIQ2n/eMJOduX2aP542+JqfVkS7XnuJCFEqKGO6zPcZ9trldHY
         +Xgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nRJkqEhH8ILxQpmDN/E6DLP5gEFh+hHiT/zQGxVCMJ0=;
        b=ms0zx/edwgQZVpT0c+IoUGmNLC/CaeLzTRxRaQjvewhUymS/Kf4oBZTkIygcTlBMdl
         37Ptq4J6Kc8wEMkNbAwH6gFs30XvD+1C1m2gPvHbpnf0lnHIRMU75jBqnSPdv3EPrQyq
         3v1iQYrmwx8oHW1OdpmZxldYCQ75tXx19ViCpyAQJtz6K9/0V38ZgAgljbrDnak7zQBa
         50yQsEU6OqWjG1nXylQhSWa9I/9KU5LQmsNAeprLUG4W7qqQVWAfwuzluQdUFNmGXvcn
         S+ttEnkQ9YQ6azxuoPq4WWEN+Z2LJ1uweW9Do6nOoBoMeI1hRx/JFpyiJ4fGa721oKzn
         SB1A==
X-Gm-Message-State: AOAM531dfkg26baesO9a75A2L8Fl4O8V201db8Yj6UxUSNWsxEHKsVWy
        VrUgVDj93x6U2aDJDaY4Zu2x5sBsc4w=
X-Google-Smtp-Source: ABdhPJxKX7cyvzk4qEl7VDTii7+8Kip+OA8Frcj8WZ+hO5iLg6FsdjKb4Ohd/S2ZoFvDJ7msSJ26GQ==
X-Received: by 2002:a05:600c:354c:: with SMTP id i12mr9170872wmq.59.1635876930482;
        Tue, 02 Nov 2021 11:15:30 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:30 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 26/37] id_t.3, uid_t.3, system_data_types.7: Move uid_t to id_t.3
Date:   Tue,  2 Nov 2021 19:14:43 +0100
Message-Id: <20211102181454.280919-27-alx.manpages@gmail.com>
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
 man3/id_t.3              | 22 +++++++++++++++++++++-
 man3/uid_t.3             |  2 +-
 man7/system_data_types.7 | 29 -----------------------------
 3 files changed, 22 insertions(+), 31 deletions(-)

diff --git a/man3/id_t.3 b/man3/id_t.3
index 0cdd163c9..ac42c385c 100644
--- a/man3/id_t.3
+++ b/man3/id_t.3
@@ -1,11 +1,12 @@
 .TH ID_T 3 2021-11-02 Linux "Linux Programmer's Manual"
 .SH NAME
-pid_t, gid_t, id_t \- process/user/group identifier
+pid_t, uid_t, gid_t, id_t \- process/user/group identifier
 .SH SYNOPSIS
 .nf
 .B #include <sys/types.h>
 .PP
 .BR typedef " /* ... */ " pid_t;
+.BR typedef " /* ... */ " uid_t;
 .BR typedef " /* ... */ " gid_t;
 .BR typedef " /* ... */ " id_t;
 .fi
@@ -19,6 +20,11 @@ where the width of
 is no greater than the width of the type
 .IR long .
 .PP
+.I uid_t
+is a type used to hold user IDs.
+According to POSIX,
+it shall be an integer type.
+.PP
 .I gid_t
 is a type used to hold group IDs.
 According to POSIX,
@@ -52,6 +58,16 @@ and
 .IR <utmpx.h> .
 .PP
 The following headers also provide
+.IR uid_t :
+.IR <pwd.h> ,
+.IR <signal.h> ,
+.IR <stropts.h> ,
+.IR <sys/ipc.h> ,
+.IR <sys/stat.h> ,
+or
+.IR <unistd.h> .
+.PP
+The following headers also provide
 .IR gid_t :
 .IR <grp.h> ,
 .IR <pwd.h> ,
@@ -69,15 +85,19 @@ The following header also provides
 .BR chown (2),
 .BR fork (2),
 .BR getegid (2),
+.BR geteuid (2),
 .BR getgid (2),
 .BR getgroups (2),
 .BR getpgid (2),
 .BR getpid (2),
 .BR getppid (2),
 .BR getpriority (2),
+.BR getpwnam (3),
 .BR getresgid (2),
+.BR getresuid (2),
 .BR getsid (2),
 .BR gettid (2),
+.BR getuid (2),
 .BR kill (2),
 .BR pidfd_open (2),
 .BR sched_setscheduler (2),
diff --git a/man3/uid_t.3 b/man3/uid_t.3
index db50c0f09..af7be45e3 100644
--- a/man3/uid_t.3
+++ b/man3/uid_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/id_t.3
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 41300d311..54bef15a4 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1312,35 +1312,6 @@ POSIX.1-2001 and later.
 .BR timeradd (3)
 .RE
 .\"------------------------------------- uid_t ----------------------/
-.TP
-.I uid_t
-.RS
-.IR Include :
-.IR <sys/types.h> .
-Alternatively,
-.IR <pwd.h> ,
-.IR <signal.h> ,
-.IR <stropts.h> ,
-.IR <sys/ipc.h> ,
-.IR <sys/stat.h> ,
-or
-.IR <unistd.h> .
-.PP
-A type used to hold user IDs.
-According to POSIX,
-this shall be an integer type.
-.PP
-.IR "Conforming to" :
-POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR chown (2),
-.BR getuid (2),
-.BR geteuid (2),
-.BR getresuid (2),
-.BR getpwnam (3),
-.BR credentials (7)
-.RE
 .\"------------------------------------- uintmax_t --------------------/
 .TP
 .I uintmax_t
-- 
2.33.1

