Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F32BC211647
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2020 00:51:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726413AbgGAWvC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Jul 2020 18:51:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726121AbgGAWvC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Jul 2020 18:51:02 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C91AC08C5C1
        for <linux-man@vger.kernel.org>; Wed,  1 Jul 2020 15:51:01 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 061MoxSf021170
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Wed, 1 Jul 2020 22:50:59 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 061MoxSf021170
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 061MoxNJ027007;
        Wed, 1 Jul 2020 22:50:59 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 061MoxK8027006;
        Wed, 1 Jul 2020 22:50:59 GMT
Date:   Wed, 1 Jul 2020 22:50:59 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man3/*: ffix, change '-' to '\-' for options
Message-ID: <20200701225059.GA26940@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Change '-' to '\-' for the prefix of names to indicate an option.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man3/dlopen.3             | 2 +-
 man3/fts.3                | 2 +-
 man3/getsubopt.3          | 2 +-
 man3/insque.3             | 2 +-
 man3/mq_getattr.3         | 2 +-
 man3/posix_spawn.3        | 8 ++++----
 man3/pthread_setname_np.3 | 2 +-
 man3/sincos.3             | 2 +-
 man3/strfromd.3           | 6 +++---
 man3/strftime.3           | 2 +-
 man3/system.3             | 2 +-
 11 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/man3/dlopen.3 b/man3/dlopen.3
index 8629af83e..eec6f9980 100644
--- a/man3/dlopen.3
+++ b/man3/dlopen.3
@@ -596,7 +596,7 @@ main(void)
        The 2013 Technical Corrigendum 1 to POSIX.1-2008 improved matters
        by requiring that conforming implementations support casting
        'void *' to a function pointer.  Nevertheless, some compilers
-       (e.g., gcc with the '-pedantic' option) may complain about the
+       (e.g., gcc with the '\-pedantic' option) may complain about the
        cast used in this program. */
 .\" http://pubs.opengroup.org/onlinepubs/009695399/functions/dlsym.html#tag_03_112_08
 .\" http://pubs.opengroup.org/onlinepubs/9699919799/functions/dlsym.html#tag_16_96_07
diff --git a/man3/fts.3 b/man3/fts.3
index bbd5cad5e..0d455149d 100644
--- a/man3/fts.3
+++ b/man3/fts.3
@@ -822,7 +822,7 @@ In versions of glibc before 2.23,
 .\" https://sourceware.org/bugzilla/show_bug.cgi?id=11460
 all of the APIs described in this man page are not safe when compiling
 a program using the LFS APIs (e.g., when compiling with
-.IR -D_FILE_OFFSET_BITS=64 ).
+.IR \-D_FILE_OFFSET_BITS=64 ).
 .\"
 .\" The following statement is years old, and seems no closer to
 .\" being true -- mtk
diff --git a/man3/getsubopt.3 b/man3/getsubopt.3
index 6cf2d7a82..cef57fde7 100644
--- a/man3/getsubopt.3
+++ b/man3/getsubopt.3
@@ -53,7 +53,7 @@ parses the list of comma-separated suboptions provided in
 (Such a suboption list is typically produced when
 .BR getopt (3)
 is used to parse a command line;
-see for example the \fI-o\fP option of
+see for example the \fI\-o\fP option of
 .BR mount (8).)
 Each suboption may include an associated value,
 which is separated from the suboption name by an equal sign.
diff --git a/man3/insque.3 b/man3/insque.3
index 2a957f24c..a9fc28550 100644
--- a/man3/insque.3
+++ b/man3/insque.3
@@ -155,7 +155,7 @@ Here is an example run of the program:
 .PP
 .in +4n
 .EX
-.RB "$ " "./a.out -c a b c"
+.RB "$ " "./a.out \-c a b c"
 Traversing completed list:
     a
     b
diff --git a/man3/mq_getattr.3 b/man3/mq_getattr.3
index 74ef0492f..771316472 100644
--- a/man3/mq_getattr.3
+++ b/man3/mq_getattr.3
@@ -185,7 +185,7 @@ can be used to control the defaults:
 .PP
 .in +4n
 .EX
-$ \fBuname -sr\fP
+$ \fBuname \-sr\fP
 Linux 3.8.0
 $ \fBcat /proc/sys/fs/mqueue/msg_default\fP
 10
diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
index 54fe775cc..f425a39e3 100644
--- a/man3/posix_spawn.3
+++ b/man3/posix_spawn.3
@@ -631,7 +631,7 @@ fails when trying to perform output and exits with a status of 1.
 .PP
 .in +4
 .EX
-$ \fB./a.out -c date\fP
+$ \fB./a.out \-c date\fP
 PID of child: 7636
 date: write error: Bad file descriptor
 Child status: exited, status=1
@@ -655,14 +655,14 @@ can't be blocked).
 .PP
 .in +4
 .EX
-$ \fB./a.out -s sleep 60 &\fP
+$ \fB./a.out \-s sleep 60 &\fP
 [1] 7637
 $ PID of child: 7638
 
 $ \fBkill 7638\fP
-$ \fBkill -KILL 7638\fP
+$ \fBkill \-KILL 7638\fP
 $ Child status: killed by signal 9
-[1]+  Done                    ./a.out -s sleep 60
+[1]+  Done                    ./a.out \-s sleep 60
 .EE
 .in
 .PP
diff --git a/man3/pthread_setname_np.3 b/man3/pthread_setname_np.3
index acea0b468..883464755 100644
--- a/man3/pthread_setname_np.3
+++ b/man3/pthread_setname_np.3
@@ -141,7 +141,7 @@ Created a thread. Default name is: a.out
 The thread name after setting it is THREADFOO.
 \fB^Z\fP                           # Suspend the program
 [1]+  Stopped           ./a.out
-.RB "$ " "ps H -C a.out -o 'pid tid cmd comm'"
+.RB "$ " "ps H \-C a.out \-o 'pid tid cmd comm'"
   PID   TID CMD                         COMMAND
  5990  5990 ./a.out                     a.out
  5990  5991 ./a.out                     THREADFOO
diff --git a/man3/sincos.3 b/man3/sincos.3
index 7d5c29724..8ec3e9ca1 100644
--- a/man3/sincos.3
+++ b/man3/sincos.3
@@ -94,7 +94,7 @@ built-in optimizations, using flags such as:
 .PP
 .in +4n
 .EX
-cc -O \-lm \-fno\-builtin prog.c
+cc \-O \-lm \-fno\-builtin prog.c
 .EE
 .in
 .SH BUGS
diff --git a/man3/strfromd.3 b/man3/strfromd.3
index 84cc08068..8092e645d 100644
--- a/man3/strfromd.3
+++ b/man3/strfromd.3
@@ -127,13 +127,13 @@ infinity values:
 .RS
 If
 .I fp
-is a NaN, +NaN, or -NaN, and
+is a NaN, +NaN, or \-NaN, and
 .B f
 (or
 .BR a ,
 .BR e ,
 .BR g )
-is the conversion specifier, the conversion is to "nan", "nan", or "-nan",
+is the conversion specifier, the conversion is to "nan", "nan", or "\-nan",
 respectively.
 If
 .B F
@@ -141,7 +141,7 @@ If
 .BR A ,
 .BR E ,
 .BR G )
-is the conversion specifier, the conversion is to "NAN" or "-NAN".
+is the conversion specifier, the conversion is to "NAN" or "\-NAN".
 .PP
 Likewise if
 .I fp
diff --git a/man3/strftime.3 b/man3/strftime.3
index d33c0f5ec..15616116d 100644
--- a/man3/strftime.3
+++ b/man3/strftime.3
@@ -424,7 +424,7 @@ conversion specification corresponds to the full alternative year representation
 The
 .I +hhmm
 or
-.I -hhmm
+.I \-hhmm
 numeric timezone (that is, the hour and minute offset from UTC). (SU)
 .TP
 .B %Z
diff --git a/man3/system.3 b/man3/system.3
index 997b1a3de..21f2e0304 100644
--- a/man3/system.3
+++ b/man3/system.3
@@ -50,7 +50,7 @@ as follows:
 .PP
 .in +4n
 .EX
-execl("/bin/sh", "sh", "-c", command, (char *) NULL);
+execl("/bin/sh", "sh", "\-c", command, (char *) NULL);
 .EE
 .in
 .PP
-- 
2.27.0
