Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D639F36754E
	for <lists+linux-man@lfdr.de>; Thu, 22 Apr 2021 00:45:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234495AbhDUWqC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 21 Apr 2021 18:46:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234901AbhDUWqA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 21 Apr 2021 18:46:00 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62E8DC06138A
        for <linux-man@vger.kernel.org>; Wed, 21 Apr 2021 15:45:25 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id x7so42834822wrw.10
        for <linux-man@vger.kernel.org>; Wed, 21 Apr 2021 15:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9d5GqwjLQo5jQC04I9c9/HIQWxP83Hd86f+HgH2aVI8=;
        b=AuKgkBpi+3HR+q3rwtIayO46QvhcOqdZp5bbMZoNz4IS+vtEqdv+8+AqxDnFbRVAyk
         vfWy46rmTSN5/4WRJwBVeMHlVc0WvV01WlyQOetD/7fxjjcPgyO32BLIczo2T6/HiaAl
         0ce7AucMwQS9RJaQp3AKT726BzrhTRk0As4MPbtjsxa3KxLomU5DEa0SDZSWpNbNcqOi
         U086q2OwJApPc5eZh5yUE3pKfxm8TOfdMNu9tfWY30k1S7wILhiHKnoSejH0+Bf1p6qw
         muD6a8aSjPOliX1hCCBzaQdKvd99lCpYR3vX0Wc0O6C/faJc+oYcL2r/xTxxFtS1IinJ
         PyWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9d5GqwjLQo5jQC04I9c9/HIQWxP83Hd86f+HgH2aVI8=;
        b=c4wKBuV7l2RgZL18EurQWXgEnEOdwZjvPV4bgQOCo3hIl9qjGd3d4aSQrmmJjUjRk1
         4nTHUDn3B9BOGVkUyxqkYO6FLxAM6CjLDtfgw7ljq3Hpo/ResB27L+i+S1Nb/2u6dCzv
         uJQO+t33KcurjnkSyfBqFZWvskUq4PEk4Rx4c5hyL8WFk16Nn3nbntMxrE3qZZnecmmY
         sfwCqRHrBHoMfSvwSrzM3pxbkws7Y1hmClcTmy43xEcOV358QBmvByo/FVz8Wmg/0H+U
         Ht1h6o+/123cchOV+ieZjYtc5j/2DGXcaiC5+ZlWtHliUlpzLyKq444DAYYz1mJb4CEi
         Fa6w==
X-Gm-Message-State: AOAM533ywnaTCzhyGxrKRN7nxcZNP+Tz7g+k8f5+xL651P3erWzI/JAI
        KMSpwxk+1t+W0eJPW20QoJeFbIrJr6o=
X-Google-Smtp-Source: ABdhPJwVMmLRdIsLuP6VjvfYdt6GrX+ojJme4yjsDmfdcjvufhmZRbVgahn/3RQm6VCr4ym3ofeTZQ==
X-Received: by 2002:adf:e2cc:: with SMTP id d12mr423899wrj.90.1619045124136;
        Wed, 21 Apr 2021 15:45:24 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id l13sm781800wrt.14.2021.04.21.15.45.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 15:45:23 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 2/3] Various pages: Remove unused <sys/ipc.h> (and <sys/types.h>)
Date:   Thu, 22 Apr 2021 00:44:18 +0200
Message-Id: <20210421224418.143065-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210421224418.143065-1-alx.manpages@gmail.com>
References: <20210421224418.143065-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In b0b19983d9a2001ce94b908a99f4c05a50fd47ee we removed
<sys/types.h>.  For the same reasons there, remove now <sys/ipc.h>
from many pages.

If someone wonders why <sys/ipc.h> was needed, the reason was to
get all the definitions of IPC_* constants.  However, that header
is now included by <sys/msg.h>, so it's not needed anymore to
explicitly include it.  Quoting POSIX: "In addition, the
<sys/msg.h> header shall include the <sys/ipc.h> header."

There were some remaining cases where I forgot to remove
<sys/types.h>; remove them now too.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/msgctl.2 | 12 ------------
 man2/msgget.2 | 12 ------------
 man2/msgop.2  | 12 ------------
 man2/semctl.2 | 12 ------------
 man2/semget.2 | 12 ------------
 man2/semop.2  | 12 ------------
 man2/shmctl.2 | 12 ------------
 man2/shmget.2 | 14 --------------
 man3/ftok.3   |  1 -
 9 files changed, 99 deletions(-)

diff --git a/man2/msgctl.2 b/man2/msgctl.2
index d42a47d2b..72598dd4c 100644
--- a/man2/msgctl.2
+++ b/man2/msgctl.2
@@ -40,7 +40,6 @@
 msgctl \- System V message control operations
 .SH SYNOPSIS
 .nf
