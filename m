Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 33A848E0A8
	for <lists+linux-man@lfdr.de>; Thu, 15 Aug 2019 00:27:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728457AbfHNW1t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Aug 2019 18:27:49 -0400
Received: from inpost.hi.is ([130.208.165.62]:56670 "EHLO inpost.hi.is"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728425AbfHNW1s (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 14 Aug 2019 18:27:48 -0400
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id x7EMRhLZ013224
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Wed, 14 Aug 2019 22:27:43 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is x7EMRhLZ013224
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id x7EMRhip013061;
        Wed, 14 Aug 2019 22:27:43 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id x7EMRhVu013060;
        Wed, 14 Aug 2019 22:27:43 GMT
Date:   Wed, 14 Aug 2019 22:27:43 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man7: srcfix: Correct the misuse of a two-font macro
Message-ID: <20190814222743.GA12965@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Correct the misuse of a two-font macro, which function is to

1) use the first font for the odd numbered arguments and the second
font for the even numbered arguments

2) join the arguments without an intervening space.

  Changes are based on the latest (14th August 2019 UTC) revision of my
local git repository.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man7/capabilities.7      |  4 ++--
 man7/cgroup_namespaces.7 |  2 +-
 man7/credentials.7       |  2 +-
 man7/fanotify.7          | 12 ++++++------
 man7/namespaces.7        |  2 +-
 man7/user_namespaces.7   |  2 +-
 6 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/man7/capabilities.7 b/man7/capabilities.7
index 457d4149e..05166a865 100644
--- a/man7/capabilities.7
+++ b/man7/capabilities.7
@@ -484,7 +484,7 @@ flag);
 perform administrative operations on many device drivers.
 .IP *
 Modify autogroup nice values by writing to
-.IR /proc/[pid]autogroup
+.I /proc/[pid]autogroup
 (see
 .BR sched (7)).
 .RE
@@ -1611,7 +1611,7 @@ or any descendant user namespace.
 The rules about the transformation of the process's capabilities during the
 .BR execve (2)
 are exactly as described in the subsections
-.IR "Transformation of capabilities during execve()"
+.I "Transformation of capabilities during execve()"
 and
 .IR "Capabilities and execution of programs by root" ,
 with the difference that, in the latter subsection, "root"
diff --git a/man7/cgroup_namespaces.7 b/man7/cgroup_namespaces.7
index ef0173c7f..1f8f27c4f 100644
--- a/man7/cgroup_namespaces.7
+++ b/man7/cgroup_namespaces.7
@@ -118,7 +118,7 @@ command, a process that is in the original cgroup namespace
 From the new shell started by
 .BR unshare (1),
 we then inspect the
-.IR /proc/[pid]/cgroup
+.I /proc/[pid]/cgroup
 files of, respectively, the new shell,
 a process that is in the initial cgroup namespace
 >>>>>>> 173eb06cd8d6e9989303e41e97d435b2a39f60b0
diff --git a/man7/credentials.7 b/man7/credentials.7
index 85bf64405..c0bde11aa 100644
--- a/man7/credentials.7
+++ b/man7/credentials.7
@@ -292,7 +292,7 @@ and the supplementary group IDs, are specified in POSIX.1.
 The filesystem user and group IDs are a Linux extension.
 .SH NOTES
 Various fields in the
-.IR /proc/[pid]/status
+.I /proc/[pid]/status
 file show the process credentials described above.
 See
 .BR proc (5)
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index 3a6cac615..2935bacbd 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -116,7 +116,7 @@ the receiving application with the exception being that the file
 descriptor provided within a generic event must be closed.
 The closing of file descriptors for each event applies only to
 applications that have initialized fanotify without using
-.BR FAN_REPORT_FID
+.B FAN_REPORT_FID
 (see below).
 Permission events are requests to the receiving application to decide
 whether permission for a file access shall be granted.
@@ -143,7 +143,7 @@ until either a file event occurs or the call is interrupted by a signal
 .BR signal (7)).
 .PP
 The use of the
-.BR FAN_REPORT_FID
+.B FAN_REPORT_FID
 flag in
 .BR fanotify_init (2)
 influences what data structures are returned to the event listener for each
@@ -167,7 +167,7 @@ struct fanotify_event_metadata {
 .in
 .PP
 In the case where
-.BR FAN_REPORT_FID
+.B FAN_REPORT_FID
 is supplied as one of the flags to
 .BR fanotify_init (2),
 you should also expect to receive the structure detailed below following
@@ -432,16 +432,16 @@ Note that for directory entry events, such as
 and
 .BR FAN_MOVE ,
 the
-.IR file_handle
+.I file_handle
 describes the modified directory and not the created/deleted/moved child
 object.
 The events
 .BR FAN_ATTRIB ,
 .BR FAN_DELETE_SELF ,
 and
-.BR FAN_MOVE_SELF
+.B FAN_MOVE_SELF
 will carry the
-.IR file_handle
+.I file_handle
 information for the child object if the child object is being watched.
 .PP
 The following macros are provided to iterate over a buffer containing
diff --git a/man7/namespaces.7 b/man7/namespaces.7
index a3f19bc92..4e1504f33 100644
--- a/man7/namespaces.7
+++ b/man7/namespaces.7
@@ -424,7 +424,7 @@ When a process creates a new UTS namespace using
 or
 .BR unshare (2)
 with the
-.BR CLONE_NEWUTS
+.B CLONE_NEWUTS
 flag, the hostname and domain of the new UTS namespace are copied
 from the corresponding values in the caller's UTS namespace.
 .PP
diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
index 8970aecca..328b1c59c 100644
--- a/man7/user_namespaces.7
+++ b/man7/user_namespaces.7
@@ -903,7 +903,7 @@ the file's user ID and group ID both have valid mappings
 in the user namespace.
 .PP
 The
-.BR CAP_FOWNER
+.B CAP_FOWNER
 capability is treated somewhat exceptionally:
 .\" These are the checks performed by the kernel function
 .\" inode_owner_or_capable(). There is one exception to the exception:
-- 
2.23.0.rc1
