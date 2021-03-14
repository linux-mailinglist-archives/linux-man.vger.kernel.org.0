Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06DF933A5FA
	for <lists+linux-man@lfdr.de>; Sun, 14 Mar 2021 17:05:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbhCNQEy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Mar 2021 12:04:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234049AbhCNQET (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Mar 2021 12:04:19 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3B30C061574
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 09:04:17 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id b9so4471534wrt.8
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 09:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FN22DwjirnmeMGZ6WDOnP6CQTyGXjgmVkAaOZhR4keE=;
        b=rvyhMIlbD9Vi7CFXfD7OQPasG5aYYm+SyP62PhwaC2KW9NtiWtZJDrVyIPYDNz5ld+
         lsf3jsXmuaE6pYoci7mFOAXMwI0pBjacRMzLv26FOaZUaIphclpptpq5UoOxt4ieqCgk
         jK3DXqoadSSCSdwsN2VLvLTeOJE6a58Ld45daMiBNdPutFwLoLtkNtbGRGSrD5zFBgSh
         UCQcDELD7qCYpwZGVMja7RhoxoO9By5p/OhkyalLg86SrdgnM6xnAavlMpqFLPV562Fp
         j0F+KPLmc1gQhPcE9jPnNoblupaPDJRwPtDeozWfWxoyHZl2o+rYHvH7O/ISdbQs5Zw3
         hgEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FN22DwjirnmeMGZ6WDOnP6CQTyGXjgmVkAaOZhR4keE=;
        b=JK/3+v46LlowBHhxjXBnjaf+rwROTQL1pjWA8CP2ptSptUDFI0q+/J33uBrQLatQCE
         ETFht6FI2aci5pVEkGLtVk1eEfOxFehuwjcoTcysMy9FyvuNDfA3EoX7VJhDMuAf3At1
         Pm9cxwnfcN60kC0aX7SY0tIEzi8CjRi8v9RjU/4sgrk14ewwaZGNDYq+CanPk97WqYW3
         XzG9Gb0wHh3JdcWxXtkIDlxaZcROs8RUMsCJDxetltLoLQHNJroTHOVVPkw5qxBFwM9b
         MF4GObqnfshk4D+Ubcob8xpY6C8T88STbKPp63kqBDpG0NSd3lpexa4CCD5LdiJbdeUc
         +lpg==
X-Gm-Message-State: AOAM533tdHhLm86rQ6Vawuqs5reAD2X1DOKak5K6YNfJHz0yCiDmdXar
        hEjluP+r/wXS2LeNRjwHRk0=
X-Google-Smtp-Source: ABdhPJxO8wcYOQQxmBdMUco//wogAhrLfCi9e6cGLnPIG+LX3880q5Sx+JfFXTi8eruMBWOMcfRRPg==
X-Received: by 2002:a5d:4e85:: with SMTP id e5mr24055678wru.218.1615737856484;
        Sun, 14 Mar 2021 09:04:16 -0700 (PDT)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id s23sm9304966wmc.29.2021.03.14.09.04.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Mar 2021 09:04:15 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        libc-alpha@sourceware.org
Subject: [PATCH] Various pages: Remove unused <sys/types.h>
Date:   Sun, 14 Mar 2021 17:01:35 +0100
Message-Id: <20210314160134.127878-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The manual pages are already inconsistent in which headers need
to be included.  Right now, not all of the types used by a
function have their required header included in the SYNOPSIS.

If we were to add the headers required by all of the types used by
functions, the SYNOPSIS would grow too much.  Not only it would
grow too much, but the information there would be less precise.

Having system_data_types(7) document each type with all the
information about required includes is much more precise, and the
info is centralized so that it's much easier to maintain.

So let's document only the include required for the function
prototype, and also the ones required for the macros needed to
call the function.

<sys/types.h> only defines types, not functions or constants, so
it doesn't belong to man[23] (function) pages at all.

I ignore if some old systems had headers that required you to
include <sys/types.h> *before* them (incomplete headers), but if
so, those implementations would be broken, and those headers
should probably provide some kind of warning.  I hope this is not
the case.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/accept.2            |  7 -------
 man2/bind.2              |  7 -------
 man2/connect.2           |  7 -------
 man2/fork.2              |  1 -
 man2/get_robust_list.2   |  1 -
 man2/getgid.2            |  1 -
 man2/getgroups.2         |  1 -
 man2/getpid.2            |  1 -
 man2/getsid.2            |  1 -
 man2/getsockopt.2        |  7 -------
 man2/gettid.2            |  1 -
 man2/getuid.2            |  1 -
 man2/getxattr.2          |  1 -
 man2/keyctl.2            |  1 -
 man2/kill.2              |  1 -
 man2/listen.2            |  7 -------
 man2/listxattr.2         |  1 -
 man2/llseek.2            |  1 -
 man2/lseek.2             |  1 -
 man2/mkdir.2             |  1 -
 man2/mknod.2             |  1 -
 man2/modify_ldt.2        |  2 --
 man2/mq_getsetattr.2     |  1 -
 man2/msgctl.2            | 11 ++++-------
 man2/msgget.2            | 11 ++++-------
 man2/msgop.2             | 11 ++++-------
 man2/open.2              |  1 -
 man2/open_by_handle_at.2 |  1 -
 man2/openat2.2           |  1 -
 man2/pidfd_open.2        |  2 --
 man2/recv.2              |  1 -
 man2/removexattr.2       |  1 -
 man2/request_key.2       |  1 -
 man2/semctl.2            |  9 +++------
 man2/semget.2            | 11 ++++-------
 man2/semop.2             | 11 ++++-------
 man2/send.2              |  1 -
 man2/seteuid.2           |  1 -
 man2/setgid.2            |  1 -
 man2/setpgid.2           |  1 -
 man2/setreuid.2          |  1 -
 man2/setsid.2            |  1 -
 man2/setuid.2            |  1 -
 man2/setxattr.2          |  1 -
 man2/shmctl.2            | 10 ++++------
 man2/socket.2            |  7 -------
 man2/socketpair.2        |  7 -------
 man2/statx.2             |  1 -
 man2/vfork.2             |  1 -
 49 files changed, 27 insertions(+), 133 deletions(-)

diff --git a/man2/accept.2 b/man2/accept.2
index 0923ea97a..a5d642cc3 100644
--- a/man2/accept.2
+++ b/man2/accept.2
@@ -43,7 +43,6 @@
 accept, accept4 \- accept a connection on a socket
 .SH SYNOPSIS
 .nf
-.BR "#include <sys/types.h>" "          /* See NOTES */"
 .B #include <sys/socket.h>
 .PP
 .BI "int accept(int " sockfd ", struct sockaddr *restrict " addr ,
@@ -319,12 +318,6 @@ of file status flags and always explicitly set all required flags on
 the socket returned from
 .BR accept ().
 .SH NOTES
-POSIX.1-2001 does not require the inclusion of
-.IR <sys/types.h> ,
-and this header file is not required on Linux.
-However, some historical (BSD) implementations required this header
-file, and portable applications are probably wise to include it.
-.PP
 There may not always be a connection waiting after a
 .B SIGIO
 is delivered or
diff --git a/man2/bind.2 b/man2/bind.2
index 548391f1d..e4765dde0 100644
--- a/man2/bind.2
+++ b/man2/bind.2
@@ -71,7 +71,6 @@
 bind \- bind a name to a socket
 .SH SYNOPSIS
 .nf
-.BR "#include <sys/types.h>" "          /* See NOTES */"
 .B #include <sys/socket.h>
 .PP
 .BI "int bind(int " sockfd ", const struct sockaddr *" addr ,
@@ -243,12 +242,6 @@ first appeared in 4.2BSD).
 .\" .B EISDIR
 .\" UNIX-domain error conditions.
 .SH NOTES
