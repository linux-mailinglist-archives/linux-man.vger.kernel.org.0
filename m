Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E9101F7DDB
	for <lists+linux-man@lfdr.de>; Fri, 12 Jun 2020 21:57:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726269AbgFLT5q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Jun 2020 15:57:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726268AbgFLT5q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Jun 2020 15:57:46 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC030C03E96F
        for <linux-man@vger.kernel.org>; Fri, 12 Jun 2020 12:57:45 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 05CJvgD0014257
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Fri, 12 Jun 2020 19:57:42 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 05CJvgD0014257
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 05CJvg38001084;
        Fri, 12 Jun 2020 19:57:42 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 05CJvg5Q001083;
        Fri, 12 Jun 2020 19:57:42 GMT
Date:   Fri, 12 Jun 2020 19:57:42 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man3/*: srcfix: trim a trailing space
Message-ID: <20200612195742.GA1047@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Output is from: test-groff -b -e -mandoc -T utf8 -rF0 -t -w w -z

  [ "test-groff" is a developmental version of "groff" ]

  There is no change in the output of "nroff" and "groff".

####

troff: <fts.3>:50: warning: trailing space
####

troff: <getgrnam.3>:175: warning: trailing space
####

troff: <getpwnam.3>:181: warning: trailing space
####

troff: <rcmd.3>:52: warning: trailing space
troff: <rcmd.3>:57: warning: trailing space
troff: <rcmd.3>:60: warning: trailing space
troff: <rcmd.3>:63: warning: trailing space
troff: <rcmd.3>:69: warning: trailing space
troff: <rcmd.3>:73: warning: trailing space
####

troff: <rexec.3>:48: warning: trailing space
troff: <rexec.3>:51: warning: trailing space
####

troff: <sem_open.3>:36: warning: trailing space

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man3/fts.3      |  2 +-
 man3/getgrnam.3 |  2 +-
 man3/getpwnam.3 |  2 +-
 man3/rcmd.3     | 12 ++++++------
 man3/rexec.3    |  4 ++--
 man3/sem_open.3 |  2 +-
 6 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/man3/fts.3 b/man3/fts.3
index 407d7e004..bbd5cad5e 100644
--- a/man3/fts.3
+++ b/man3/fts.3
@@ -47,7 +47,7 @@ traverse a file hierarchy
 .B #include <sys/stat.h>
 .B #include <fts.h>
 .PP
-.BI "FTS *fts_open(char * const *" path_argv ", int " options ", "
+.BI "FTS *fts_open(char * const *" path_argv ", int " options ,
 .BI "              int (*" compar ")(const FTSENT **, const FTSENT **));"
 .PP
 .BI "FTSENT *fts_read(FTS *" ftsp );
diff --git a/man3/getgrnam.3 b/man3/getgrnam.3
index 50497059d..737d0a33a 100644
--- a/man3/getgrnam.3
+++ b/man3/getgrnam.3
@@ -172,7 +172,7 @@ In case of error, an error number is returned, and NULL is stored in
 .IR *result .
 .SH ERRORS
 .TP
-.BR 0 " or " ENOENT " or " ESRCH " or " EBADF " or " EPERM " or ... "
+.BR 0 " or " ENOENT " or " ESRCH " or " EBADF " or " EPERM " or ..."
 The given
 .I name
 or
diff --git a/man3/getpwnam.3 b/man3/getpwnam.3
index eaac2836c..6c31b6647 100644
--- a/man3/getpwnam.3
+++ b/man3/getpwnam.3
@@ -178,7 +178,7 @@ In case of error, an error number is returned, and NULL is stored in
 .IR *result .
 .SH ERRORS
 .TP
-.BR 0 " or " ENOENT " or " ESRCH " or " EBADF " or " EPERM " or ... "
+.BR 0 " or " ENOENT " or " ESRCH " or " EBADF " or " EPERM " or ..."
 The given
 .I name
 or
diff --git a/man3/rcmd.3 b/man3/rcmd.3
index 4eb18a637..70f3f510b 100644
--- a/man3/rcmd.3
+++ b/man3/rcmd.3
@@ -49,28 +49,28 @@ stream to a remote command
 .nf
 .B #include <netdb.h> \ \ \fP/* Or <unistd.h> on some systems */
 .PP
-.BI "int rcmd(char **" ahost ", unsigned short " inport ", const char *" locuser ", "
+.BI "int rcmd(char **" ahost ", unsigned short " inport ", const char *" locuser ,
 .BI "         const char *" remuser ", const char *" cmd ", int *" fd2p );
 .PP
 .BI "int rresvport(int *" port );
 .PP
-.BI "int iruserok(uint32_t " raddr ", int " superuser ", "
+.BI "int iruserok(uint32_t " raddr ", int " superuser ,
 .BI "             const char *" ruser ", const char *" luser );
 .PP
-.BI "int ruserok(const char *" rhost ", int " superuser ", "
+.BI "int ruserok(const char *" rhost ", int " superuser ,
 .BI "            const char *" ruser ", const char *" luser );
 .PP
-.BI "int rcmd_af(char **" ahost ", unsigned short " inport ", const char *" locuser ", "
+.BI "int rcmd_af(char **" ahost ", unsigned short " inport ", const char *" locuser ,
 .BI "            const char *" remuser ", const char *" cmd ", int *" fd2p ,
 .BI "            sa_family_t " af );
 .PP
 .BI "int rresvport_af(int *" port ", sa_family_t " af );
 .PP
-.BI "int iruserok_af(const void *" raddr ", int " superuser ", "
+.BI "int iruserok_af(const void *" raddr ", int " superuser ,
 .BI "                const char *" ruser ", const char *" luser \
 ", sa_family_t " af );
 .PP
-.BI "int ruserok_af(const char *" rhost ", int " superuser ", "
+.BI "int ruserok_af(const char *" rhost ", int " superuser ,
 .BI "               const char *" ruser ", const char *" luser \
 ", sa_family_t " af );
 .fi
diff --git a/man3/rexec.3 b/man3/rexec.3
index 9a09a47a3..142f0028a 100644
--- a/man3/rexec.3
+++ b/man3/rexec.3
@@ -45,10 +45,10 @@ rexec, rexec_af \- return stream to a remote command
 .nf
 .B #include <netdb.h>
 .PP
-.BI "int rexec(char **" ahost ", int " inport ", const char *" user ", "
+.BI "int rexec(char **" ahost ", int " inport ", const char *" user ,
 .BI "          const char *" passwd ", const char *" cmd ", int *" fd2p );
 .PP
-.BI "int rexec_af(char **" ahost ", int " inport ", const char *" user ", "
+.BI "int rexec_af(char **" ahost ", int " inport ", const char *" user ,
 .BI "             const char *" passwd ", const char *" cmd ", int *" fd2p ,
 .BI "             sa_family_t " af  );
 .fi
diff --git a/man3/sem_open.3 b/man3/sem_open.3
index 8b5b1069d..df25016b0 100644
--- a/man3/sem_open.3
+++ b/man3/sem_open.3
@@ -33,7 +33,7 @@ sem_open \- initialize and open a named semaphore
 .B #include <semaphore.h>
 .PP
 .BI "sem_t *sem_open(const char *" name ", int " oflag );
-.BI "sem_t *sem_open(const char *" name ", int " oflag ", "
+.BI "sem_t *sem_open(const char *" name ", int " oflag ,
 .BI "                mode_t " mode ", unsigned int " value );
 .fi
 .PP
-- 
2.27.0
