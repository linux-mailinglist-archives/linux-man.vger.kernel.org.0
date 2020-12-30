Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA78C2E7A42
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 16:21:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726452AbgL3PVk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 10:21:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726276AbgL3PVj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 10:21:39 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2042DC06179C
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 07:20:59 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id a6so5191169wmc.2
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 07:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qeZbCNaDTvKz1ETVnVr0P/K1V2OswFV+zQT1lPR+JMk=;
        b=TxMzCCFT/VEx08E1a0/we7xz5DTYhz0xoVPXS7azLrHq0CqaOBt5EdrypzUU9VsM3o
         15GVxWb+KibnzKoOWFdGGZmCTCrm1Yfzf+pKoUF00lye0tFYW4g32xn5b19khbedDyXK
         1clR5zODhOkeLY8IDHOvK747t6YsTstf97h9UX5VgUh3HZXGPnFw5ecIC5RM+N96HWE8
         k9j6Np+59gcypKmDldW7gxrb1Za2MXSQBuhvmeAELX00TXbNcZkV4x+wOCCx2qIWbtf9
         23Emgzu5KD8/fZuIBLa83rqpBr3PnlGmH8u/IgkWDZDzBBiAGBrFCUlqi4OHPPZ4iqgN
         3LRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qeZbCNaDTvKz1ETVnVr0P/K1V2OswFV+zQT1lPR+JMk=;
        b=IfSFhOJaALblIPqG9Dj5EOMQfIwPJoNGuIbul0PGjGTB0UPJtGUbZDO03tzZ0kDeJ+
         u8EnRezURKIz5RHADzCbpDD1gvFO12RJocF0+vk9WCmO5DezuEW4vuH1NY/Ec8tK6Ve9
         m6k7LxOGwbgV9JZf4qCswjdIOToL2uAPJ+5MFL+7PIX/2RhdXL2T4ZX4UnOazGGuRyj4
         8Z2gSXP/bRHU30kWHC0949t+084Q6306QzeUnjPmw4UfBfO/oeL1IZUjO2U5qmYTs/fA
         U+WqrakevbNfOqJn7UzjqBOKR953sPzvsS/UYgsNw8pZBsp/w0GdRqlAtIz8r/fJgBsw
         m8ow==
X-Gm-Message-State: AOAM5305+iE117PaTK7DvUs3scqCe9bpoNpKZ1jO/eCZ6cjFKFRf+Lzj
        gFJeCzk5trrE+qdfDT7Hq0k=
X-Google-Smtp-Source: ABdhPJxdxJT/6RSncjIEYrLFAT/BQfNH07Y9bOWSkJHEpMnBB7dbVJUSGtlwpgs3mF5fBg1iCDiE/A==
X-Received: by 2002:a1c:bc88:: with SMTP id m130mr8234281wmf.82.1609341657779;
        Wed, 30 Dec 2020 07:20:57 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id r13sm65599786wrs.6.2020.12.30.07.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Dec 2020 07:20:57 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Ganimedes Colomar <gacoan.linux@gmail.com>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v2 2/2] Various pages: Normalize NOTES about nonexistent glibc wrappers
Date:   Wed, 30 Dec 2020 16:20:26 +0100
Message-Id: <20201230152025.300622-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <91ef6bdb-76db-ffdd-7d43-51d7abeb9beb@gmail.com>
References: <91ef6bdb-76db-ffdd-7d43-51d7abeb9beb@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Ganimedes Colomar <gacoan.linux@gmail.com>

See previous commit.

This commit normalizes texts under sections other than SYNOPSIS
(most of them in NOTES).

Signed-off-by: Ganimedes Colomar <gacoan.linux@gmail.com>
Cowritten-by: Alejandro Colomar <alx.manpages@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/add_key.2              | 2 +-
 man2/arch_prctl.2           | 6 ++----
 man2/getdents.2             | 8 ++++----
 man2/io_cancel.2            | 2 +-
 man2/io_destroy.2           | 2 +-
 man2/io_getevents.2         | 2 +-
 man2/io_setup.2             | 2 +-
 man2/io_submit.2            | 2 +-
 man2/kexec_load.2           | 3 +--
 man2/keyctl.2               | 2 +-
 man2/pidfd_getfd.2          | 2 +-
 man2/pidfd_open.2           | 2 +-
 man2/pidfd_send_signal.2    | 2 +-
 man2/request_key.2          | 2 +-
 man2/s390_guarded_storage.2 | 3 +--
 man2/s390_pci_mmio_write.2  | 3 +--
 man2/s390_runtime_instr.2   | 3 +--
 man2/s390_sthyi.2           | 3 +--
 man2/seccomp.2              | 3 +++
 man2/sysctl.2               | 3 +--
 20 files changed, 26 insertions(+), 31 deletions(-)

