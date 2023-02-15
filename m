Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 543D86986EB
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 22:04:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230242AbjBOVEm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 16:04:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230035AbjBOVE2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 16:04:28 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F070F442E6
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 13:02:38 -0800 (PST)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id SI7xp4bg6c9C4SOvGp0rKY; Wed, 15 Feb 2023 21:02:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1676494958; bh=ZECJcwLx9WLCCj1DZTvzYjYJe5+r+0yB6EV+RDKvWCs=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=HiJqjyj7iwpJu9TSgEUDrCSzHyUPmY3c7N9eZS/QflKBUqz6d1PUpK6XVUz3RKmDM
         nEu5R7bDZ7dV+ARcNRH1H3urC/bsw06hPcE+uXHlwQRQoSTiBPtK84nH45stMj8GGX
         wU2NPb9PzYVnlIxDgVARPme2RmZ1TXpsVIleJRNrHyFzAzYn1qNgvTcx/hTVbY8Mjj
         9JzGCRl92bWcqU9jGfSJ1PzAITI/VTxg2zmNPNcw0rrajw5TRFvdqYYIFcVVsMLq2t
         2pwQvWbFrsHD9cUQ+DZsNo3HD4nMcAWU/baVFg7iSR2VAzIn+cx5FD1jPuNGsw8m/1
         +gWssQuixTAkw==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id SOvFp0Q9EyAOeSOvFpcBYX; Wed, 15 Feb 2023 21:02:38 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=63ed486e
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=gRl6Xeu-Cf-SUz0zutEA:9
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     "Linux Man Pages" <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v3 6/6] man2/: add C digit separators to clarify long numeric digit strings
Date:   Wed, 15 Feb 2023 13:17:11 -0700
Message-Id: <3a42e44f476f084dc0fb2fa83ad5708e37818d0f.1676489381.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfF4SISEp1CYQJjSjyn6SlWsl6rlp9pg86xUNhTYeL3MYCx21KaAxAdARkr0UravWH913OhRaere1bJzl1uZgAKkLKp6M+0FYeD2bZhUVyLWyrI5aqAKK
 MYSAEjhGXe6b2mP4rmNdxISbT3Xxo+yaqvIx0eG20gEchyaC9yL/hJ+Kj2SmDbitQ6efv+7Uwdc0duIgUIfBoNPrQNiskTTNFKYkpvUy2fBmFBoI/73CKgUm
 TRolK0UndLv0qPOsdcnmZ1k/5bfjtowOhSGbo6nYmqmsrh/SuEB9ijQuhZWaW7pD
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man2/capget.2           |  6 +++---
 man2/ioctl.2            |  4 ++--
 man2/msgctl.2           | 14 +++++++-------
 man2/openat2.2          |  4 ++--
 man2/process_vm_readv.2 |  2 +-
 man2/reboot.2           |  2 +-
 man2/semctl.2           | 16 ++++++++--------
 man2/shmctl.2           | 14 +++++++-------
 man2/umask.2            |  8 ++++----
 man2/utimensat.2        |  2 +-
 10 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/man2/capget.2 b/man2/capget.2
index 909f8bfe0de0..7c0e5b414d5d 100644
--- a/man2/capget.2
+++ b/man2/capget.2
@@ -56,17 +56,17 @@ The structures are defined as follows.
 .PP
 .in +4n
 .EX
-#define _LINUX_CAPABILITY_VERSION_1  0x19980330
+#define _LINUX_CAPABILITY_VERSION_1  0x1998\[aq]03\[aq]30
 #define _LINUX_CAPABILITY_U32S_1     1
 
         /* V2 added in Linux 2.6.25; deprecated */
-#define _LINUX_CAPABILITY_VERSION_2  0x20071026
+#define _LINUX_CAPABILITY_VERSION_2  0x2007\[aq]10\[aq]26
 .\" commit e338d263a76af78fe8f38a72131188b58fceb591
 .\" Added 64 bit capability support
 #define _LINUX_CAPABILITY_U32S_2     2
 
         /* V3 added in Linux 2.6.26 */
-#define _LINUX_CAPABILITY_VERSION_3  0x20080522
+#define _LINUX_CAPABILITY_VERSION_3  0x2008\[aq]05\[aq]22
 .\" commit ca05a99a54db1db5bca72eccb5866d2a86f8517f
 #define _LINUX_CAPABILITY_U32S_3     2
 
