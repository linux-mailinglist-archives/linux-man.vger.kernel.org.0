Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 245CD2ED624
	for <lists+linux-man@lfdr.de>; Thu,  7 Jan 2021 18:56:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728066AbhAGR4h (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Jan 2021 12:56:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727673AbhAGR4h (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Jan 2021 12:56:37 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9330C0612F6
        for <linux-man@vger.kernel.org>; Thu,  7 Jan 2021 09:55:56 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id r3so6526406wrt.2
        for <linux-man@vger.kernel.org>; Thu, 07 Jan 2021 09:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=q/kmyK+95jfPrZ+VH9CVMoR/UlI2cU0d0Zl/mstsdLQ=;
        b=HQiX3HFzUZK6EnEYIFF/LG4OI2AQQyQMjoSqz1fsErLzNlYWr/UXU+pxAEu0I1L30j
         wFhHDYCNuPGUR1b+11st2qBXIiGSD5J6ycJ4D3ByvDOYymZ0aY5mWiiUVlbjJqLPVWMr
         HAqTq5ZH9Id9oVdMiAj3KsSxbnRoTEX/YaHsWrWxiaByja5xlNMhXdxGio83h70cQIkr
         ofH/MTb+FswL1sFWRJCxRrYTBk874viAU0sz7KCjx/RRh87IwKi8qi4r3adKwpESeyML
         TcTRDFo3RKHwVNaYftZ+CgFjLh4rX4DpsKgs2DmRC1Xj1Dey4bzi5tV2iwBQoMNXeLOh
         FIEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=q/kmyK+95jfPrZ+VH9CVMoR/UlI2cU0d0Zl/mstsdLQ=;
        b=Nb2PZalDbrVkOzbr1Sjxm8tPl7Jvs10fU555wBKJxV1Tn3ftPo3A+L4+zpgIR8YQ9K
         OuUF5L02vWA9LZUbmp2Z/KG3ydkxspdRnjqPm3eqaWYswVrX083VlIkhOf6NrvQPSyNQ
         BxceYOLa0M1fIE6fJbBshX7zO3rem0YpeSeol9rU/Sy6/Nh1AjZHxIo7Pi+XIcCgubpk
         uAKB97d7vwaGSTWJd66EgISClDPsn1aenKU+R5r55Sns8MyTJNgoGI4WuNVJmoRPZpaG
         v3f0mm/ICAE3Ngfbv1hYPaL5o+WUuVGJZ4mS0KB9RdxsP2uLj7jlJxGJOe9spZZsHhpv
         qfGg==
X-Gm-Message-State: AOAM532GOQDsyt48ze/KkyVgYghEGWKBEoJi6Q0jKa2fo11m97//v3fx
        WycEep58m3BlHHUVN9t5BLA=
X-Google-Smtp-Source: ABdhPJyMtlwSTzTZE907mUMlFJLs/lRtcndIUv3eHQMaJE8PLDR/kW6YLBi/awdZ58dfx2EGonwgFw==
X-Received: by 2002:a5d:6ccb:: with SMTP id c11mr10084934wrc.224.1610042155461;
        Thu, 07 Jan 2021 09:55:55 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id x7sm8217211wmi.11.2021.01.07.09.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 09:55:55 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] close.2, getpriority.2, ioctl_userfaultfd.2, expm1.3, lio_listio.3, rcmd.3, lirc.4, mount_namespaces.7: tfix: Fix punctuation
Date:   Thu,  7 Jan 2021 18:55:15 +0100
Message-Id: <20210107175514.40983-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Found using:
$ pcregrep -rnM '^..[^"].*[^.]\.\n[a-z]' man?

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/close.2             | 2 +-
 man2/getpriority.2       | 2 +-
 man2/ioctl_userfaultfd.2 | 2 +-
 man3/expm1.3             | 4 ++--
 man3/lio_listio.3        | 2 +-
 man3/rcmd.3              | 4 ++--
 man4/lirc.4              | 2 +-
 man7/mount_namespaces.7  | 4 ++--
 8 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/man2/close.2 b/man2/close.2
index fed770719..864e9eec2 100644
--- a/man2/close.2
+++ b/man2/close.2
@@ -148,7 +148,7 @@ The behavior in this situation varies across systems.
 On some systems, when the file descriptor is closed,
 the blocking system call returns immediately with an error.
 .PP
-On Linux (and possibly some other systems), the behavior is different.
+On Linux (and possibly some other systems), the behavior is different:
 the blocking I/O system call holds a reference to the underlying
 open file description, and this reference keeps the description open
 until the I/O system call completes.
diff --git a/man2/getpriority.2 b/man2/getpriority.2
index 2e5e49d57..217cc2dea 100644
--- a/man2/getpriority.2
+++ b/man2/getpriority.2
@@ -93,7 +93,7 @@ calling process, or the real user ID of the calling process.
 .PP
 The
 .I prio
-argument is a value in the range \-20 to 19 (but see NOTES below).
+argument is a value in the range \-20 to 19 (but see NOTES below),
 with \-20 being the highest priority and 19 being the lowest priority.
 Attempts to set a priority outside this range
 are silently clamped to the range.
diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index 945badf08..4270daf10 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -173,7 +173,7 @@ when the faulting process unmaps virtual memory either explicitly with
 or implicitly during either
 .BR mmap (2)
 or
-.BR mremap (2).
+.BR mremap (2),
 the userfaultfd monitor will receive an event of type
 .BR UFFD_EVENT_UNMAP .
 .TP
diff --git a/man3/expm1.3 b/man3/expm1.3
index 29e9e2580..73812186c 100644
--- a/man3/expm1.3
+++ b/man3/expm1.3
@@ -162,10 +162,10 @@ Before approximately glibc version 2.11,
 .\" but not expm1(1.00199970128e5) and beyond.
 .BR expm1 ()
 raised a bogus invalid floating-point exception in addition to the expected
-overflow exception, and returned a NaN instead of positive infinity.
+overflow exception, and returned a NaN instead of positive infinity,
 for some large positive
 .I x
-values,
+values.
 .PP
 Before version 2.11,
 .\" It looks like the fix was in 2.11, or possibly 2.12.
diff --git a/man3/lio_listio.3 b/man3/lio_listio.3
index 0eb8606fe..d89670f7c 100644
--- a/man3/lio_listio.3
+++ b/man3/lio_listio.3
@@ -71,7 +71,7 @@ The
 .I nitems
 argument specifies the size of the array
 .IR aiocb_list .
-null pointers in
+Null pointers in
 .I aiocb_list
 are ignored.
 .PP
diff --git a/man3/rcmd.3 b/man3/rcmd.3
index f3c0c82d8..9f0b72a6f 100644
--- a/man3/rcmd.3
+++ b/man3/rcmd.3
@@ -172,9 +172,9 @@ This socket is suitable for use by
 and several other functions.
 Privileged ports are those in the range 0 to 1023.
 Only a privileged process
-(on Linux: a process that has the
+(on Linux, a process that has the
 .B CAP_NET_BIND_SERVICE
-capability in the user namespace governing its network namespace).
+capability in the user namespace governing its network namespace)
 is allowed to bind to a privileged port.
 In the glibc implementation,
 this function restricts its search to the ports from 512 to 1023.
diff --git a/man4/lirc.4 b/man4/lirc.4
index f6c41763e..999cdc571 100644
--- a/man4/lirc.4
+++ b/man4/lirc.4
@@ -148,7 +148,7 @@ The following ioctls can be used to probe or change specific
 .B lirc
 hardware settings.
 Many require a third argument, usually an
-.IR int .
+.IR int ,
 referred to below as
 .IR val .
 .\"
diff --git a/man7/mount_namespaces.7 b/man7/mount_namespaces.7
index b086e99d4..4a736a11c 100644
--- a/man7/mount_namespaces.7
+++ b/man7/mount_namespaces.7
@@ -1100,9 +1100,9 @@ may desire to prevent propagation of mount events to other mount namespaces
 .BR unshare (1)).
 This can be done by changing the propagation type of
 mount points in the new namespace to either
-.BR MS_SLAVE
+.B MS_SLAVE
 or
-.BR MS_PRIVATE .
+.BR MS_PRIVATE ,
 using a call such as the following:
 .PP
 .in +4n
-- 
2.29.2