diff --git a/man2/add_key.2 b/man2/add_key.2
index 7c20de777..0d136e4aa 100644
--- a/man2/add_key.2
+++ b/man2/add_key.2
@@ -216,7 +216,7 @@ This system call first appeared in Linux 2.6.10.
 .SH CONFORMING TO
 This system call is a nonstandard Linux extension.
 .SH NOTES
-No wrapper for this system call is provided in glibc.
+Glibc does not provide a wrapper for this system call.
 A wrapper is provided in the
 .IR libkeyutils
 package.
diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
index e8a6da391..f9a9dc39d 100644
--- a/man2/arch_prctl.2
+++ b/man2/arch_prctl.2
@@ -177,10 +177,8 @@ and
 in the same thread is dangerous, as they may overwrite each other's
 TLS entries.
 .PP
-As of version 2.7, glibc provides no prototype for
-.BR arch_prctl ().
-You have to declare it yourself for now.
-This may be fixed in future glibc versions.
+Glibc does not provide a wrapper for this system call; call it using
+.BR syscall (2).
 .PP
 .I FS
 may be already used by the threading library.
diff --git a/man2/getdents.2 b/man2/getdents.2
index 8fe6f90fc..2a0576ffd 100644
--- a/man2/getdents.2
+++ b/man2/getdents.2
@@ -211,13 +211,13 @@ SVr4.
 Library support for
 .BR getdents64 ()
 was added in glibc 2.30;
-there is no glibc wrapper for
-.BR getdents ().
-Calling
+Glibc does not provide a wrapper for
+.BR getdents ();
+call
 .BR getdents ()
 (or
 .BR getdents64 ()
-on earlier glibc versions) requires the use of
+on earlier glibc versions) using
 .BR syscall (2).
 In that case you will need to define the
 .I linux_dirent
diff --git a/man2/io_cancel.2 b/man2/io_cancel.2
index 1bea257ec..8bcd9c195 100644
--- a/man2/io_cancel.2
+++ b/man2/io_cancel.2
@@ -68,7 +68,7 @@ The asynchronous I/O system calls first appeared in Linux 2.5.
 is Linux-specific and should not be used
 in programs that are intended to be portable.
 .SH NOTES
-Glibc does not provide a wrapper function for this system call.
+Glibc does not provide a wrapper for this system call.
 You could invoke it using
 .BR syscall (2).
 But instead, you probably want to use the
diff --git a/man2/io_destroy.2 b/man2/io_destroy.2
index dc9633f5a..89defd867 100644
--- a/man2/io_destroy.2
+++ b/man2/io_destroy.2
@@ -57,7 +57,7 @@ The asynchronous I/O system calls first appeared in Linux 2.5.
 is Linux-specific and should not be used in programs
 that are intended to be portable.
 .SH NOTES
-Glibc does not provide a wrapper function for this system call.
+Glibc does not provide a wrapper for this system call.
 You could invoke it using
 .BR syscall (2).
 But instead, you probably want to use the
diff --git a/man2/io_getevents.2 b/man2/io_getevents.2
index c9a608e06..0f7c17dbf 100644
--- a/man2/io_getevents.2
+++ b/man2/io_getevents.2
@@ -94,7 +94,7 @@ The asynchronous I/O system calls first appeared in Linux 2.5.
 is Linux-specific and should not be used in
 programs that are intended to be portable.
 .SH NOTES
-Glibc does not provide a wrapper function for this system call.
+Glibc does not provide a wrapper for this system call.
 You could invoke it using
 .BR syscall (2).
 But instead, you probably want to use the