-.B #include <sys/ipc.h>
 .B #include <sys/msg.h>
 .PP
 .BI "int msgctl(int " msqid ", int " cmd ", struct msqid_ds *" buf );
@@ -405,17 +404,6 @@ capability).
 POSIX.1-2001, POSIX.1-2008, SVr4.
 .\" SVID does not document the EIDRM error condition.
 .SH NOTES
-The inclusion of
-.I <sys/ipc.h>
-isn't required on Linux or by any version of POSIX.
-However,
-some old implementations required the inclusion of this header file,
-and the SVID also documented its inclusion.
-Applications intended to be portable to such old systems may need
-to include this header file.
-.\" Like Linux, the FreeBSD man pages still document
-.\" the inclusion of this header file.
-.PP
 The
 .BR IPC_INFO ,
 .BR MSG_STAT ,
diff --git a/man2/msgget.2 b/man2/msgget.2
index edc91467b..fd9cbe0a1 100644
--- a/man2/msgget.2
+++ b/man2/msgget.2
@@ -37,7 +37,6 @@
 msgget \- get a System V message queue identifier
 .SH SYNOPSIS
 .nf
-.B #include <sys/ipc.h>
 .B #include <sys/msg.h>
 .PP
 .BI "int msgget(key_t " key ", int " msgflg );
@@ -188,17 +187,6 @@ would be exceeded.
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, SVr4.
 .SH NOTES
-The inclusion of
-.I <sys/ipc.h>
-isn't required on Linux or by any version of POSIX.
-However,
-some old implementations required the inclusion of this header file,
-and the SVID also documented its inclusion.
-Applications intended to be portable to such old systems may need
-to include this header file.
-.\" Like Linux, the FreeBSD man pages still document
-.\" the inclusion of this header file.
-.PP
 .B IPC_PRIVATE
 isn't a flag field but a
 .I key_t
diff --git a/man2/msgop.2 b/man2/msgop.2
index e56176f08..d46e5b1dd 100644
--- a/man2/msgop.2
+++ b/man2/msgop.2
@@ -42,7 +42,6 @@
 msgrcv, msgsnd \- System V message queue operations
 .SH SYNOPSIS
 .nf
-.B #include <sys/ipc.h>
 .B #include <sys/msg.h>
 .PP
 .BI "int msgsnd(int " msqid ", const void *" msgp ", size_t " msgsz \
@@ -480,17 +479,6 @@ their definitions can be obtained by defining the
 .\" MSG_COPY since glibc 2.18
 feature test macro.
 .SH NOTES
-The inclusion of
-.I <sys/ipc.h>
-isn't required on Linux or by any version of POSIX.
-However,
-some old implementations required the inclusion of this header file,
-and the SVID also documented its inclusion.
-Applications intended to be portable to such old systems may need
-to include this header file.
-.\" Like Linux, the FreeBSD man pages still document
-.\" the inclusion of this header file.
-.PP
 The
 .I msgp
 argument is declared as \fIstruct msgbuf\ *\fP in
diff --git a/man2/semctl.2 b/man2/semctl.2
index 504cdf9da..ac8bd906d 100644
--- a/man2/semctl.2
+++ b/man2/semctl.2
@@ -44,7 +44,6 @@
 semctl \- System V semaphore control operations
 .SH SYNOPSIS
 .nf
-.B #include <sys/ipc.h>
 .B #include <sys/sem.h>
 .PP
 .BI "int semctl(int " semid ", int " semnum ", int " cmd ", ...);"
@@ -536,17 +535,6 @@ It was also so defined on Linux 2.2 and earlier,
 but, since Linux 2.4, the field has the type
 .IR "unsigned\ long" .
 .SH NOTES
-The inclusion of
-.I <sys/ipc.h>
-isn't required on Linux or by any version of POSIX.
-However,
-some old implementations required the inclusion of this header file,
-and the SVID also documented its inclusion.
-Applications intended to be portable to such old systems may need
-to include this header file.
-.\" Like Linux, the FreeBSD man pages still document
-.\" the inclusion of these header files.
-.PP
 The
 .BR IPC_INFO ,
 .BR SEM_STAT ,
diff --git a/man2/semget.2 b/man2/semget.2
index b0914f900..2fce9b1ce 100644
--- a/man2/semget.2
+++ b/man2/semget.2
@@ -39,7 +39,6 @@
 semget \- get a System V semaphore set identifier
 .SH SYNOPSIS
 .nf
-.B #include <sys/ipc.h>
 .B #include <sys/sem.h>
 .fi
 .PP
