Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0D6168F90C
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 21:51:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232273AbjBHUvU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 15:51:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232277AbjBHUvT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 15:51:19 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B32782D146
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 12:51:16 -0800 (PST)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id Pptqpyp87l2xSPrPPpbrjo; Wed, 08 Feb 2023 20:51:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675889475; bh=QHDsLjHs8PjZa0Sbw1Q5rkIt4zysUrJcPmsGQcrHXsQ=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=iEOlKDu3vPYcovImTTt389LUvr6ZVm7HkamLVcuXzSbkqWCceE2UhifGX6UH//UaD
         Xqc74ff8WpFSISJTJFyk5QS+4esdiMjNxc5gwh0X4+cGPtnsVfNQaX/FOkIMHihxht
         M/YPSQQY9Rvam84+o+l1+HiQdoLyFGBSzQNjhtNWG2Mvl5oUqMJs4XL6DB5oJ7EjTA
         miiY7kCttjo2RDRnlXbT1ID7V2ROcJ6bAxBuHtJXXGkn636FsBTCZKRpSCVnbhx2YA
         jE6f4XZoAEszCAx9toI7/bl5tafqJTeDC2B3mDytkYwOli/qHd9n6dZPvG3gs+w9jX
         oCIihZt2ioxEg==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PrPPpEIvWyAOePrPPpK2jF; Wed, 08 Feb 2023 20:51:15 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=63e40b43
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=9DGBiy__c2rWt0WaPn0A:9 a=QEXdDO2ut3YA:10
 a=cMqLxWmJ31Yngxk47IoA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v2 11/11] man2/: punctuate long numeric strings with digit separators
Date:   Wed,  8 Feb 2023 13:27:33 -0700
Message-Id: <5209a1e3019ae3bff4a83e22d4ff20093be265eb.1675830945.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfC1xTsTW6J616I/7w0PmAugNvUqS0s2svSvFQ6HcKbVU8jUgS5X+9hXfl2aJRKePWGcoNjC3J39ax9ffb8dRVDDlUM5Ru9HSdZPN3T52okOtT3YFIdKk
 yBSSDmjmGudrMxAttyx6v5Mxb15s1Z7wVluHfkqoErwmjzso6zZjerLBRxAZKYzb6dGyDg92fZeJobxR2rNUo1i1dCZtElqpsDHZh7KszQjC4m8SXn67V08w
 PXx5y//yUfoXkrumU2qLyybadX/H6OBPW4bK86H0zXI9BBQgv7G73jjCG3VaotMj
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,WEIRD_QUOTING autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------2.39.0
Content-Type: text/plain; charset=UTF-8; format=fixed
Content-Transfer-Encoding: 8bit

---
 man2/add_key.2         | 2 +-
 man2/clock_getres.2    | 2 +-
 man2/clock_nanosleep.2 | 2 +-
 man2/eventfd.2         | 6 +++---
 man2/execve.2          | 2 +-
 man2/fcntl.2           | 4 ++--
 man2/getitimer.2       | 4 ++--
 man2/gettimeofday.2    | 2 +-
 man2/ioctl.2           | 4 ++--
 man2/ioctl_console.2   | 2 +-
 man2/ioctl_getfsmap.2  | 4 ++--
 man2/ioperm.2          | 2 +-
 man2/kexec_load.2      | 2 +-
 man2/link.2            | 4 ++--
 man2/msgget.2          | 2 +-
 man2/nanosleep.2       | 4 ++--
 man2/pciconfig_read.2  | 2 +-
 man2/perf_event_open.2 | 2 +-
 man2/personality.2     | 8 ++++----
 man2/prctl.2           | 2 +-
 man2/read.2            | 2 +-
 man2/semget.2          | 4 ++--
 man2/sendfile.2        | 2 +-
 man2/shmget.2          | 2 +-
 man2/sigaction.2       | 4 ++--
 man2/spu_run.2         | 8 ++++----
 man2/statx.2           | 2 +-
 man2/syscall.2         | 2 +-
 man2/timer_settime.2   | 4 ++--
 man2/timerfd_create.2  | 2 +-
 man2/truncate.2        | 4 ++--
 man2/utimensat.2       | 6 +++---
 man2/write.2           | 2 +-
 33 files changed, 53 insertions(+), 53 deletions(-)


