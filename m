Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 573B1202561
	for <lists+linux-man@lfdr.de>; Sat, 20 Jun 2020 18:39:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726976AbgFTQjs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Jun 2020 12:39:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726043AbgFTQjr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Jun 2020 12:39:47 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42B58C06174E
        for <linux-man@vger.kernel.org>; Sat, 20 Jun 2020 09:39:46 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 05KGdjaE009488
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
        for <linux-man@vger.kernel.org>; Sat, 20 Jun 2020 16:39:45 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 05KGdjaE009488
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 05KGdjZD022238
        for <linux-man@vger.kernel.org>; Sat, 20 Jun 2020 16:39:45 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 05KGdjwn022237
        for linux-man@vger.kernel.org; Sat, 20 Jun 2020 16:39:45 GMT
Date:   Sat, 20 Jun 2020 16:39:45 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     linux-man@vger.kernel.org
Subject: [PATCH] man7/*: ffix, use a one-font macro for one argument
Message-ID: <20200620163944.GA22228@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[ Only sent to the list as the maintainer (Michael Kerrisk (man pages))
does not want these corrections.]

  Output is unchanged except for the change of a font for a punctuation
mark in the files "socket.7" and "vsock.7".

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man7/capabilities.7    |  4 ++--
 man7/fanotify.7        |  2 +-
 man7/hier.7            |  2 +-
 man7/man-pages.7       |  4 ++--
 man7/netlink.7         |  2 +-
 man7/socket.7          |  6 +++---
 man7/symlink.7         |  2 +-
 man7/time_namespaces.7 | 22 +++++++++++-----------
 man7/vsock.7           |  4 ++--
 9 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/man7/capabilities.7 b/man7/capabilities.7
index 8fdcb72a8..affa2033a 100644
--- a/man7/capabilities.7
+++ b/man7/capabilities.7
@@ -98,7 +98,7 @@ and
 .IP
 This capability was added in Linux 5.8 to separate out
 BPF functionality from the overloaded
-.BR CAP_SYS_ADMIN
+.B CAP_SYS_ADMIN
 capability.
 .TP
 .B CAP_CHOWN
@@ -290,7 +290,7 @@ employ various BPF operations that have performance implications.
 .IP
 This capability was added in Linux 5.8 to separate out
 performance monitoring functionality from the overloaded
-.BR CAP_SYS_ADMIN
+.B CAP_SYS_ADMIN
 capability.
 .TP
 .B CAP_SETGID
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index c07ea317c..73204cf7f 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -394,7 +394,7 @@ See
 .BR fanotify_mark (2)
 for additional details.
 The
-.BR FAN_ONDIR
+.B FAN_ONDIR
 flag is reported in an event mask only if the fanotify group has been
 initialized with the flag
 .BR FAN_REPORT_FID .
diff --git a/man7/hier.7 b/man7/hier.7
index b3be5c452..eb375a4d3 100644
--- a/man7/hier.7
+++ b/man7/hier.7
@@ -164,7 +164,7 @@ This directory is usually the home directory for the root user (optional).
 .I /run
 This directory contains information which describes the system since it was booted.
 Once this purpose was served by
-.IR /var/run
+.I /var/run
 and programs may continue to use it.
 .TP
 .I /sbin
diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 3e7e4e94e..ed83889c9 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -456,7 +456,7 @@ an address for reporting bugs, place this under the BUGS section.
 .TP
 .B REPORTING BUGS
 The
-.IR man-pages
+.I man-pages
 project doesn't use a REPORTING BUGS section in manual pages.
 Information on reporting bugs is instead supplied in the
 script-generated COLOPHON section.
@@ -465,7 +465,7 @@ it is recommended to place it near the foot of the page.
 .TP
 .B COPYRIGHT
 The
-.IR man-pages
+.I man-pages
 project doesn't use a COPYRIGHT section in manual pages.
 Copyright information is instead maintained in the page source.
 In pages where this section is present,
diff --git a/man7/netlink.7 b/man7/netlink.7
index 400406ba8..2b2682ff2 100644
--- a/man7/netlink.7
+++ b/man7/netlink.7
@@ -105,7 +105,7 @@ Kernel connector.
 See
 .I Documentation/driver-api/connector.rst
 (or
-.IR /Documentation/connector/connector.*
+.I /Documentation/connector/connector.*
 .\" commit baa293e9544bea71361950d071579f0e4d5713ed
 in kernel 5.2 and earlier)
 in the Linux kernel source tree for further information.
diff --git a/man7/socket.7 b/man7/socket.7
index 15a245007..95bacaf68 100644
--- a/man7/socket.7
+++ b/man7/socket.7
@@ -890,9 +890,9 @@ event is returned.
 .IP
 Background: this option was added when waking up on an error condition
 occurred only via the
-.IR readfds
+.I readfds
 and
-.IR writefds
+.I writefds
 sets of
 .BR select (2).
 The option was added to allow monitoring for error conditions via the
@@ -978,7 +978,7 @@ for details on control messages.
 A socket cannot mix
 .B SO_TIMESTAMP
 and
-.BR SO_TIMESTAMPNS:
+.BR SO_TIMESTAMPNS :
 the two modes are mutually exclusive.
 .TP
 .B SO_TYPE
diff --git a/man7/symlink.7 b/man7/symlink.7
index d9df25f0f..efcfeb6de 100644
--- a/man7/symlink.7
+++ b/man7/symlink.7
@@ -214,7 +214,7 @@ is called the
 component, and the part following the final slash (i.e.,
 .IR c )
 is called the
-.IR basename
+.I basename
 component.
 .\"
 .SS Treatment of symbolic links in system calls
diff --git a/man7/time_namespaces.7 b/man7/time_namespaces.7
index d70380de4..708906a8b 100644
--- a/man7/time_namespaces.7
+++ b/man7/time_namespaces.7
@@ -29,15 +29,15 @@ time_namespaces \- overview of Linux time namespaces
 .SH DESCRIPTION
 Time namespaces virtualize the values of two system clocks:
 .IP \(bu 2
-.BR CLOCK_MONOTONIC
+.B CLOCK_MONOTONIC
 (and likewise
-.BR CLOCK_MONOTONIC_COARSE
+.B CLOCK_MONOTONIC_COARSE
 and
 .BR CLOCK_MONOTONIC_RAW ),
 a nonsettable clock that represents monotonic time  since\(emas
 described  by  POSIX\(em"some  unspecified  point in the past".
 .IP \(bu
-.BR CLOCK_BOOTTIME
+.B CLOCK_BOOTTIME
 (and likewise
 .BR CLOCK_BOOTTIME_ALARM ),
 a nonsettable clock that is identical to
@@ -58,7 +58,7 @@ and
 Currently, the only way to create a time namespace is by calling
 .BR unshare (2)
 with the
-.BR CLONE_NEWTIME
+.B CLONE_NEWTIME
 flag.
 This call creates a new time namespace but does
 .I not
@@ -68,7 +68,7 @@ subsequently created children are placed in the new namespace.
 This allows clock offsets (see below) for the new namespace
 to be set before the first process is placed in the namespace.
 The
-.IR /proc/[pid]/ns/time_for_children
+.I /proc/[pid]/ns/time_for_children
 symbolic link shows the time namespace in which
 the children of a process will be created.
 (A process can use a file descriptor opened on
@@ -137,9 +137,9 @@ but after the first process has been created in or has entered the namespace,
 on this file fail with the error
 .BR EACCES .
 In order to write to the
-.IR timens_offsets
+.I timens_offsets
 file, a process must have the
-.BR CAP_SYS_TIME
+.B CAP_SYS_TIME
 capability in the user namespace that owns the time namespace.
 .PP
 Writes to the
@@ -159,7 +159,7 @@ value is not valid.
 .B EPERM
 The caller does not have the
 the
-.BR CAP_SYS_TIME
+.B CAP_SYS_TIME
 capability.
 .TP
 .B ERANGE
@@ -176,7 +176,7 @@ time on the corresponding clock inside the namespace a negative value; and
 .I offset-secs
 can't be set to a value such that the time on the corresponding clock
 inside the namespace would exceed half of the value of the kernel constant
-.BR KTIME_SEC_MAX
+.B KTIME_SEC_MAX
 (this limits the clock value to a maximum of approximately 146 years).
 .RE
 .PP
@@ -192,7 +192,7 @@ Use of time namespaces requires a kernel that is configured with the
 option.
 .PP
 Note that time namespaces do not virtualize the
-.BR CLOCK_REALTIME
+.B CLOCK_REALTIME
 clock.
 Virtualization of this clock was avoided for reasons of complexity
 and overhead within the kernel.
@@ -200,7 +200,7 @@ and overhead within the kernel.
 For compatibility with the initial implementation, when writing a
 .I clock-id
 to the
-.IR /proc/[pid]/timens_offsets
+.I /proc/[pid]/timens_offsets
 file, the numerical values of the IDs can be written
 instead of the symbolic names show above; i.e., 1 instead of
 .IR monotonic ,
diff --git a/man7/vsock.7 b/man7/vsock.7
index 5ddfc9d44..03d67838c 100644
--- a/man7/vsock.7
+++ b/man7/vsock.7
@@ -171,9 +171,9 @@ This is useful
 for testing applications on a single host and for debugging.
 .PP
 The local CID obtained with
-.BR IOCTL_VM_SOCKETS_GET_LOCAL_CID
+.B IOCTL_VM_SOCKETS_GET_LOCAL_CID
 can be used for the same purpose, but it is preferable to use
-.B VMADDR_CID_LOCAL .
+.BR VMADDR_CID_LOCAL .
 .SH ERRORS
 .TP
 .B EACCES
-- 
2.27.0
