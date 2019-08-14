Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4105B8C501
	for <lists+linux-man@lfdr.de>; Wed, 14 Aug 2019 02:20:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726102AbfHNAU2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Aug 2019 20:20:28 -0400
Received: from outpost.hi.is ([130.208.165.166]:49424 "EHLO outpost.hi.is"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726007AbfHNAU2 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 13 Aug 2019 20:20:28 -0400
X-Greylist: delayed 307 seconds by postgrey-1.27 at vger.kernel.org; Tue, 13 Aug 2019 20:20:25 EDT
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by outpost.hi.is (8.14.7/8.14.7) with ESMTP id x7E0FI8D017185
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
        for <linux-man@vger.kernel.org>; Wed, 14 Aug 2019 00:15:19 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 outpost.hi.is x7E0FI8D017185
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id x7E0FF3W004670
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Wed, 14 Aug 2019 00:15:15 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is x7E0FF3W004670
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id x7E0FFIr016534;
        Wed, 14 Aug 2019 00:15:15 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id x7E0FEq4016533;
        Wed, 14 Aug 2019 00:15:14 GMT
Date:   Wed, 14 Aug 2019 00:15:14 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [patch] man2: srcfix, ffix: correct a wrong use of a two-font macro
Message-ID: <20190814001514.GA16463@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Use the correct font macro or the right number of arguments.

  Changes are based on the latest (13th August 2019 UTC) revision of my
local git repository.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man2/clone.2         |  2 +-
 man2/execve.2        |  2 +-
 man2/fanotify_init.2 |  6 +++---
 man2/fanotify_mark.2 |  8 ++++----
 man2/fcntl.2         |  2 +-
 man2/poll.2          |  4 ++--
 man2/rename.2        | 14 +++++++-------
 man2/sched_setattr.2 |  8 ++++----
 man2/splice.2        |  2 +-
 man2/tee.2           |  2 +-
 10 files changed, 25 insertions(+), 25 deletions(-)

diff --git a/man2/clone.2 b/man2/clone.2
index 921995345..ea1615c4f 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -167,7 +167,7 @@ returns control to user space in the child process.
 (Note that the store operation may not have completed before
 .BR clone ()
 returns in the parent process, which will be relevant if the
-.BR CLONE_VM
+.B CLONE_VM
 flag is also employed.)
 .TP
 .BR CLONE_FILES " (since Linux 2.0)"
diff --git a/man2/execve.2 b/man2/execve.2
index 4c5a05cad..da9c1f045 100644
--- a/man2/execve.2
+++ b/man2/execve.2
@@ -336,7 +336,7 @@ argument of
 starting at
 .IR argv [1].
 Note that there is no way to get the
-.IR argv[0]
+.IR argv [0]
 that was passed to the
 .BR execve ()
 call.
diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index 58e3a7cf9..797524652 100644
--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -110,14 +110,14 @@ directory entry events, such as
 .BR FAN_ATTRIB ,
 .BR FAN_MOVE ,
 and
-.BR FAN_DELETE
+.B FAN_DELETE
 for example.
 Note that the use of directory modification events are not supported when
 monitoring a mount point.
 The use of
-.BR FAN_CLASS_CONTENT
+.B FAN_CLASS_CONTENT
 or
-.BR FAN_CLASS_PRE_CONTENT
+.B FAN_CLASS_PRE_CONTENT
 is not permitted with this flag and will result in the error
 .BR EINVAL .
 See
diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index 9f9f17dc3..6cfae10d1 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -129,7 +129,7 @@ will be monitored.
 This value cannot be used if the
 .I fanotify_fd
 file descriptor has been initialized with the flag
-.BR FAN_REPORT_FID
+.B FAN_REPORT_FID
 or if any of the new directory modification events are provided as a
 .IR mask .
 Attempting to do so will result in the error
@@ -244,7 +244,7 @@ Create events for directories\(emfor example, when
 are called.
 Without this flag, only events for files are created.
 The
-.BR FAN_ONDIR
+.B FAN_ONDIR
 flag is reported in an event mask only if the
 .I fanotify_fd
 file descriptor has been initialized with the flag
@@ -254,9 +254,9 @@ In the context of directory entry events, such as
 .BR FAN_DELETE ,
 .BR FAN_MOVED_FROM ,
 and
-.BR FAN_MOVED_TO
+.B FAN_MOVED_TO
 for example, specifying the flag
-.BR FAN_ONDIR
+.B FAN_ONDIR
 is required in order to create events when subdirectory entries are
 modified (i.e.,
 .BR mkdir (2)/
diff --git a/man2/fcntl.2 b/man2/fcntl.2
index dfc2a6a81..1a3b1331b 100644
--- a/man2/fcntl.2
+++ b/man2/fcntl.2
@@ -1914,7 +1914,7 @@ and
 Several systems have more fields in
 .I "struct flock"
 such as, for example,
-.IR l_sysid
+.I l_sysid
 (to identify the machine where the lock is held).
 .\" e.g., Solaris 8 documents this field in fcntl(2), and Irix 6.5
 .\" documents it in fcntl(5).  mtk, May 2007
diff --git a/man2/poll.2 b/man2/poll.2
index 2de0740e0..0091b012c 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -295,7 +295,7 @@ equivalent because whereas a negative
 value for
 .BR poll ()
 is interpreted as an infinite timeout, a negative value expressed in
-.IR *tmo_p
+.I *tmo_p
 results in an error from
 .BR ppoll ().
 .PP
@@ -368,7 +368,7 @@ value.
 .B EINVAL
 .RB ( ppoll ())
 The timeout value expressed in
-.IR *ip
+.I *ip
 is invalid (negative).
 .TP
 .B ENOMEM
diff --git a/man2/rename.2 b/man2/rename.2
index c77a2c13a..7bb2971ca 100644
--- a/man2/rename.2
+++ b/man2/rename.2
@@ -191,7 +191,7 @@ argument is a bit mask consisting of zero or more of the following flags:
 .TP
 .B RENAME_EXCHANGE
 Atomically exchange
-.IR oldpath
+.I oldpath
 and
 .IR newpath .
 Both pathnames must exist
@@ -200,10 +200,10 @@ and the other a symbolic link).
 .TP
 .B RENAME_NOREPLACE
 Don't overwrite
-.IR newpath
+.I newpath
 of the rename.
 Return an error if
-.IR newpath
+.I newpath
 already exists.
 .IP
 .B RENAME_NOREPLACE
@@ -278,7 +278,7 @@ as of Linux 4.19, at least.)
 .IP
 .B RENAME_WHITEOUT
 requires the same privileges as creating a device node (i.e., the
-.BR CAP_MKNOD
+.B CAP_MKNOD
 capability).
 .IP
 .B RENAME_WHITEOUT
@@ -503,7 +503,7 @@ The filesystem does not support one of the flags in
 contains
 .B RENAME_EXCHANGE
 and
-.IR newpath
+.I newpath
 does not exist.
 .TP
 .B EPERM
@@ -542,11 +542,11 @@ and
 .I newpath
 are relative pathnames,
 glibc constructs pathnames based on the symbolic links in
-.IR /proc/self/fd
+.I /proc/self/fd
 that correspond to the
 .I olddirfd
 and
-.IR newdirfd
+.I newdirfd
 arguments.
 .SH BUGS
 On NFS filesystems, you can not assume that if the operation
diff --git a/man2/sched_setattr.2 b/man2/sched_setattr.2
index a4562d7e8..5cb3d48b6 100644
--- a/man2/sched_setattr.2
+++ b/man2/sched_setattr.2
@@ -154,7 +154,7 @@ This field contains zero or more of the following flags
 that are ORed together to control scheduling behavior:
 .RS
 .TP
-.BR SCHED_FLAG_RESET_ON_FORK
+.B SCHED_FLAG_RESET_ON_FORK
 Children created by
 .BR fork (2)
 do not inherit privileged scheduling policies.
@@ -165,7 +165,7 @@ for details.
 .BR SCHED_FLAG_RECLAIM " (since Linux 4.13)"
 .\" 2d4283e9d583a3ee8cfb1cbb9c1270614df4c29d
 This flag allows a
-.BR SCHED_DEADLINE
+.B SCHED_DEADLINE
 thread to reclaim bandwidth unused by other real-time threads.
 .\" Bandwidth reclaim is done via the GRUB algorithm; see
 .\" Documentation/scheduler/sched-deadline.txt
@@ -173,7 +173,7 @@ thread to reclaim bandwidth unused by other real-time threads.
 .BR SCHED_FLAG_DL_OVERRUN " (since Linux 4.16)"
 .\" commit 34be39305a77b8b1ec9f279163c7cdb6cc719b91
 This flag allows an application to get informed about run-time overruns in
-.BR SCHED_DEADLINE
+.B SCHED_DEADLINE
 threads.
 Such overruns may be caused by (for example) coarse execution time accounting
 or incorrect parameter assignment.
@@ -182,7 +182,7 @@ Notification takes the form of a
 signal which is generated on each overrun.
 .IP
 This
-.BR SIGXCPU
+.B SIGXCPU
 signal is
 .I process-directed
 (see
diff --git a/man2/splice.2 b/man2/splice.2
index f5f1be72b..f842953ac 100644
--- a/man2/splice.2
+++ b/man2/splice.2
@@ -155,7 +155,7 @@ is set to indicate the error.
 .B EAGAIN
 .B SPLICE_F_NONBLOCK
 was specified in
-.IR flags
+.I flags
 or one of the file descriptors had been marked as nonblocking
 .RB ( O_NONBLOCK ) ,
 and the operation would block.
diff --git a/man2/tee.2 b/man2/tee.2
index 03d043b46..b9444bbc0 100644
--- a/man2/tee.2
+++ b/man2/tee.2
@@ -100,7 +100,7 @@ is set to indicate the error.
 .B EAGAIN
 .B SPLICE_F_NONBLOCK
 was specified in
-.IR flags
+.I flags
 or one of the file descriptors had been marked as nonblocking
 .RB ( O_NONBLOCK ) ,
 and the operation would block.
-- 
2.20.1

-- 
Bjarni I. Gislason
