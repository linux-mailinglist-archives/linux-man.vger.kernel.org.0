Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D8E5214D23
	for <lists+linux-man@lfdr.de>; Sun,  5 Jul 2020 16:32:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726839AbgGEOc6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Jul 2020 10:32:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726747AbgGEOc6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Jul 2020 10:32:58 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9D34C061794
        for <linux-man@vger.kernel.org>; Sun,  5 Jul 2020 07:32:56 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 065EWs3W016734
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sun, 5 Jul 2020 14:32:54 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 065EWs3W016734
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 065EWsIe013011;
        Sun, 5 Jul 2020 14:32:54 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 065EWrlt013010;
        Sun, 5 Jul 2020 14:32:53 GMT
Date:   Sun, 5 Jul 2020 14:32:53 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man7/*: srcfix: remove superfluous quotes around space-free
 arguments
Message-ID: <20200705143253.GA12971@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Remove quotes around a space-free argument for the single-font macros.

  Fix a font issue in "bootparam.7", line 241.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man7/bootparam.7  | 32 ++++++++++++++++----------------
 man7/cgroups.7    |  4 ++--
 man7/math_error.7 |  4 ++--
 3 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/man7/bootparam.7 b/man7/bootparam.7
index 888e47c8d..ae519f48a 100644
--- a/man7/bootparam.7
+++ b/man7/bootparam.7
@@ -100,7 +100,7 @@ installed on
 your system to see what arguments it accepts.
 .SS General non-device-specific boot arguments
 .TP
-.B "'init=...'"
+.B 'init=...'
 This sets the initial command to be executed by the kernel.
 If this is not set, or cannot be found, the kernel will try
 .IR /sbin/init ,
@@ -112,18 +112,18 @@ then
 .I /bin/sh
 and panic if all of this fails.
 .TP
-.B "'nfsaddrs=...'"
+.B 'nfsaddrs=...'
 This sets the NFS boot address to the given string.
 This boot address is used in case of a net boot.
 .TP
-.B "'nfsroot=...'"
+.B 'nfsroot=...'
 This sets the NFS root name to the given string.
 If this string
 does not begin with '/' or ',' or a digit, then it is prefixed by
 \&'/tftpboot/'.
 This root name is used in case of a net boot.
 .TP
-.B "'root=...'"
+.B 'root=...'
 This argument tells the kernel what device is to be used as the root
 filesystem while booting.
 The default of this setting is determined
@@ -183,7 +183,7 @@ as read/write capable, for example, by 'mount \-w \-n \-o remount /'.
 The 'rw' option tells the kernel to mount the root filesystem read/write.
 This is the default.
 .TP
-.B "'resume=...'"
+.B 'resume=...'
 This tells the kernel the location of the suspend-to-disk data that you want the machine to resume from after hibernation.
 Usually, it is the same as your swap partition or file.
 Example:
@@ -194,7 +194,7 @@ resume=/dev/hda2
 .EE
 .in
 .TP
-.B "'reserve=...'"
+.B 'reserve=...'
 This is used to protect I/O port regions from probes.
 The form of the command is:
 .IP
@@ -227,7 +227,7 @@ reserve=0x300,32  blah=0x300
 keeps all device drivers except the driver for 'blah' from probing
 0x300\-0x31f.
 .TP
-.B "'panic=N'"
+.B 'panic=N'
 By default, the kernel will not reboot after a panic, but this option
 will cause a kernel reboot after N seconds (if N is greater than zero).
 This panic timeout can also be set by
@@ -238,7 +238,7 @@ echo N > /proc/sys/kernel/panic
 .EE
 .in
 .TP
-.B "'reboot=[warm|cold][,[bios|hard]]'"
+.BR 'reboot= [ warm | cold ][ , [ bios | hard ]] '
 Since Linux 2.0.22, a reboot is by default a cold reboot.
 One asks for the old default with 'reboot=warm'.
 (A cold reboot may be required to reset certain hardware,
@@ -257,7 +257,7 @@ activation entirely; an option 'maxcpus=N' limits the maximum number
 of CPUs activated in SMP mode to N.
 .SS Boot arguments for use by kernel developers
 .TP
-.B "'debug'"
+.B 'debug'
 Kernel messages are handed off to a daemon (e.g.,
 .BR klogd (8)
 or similar) so that they may be logged to disk.
@@ -283,7 +283,7 @@ the
 operation, or
 .BR dmesg (8).
 .TP
-.B "'profile=N'"
+.B 'profile=N'
 It is possible to enable a kernel profiling function,
 if one wishes to find out where the kernel is spending its CPU cycles.
 Profiling is enabled by setting the variable
@@ -338,12 +338,12 @@ in older kernels).
 .IP
 There are four parameters, two boolean and two integral.
 .TP
-.B "'load_ramdisk=N'"
+.B 'load_ramdisk=N'
 If N=1, do load a ramdisk.
 If N=0, do not load a ramdisk.
 (This is the default.)
 .TP
-.B "'prompt_ramdisk=N'"
+.B 'prompt_ramdisk=N'
 If N=1, do prompt for insertion of the floppy.
 (This is the default.)
 If N=0, do not prompt.
@@ -353,12 +353,12 @@ If N=0, do not prompt.
 Set the maximal size of the ramdisk(s) to N kB.
 The default is 4096 (4\ MB).
 .TP
-.B "'ramdisk_start=N'"
+.B 'ramdisk_start=N'
 Sets the starting block number (the offset on the floppy where
 the ramdisk starts) to N.
 This is needed in case the ramdisk follows a kernel image.
 .TP
-.B "'noinitrd'"
+.B 'noinitrd'
 (Only if the kernel was compiled with
 .B CONFIG_BLK_DEV_RAM
 and
@@ -423,7 +423,7 @@ and a zero disables parity checking.
 Again, not all adapters will support selection of parity
 behavior as a boot argument.
 .TP
-.B "'max_scsi_luns=...'"
+.B 'max_scsi_luns=...'
 A SCSI device can have a number of 'subdevices' contained within
 itself.
 The most common example is one of the new SCSI CD-ROMs that
@@ -646,7 +646,7 @@ Using a boot argument of
 \&'sound=0' will disable the sound driver entirely.
 .SS The line printer driver
 .TP
-.B "'lp='"
+.B 'lp='
 .br
 Syntax:
 .IP
diff --git a/man7/cgroups.7 b/man7/cgroups.7
index deed09d44..6831fe80e 100644
--- a/man7/cgroups.7
+++ b/man7/cgroups.7
@@ -1323,7 +1323,7 @@ that exposes, and in some circumstances can be used to change,
 the "type" of a cgroup.
 This file contains one of the following type values:
 .TP
-.I "domain"
+.I domain
 This is a normal v2 cgroup that provides process-granularity control.
 If a process is a member of this cgroup,
 then all threads of the process are (by definition) in the same cgroup.
@@ -1331,7 +1331,7 @@ This is the default cgroup type,
 and provides the same behavior that was provided for
 cgroups in the initial cgroups v2 implementation.
 .TP
-.I "threaded"
+.I threaded
 This cgroup is a member of a threaded subtree.
 Threads can be added to this cgroup,
 and controllers can be enabled for the cgroup.
diff --git a/man7/math_error.7 b/man7/math_error.7
index 187c0b1cc..b1d6b02b0 100644
--- a/man7/math_error.7
+++ b/man7/math_error.7
@@ -240,7 +240,7 @@ and POSIX.1.
 .PP
 The
 .BR gcc (1)
-.I "\-fno-math-errno"
+.I \-fno-math-errno
 option causes the executable to employ implementations of some
 mathematical functions that are faster than the standard
 implementations, but do not set
@@ -248,7 +248,7 @@ implementations, but do not set
 on error.
 (The
 .BR gcc (1)
-.I "\-ffast-math"
+.I \-ffast-math
 option also enables
 .IR "\-fno-math-errno" .)
 An error can still be tested for using
-- 
2.27.0
