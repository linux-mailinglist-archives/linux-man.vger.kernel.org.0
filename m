Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C167301D0B
	for <lists+linux-man@lfdr.de>; Sun, 24 Jan 2021 16:13:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726540AbhAXPM0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jan 2021 10:12:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726374AbhAXPLz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jan 2021 10:11:55 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4ABD8C06174A
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 07:11:15 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id m1so9054208wrq.12
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 07:11:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1v9DrzqqhACoEhTlaxWzeLR0oeLLyzDqzopl3525UTA=;
        b=fKDHiO964j4CHFszx2RK1NvyUos7BrlDpu2L1DBkGts1ZJSjGQXl0YVvRxvKH173nj
         YPtlUYy6T6ANkHnqMqU4DX2g68L0aIpJABMaatCEi6wcFR5zhypvHH4OAVKDj+hYl9+9
         Kl4IBwwcfokYUEFpI8t6N4VfjbGy9JPH2sFPYf1Pfs2KXHqSHGncWZzR34ZjJXDbW1Ym
         SV16h+v3Td2qc0FfcWI0kuV2RkUy0j5dYy2cLkyxD7K38QgoRR8/bfQTFYL5+6xV6Lby
         S0VqRcUENqhy9itGWYBGfCilC83rJJVQ6SWDAWSgryXkBQAU9zYVfadmx8NQIWBlphlu
         8cnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1v9DrzqqhACoEhTlaxWzeLR0oeLLyzDqzopl3525UTA=;
        b=kQUL4RoHIdZfoNMmXjvOwvvdeeJBq98hyVtcckIVsIA8MEwCQCrm0A5uYu0nWlC02m
         bc6ezYjppS5kwQRgg+jrtprbaOsSyyubOG2baLMAiz0d+wuluCwILZAzzwVX3PbTEycj
         r/+gBRwKP+ahQzoNTaLyeJepv99a8wCl9Fa63ntk3iuBXr0iTIsftYsi267h1/eeAroC
         PpI8D8WVIHusixEODFMl2ByX2+AazGubUZ2gTkwGv/8hQnVSFHbm6bLukxyIs4F32ENb
         3QOpbp1OCsCZ+iF9w8Fpjb49PetveI6/cFfpxtwEjtlY6XMFoTLJE4RWLwR+kcuVdsPU
         gBUQ==
X-Gm-Message-State: AOAM530nJRMk1Cy5XlBLF8Bk2B5HXA93Dyp4akqrpEKWZcxF/B0T6B5f
        sggPNqD+EvBp5jAQQkOYME9e7JSwCw4=
X-Google-Smtp-Source: ABdhPJyCsJUGgFhk1NJ1jYF/VkGIjt1S9lsfELSNSFOJPpf5E0nu597O6+LSw1cFzeB6UkBh818zUQ==
X-Received: by 2002:a05:6000:10cd:: with SMTP id b13mr9064376wrx.163.1611501073998;
        Sun, 24 Jan 2021 07:11:13 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j2sm18480099wrh.78.2021.01.24.07.11.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Jan 2021 07:11:13 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] Various pages: Use the 'logical' quoting method
Date:   Sun, 24 Jan 2021 16:10:33 +0100
Message-Id: <20210124151035.70536-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This fix places periods after the closing quotes.
This is preferred practice in Great Britain,
and normative in various European languages.

See "Hart's Rules",
and the "Oxford Dictionary for Writers and Editors".


Found using:

$ find man? -type f \
  |grep -n '^[^.].*[^."]\."' \
  |less;

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/access.2   | 2 +-
 man2/mknod.2    | 2 +-
 man2/mmap.2     | 2 +-
 man2/shmget.2   | 2 +-
 man2/vfork.2    | 2 +-
 man3/cfree.3    | 2 +-
 man3/ctime.3    | 2 +-
 man3/lseek64.3  | 2 +-
 man3/rcmd.3     | 2 +-
 man5/passwd.5   | 2 +-
 man7/man.7      | 2 +-
 man7/pthreads.7 | 2 +-
 man7/uri.7      | 2 +-
 13 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/man2/access.2 b/man2/access.2
index 7f796d00a..454dc1cda 100644
--- a/man2/access.2
+++ b/man2/access.2
@@ -346,7 +346,7 @@ Only access bits are checked, not the file type or contents.
 Therefore, if a directory is found to be writable,
 it probably means that files can be created in the directory,
 and not that the directory can be written as a file.
-Similarly, a DOS file may be found to be "executable," but the
+Similarly, a DOS file may be found to be "executable", but the
 .BR execve (2)
 call will still fail.
 .PP
diff --git a/man2/mknod.2 b/man2/mknod.2
index fad459d8c..8df261311 100644
--- a/man2/mknod.2
+++ b/man2/mknod.2
@@ -265,7 +265,7 @@ or
 .I dev
 is not 0, the behavior of
 .BR mknod ()
-is unspecified."
+is unspecified.".
 However, nowadays one should never use
 .BR mknod ()
 for this purpose; one should use
diff --git a/man2/mmap.2 b/man2/mmap.2
index 132a5b14f..79f7d060d 100644
--- a/man2/mmap.2
+++ b/man2/mmap.2
@@ -310,7 +310,7 @@ at which point touching the "guard" page will result in a
 signal.
 .TP
 .BR MAP_HUGETLB " (since Linux 2.6.32)"
-Allocate the mapping using "huge pages."
+Allocate the mapping using "huge pages".
 See the Linux kernel source file
 .I Documentation/admin\-guide/mm/hugetlbpage.rst
 for further information, as well as NOTES, below.