-POSIX.1 does not require the inclusion of
-.IR <sys/types.h> ,
-and this header file is not required on Linux.
-However, some historical (BSD) implementations required this header
-file, and portable applications are probably wise to include it.
-.PP
 For background on the
 .I socklen_t
 type, see
diff --git a/man2/connect.2 b/man2/connect.2
index 9572676ef..013a46994 100644
--- a/man2/connect.2
+++ b/man2/connect.2
@@ -69,7 +69,6 @@
 connect \- initiate a connection on a socket
 .SH SYNOPSIS
 .nf
-.BR "#include <sys/types.h>" "          /* See NOTES */"
 .B #include <sys/socket.h>
 .PP
 .BI "int connect(int " sockfd ", const struct sockaddr *" addr ,
@@ -276,12 +275,6 @@ first appeared in 4.2BSD).
 .\" It also
 .\" documents many additional error conditions not described here.
 .SH NOTES
-POSIX.1 does not require the inclusion of
-.IR <sys/types.h> ,
-and this header file is not required on Linux.
-However, some historical (BSD) implementations required this header
-file, and portable applications are probably wise to include it.
-.PP
 For background on the
 .I socklen_t
 type, see
diff --git a/man2/fork.2 b/man2/fork.2
index 894a628cc..344b9f6eb 100644
--- a/man2/fork.2
+++ b/man2/fork.2
@@ -41,7 +41,6 @@
 fork \- create a child process
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <unistd.h>
 .PP
 .B pid_t fork(void);