--------------2.39.0
Content-Type: text/x-patch; name="v2-0011-man2-punctuate-long-numeric-strings-with-digit-se.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: inline; filename="v2-0011-man2-punctuate-long-numeric-strings-with-digit-se.patch"

diff --git a/man2/add_key.2 b/man2/add_key.2
index f6101cfd65e0..4e2aba755865 100644
--- a/man2/add_key.2
+++ b/man2/add_key.2
@@ -110,7 +110,7 @@ This is a general purpose key type whose payload may be read and updated
 by user-space applications.
 The key is kept entirely within kernel memory.
 The payload for keys of this type is a blob of arbitrary data
-of up to 32,767 bytes.
+of up to 32\[aq]767 bytes.
 .TP
 .IR """logon""" " (since Linux 3.3)"
 .\" commit 9f6ed2ca257fa8650b876377833e6f14e272848b
diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index ee0fa6735865..c36081988a74 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -272,7 +272,7 @@ does not refer to a valid instance of a clock object.
 .I tp.tv_sec
 is negative or
 .I tp.tv_nsec
-is outside the range [0, 999,999,999].
+is outside the range [0, 999\[aq]999\[aq]999].
 .TP
 .B EINVAL
 The
diff --git a/man2/clock_nanosleep.2 b/man2/clock_nanosleep.2
index 5da8d15699c2..13b31f53e654 100644
--- a/man2/clock_nanosleep.2
+++ b/man2/clock_nanosleep.2
@@ -158,7 +158,7 @@ The sleep was interrupted by a signal handler; see
 .B EINVAL
 The value in the
 .I tv_nsec
-field was not in the range [0, 999999999] or
+field was not in the range [0, 999\[aq]999\[aq]999] or
 .I tv_sec
 was negative.
 .TP
diff --git a/man2/eventfd.2 b/man2/eventfd.2
index 0a7729868dc6..a7994c99f66d 100644
--- a/man2/eventfd.2
+++ b/man2/eventfd.2
@@ -124,7 +124,7 @@ A
 call adds the 8-byte integer value supplied in its
 buffer to the counter.
 The maximum value that may be stored in the counter is the largest
-unsigned 64-bit value minus 1 (i.e., 0xfffffffffffffffe).
+unsigned 64-bit value minus 1 (i.e., 0xffff\[aq]ffff\[aq]ffff\[aq]fffe).
 If the addition would cause the counter's value to exceed
 the maximum, then the
 .BR write (2)
@@ -140,7 +140,7 @@ A
 fails with the error
 .B EINVAL
 if the size of the supplied buffer is less than 8 bytes,
-or if an attempt is made to write the value 0xffffffffffffffff.
+or if an attempt is made to write the value 0xffff\[aq]ffff\[aq]ffff\[aq]ffff.
 .TP
 .BR poll "(2), " select "(2) (and similar)"
 The returned file descriptor supports
@@ -190,7 +190,7 @@ If an overflow has occurred, then
 .BR read (2)
 will return that maximum
 .I uint64_t
-value (i.e., 0xffffffffffffffff).
+value (i.e., 0xffff\[aq]ffff\[aq]ffff\[aq]ffff).
 .RE
 .IP
 The eventfd file descriptor also supports the other file-descriptor
diff --git a/man2/execve.2 b/man2/execve.2
index fd8ebea88658..54a1229f0520 100644
--- a/man2/execve.2
+++ b/man2/execve.2
@@ -429,7 +429,7 @@ environment space as was provided by Linux 2.6.22 and earlier.
 (This guarantee was not provided in Linux 2.6.23 and 2.6.24.)
 Additionally, the limit per string is 32 pages (the kernel constant
 .BR MAX_ARG_STRLEN ),
-and the maximum number of strings is 0x7FFFFFFF.
+and the maximum number of strings is 0x7fff\[aq]ffff.
 .SH RETURN VALUE
 On success,
 .BR execve ()
diff --git a/man2/fcntl.2 b/man2/fcntl.2
index 228bba5ec71c..6290794c9292 100644
--- a/man2/fcntl.2
+++ b/man2/fcntl.2
@@ -1833,13 +1833,13 @@ are specified in POSIX.1-2001.
 .B _XOPEN_SOURCE
 with the value 500 or greater, or
 .B _POSIX_C_SOURCE