diff --git a/man2/io_setup.2 b/man2/io_setup.2
index 5168ee445..e08d19bb8 100644
--- a/man2/io_setup.2
+++ b/man2/io_setup.2
@@ -72,7 +72,7 @@ The asynchronous I/O system calls first appeared in Linux 2.5.
 is Linux-specific and should not be used in programs
 that are intended to be portable.
 .SH NOTES
-Glibc does not provide a wrapper function for this system call.
+Glibc does not provide a wrapper for this system call.
 You could invoke it using
 .BR syscall (2).
 But instead, you probably want to use the
diff --git a/man2/io_submit.2 b/man2/io_submit.2
index bcbcf43b9..6cdd018a5 100644
--- a/man2/io_submit.2
+++ b/man2/io_submit.2
@@ -247,7 +247,7 @@ The asynchronous I/O system calls first appeared in Linux 2.5.
 is Linux-specific and should not be used in
 programs that are intended to be portable.
 .SH NOTES
-Glibc does not provide a wrapper function for this system call.
+Glibc does not provide a wrapper for this system call.
 You could invoke it using
 .BR syscall (2).
 But instead, you probably want to use the
diff --git a/man2/kexec_load.2 b/man2/kexec_load.2
index a7114545a..4951eb5c3 100644
--- a/man2/kexec_load.2
+++ b/man2/kexec_load.2
@@ -335,8 +335,7 @@ system call first appeared in Linux 3.17.
 .SH CONFORMING TO
 These system calls are Linux-specific.
 .SH NOTES
-Currently, there is no glibc support for these system calls.
-Call them using
+Glibc does not provide a wrapper for this system call; call it using
 .BR syscall (2).
 .SH SEE ALSO
 .BR reboot (2),
diff --git a/man2/keyctl.2 b/man2/keyctl.2
index f37cae8df..9311100cf 100644
--- a/man2/keyctl.2
+++ b/man2/keyctl.2
@@ -1953,7 +1953,7 @@ This system call first appeared in Linux 2.6.10.
 .SH CONFORMING TO
 This system call is a nonstandard Linux extension.
 .SH NOTES
-No wrapper for this system call is provided in glibc.
+Glibc does not provide a wrapper for this system call.
 A wrapper is provided in the
 .IR libkeyutils
 library.
diff --git a/man2/pidfd_getfd.2 b/man2/pidfd_getfd.2
index 9312b6f92..1a1319aae 100644
--- a/man2/pidfd_getfd.2
+++ b/man2/pidfd_getfd.2
@@ -121,7 +121,7 @@ first appeared in Linux 5.6.
 .BR pidfd_getfd ()
 is Linux specific.
 .SH NOTES
-Currently, there is no glibc wrapper for this system call; call it using
+Glibc does not provide a wrapper for this system call; call it using
 .BR syscall (2).
 .PP
 For a description of PID file descriptors, see
diff --git a/man2/pidfd_open.2 b/man2/pidfd_open.2
index 1b0c5e0d4..b6a321562 100644
--- a/man2/pidfd_open.2
+++ b/man2/pidfd_open.2
@@ -91,7 +91,7 @@ first appeared in Linux 5.3.
 .BR pidfd_open ()
 is Linux specific.
 .SH NOTES
-Currently, there is no glibc wrapper for this system call; call it using
+Glibc does not provide a wrapper for this system call; call it using
 .BR syscall (2).
 .PP
 The following code sequence can be used to obtain a file descriptor
diff --git a/man2/pidfd_send_signal.2 b/man2/pidfd_send_signal.2
index ffbfd1796..7b1dc782d 100644
--- a/man2/pidfd_send_signal.2
+++ b/man2/pidfd_send_signal.2
@@ -135,7 +135,7 @@ first appeared in Linux 5.1.
 .BR pidfd_send_signal ()
 is Linux specific.
 .SH NOTES
-Currently, there is no glibc wrapper for this system call; call it using
+Glibc does not provide a wrapper for this system call; call it using
 .BR syscall (2).
 .\"
 .SS PID file descriptors
diff --git a/man2/request_key.2 b/man2/request_key.2
index 6b041d0c4..997c221b7 100644
--- a/man2/request_key.2
+++ b/man2/request_key.2
@@ -439,7 +439,7 @@ in Linux 2.6.13.
 .SH CONFORMING TO
 This system call is a nonstandard Linux extension.
 .SH NOTES