diff --git a/man2/get_robust_list.2 b/man2/get_robust_list.2
index b1ae42dbd..ac73bfab0 100644
--- a/man2/get_robust_list.2
+++ b/man2/get_robust_list.2
@@ -33,7 +33,6 @@ get_robust_list, set_robust_list \- get/set list of robust futexes
 .SH SYNOPSIS
 .nf
 .B #include <linux/futex.h>
-.B #include <sys/types.h>
 .B #include <syscall.h>
 .PP
 .BI "long get_robust_list(int " pid ", struct robust_list_head **" head_ptr ,
diff --git a/man2/getgid.2 b/man2/getgid.2
index e0c802e36..4c2ec6163 100644
--- a/man2/getgid.2
+++ b/man2/getgid.2
@@ -28,7 +28,6 @@ getgid, getegid \- get group identity
 .SH SYNOPSIS
 .nf
 .B #include <unistd.h>
-.B #include <sys/types.h>
 .PP
 .B gid_t getgid(void);
 .B gid_t getegid(void);
diff --git a/man2/getgroups.2 b/man2/getgroups.2
index ffe01fbb1..a90894b8a 100644
--- a/man2/getgroups.2
+++ b/man2/getgroups.2
@@ -34,7 +34,6 @@
 getgroups, setgroups \- get/set list of supplementary group IDs
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <unistd.h>
 .PP
 .BI "int getgroups(int " size ", gid_t " list []);
diff --git a/man2/getpid.2 b/man2/getpid.2
index f2bf232ca..b2574c4c3 100644
--- a/man2/getpid.2
+++ b/man2/getpid.2
@@ -27,7 +27,6 @@
 getpid, getppid \- get process identification
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <unistd.h>
 .PP
 .B pid_t getpid(void);
diff --git a/man2/getsid.2 b/man2/getsid.2
index 11d096a1a..805ffe0bd 100644
--- a/man2/getsid.2
+++ b/man2/getsid.2
@@ -29,7 +29,6 @@
 getsid \- get session ID
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <unistd.h>
 .PP
 .BI "pid_t getsid(pid_t" " pid" );
diff --git a/man2/getsockopt.2 b/man2/getsockopt.2
index 9b2c6cc3d..8011a4b5a 100644
--- a/man2/getsockopt.2
+++ b/man2/getsockopt.2
@@ -46,7 +46,6 @@
 getsockopt, setsockopt \- get and set options on sockets
 .SH SYNOPSIS
 .nf
-.BR "#include <sys/types.h>" "          /* See NOTES */"
 .B #include <sys/socket.h>
 .PP
 .BI "int getsockopt(int " sockfd ", int " level ", int " optname ,
@@ -179,12 +178,6 @@ SVr4, 4.4BSD (these system calls first appeared in 4.2BSD).
 .\" .BR SO_SNDLOWAT ", " SO_RCVLOWAT ", " SO_SNDTIMEO ", " SO_RCVTIMEO
 .\" options
 .SH NOTES
-POSIX.1 does not require the inclusion of
-.IR <sys/types.h> ,
-and this header file is not required on Linux.
-However, some historical (BSD) implementations required this header
-file, and portable applications are probably wise to include it.
-.PP
 For background on the
 .I socklen_t
 type, see
diff --git a/man2/gettid.2 b/man2/gettid.2
index 60780e2b7..13313caa4 100644
--- a/man2/gettid.2
+++ b/man2/gettid.2
@@ -30,7 +30,6 @@ gettid \- get thread identification
 .nf
 .B #define _GNU_SOURCE
 .B #include <unistd.h>
-.B #include <sys/types.h>
 .PP
 .B pid_t gettid(void);
 .fi