-with the value 200809L or greater.)
+with the value 2008\[aq]09L or greater.)
 .PP
 .B F_DUPFD_CLOEXEC
 is specified in POSIX.1-2008.
 (To get this definition, define
 .B _POSIX_C_SOURCE
-with the value 200809L or greater, or
+with the value 2008\[aq]09L or greater, or
 .B _XOPEN_SOURCE
 with the value 700 or greater.)
 .PP
diff --git a/man2/getitimer.2 b/man2/getitimer.2
index 80745dd78c99..8b57e2b118e0 100644
--- a/man2/getitimer.2
+++ b/man2/getitimer.2
@@ -158,7 +158,7 @@ or (since Linux 2.6.22) one of the
 .I tv_usec
 fields in the structure pointed to by
 .I new_value
-contains a value outside the range [0, 999999].
+contains a value outside the range [0, 999\[aq]999].
 .SH STANDARDS
 POSIX.1-2001, SVr4, 4.4BSD (this call first appeared in 4.2BSD).
 POSIX.1-2008 marks
@@ -253,7 +253,7 @@ POSIX.1-2001 says that
 .BR setitimer ()
 should fail if a
 .I tv_usec
-value is specified that is outside of the range [0, 999999].
+value is specified that is outside of the range [0, 999\[aq]999].
 However, up to and including Linux 2.6.21,
 Linux does not give an error, but instead silently
 adjusts the corresponding seconds value for the timer.
diff --git a/man2/gettimeofday.2 b/man2/gettimeofday.2
index d7219f9d42a4..10b6220a90c1 100644
--- a/man2/gettimeofday.2
+++ b/man2/gettimeofday.2
@@ -152,7 +152,7 @@ is invalid.
 .I tv.tv_sec
 is negative or
 .I tv.tv_usec
-is outside the range [0, 999999].
+is outside the range [0, 999\[aq]999].
 .TP
 .BR EINVAL " (since Linux 4.3)"
 .\" commit e1d7ba8735551ed79c7a0463a042353574b96da3
diff --git a/man2/ioctl.2 b/man2/ioctl.2
index ed3ec1480278..a497b8669329 100644
--- a/man2/ioctl.2
+++ b/man2/ioctl.2
@@ -134,9 +134,9 @@ one or more ASCII letters were used.
 For example,
 .B TCGETS
 has value