diff --git a/man2/ioctl.2 b/man2/ioctl.2
index f33f2c57c103..36e1ff4e041f 100644
--- a/man2/ioctl.2
+++ b/man2/ioctl.2
@@ -134,9 +134,9 @@ one or more ASCII letters were used.
 For example,
 .B TCGETS
 has value
-0x00005401, with 0x54 = \[aq]T\[aq] indicating the terminal driver, and
+0x00\[aq]00\[aq]54\[aq]01, with 0x54 = \[aq]T\[aq] indicating the terminal driver, and
 .B CYGETTIMEOUT
-has value 0x00435906, with 0x43 0x59 = \[aq]C\[aq] \[aq]Y\[aq]
+has value 0x00\[aq]43\[aq]59\[aq]06, with 0x43 0x59 = \[aq]C\[aq] \[aq]Y\[aq]
 indicating the cyclades driver.
 .PP
 Later (0.98p5) some more information was built into the number.
diff --git a/man2/msgctl.2 b/man2/msgctl.2
index ce534dc2abd5..f49b8a951d29 100644
--- a/man2/msgctl.2
+++ b/man2/msgctl.2
@@ -131,15 +131,15 @@ structure define the access permissions for the message queue.
 The permission bits are as follows:
 .TS
 l l.
-0400	Read by user
-0200	Write by user
-0040	Read by group
-0020	Write by group
-0004	Read by others
-0002	Write by others
+0\[aq]400	Read by user
+0\[aq]200	Write by user
+0\[aq]040	Read by group
+0\[aq]020	Write by group
+0\[aq]004	Read by others
+0\[aq]002	Write by others
 .TE
 .PP
-Bits 0100, 0010, and 0001 (the execute bits) are unused by the system.
+Bits 0\[aq]100, 0\[aq]010, and 0\[aq]001 (the execute bits) are unused by the system.
 .PP
 Valid values for
 .I cmd
diff --git a/man2/openat2.2 b/man2/openat2.2
index 3ffd06ae7298..8b6cd5781b11 100644
--- a/man2/openat2.2
+++ b/man2/openat2.2
@@ -140,7 +140,7 @@ argument of
 Whereas
 .BR openat (2)
 ignores bits other than those in the range
-.I 07777
+.I 07\[aq]777
 in its
 .I mode
 argument,
@@ -148,7 +148,7 @@ argument,
 returns an error if
 .I how.mode
 contains bits other than
-.IR 07777 .
+.IR 07\[aq]777 .
 Similarly, an error is returned if
 .BR openat2 ()
 is called with a nonzero
diff --git a/man2/process_vm_readv.2 b/man2/process_vm_readv.2
index 712a19dd2212..d6b865878162 100644
--- a/man2/process_vm_readv.2
+++ b/man2/process_vm_readv.2
@@ -271,7 +271,7 @@ when using, for example, shared memory or pipes).
 .SH EXAMPLES
 The following code sample demonstrates the use of
 .BR process_vm_readv ().
-It reads 20 bytes at the address 0x10000 from the process with PID 10
+It reads 20 bytes at the address 0x1\[aq]0000 from the process with PID 10
 and writes the first 10 bytes into
 .I buf1
 and the second 10 bytes into
diff --git a/man2/reboot.2 b/man2/reboot.2
index 6fed0a076c77..d032ef70aafa 100644
--- a/man2/reboot.2
+++ b/man2/reboot.2
@@ -123,7 +123,7 @@ If not preceded by a
 data will be lost.
 .TP
 .B LINUX_REBOOT_CMD_RESTART2
-(0xa1b2c3d4; since Linux 2.1.30).
+(0xa1b2\[aq]c3d4; since Linux 2.1.30).
 The message "Restarting system with command \[aq]%s\[aq]" is printed,
 and a restart (using the command string given in
 .IR arg )
diff --git a/man2/semctl.2 b/man2/semctl.2
index 619062858212..7d6115aa006f 100644
--- a/man2/semctl.2
+++ b/man2/semctl.2
@@ -137,16 +137,16 @@ structure define the access permissions for the shared memory segment.
 The permission bits are as follows:
 .TS
 l l.