diff --git a/man2/getuid.2 b/man2/getuid.2
index 6c2768643..e374d21ab 100644
--- a/man2/getuid.2
+++ b/man2/getuid.2
@@ -29,7 +29,6 @@ getuid, geteuid \- get user identity
 .SH SYNOPSIS
 .nf
 .B #include <unistd.h>
-.B #include <sys/types.h>
 .PP
 .B uid_t getuid(void);
 .B uid_t geteuid(void);
diff --git a/man2/getxattr.2 b/man2/getxattr.2
index d7a92f901..d63e45bd2 100644
--- a/man2/getxattr.2
+++ b/man2/getxattr.2
@@ -28,7 +28,6 @@ getxattr, lgetxattr, fgetxattr \- retrieve an extended attribute value
 .SH SYNOPSIS
 .fam C
 .nf
-.B #include <sys/types.h>
 .B #include <sys/xattr.h>
 .PP
 .BI "ssize_t getxattr(const char *" path ", const char *" name ,
diff --git a/man2/keyctl.2 b/man2/keyctl.2
index 99cb65e19..a6daafe7a 100644
--- a/man2/keyctl.2
+++ b/man2/keyctl.2
@@ -30,7 +30,6 @@
 keyctl \- manipulate the kernel's key management facility
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <keyutils.h>
 .PP
 .BI "long keyctl(int " operation ", ...);"
diff --git a/man2/kill.2 b/man2/kill.2
index b6fa289ab..9b27726d7 100644
--- a/man2/kill.2
+++ b/man2/kill.2
@@ -46,7 +46,6 @@
 kill \- send signal to a process
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <signal.h>
 .PP
 .BI "int kill(pid_t " pid ", int " sig );
diff --git a/man2/listen.2 b/man2/listen.2
index 7c944ff4c..5e12bc756 100644
--- a/man2/listen.2
+++ b/man2/listen.2
@@ -47,7 +47,6 @@
 listen \- listen for connections on a socket
 .SH SYNOPSIS
 .nf
-.BR "#include <sys/types.h>" "          /* See NOTES */"
 .B #include <sys/socket.h>
 .PP
 .BI "int listen(int " sockfd ", int " backlog );
@@ -140,12 +139,6 @@ Connections are accepted with
 .BR accept (2).
 .RE
 .PP
-POSIX.1 does not require the inclusion of
-.IR <sys/types.h> ,
-and this header file is not required on Linux.
-However, some historical (BSD) implementations required this header
-file, and portable applications are probably wise to include it.
-.PP
 The behavior of the
 .I backlog
 argument on TCP sockets changed with Linux 2.2.
diff --git a/man2/listxattr.2 b/man2/listxattr.2
index f073c5409..03595a9e6 100644
--- a/man2/listxattr.2
+++ b/man2/listxattr.2
@@ -29,7 +29,6 @@ listxattr, llistxattr, flistxattr \- list extended attribute names
 .SH SYNOPSIS
 .fam C
 .nf
-.B #include <sys/types.h>
 .B #include <sys/xattr.h>
 .PP
 .BI "ssize_t listxattr(const char *" path ", char *" list \
diff --git a/man2/llseek.2 b/man2/llseek.2
index a46ce370e..81bb4e19f 100644
--- a/man2/llseek.2
+++ b/man2/llseek.2
@@ -31,7 +31,6 @@
 _llseek \- reposition read/write file offset
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <unistd.h>
 .PP
 .BI "int _llseek(unsigned int " fd ", unsigned long " offset_high ,
diff --git a/man2/lseek.2 b/man2/lseek.2
index ad5526b66..042479833 100644
--- a/man2/lseek.2
+++ b/man2/lseek.2
@@ -48,7 +48,6 @@
 lseek \- reposition read/write file offset
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <unistd.h>
 .PP
 .BI "off_t lseek(int " fd ", off_t " offset ", int " whence );
diff --git a/man2/mkdir.2 b/man2/mkdir.2
index 6934e331a..640a4783d 100644
--- a/man2/mkdir.2
+++ b/man2/mkdir.2
@@ -14,7 +14,6 @@ mkdir, mkdirat \- create a directory
 .SH SYNOPSIS
 .nf
 .B #include <sys/stat.h>
-.B #include <sys/types.h>
 .\" .B #include <unistd.h>
 .PP
 .BI "int mkdir(const char *" pathname ", mode_t " mode );