diff --git a/man2/shmget.2 b/man2/shmget.2
index fade94c7f..b145b4cf8 100644
--- a/man2/shmget.2
+++ b/man2/shmget.2
@@ -117,7 +117,7 @@ to ensure that this call creates the segment.
 If the segment already exists, the call fails.
 .TP
 .BR SHM_HUGETLB " (since Linux 2.6)"
-Allocate the segment using "huge pages."
+Allocate the segment using "huge pages".
 See the Linux kernel source file
 .I Documentation/admin\-guide/mm/hugetlbpage.rst
 for further information.
diff --git a/man2/vfork.2 b/man2/vfork.2
index dbb803b66..930dafa7d 100644
--- a/man2/vfork.2
+++ b/man2/vfork.2
@@ -311,7 +311,7 @@ or
 .B SIGTTIN
 signals; rather, output or
 .IR ioctl s
-are allowed and input attempts result in an end-of-file indication."
+are allowed and input attempts result in an end-of-file indication.".
 .\"
 .\" As far as I can tell, the following is not true in 2.6.19:
 .\" Currently (Linux 2.3.25),
diff --git a/man3/cfree.3 b/man3/cfree.3
index ff4bba318..45db549b9 100644
--- a/man3/cfree.3
+++ b/man3/cfree.3
@@ -100,7 +100,7 @@ Answer: use
 An SCO manual writes: "The cfree routine is provided for compliance
 to the iBCSe2 standard and simply calls free.
 The num and size
-arguments to cfree are not used."
+arguments to cfree are not used.".
 .SH RETURN VALUE
 The SunOS version of
 .BR cfree ()
diff --git a/man3/ctime.3 b/man3/ctime.3
index 89107975b..9178c809a 100644
--- a/man3/ctime.3
+++ b/man3/ctime.3
@@ -406,7 +406,7 @@ functions shall return values in one of two static objects:
 a broken-down time structure and an array of type
 .IR char .
 Execution of any of the functions may overwrite the information returned
-in either of these objects by any of the other functions."
+in either of these objects by any of the other functions.".
 This can occur in the glibc implementation.
 .PP
 In many implementations, including glibc, a 0 in
diff --git a/man3/lseek64.3 b/man3/lseek64.3
index f6bab174d..1f9a4f787 100644
--- a/man3/lseek64.3
+++ b/man3/lseek64.3
@@ -140,7 +140,7 @@ When users complained about data loss caused by a miscompilation of
 glibc 2.1.3 added the link-time warning
 .PP
 .in +4n
-"the \`llseek\' function may be dangerous; use \`lseek64\' instead."
+"the \`llseek\' function may be dangerous; use \`lseek64\' instead.".
 .in
 .PP
 This makes this function unusable if one desires a warning-free
diff --git a/man3/rcmd.3 b/man3/rcmd.3
index 9f0b72a6f..5dbb31447 100644
--- a/man3/rcmd.3
+++ b/man3/rcmd.3
@@ -256,7 +256,7 @@ On failure, it returns \-1 and sets
 to indicate the error.
 The error code
 .BR EAGAIN
-is overloaded to mean "All network ports in use."
+is overloaded to mean "All network ports in use".
 .PP
 For information on the return from
 .BR ruserok ()
diff --git a/man5/passwd.5 b/man5/passwd.5
index 469d29260..ee8b9311b 100644
--- a/man5/passwd.5
+++ b/man5/passwd.5
@@ -123,7 +123,7 @@ Dennis Ritchie has reported: "Sometimes we sent printer output or
 batch jobs to the GCOS machine.
 The gcos field in the password file was a place to stash the
 information for the $IDENTcard.
-Not elegant."
+Not elegant.".
 .TP
 .I directory
 This is the user's home directory:
diff --git a/man7/man.7 b/man7/man.7
index 2fa944c94..03518738f 100644
--- a/man7/man.7
+++ b/man7/man.7
@@ -181,7 +181,7 @@ of text.
 Below are other relevant macros and predefined strings.
 Unless noted otherwise, all macros
 cause a break (end the current line of text).
-Many of these macros set or use the "prevailing indent."
+Many of these macros set or use the "prevailing indent".
 The "prevailing indent" value is set by any macro with the parameter
 .I i
 below;
diff --git a/man7/pthreads.7 b/man7/pthreads.7
index 4696bde3e..1c29efd4c 100644
--- a/man7/pthreads.7
+++ b/man7/pthreads.7
@@ -133,7 +133,7 @@ the same process as the caller.)
 The system may reuse a thread ID after a terminated thread has been joined,
 or a detached thread has terminated.
 POSIX says: "If an application attempts to use a thread ID whose
-lifetime has ended, the behavior is undefined."
+lifetime has ended, the behavior is undefined.".
 .SS Thread-safe functions
 A thread-safe function is one that can be safely
 (i.e., it will deliver the same results regardless of whether it is)
diff --git a/man7/uri.7 b/man7/uri.7
index 44d1cb6cb..f20390cb8 100644
--- a/man7/uri.7
+++ b/man7/uri.7
@@ -291,7 +291,7 @@ A more portable syntax is to use an empty string as the server name,
 for example,
 <file:///etc/passwd>; this form does the same thing
 and is easily recognized by pattern matchers and older programs as a URI.
-Note that if you really mean to say "start from the current location," don't
+Note that if you really mean to say "start from the current location", don't
 specify the scheme at all; use a relative address like <../test.txt>,
 which has the side-effect of being scheme-independent.
 An example of this scheme is <file:///etc/passwd>.
-- 
2.30.0