-0x00005401, with 0x54 = \(aqT\(aq indicating the terminal driver, and
+0x00\[aq]00\[aq]54\[aq]01, with 0x54 = \(aqT\(aq indicating the terminal driver, and
 .B CYGETTIMEOUT
-has value 0x00435906, with 0x43 0x59 = \(aqC\(aq \(aqY\(aq
+has value 0x00\[aq]43\[aq]59\[aq]06, with 0x43 0x59 = \(aqC\(aq \(aqY\(aq
 indicating the cyclades driver.
 .PP
 Later (0.98p5) some more information was built into the number.
diff --git a/man2/ioctl_console.2 b/man2/ioctl_console.2
index 89f794c1956c..ddf3fa424235 100644
--- a/man2/ioctl_console.2
+++ b/man2/ioctl_console.2
@@ -143,7 +143,7 @@ The lower 16 bits of
 specify the period in clock cycles
 (that is,
 .I argp
-= 1193180/frequency).
+= 1\[aq]193\[aq]180/frequency).
 .I argp
 = 0 turns sound off.
 In either case, control returns immediately.
diff --git a/man2/ioctl_getfsmap.2 b/man2/ioctl_getfsmap.2
index 36d284d452a4..4a2d00979d04 100644
--- a/man2/ioctl_getfsmap.2
+++ b/man2/ioctl_getfsmap.2
@@ -112,9 +112,9 @@ A filesystem that can share blocks between files likely requires the tuple
 to uniquely index any filesystem mapping record.
 Classic non-sharing filesystems might be able to identify any record with only
 .RI "(" "device" ", " "physical" ", " "flags" ")."
-For example, if the low key is set to (8:0, 36864, 0, 0, 0), the filesystem will
+For example, if the low key is set to (8:0, 36\[aq]864, 0, 0, 0), the filesystem will
 only return records for extents starting at or above 36\ KiB on disk.
-If the high key is set to (8:0, 1048576, 0, 0, 0),
+If the high key is set to (8:0, 1\[aq]048\[aq]576, 0, 0, 0),
 only records below 1\ MiB will be returned.
 The format of
 .I fmr_device
diff --git a/man2/ioperm.2 b/man2/ioperm.2
index 1b07ab1c059e..7b3a55af65d7 100644
--- a/man2/ioperm.2
+++ b/man2/ioperm.2
@@ -46,7 +46,7 @@ For more ports, the
 system call had to be used (with a
 .I level
 argument of 3).
-Since Linux 2.6.8, 65,536 I/O ports can be specified.
+Since Linux 2.6.8, 65\[aq]536 I/O ports can be specified.
 .PP
 Permissions are inherited by the child created by
 .BR fork (2)
diff --git a/man2/kexec_load.2 b/man2/kexec_load.2
index b0cfb936543e..097254f9b43b 100644
--- a/man2/kexec_load.2
+++ b/man2/kexec_load.2
@@ -67,7 +67,7 @@ and is effective only if
 .I nr_segments
 is greater than 0.
 .PP
-The high-order bits (corresponding to the mask 0xffff0000) of
+The high-order bits (corresponding to the mask 0xffff\[aq]0000) of
 .I flags
 contain the architecture of the to-be-executed kernel.
 Specify (OR) the constant
diff --git a/man2/link.2 b/man2/link.2
index e00c8e307904..719cc77a9e75 100644
--- a/man2/link.2
+++ b/man2/link.2
@@ -204,9 +204,9 @@ For example, on an
 .BR ext4 (5)
 filesystem that does not employ the
 .I dir_index
-feature, the limit on the number of hard links to a file is 65,000; on
+feature, the limit on the number of hard links to a file is 65\[aq]000; on
 .BR btrfs (5),
-the limit is 65,535 links.
+the limit is 65\[aq]535 links.
 .TP
 .B ENAMETOOLONG
 .IR oldpath " or " newpath " was too long."
diff --git a/man2/msgget.2 b/man2/msgget.2
index 4a03f665f4fe..8ae42da079de 100644
--- a/man2/msgget.2
+++ b/man2/msgget.2
@@ -190,7 +190,7 @@ Before Linux 3.19,
 .\" commit 0050ee059f7fc86b1df2527aaa14ed5dc72f9973
 the default value for this limit was calculated using a formula
 based on available system memory.
-Since Linux 3.19, the default value is 32,000.
+Since Linux 3.19, the default value is 32\[aq]000.
 On Linux, this limit can be read and modified via
 .IR /proc/sys/kernel/msgmni .
 .SS Linux notes
diff --git a/man2/nanosleep.2 b/man2/nanosleep.2
index 12e0cee84b85..574b2bdd04aa 100644
--- a/man2/nanosleep.2
+++ b/man2/nanosleep.2
@@ -66,7 +66,7 @@ The
 structure
 is used to specify intervals of time with nanosecond precision.
 .PP
-The value of the nanoseconds field must be in the range [0, 999999999].
+The value of the nanoseconds field must be in the range [0, 999\[aq]999\[aq]999].
 .PP
 Compared to
 .BR sleep (3)
@@ -106,7 +106,7 @@ again and continue with the pause.
 .B EINVAL
 The value in the
 .I tv_nsec
-field was not in the range [0, 999999999] or
+field was not in the range [0, 999\[aq]999\[aq]999] or
 .I tv_sec
 was negative.
 .SH STANDARDS
diff --git a/man2/pciconfig_read.2 b/man2/pciconfig_read.2
index 64de37f53b67..e89606b9a8f1 100644
--- a/man2/pciconfig_read.2
+++ b/man2/pciconfig_read.2
@@ -50,7 +50,7 @@ value.
 .TP
 .BR pciconfig_iobase ()
 You pass it a bus/devfn pair and get a physical address for either the
-memory offset (for things like prep, this is 0xc0000000),
+memory offset (for things like prep, this is 0xc000\[aq]0000),
 the IO base for PIO cycles, or the ISA holes if any.
 .SH RETURN VALUE
 .TP
diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 8e94fb4ac61b..f0474e993c01 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -3364,7 +3364,7 @@ Setting this too high can allow
 users to sample at a rate that impacts overall machine performance
 and potentially lock up the machine.
 The default value is
-100000 (samples per second).
+100\[aq]000 (samples per second).
 .TP
 .I /proc/sys/kernel/perf_event_max_stack
 .\" Introduced in c5dfd78eb79851e278b7973031b9ca363da87a7e
diff --git a/man2/personality.2 b/man2/personality.2
index 4be1b97f5da6..fb9659d7fe54 100644
--- a/man2/personality.2
+++ b/man2/personality.2
@@ -34,13 +34,13 @@ UNIX-like operating systems.
 If
 .I persona
 is not
-0xffffffff, then
+0xffff\[aq]ffff, then
 .BR personality ()
 sets the caller's execution domain to the value specified by
 .IR persona .
 Specifying
 .I persona
-as 0xffffffff provides a way of retrieving
+as 0xffff\[aq]ffff provides a way of retrieving
 the current persona without changing it.
 .PP
 A list of the available execution domains can be found in
@@ -63,10 +63,10 @@ With this flag set, disable address-space-layout randomization.
 Limit the address space to 32 bits.
 .TP
 .BR ADDR_LIMIT_3GB " (since Linux 2.4.0)"
-With this flag set, use 0xc0000000 as the offset at which to search
+With this flag set, use 0xc000\[aq]0000 as the offset at which to search
 a virtual memory chunk on
 .BR mmap (2);
-otherwise use 0xffffe000.
+otherwise use 0xffff\[aq]e000.
 .TP
 .BR FDPIC_FUNCPTRS " (since Linux 2.6.11)"
 User-space function pointers to signal handlers point
diff --git a/man2/prctl.2 b/man2/prctl.2
index 368436bad4cd..6220cb5d4c68 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1932,7 +1932,7 @@ The "default" value can't be changed.
 The timer slack values of
 .I init
 (PID 1), the ancestor of all processes,
-are 50,000 nanoseconds (50 microseconds).
+are 50\[aq]000 nanoseconds (50 microseconds).
 The timer slack value is inherited by a child created via
 .BR fork (2),
 and is preserved across
diff --git a/man2/read.2 b/man2/read.2
index 13f999e7ba1b..903db69afaa5 100644
--- a/man2/read.2
+++ b/man2/read.2
@@ -176,7 +176,7 @@ unsigned and signed integer data types specified by POSIX.1.
 On Linux,
 .BR read ()
 (and similar system calls) will transfer at most
-0x7ffff000 (2,147,479,552) bytes,
+0x7fff\[aq]f000 (2\[aq]147\[aq]479\[aq]552) bytes,
 returning the number of bytes actually transferred.
 .\" commit e28cc71572da38a5a12c1cfe4d7032017adccf69
 (This is true on both 32-bit and 64-bit systems.)
diff --git a/man2/semget.2 b/man2/semget.2
index a15b472a99f5..d3c994ad7cc2 100644
--- a/man2/semget.2
+++ b/man2/semget.2
@@ -249,7 +249,7 @@ Before Linux 3.19,
 the default value for this limit was 128.
 Since Linux 3.19,
 .\" commit e843e7d2c88b7db107a86bd2c7145dc715c058f4
-the default value is 32,000.
+the default value is 32\[aq]000.
 On Linux, this limit can be read and modified via the fourth field of
 .IR /proc/sys/kernel/sem .
 .\" This /proc file is not available in Linux 2.2 and earlier -- MTK
@@ -260,7 +260,7 @@ Before Linux 3.19,
 the default value for this limit was 250.
 Since Linux 3.19,
 .\" commit e843e7d2c88b7db107a86bd2c7145dc715c058f4
-the default value is 32,000.
+the default value is 32\[aq]000.
 On Linux, this limit can be read and modified via the first field of
 .IR /proc/sys/kernel/sem .
 .TP
diff --git a/man2/sendfile.2 b/man2/sendfile.2
index 07a2c5b35dd0..302e1905f3c7 100644
--- a/man2/sendfile.2
+++ b/man2/sendfile.2
@@ -179,7 +179,7 @@ with different semantics and prototypes.
 It should not be used in portable programs.
 .SH NOTES
 .BR sendfile ()
-will transfer at most 0x7ffff000 (2,147,479,552) bytes,
+will transfer at most 0x7fff\[aq]f000 (2\[aq]147\[aq]479\[aq]552) bytes,
 returning the number of bytes actually transferred.
 .\" commit e28cc71572da38a5a12c1cfe4d7032017adccf69
 (This is true on both 32-bit and 64-bit systems.)
diff --git a/man2/shmget.2 b/man2/shmget.2
index 4bc18bedf3a9..bdc96433c35d 100644
--- a/man2/shmget.2
+++ b/man2/shmget.2
@@ -354,7 +354,7 @@ for a discussion of why this default value (rather than
 is used.
 .IP
 From Linux 2.2 up to Linux 3.15, the default value of
-this limit was 0x2000000 (32\ MiB).
+this limit was 0x200\[aq]0000 (32\ MiB).
 .IP
 Because it is not possible to map just part of a shared memory segment,
 the amount of virtual memory places another limit on the maximum size of a
diff --git a/man2/sigaction.2 b/man2/sigaction.2
index dfb94fe4fb3f..e4592a883be2 100644
--- a/man2/sigaction.2
+++ b/man2/sigaction.2
@@ -52,7 +52,7 @@ Feature Test Macro Requirements for glibc (see
 .PP
 .IR siginfo_t :
 .nf
-    _POSIX_C_SOURCE >= 199309L
+    _POSIX_C_SOURCE >= 1993\[aq]09L
 .fi
 .SH DESCRIPTION
 The
@@ -623,7 +623,7 @@ and
 or
 .IP \(bu
 .B _POSIX_C_SOURCE
-with the value 200809L or greater.
+with the value 2008\[aq]09L or greater.
 .PP
 For the
 .B TRAP_*
diff --git a/man2/spu_run.2 b/man2/spu_run.2
index 139f10a97a80..f8c23e43eccd 100644
--- a/man2/spu_run.2
+++ b/man2/spu_run.2
@@ -136,7 +136,7 @@ SPU has tried to execute an invalid instruction.
 .B 0x40
 SPU has tried to access an invalid channel.
 .TP
-.B 0x3fff0000
+.B 0x3fff\[aq]0000
 The bits masked with this value contain the code returned from a
 .B stop-and-signal
 instruction.
@@ -245,9 +245,9 @@ int main(void)
         err(EXIT_FAILURE, "open");
 
     /*
-     * We should see a status code of 0x12340002:
-     *   0x00000002 (spu was stopped due to stop\-and\-signal)
-     * | 0x12340000 (the stop\-and\-signal code)
+     * We should see a status code of 0x1234\[aq]0002:
+     *   0x0000\[aq]0002 (spu was stopped due to stop\-and\-signal)
+     * | 0x1234\[aq]0000 (the stop\-and\-signal code)
      */
     printf("SPU Status: %#08x\en", spu_status);
 
diff --git a/man2/statx.2 b/man2/statx.2
index 1942672ae004..f621e7371145 100644
--- a/man2/statx.2
+++ b/man2/statx.2
@@ -559,7 +559,7 @@ Reserved flag specified in
 .IR mask .
 (Currently, there is one such flag, designated by the constant
 .BR STATX__RESERVED ,
-with the value 0x80000000U.)
+with the value 0x8000\[aq]0000U.)
 .TP
 .B ELOOP
 Too many symbolic links encountered while traversing the pathname.
diff --git a/man2/syscall.2 b/man2/syscall.2
index a66338d59af2..81d830b1a918 100644
--- a/man2/syscall.2
+++ b/man2/syscall.2
@@ -176,7 +176,7 @@ arm/EABI	swi 0x0	r7	r0	r1	-
 arm64	svc #0	w8	x0	x1	-
 blackfin	excpt 0x0	P0	R0	-	-
 i386	int $0x80	eax	eax	edx	-
-ia64	break 0x100000	r15	r8	r9	r10	1, 6
+ia64	break 0x10\[aq]0000	r15	r8	r9	r10	1, 6
 loongarch	syscall 0	a7	a0	-	-
 m68k	trap #0	d0	d0	-	-
 microblaze	brki r14,8	r12	r3	-	-
diff --git a/man2/timer_settime.2 b/man2/timer_settime.2
index 29d9ed4d27be..c1d1ff469231 100644
--- a/man2/timer_settime.2
+++ b/man2/timer_settime.2
@@ -28,7 +28,7 @@ Feature Test Macro Requirements for glibc (see
 .BR timer_settime (),
 .BR timer_gettime ():
 .nf
-    _POSIX_C_SOURCE >= 199309L
+    _POSIX_C_SOURCE >= 1993\[aq]09L
 .fi
 .SH DESCRIPTION
 .BR timer_settime ()
@@ -171,7 +171,7 @@ may fail with the following errors:
 .I new_value.it_value
 is negative; or
 .I new_value.it_value.tv_nsec
-is negative or greater than 999,999,999.
+is negative or greater than 999\[aq]999\[aq]999.
 .SH VERSIONS
 These system calls are available since Linux 2.6.
 .SH STANDARDS
diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
index 5ccc165a3673..e72a10e7c685 100644
--- a/man2/timerfd_create.2
+++ b/man2/timerfd_create.2
@@ -461,7 +461,7 @@ See NOTES.
 .I new_value
 is not properly initialized (one of the
 .I tv_nsec
-falls outside the range zero to 999,999,999).
+falls outside the range zero to 999\[aq]999\[aq]999).
 .TP
 .B EINVAL
 .\" This case only checked since Linux 2.6.29, and Linux 2.2.2[78].some-stable-version.
diff --git a/man2/truncate.2 b/man2/truncate.2
index bec1a575638a..6365f97eef98 100644
--- a/man2/truncate.2
+++ b/man2/truncate.2
@@ -125,7 +125,7 @@ Too many symbolic links were encountered in translating the pathname.
 .TP
 .B ENAMETOOLONG
 A component of a pathname exceeded 255 characters,
-or an entire pathname exceeded 1023 characters.
+or an entire pathname exceeded 1\[aq]023 characters.
 .TP
 .B ENOENT
 The named file does not exist.
@@ -240,7 +240,7 @@ A header file bug in glibc 2.12 meant that the minimum value of
 .B _POSIX_C_SOURCE
 required to expose the declaration of
 .BR ftruncate ()
-was 200809L instead of 200112L.
+was 2008\[aq]09L instead of 2001\[aq]12L.
 This has been fixed in later glibc versions.
 .SH SEE ALSO
 .BR truncate (1),
diff --git a/man2/utimensat.2 b/man2/utimensat.2
index 1d9206ed0ced..179a09a9ec9d 100644
--- a/man2/utimensat.2
+++ b/man2/utimensat.2
@@ -28,7 +28,7 @@ Feature Test Macro Requirements for glibc (see
 .BR utimensat ():
 .nf
     Since glibc 2.10:
-        _POSIX_C_SOURCE >= 200809L
+        _POSIX_C_SOURCE >= 2008\[aq]09L
     Before glibc 2.10:
         _ATFILE_SOURCE
 .fi
@@ -36,7 +36,7 @@ Feature Test Macro Requirements for glibc (see
 .BR futimens ():
 .nf
     Since glibc 2.10:
-        _POSIX_C_SOURCE >= 200809L
+        _POSIX_C_SOURCE >= 2008\[aq]09L
     Before glibc 2.10:
         _GNU_SOURCE
 .fi
@@ -272,7 +272,7 @@ Invalid value in
 .B EINVAL
 Invalid value in one of the
 .I tv_nsec
-fields (value outside range [0, 999999999], and not
+fields (value outside range [0, 999\[aq]999\[aq]999], and not
 .B UTIME_NOW
 or
 .BR UTIME_OMIT );
diff --git a/man2/write.2 b/man2/write.2
index 9f4a814b6ad5..22018bdef278 100644
--- a/man2/write.2
+++ b/man2/write.2
@@ -268,7 +268,7 @@ the call succeeds, and returns the number of bytes written.
 On Linux,
 .BR write ()
 (and similar system calls) will transfer at most
-0x7ffff000 (2,147,479,552) bytes,
+0x7fff\[aq]f000 (2\[aq]147\[aq]479\[aq]552) bytes,
 returning the number of bytes actually transferred.
 .\" commit e28cc71572da38a5a12c1cfe4d7032017adccf69
 (This is true on both 32-bit and 64-bit systems.)

--------------2.39.0--