diff --git a/man2/mknod.2 b/man2/mknod.2
index fad459d8c..9ecf6611b 100644
--- a/man2/mknod.2
+++ b/man2/mknod.2
@@ -17,7 +17,6 @@
 mknod, mknodat \- create a special or ordinary file
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/stat.h>
 .B #include <fcntl.h>
 .B #include <unistd.h>
diff --git a/man2/modify_ldt.2 b/man2/modify_ldt.2
index 7dc12be8e..c40dae62b 100644
--- a/man2/modify_ldt.2
+++ b/man2/modify_ldt.2
@@ -27,8 +27,6 @@
 modify_ldt \- get or set a per-process LDT entry
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
-.PP
 .BI "int modify_ldt(int " func ", void *" ptr ", unsigned long " bytecount );
 .fi
 .PP
diff --git a/man2/mq_getsetattr.2 b/man2/mq_getsetattr.2
index 409dfe11c..5036428d6 100644
--- a/man2/mq_getsetattr.2
+++ b/man2/mq_getsetattr.2
@@ -27,7 +27,6 @@
 mq_getsetattr \- get/set message queue attributes
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <mqueue.h>
 .PP
 .BI "int mq_getsetattr(mqd_t " mqdes ", const struct mq_attr *" newattr ,
diff --git a/man2/msgctl.2 b/man2/msgctl.2
index 1e27871ad..58e8cb29e 100644
--- a/man2/msgctl.2
+++ b/man2/msgctl.2
@@ -40,7 +40,6 @@
 msgctl \- System V message control operations
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/ipc.h>
 .B #include <sys/msg.h>
 .PP
@@ -407,17 +406,15 @@ POSIX.1-2001, POSIX.1-2008, SVr4.
 .\" SVID does not document the EIDRM error condition.
 .SH NOTES
 The inclusion of
-.I <sys/types.h>
-and
 .I <sys/ipc.h>
 isn't required on Linux or by any version of POSIX.
 However,
-some old implementations required the inclusion of these header files,
-and the SVID also documented their inclusion.
+some old implementations required the inclusion of this header file,
+and the SVID also documented its inclusion.
 Applications intended to be portable to such old systems may need
-to include these header files.
+to include this header file.
 .\" Like Linux, the FreeBSD man pages still document
-.\" the inclusion of these header files.
+.\" the inclusion of this header file.
 .PP
 The
 .BR IPC_INFO ,
diff --git a/man2/msgget.2 b/man2/msgget.2
index 7326c9044..8959797eb 100644
--- a/man2/msgget.2
+++ b/man2/msgget.2
@@ -37,7 +37,6 @@
 msgget \- get a System V message queue identifier
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/ipc.h>
 .B #include <sys/msg.h>
 .PP
@@ -190,17 +189,15 @@ would be exceeded.
 POSIX.1-2001, POSIX.1-2008, SVr4.
 .SH NOTES
 The inclusion of
-.I <sys/types.h>
-and
 .I <sys/ipc.h>
 isn't required on Linux or by any version of POSIX.
 However,
-some old implementations required the inclusion of these header files,
-and the SVID also documented their inclusion.
+some old implementations required the inclusion of this header file,
+and the SVID also documented its inclusion.
 Applications intended to be portable to such old systems may need
-to include these header files.
+to include this header file.
 .\" Like Linux, the FreeBSD man pages still document
-.\" the inclusion of these header files.
+.\" the inclusion of this header file.
 .PP
 .B IPC_PRIVATE
 isn't a flag field but a
diff --git a/man2/msgop.2 b/man2/msgop.2
index ef66eb10d..92cc94549 100644
--- a/man2/msgop.2
+++ b/man2/msgop.2
@@ -42,7 +42,6 @@
 msgrcv, msgsnd \- System V message queue operations
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/ipc.h>
 .B #include <sys/msg.h>
 .PP
@@ -482,17 +481,15 @@ their definitions can be obtained by defining the
 feature test macro.
 .SH NOTES
 The inclusion of
-.I <sys/types.h>
-and
 .I <sys/ipc.h>
 isn't required on Linux or by any version of POSIX.
 However,
-some old implementations required the inclusion of these header files,
-and the SVID also documented their inclusion.
+some old implementations required the inclusion of this header file,
+and the SVID also documented its inclusion.
 Applications intended to be portable to such old systems may need
