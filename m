Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D28292116AA
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2020 01:31:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726438AbgGAXbe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Jul 2020 19:31:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726404AbgGAXbd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Jul 2020 19:31:33 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DBFBC08C5C1
        for <linux-man@vger.kernel.org>; Wed,  1 Jul 2020 16:31:33 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 061NVUGO023492
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Wed, 1 Jul 2020 23:31:30 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 061NVUGO023492
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 061NVUUn028985;
        Wed, 1 Jul 2020 23:31:30 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 061NVULH028984;
        Wed, 1 Jul 2020 23:31:30 GMT
Date:   Wed, 1 Jul 2020 23:31:30 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man7/*: ffix, change '-' to '\-' for options and to '\(en'
 for a range
Message-ID: <20200701233130.GA28916@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Change '-' to '\-' for the prefix of names to indicate an option.

  Change '-' to '\(en' for a range.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man7/bootparam.7           |  4 ++--
 man7/cgroups.7             | 12 ++++++------
 man7/feature_test_macros.7 |  4 ++--
 man7/man.7                 |  2 +-
 man7/math_error.7          |  6 +++---
 man7/pid_namespaces.7      |  2 +-
 man7/pthreads.7            |  2 +-
 7 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/man7/bootparam.7 b/man7/bootparam.7
index 48a7d047c..888e47c8d 100644
--- a/man7/bootparam.7
+++ b/man7/bootparam.7
@@ -138,7 +138,7 @@ A symbolic specification has the form
 .IR /dev/XXYN ,
 where XX designates
 the device type (e.g., 'hd' for ST-506 compatible hard disk, with Y in
-\&'a'-'d'; 'sd' for SCSI compatible disk, with Y in 'a'-'e'),
+\&'a'\(en'd'; 'sd' for SCSI compatible disk, with Y in 'a'\(en'e'),
 Y the driver letter or
 number, and N the number (in decimal) of the partition on this device.
 .IP
@@ -485,7 +485,7 @@ for older kernels) in the Linux kernel source.
 .B "IDE Disk/CD-ROM Driver Parameters"
 The IDE driver accepts a number of parameters, which range from disk
 geometry specifications, to support for broken controller chips.
-Drive-specific options are specified by using 'hdX=' with X in 'a'-'h'.
+Drive-specific options are specified by using 'hdX=' with X in 'a'\(en'h'.
 .IP
 Non-drive-specific options are specified with the prefix 'hd='.
 Note that using a drive-specific prefix for a non-drive-specific option
diff --git a/man7/cgroups.7 b/man7/cgroups.7
index 2f4307bef..deed09d44 100644
--- a/man7/cgroups.7
+++ b/man7/cgroups.7
@@ -522,7 +522,7 @@ cgroup filesystem is mounted:
 .PP
 .in +4n
 .EX
-mount -o release_agent=pathname ...
+mount \-o release_agent=pathname ...
 .EE
 .in
 .PP
@@ -549,7 +549,7 @@ it is possible to mount a cgroup hierarchy that has no attached controllers:
 .PP
 .in +4n
 .EX
-mount -t cgroup -o none,name=somename none /some/mount/point
+mount \-t cgroup \-o none,name=somename none /some/mount/point
 .EE
 .in
 .PP
@@ -633,7 +633,7 @@ when mounting the cgroup v2 filesystem using a command such as the following:
 .PP
 .in +4n
 .EX
-mount -t cgroup2 none /mnt/cgroup2
+mount \-t cgroup2 none /mnt/cgroup2
 .EE
 .in
 .PP
@@ -670,7 +670,7 @@ during the boot process.
 .\"
 .SS Cgroups v2 mount options
 The following options
-.RI ( "mount -o" )
+.RI ( "mount \-o" )
 can be specified when mounting the group v2 filesystem:
 .TP
 .IR nsdelegate " (since Linux 4.15)"
@@ -791,7 +791,7 @@ or '\-' (to disable a controller), as in the following example:
 .IP
 .in +4n
 .EX
-echo '+pids -memory' > x/y/cgroup.subtree_control
+echo '+pids \-memory' > x/y/cgroup.subtree_control
 .EE
 .in
 .IP
@@ -1120,7 +1120,7 @@ option as follows:
 .PP
 .in +4n
 .EX
-mount -t cgroup2 -o remount,nsdelegate \e
+mount \-t cgroup2 \-o remount,nsdelegate \e
                  none /sys/fs/cgroup/unified
 .EE
 .in
diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
index 186c8e27d..cba587bf1 100644
--- a/man7/feature_test_macros.7
+++ b/man7/feature_test_macros.7
@@ -220,9 +220,9 @@ ISO Standard C.
 This macro is implicitly defined by
 .BR gcc (1)
 when invoked with, for example, the
-.I -std=c99
+.I \-std=c99
 or
-.I -ansi
+.I \-ansi
 flag.
 .TP
 .B _POSIX_C_SOURCE
diff --git a/man7/man.7 b/man7/man.7
index 95033539f..7c6daac92 100644
--- a/man7/man.7
+++ b/man7/man.7
@@ -277,7 +277,7 @@ macro, with the optional
 (if present, usually a closing parenthesis and/or end-of-sentence
 punctuation) immediately following.
 For non-HTML output devices (e.g.,
-.BR "man -Tutf8" ),
+.BR "man \-Tutf8" ),
 the link text is followed by the URL in angle brackets; if there is no
 link text, the URL is printed as its own link text, surrounded by angle
 brackets.
diff --git a/man7/math_error.7 b/man7/math_error.7
index 1a07a2318..187c0b1cc 100644
--- a/man7/math_error.7
+++ b/man7/math_error.7
@@ -240,7 +240,7 @@ and POSIX.1.
 .PP
 The
 .BR gcc (1)
-.I "-fno-math-errno"
+.I "\-fno-math-errno"
 option causes the executable to employ implementations of some
 mathematical functions that are faster than the standard
 implementations, but do not set
@@ -248,9 +248,9 @@ implementations, but do not set
 on error.
 (The
 .BR gcc (1)
-.I "-ffast-math"
+.I "\-ffast-math"
 option also enables
-.IR "-fno-math-errno" .)
+.IR "\-fno-math-errno" .)
 An error can still be tested for using
 .BR fetestexcept (3).
 .SH SEE ALSO
diff --git a/man7/pid_namespaces.7 b/man7/pid_namespaces.7
index 05d821602..1e5a6065f 100644
--- a/man7/pid_namespaces.7
+++ b/man7/pid_namespaces.7
@@ -343,7 +343,7 @@ is:
 .PP
 .in +4n
 .EX
-$ mount -t proc proc /proc
+$ mount \-t proc proc /proc
 .EE
 .in
 .PP
diff --git a/man7/pthreads.7 b/man7/pthreads.7
index 78f6df17f..c91106d8c 100644
--- a/man7/pthreads.7
+++ b/man7/pthreads.7
@@ -856,7 +856,7 @@ is set to a value other than
 then this value defines the default stack size for new threads.
 To be effective, this limit must be set before the program
 is executed, perhaps using the
-.I ulimit -s
+.I ulimit \-s
 shell built-in command
 .RI ( "limit stacksize"
 in the C shell).
-- 
2.27.0