-No wrapper for this system call is provided in glibc.
+Glibc does not provide a wrapper for this system call.
 A wrapper is provided in the
 .IR libkeyutils
 package.
diff --git a/man2/s390_guarded_storage.2 b/man2/s390_guarded_storage.2
index c3ab3bc85..c20230786 100644
--- a/man2/s390_guarded_storage.2
+++ b/man2/s390_guarded_storage.2
@@ -144,9 +144,8 @@ This Linux-specific system call is available only on the s390 architecture.
 .PP
 The guarded storage facility is available beginning with System z14.
 .SH NOTES
-Glibc does not provide a wrapper for this system call, use
+Glibc does not provide a wrapper for this system call; call it using
 .BR syscall (2)
-to call it.
 .PP
 The description of the guarded storage facility along with related
 instructions and Guarded Storage Control Block and
diff --git a/man2/s390_pci_mmio_write.2 b/man2/s390_pci_mmio_write.2
index 2ccd630ab..5897c967e 100644
--- a/man2/s390_pci_mmio_write.2
+++ b/man2/s390_pci_mmio_write.2
@@ -103,8 +103,7 @@ These system calls are available since Linux 3.19.
 This Linux-specific system call is available only on the s390 architecture.
 The required PCI support is available beginning with System z EC12.
 .SH NOTES
-Glibc does not provide a wrapper for this system call, use
+Glibc does not provide wrappers for these system calls; call them using
 .BR syscall (2)
-to call it.
 .SH SEE ALSO
 .BR syscall (2)
diff --git a/man2/s390_runtime_instr.2 b/man2/s390_runtime_instr.2
index 0f4a704de..71e391fe9 100644
--- a/man2/s390_runtime_instr.2
+++ b/man2/s390_runtime_instr.2
@@ -97,9 +97,8 @@ This Linux-specific system call is available only on the s390 architecture.
 The run-time instrumentation facility is available
 beginning with System z EC12.
 .SH NOTES
-Glibc does not provide a wrapper for this system call, use
+Glibc does not provide a wrapper for this system call; call it using
 .BR syscall (2)
-to call it.
 .PP
 The
 .I asm/runtime_instr.h
diff --git a/man2/s390_sthyi.2 b/man2/s390_sthyi.2
index 70871286b..91fc622bc 100644
--- a/man2/s390_sthyi.2
+++ b/man2/s390_sthyi.2
@@ -126,9 +126,8 @@ This system call is available since Linux 4.15.
 .SH CONFORMING TO
 This Linux-specific system call is available only on the s390 architecture.
 .SH NOTES
-Glibc does not provide a wrapper for this system call, use
+Glibc does not provide a wrapper for this system call; call it using
 .BR syscall (2)
-to call it.
 .PP
 For details of the STHYI instruction, see
 .UR https://www.ibm.com\:/support\:/knowledgecenter\:/SSB27U_6.3.0\:/com.ibm.zvm.v630.hcpb4\:/hcpb4sth.htm
diff --git a/man2/seccomp.2 b/man2/seccomp.2
index 4600c51d6..181e89bfc 100644
--- a/man2/seccomp.2
+++ b/man2/seccomp.2
@@ -858,6 +858,9 @@ Tile (since Linux 4.3)
 PA-RISC (since Linux 4.6)
 .\" User mode Linux since Linux 4.6
 .PD
+.PP
+Glibc does not provide a wrapper for this system call; call it using
+.BR syscall (2).
 .\"
 .SS Caveats
 There are various subtleties to consider when applying seccomp filters
diff --git a/man2/sysctl.2 b/man2/sysctl.2
index 72f0af6f3..0ed68df00 100644
--- a/man2/sysctl.2
+++ b/man2/sysctl.2
@@ -120,8 +120,7 @@ Note that on older kernels where this system call still exists,
 it is available only if the kernel was configured with the
 .B CONFIG_SYSCTL_SYSCALL
 option.
-Furthermore,
-glibc does not provide a wrapper for this system call,
+Furthermore, glibc does not provide a wrapper for this system call,
 necessitating the use of
 .BR syscall (2).
 .SH BUGS
-- 
2.29.2