-to include these header files.
+to include this header file.
 .\" Like Linux, the FreeBSD man pages still document
-.\" the inclusion of these header files.
+.\" the inclusion of this header file.
 .PP
 The
 .I msgp
diff --git a/man2/open.2 b/man2/open.2
index 267e79656..3b853d8e2 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -53,7 +53,6 @@
 open, openat, creat \- open and possibly create a file
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/stat.h>
 .B #include <fcntl.h>
 .PP
diff --git a/man2/open_by_handle_at.2 b/man2/open_by_handle_at.2
index 09349066d..4ae0f0577 100644
--- a/man2/open_by_handle_at.2
+++ b/man2/open_by_handle_at.2
@@ -29,7 +29,6 @@ for a pathname and open file via a handle
 .SH SYNOPSIS
 .nf
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
-.B #include <sys/types.h>
 .B #include <sys/stat.h>
 .B #include <fcntl.h>
 .PP
diff --git a/man2/openat2.2 b/man2/openat2.2
index 739ac4747..ff0ff839f 100644
--- a/man2/openat2.2
+++ b/man2/openat2.2
@@ -26,7 +26,6 @@
 openat2 \- open and possibly create a file (extended)
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/stat.h>
 .B #include <fcntl.h>
 .B #include <linux/openat2.h>
diff --git a/man2/pidfd_open.2 b/man2/pidfd_open.2
index b25b74273..5601f8005 100644
--- a/man2/pidfd_open.2
+++ b/man2/pidfd_open.2
@@ -27,8 +27,6 @@
 pidfd_open \- obtain a file descriptor that refers to a process
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
-.PP
 .BI "int pidfd_open(pid_t " pid ", unsigned int " flags );
 .fi
 .PP
diff --git a/man2/recv.2 b/man2/recv.2
index 3a501f9ad..e6005e8d6 100644
--- a/man2/recv.2
+++ b/man2/recv.2
@@ -43,7 +43,6 @@
 recv, recvfrom, recvmsg \- receive a message from a socket
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/socket.h>
 .PP
 .BI "ssize_t recv(int " sockfd ", void *" buf ", size_t " len ", int " flags );
diff --git a/man2/removexattr.2 b/man2/removexattr.2
index 6ef3349e6..175494010 100644
--- a/man2/removexattr.2
+++ b/man2/removexattr.2
@@ -28,7 +28,6 @@ removexattr, lremovexattr, fremovexattr \- remove an extended attribute
 .SH SYNOPSIS
 .fam C
 .nf
-.B #include <sys/types.h>
 .B #include <sys/xattr.h>
 .PP
 .BI "int removexattr(const char\ *" path ", const char\ *" name );
diff --git a/man2/request_key.2 b/man2/request_key.2
index 89bde01c3..7efa6ee46 100644
--- a/man2/request_key.2
+++ b/man2/request_key.2
@@ -14,7 +14,6 @@
 request_key \- request a key from the kernel's key management facility
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <keyutils.h>
 .PP
 .BI "key_serial_t request_key(const char *" type ", const char *" description ,
diff --git a/man2/semctl.2 b/man2/semctl.2
index a99c6fb87..2b75341d7 100644
--- a/man2/semctl.2
+++ b/man2/semctl.2
@@ -44,7 +44,6 @@
 semctl \- System V semaphore control operations
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/ipc.h>
 .B #include <sys/sem.h>
 .PP
@@ -538,15 +537,13 @@ but, since Linux 2.4, the field has the type
 .IR "unsigned\ long" .
 .SH NOTES
 The inclusion of
-.I <sys/types.h>
-and
 .I <sys/ipc.h>
 isn't required on Linux or by any version of POSIX.
 However,
-some old implementations required the inclusion of these header files,
-and the SVID also documented their inclusion.
+some old implementations required the inclusion of this header file,
+and the SVID also documented its inclusion.
 Applications intended to be portable to such old systems may need
-to include these header files.
+to include this header file.
 .\" Like Linux, the FreeBSD man pages still document
 .\" the inclusion of these header files.
 .PP
diff --git a/man2/semget.2 b/man2/semget.2
index 445ac0249..b991f822f 100644
--- a/man2/semget.2
+++ b/man2/semget.2
@@ -39,7 +39,6 @@
 semget \- get a System V semaphore set identifier
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/ipc.h>
 .B #include <sys/sem.h>
 .fi