-0400	Read by user
-0200	Write by user
-0040	Read by group
-0020	Write by group
-0004	Read by others
-0002	Write by others
+0\[aq]400	Read by user
+0\[aq]200	Write by user
+0\[aq]040	Read by group
+0\[aq]020	Write by group
+0\[aq]004	Read by others
+0\[aq]002	Write by others
 .TE
 .PP
 In effect, "write" means "alter" for a semaphore set.
-Bits 0100, 0010, and 0001 (the execute bits) are unused by the system.
+Bits 0\[aq]100, 0\[aq]010, and 0\[aq]001 (the execute bits) are unused by the system.
 .PP
 Valid values for
 .I cmd
@@ -561,7 +561,7 @@ call:
 .B SEMVMX
 Maximum value for
 .BR semval :
-implementation dependent (32767).
+implementation dependent (32Ki-1).
 .PP
 For greater portability, it is best to always call
 .BR semctl ()
diff --git a/man2/shmctl.2 b/man2/shmctl.2
index bc456849d3bd..88d91767dc59 100644
--- a/man2/shmctl.2
+++ b/man2/shmctl.2
@@ -136,15 +136,15 @@ structure define the access permissions for the shared memory segment.
 The permission bits are as follows:
 .TS
 l l.
-0400	Read by user
-0200	Write by user
-0040	Read by group
-0020	Write by group
-0004	Read by others
-0002	Write by others
+0\[aq]400	Read by user
+0\[aq]200	Write by user
+0\[aq]040	Read by group
+0\[aq]020	Write by group
+0\[aq]004	Read by others
+0\[aq]002	Write by others
 .TE
 .PP
-Bits 0100, 0010, and 0001 (the execute bits) are unused by the system.
+Bits 0\[aq]100, 0\[aq]010, and 0\[aq]001 (the execute bits) are unused by the system.
 (It is not necessary to have execute permission on a segment
 in order to perform a
 .BR shmat (2)
diff --git a/man2/umask.2 b/man2/umask.2
index 541d81c665ff..7100f6cb8535 100644
--- a/man2/umask.2
+++ b/man2/umask.2
@@ -27,7 +27,7 @@ Standard C library
 .BR umask ()
 sets the calling process's file mode creation mask (umask) to
 .I mask
-& 0777 (i.e., only the file permission bits of
+& 0777 (i.e., only the file permission bits of 0\[aq]777 (i.e., only the file permission bits of
 .I mask
 are used), and returns the previous value of the mask.
 .PP
@@ -63,7 +63,7 @@ u::rwx,g::r-x,o::r-x
 .PP
 Combining the effect of this default ACL with a
 .I mode
-argument of 0666 (rw-rw-rw-), the resulting file permissions would be 0644
+argument of 0\[aq]666 (rw-rw-rw-), the resulting file permissions would be 0\[aq]644
 (rw-r--r--).
 .PP
 The constants that should be used to specify
@@ -86,7 +86,7 @@ is specified as:
 .EE
 .in
 .PP
-(octal 0666) when creating a new file, the permissions on the
+(octal 0\[aq]666) when creating a new file, the permissions on the
 resulting file will be:
 .PP
 .in +4n
@@ -95,7 +95,7 @@ resulting file will be:
 .EE
 .in
 .PP
-(because 0666 & \[ti]022 = 0644; i.e. rw\-r\-\-r\-\-).
+(because 0\[aq]666 (because 0666 & \[ti]022 = 0644; i.e. rw\-r\-\-r\-\-). \[ti]022 = 0\[aq]644; i.e. rw\-r\-\-r\-\-).
 .SH RETURN VALUE
 This system call always succeeds and the previous value of the mask
 is returned.
diff --git a/man2/utimensat.2 b/man2/utimensat.2
index c2e6a9164917..90ef97f3c070 100644
--- a/man2/utimensat.2
+++ b/man2/utimensat.2
@@ -272,7 +272,7 @@ Invalid value in
 .B EINVAL
 Invalid value in one of the
 .I tv_nsec
-fields (value outside range [0, 999,999,999], and not
+fields (value outside range [0, 999\[aq]999\[aq]999], and not
 .B UTIME_NOW
 or
 .BR UTIME_OMIT );
-- 
2.39.0