@@ -219,17 +218,6 @@ SVr4, POSIX.1-2001.
 .\" SVr4 documents additional error conditions EFBIG, E2BIG, EAGAIN,
 .\" ERANGE, EFAULT.
 .SH NOTES
-The inclusion of
-.I <sys/ipc.h>
-isn't required on Linux or by any version of POSIX.
-However,
-some old implementations required the inclusion of this header file,
-and the SVID also documented its inclusion.
-Applications intended to be portable to such old systems may need
-to include this header file.
-.\" Like Linux, the FreeBSD man pages still document
-.\" the inclusion of this header file.
-.PP
 .B IPC_PRIVATE
 isn't a flag field but a
 .I key_t
diff --git a/man2/semop.2 b/man2/semop.2
index 9479f7e4c..f0cd66302 100644
--- a/man2/semop.2
+++ b/man2/semop.2
@@ -37,7 +37,6 @@
 semop, semtimedop \- System V semaphore operations
 .SH SYNOPSIS
 .nf
-.B #include <sys/ipc.h>
 .B #include <sys/sem.h>
 .PP
 .BI "int semop(int " semid ", struct sembuf *" sops ", size_t " nsops );
@@ -383,17 +382,6 @@ first appeared in version 2.3.3.
 POSIX.1-2001, POSIX.1-2008, SVr4.
 .\" SVr4 documents additional error conditions EINVAL, EFBIG, ENOSPC.
 .SH NOTES
-The inclusion of
-.I <sys/ipc.h>
-isn't required on Linux or by any version of POSIX.
-However,
-some old implementations required the inclusion of this header file,
-and the SVID also documented its inclusion.
-Applications intended to be portable to such old systems may need
-to include this header file.
-.\" Like Linux, the FreeBSD man pages still document
-.\" the inclusion of this header file.
-.PP
 The
 .I sem_undo
 structures of a process aren't inherited by the child produced by
diff --git a/man2/shmctl.2 b/man2/shmctl.2
index 31c86af86..5aa74e676 100644
--- a/man2/shmctl.2
+++ b/man2/shmctl.2
@@ -49,7 +49,6 @@ shmctl \- System V shared memory control
 .SH SYNOPSIS
 .nf
 .ad l
-.B #include <sys/ipc.h>
 .B #include <sys/shm.h>
 .PP
 .BI "int shmctl(int " shmid ", int " cmd ", struct shmid_ds *" buf );
@@ -466,17 +465,6 @@ POSIX.1-2001, POSIX.1-2008, SVr4.
 .\" ENOENT, ENOSPC, ENOMEM, EEXIST.  Neither SVr4 nor SVID documents
 .\" an EIDRM error condition.
 .SH NOTES
-The inclusion of
-.I <sys/ipc.h>
-isn't required on Linux or by any version of POSIX.
-However,
-some old implementations required the inclusion of this header file,
-and the SVID also documented its inclusion.
-Applications intended to be portable to such old systems may need
-to include this header file.
-.\" Like Linux, the FreeBSD man pages still document
-.\" the inclusion of this header file.
-.PP
 The
 .BR IPC_INFO ,
 .BR SHM_STAT ,
diff --git a/man2/shmget.2 b/man2/shmget.2
index 1d9e6825c..757b7b7f1 100644
--- a/man2/shmget.2
+++ b/man2/shmget.2
@@ -41,7 +41,6 @@ shmget \- allocates a System V shared memory segment
 .SH SYNOPSIS
 .nf
 .ad l
-.B #include <sys/ipc.h>
 .B #include <sys/shm.h>
 .PP
 .BI "int shmget(key_t " key ", size_t " size ", int " shmflg );
@@ -284,19 +283,6 @@ and
 .B SHM_NORESERVE
 are Linux extensions.
 .SH NOTES
-The inclusion of
-.I <sys/types.h>
-and
-.I <sys/ipc.h>
-isn't required on Linux or by any version of POSIX.
-However,
-some old implementations required the inclusion of these header files,
-and the SVID also documented their inclusion.
-Applications intended to be portable to such old systems may need
-to include these header files.
-.\" Like Linux, the FreeBSD man pages still document
-.\" the inclusion of these header files.
-.PP
 .B IPC_PRIVATE
 isn't a flag field but a
 .I key_t
diff --git a/man3/ftok.3 b/man3/ftok.3
index 5d8907b56..d46481356 100644
--- a/man3/ftok.3
+++ b/man3/ftok.3
@@ -31,7 +31,6 @@
 ftok \- convert a pathname and a project identifier to a System V IPC key
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/ipc.h>
 .fi
 .PP
-- 
2.31.0