@@ -221,17 +220,15 @@ SVr4, POSIX.1-2001.
 .\" ERANGE, EFAULT.
 .SH NOTES
 The inclusion of
-.I <sys/types.h>
-and
 .I <sys/ipc.h>
 isn't required on Linux or by any version of POSIX.
 However,
-some old implementations required the inclusion of these header files,
-and the SVID also documented their inclusion.
+some old implementations required the inclusion of this header file,
+and the SVID also documented its inclusion.
 Applications intended to be portable to such old systems may need
-to include these header files.
+to include this header file.
 .\" Like Linux, the FreeBSD man pages still document
-.\" the inclusion of these header files.
+.\" the inclusion of this header file.
 .PP
 .B IPC_PRIVATE
 isn't a flag field but a
diff --git a/man2/semop.2 b/man2/semop.2
index ce970b577..a0595b68a 100644
--- a/man2/semop.2
+++ b/man2/semop.2
@@ -37,7 +37,6 @@
 semop, semtimedop \- System V semaphore operations
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/ipc.h>
 .B #include <sys/sem.h>
 .PP
@@ -385,17 +384,15 @@ POSIX.1-2001, POSIX.1-2008, SVr4.
 .\" SVr4 documents additional error conditions EINVAL, EFBIG, ENOSPC.
 .SH NOTES
 The inclusion of
-.I <sys/types.h>
-and
 .I <sys/ipc.h>
 isn't required on Linux or by any version of POSIX.
 However,
-some old implementations required the inclusion of these header files,
-and the SVID also documented their inclusion.
+some old implementations required the inclusion of this header file,
+and the SVID also documented its inclusion.
 Applications intended to be portable to such old systems may need
-to include these header files.
+to include this header file.
 .\" Like Linux, the FreeBSD man pages still document
-.\" the inclusion of these header files.
+.\" the inclusion of this header file.
 .PP
 The
 .I sem_undo
diff --git a/man2/send.2 b/man2/send.2
index 42fa5bf54..a6199922b 100644
--- a/man2/send.2
+++ b/man2/send.2
@@ -42,7 +42,6 @@
 send, sendto, sendmsg \- send a message on a socket
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/socket.h>
 .PP
 .BI "ssize_t send(int " sockfd ", const void *" buf ", size_t " len \
diff --git a/man2/seteuid.2 b/man2/seteuid.2
index 0bc20b268..f662c0838 100644
--- a/man2/seteuid.2
+++ b/man2/seteuid.2
@@ -31,7 +31,6 @@
 seteuid, setegid \- set effective user or group ID
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <unistd.h>
 .PP
 .BI "int seteuid(uid_t " euid );
diff --git a/man2/setgid.2 b/man2/setgid.2
index 728b57398..15d2348d3 100644
--- a/man2/setgid.2
+++ b/man2/setgid.2
@@ -32,7 +32,6 @@
 setgid \- set group identity
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <unistd.h>
 .PP
 .BI "int setgid(gid_t " gid );
diff --git a/man2/setpgid.2 b/man2/setpgid.2
index be17bc053..093ecd327 100644
--- a/man2/setpgid.2
+++ b/man2/setpgid.2
@@ -50,7 +50,6 @@
 setpgid, getpgid, setpgrp, getpgrp \- set/get process group
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <unistd.h>
 .PP
 .BI "int setpgid(pid_t " pid ", pid_t " pgid );
diff --git a/man2/setreuid.2 b/man2/setreuid.2
index 90ca93a9a..d0f27a6ee 100644
--- a/man2/setreuid.2
+++ b/man2/setreuid.2
@@ -48,7 +48,6 @@
 setreuid, setregid \- set real and/or effective user or group ID
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <unistd.h>
 .PP
 .BI "int setreuid(uid_t " ruid ", uid_t " euid );
diff --git a/man2/setsid.2 b/man2/setsid.2
index 38d5fb1fb..236a915ff 100644
--- a/man2/setsid.2
+++ b/man2/setsid.2
@@ -34,7 +34,6 @@ setsid \- creates a session and sets the process group ID
 .SH SYNOPSIS
 .nf
 .ad l
-.B #include <sys/types.h>
 .B #include <unistd.h>
 .PP
 .B pid_t setsid(void);
diff --git a/man2/setuid.2 b/man2/setuid.2
index d8e461552..a7669258c 100644
--- a/man2/setuid.2
+++ b/man2/setuid.2
@@ -33,7 +33,6 @@
 setuid \- set user identity
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <unistd.h>
 .PP
 .BI "int setuid(uid_t " uid );
diff --git a/man2/setxattr.2 b/man2/setxattr.2
index ebcfa4ded..dbc50e36e 100644
--- a/man2/setxattr.2
+++ b/man2/setxattr.2
@@ -28,7 +28,6 @@ setxattr, lsetxattr, fsetxattr \- set an extended attribute value
 .SH SYNOPSIS
 .fam C
 .nf
-.B #include <sys/types.h>
 .B #include <sys/xattr.h>
 .PP
 .BI "int setxattr(const char\ *" path ", const char\ *" name ,
diff --git a/man2/shmctl.2 b/man2/shmctl.2
index 0d564293a..6acc0b787 100644
--- a/man2/shmctl.2
+++ b/man2/shmctl.2
@@ -467,17 +467,15 @@ POSIX.1-2001, POSIX.1-2008, SVr4.
 .\" an EIDRM error condition.
 .SH NOTES
 The inclusion of
-.I <sys/types.h>
-and
 .I <sys/ipc.h>
 isn't required on Linux or by any version of POSIX.
 However,
-some old implementations required the inclusion of these header files,
-and the SVID also documented their inclusion.
+some old implementations required the inclusion of this header file,
+and the SVID also documented its inclusion.
 Applications intended to be portable to such old systems may need
-to include these header files.
+to include this header file.
 .\" Like Linux, the FreeBSD man pages still document
-.\" the inclusion of these header files.
+.\" the inclusion of this header file.
 .PP
 The
 .BR IPC_INFO ,
diff --git a/man2/socket.2 b/man2/socket.2
index 2a22567c7..0c3523a2e 100644
--- a/man2/socket.2
+++ b/man2/socket.2
@@ -44,7 +44,6 @@
 socket \- create an endpoint for communication
 .SH SYNOPSIS
 .nf
-.BR "#include <sys/types.h>" "          /* See NOTES */"
 .B #include <sys/socket.h>
 .PP
 .BI "int socket(int " domain ", int " type ", int " protocol );
@@ -467,12 +466,6 @@ It is generally portable to/from
 non-BSD systems supporting clones of the BSD socket layer (including
 System\ V variants).
 .SH NOTES
-POSIX.1 does not require the inclusion of
-.IR <sys/types.h> ,
-and this header file is not required on Linux.
-However, some historical (BSD) implementations required this header
-file, and portable applications are probably wise to include it.
-.PP
 The manifest constants used under 4.x BSD for protocol families
 are
 .BR PF_UNIX ,
diff --git a/man2/socketpair.2 b/man2/socketpair.2
index 629cf0f48..1f5c3aec2 100644
--- a/man2/socketpair.2
+++ b/man2/socketpair.2
@@ -44,7 +44,6 @@
 socketpair \- create a pair of connected sockets
 .SH SYNOPSIS
 .nf
-.BR "#include <sys/types.h>" "          /* See NOTES */"
 .B #include <sys/socket.h>
 .PP
 .BI "int socketpair(int " domain ", int " type ", int " protocol \
@@ -130,12 +129,6 @@ flags in the
 .I type
 argument, as described in
 .BR socket (2).
-.PP
-POSIX.1 does not require the inclusion of
-.IR <sys/types.h> ,
-and this header file is not required on Linux.
-However, some historical (BSD) implementations required this header
-file, and portable applications are probably wise to include it.
 .SH SEE ALSO
 .BR pipe (2),
 .BR read (2),
diff --git a/man2/statx.2 b/man2/statx.2
index aeb3d377d..8b99fb3d2 100644
--- a/man2/statx.2
+++ b/man2/statx.2
@@ -32,7 +32,6 @@
 statx \- get file status (extended)
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/stat.h>
 .B #include <unistd.h>
 .BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
diff --git a/man2/vfork.2 b/man2/vfork.2
index dbb803b66..73a8fff62 100644
--- a/man2/vfork.2
+++ b/man2/vfork.2
@@ -31,7 +31,6 @@
 vfork \- create a child process and block parent
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <unistd.h>
 .PP
 .B pid_t vfork(void);
-- 
2.30.2

