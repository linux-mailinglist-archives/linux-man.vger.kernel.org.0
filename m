Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE46D3409A7
	for <lists+linux-man@lfdr.de>; Thu, 18 Mar 2021 17:09:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230338AbhCRQIb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Mar 2021 12:08:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231833AbhCRQIY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Mar 2021 12:08:24 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24314C06174A
        for <linux-man@vger.kernel.org>; Thu, 18 Mar 2021 09:08:24 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id f22-20020a7bc8d60000b029010c024a1407so5770663wml.2
        for <linux-man@vger.kernel.org>; Thu, 18 Mar 2021 09:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=G/OvAT7tQ5TwyLwKXBOKzExvg4L58f/wuBsbbOveihg=;
        b=XKuZPE9kiK8Q/u3CwqwZuV1NX5iEGMC3aNwKV9lwT76waCDWFJpBlXfY2jWm50XTlx
         93loWBThYCyVBtWnOBEYDswzx86/e7oKAzjO+hBRq2c5na+GgvJgsGTP+gGEsILw7uNB
         IN1kmhlEwKcset7Eh4MG/zrxqKy3dB6ozbMn2a4EobGz1Z6njcnuwVE6BxzcKb9TLrOM
         ZREYwwaCW5cSgv88qk+ruuaeysN9KgQi56mqZ4Yq8tBUDAOzOggzXEOZbHsYXf81U6r5
         hh4Z27cvHSYwJVUVVNPdw/eYKElngCsHp/xgL8W0EkeRV9WnptPz4KqfbR77zoGZTrVN
         vtWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=G/OvAT7tQ5TwyLwKXBOKzExvg4L58f/wuBsbbOveihg=;
        b=fQsTwCNAOVuKPaYt6iNXhdszczxZ/E3+IWRYM4Rmgi3Zmnc7cwxuUoIO7mRKeuhSj+
         Bb+lLFIWdEFhOAJYO+ptz8jeM2EqMcFJIiy+RCpuoZ65FNyv9/H72+LBp6HH+GrIU0TG
         rzClB3bqS5e8F038Erqp/Y8VWwKUjxvrRHbUWPUypDYdbC9cJBWDTTWKBB3fIMs/TR8r
         wXc5VObuFuzY6veQV0byLDb4xQGuFTKfrS6DDMAEcJbUsK6y3i5eHloUC1e2oNin9l6U
         LFERtCoGgDf9S4HsoP4JIEfWAPLxD8R+r2M+pejHvnq2ViGGhiSQWitUNmCKFdw/d0nw
         wRMg==
X-Gm-Message-State: AOAM530Of/eWSr/AAYEXzIRzCivGBsm8FowxpjFZnrkmQOZZ1H30+aMw
        ONIOy8ULNNYq+1H0eTNoh6I=
X-Google-Smtp-Source: ABdhPJzb/FSfCihG4dBXDkYRAqocvsGUGUQV0HJoaqvHi8LUI314FqeMzamfxsOnncpwZXFC3rqzZw==
X-Received: by 2002:a7b:c7c6:: with SMTP id z6mr19537wmk.156.1616083702711;
        Thu, 18 Mar 2021 09:08:22 -0700 (PDT)
Received: from localhost.localdomain ([185.240.141.204])
        by smtp.gmail.com with ESMTPSA id i4sm2510236wmq.12.2021.03.18.09.08.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 09:08:22 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH 1/2] fanotify_init.2, fanotify_mark.2: Document unprivileged listener
Date:   Thu, 18 Mar 2021 18:08:16 +0200
Message-Id: <20210318160817.3586288-2-amir73il@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210318160817.3586288-1-amir73il@gmail.com>
References: <20210318160817.3586288-1-amir73il@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Matthew Bobrowski <mbobrowski@mbobrowski.org>

Document the limited fanotify functionality that will be available for
unprivileged users from kernel v5.13.

Signed-off-by: Matthew Bobrowski <mbobrowski@mbobrowski.org>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man2/fanotify_init.2 | 77 +++++++++++++++++++++++++++++++++++++-------
 man2/fanotify_mark.2 |  9 ++++++
 2 files changed, 74 insertions(+), 12 deletions(-)

diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index ff656f438..5f54a8506 100644
--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -57,15 +57,6 @@ In the current implementation, the number of fanotify groups per user is
 limited to 128.
 This limit cannot be overridden.
 .PP
-Calling
-.BR fanotify_init ()
-requires the
-.B CAP_SYS_ADMIN
-capability.
-This constraint might be relaxed in future versions of the API.
-Therefore, certain additional capability checks have been implemented as
-indicated below.
-.PP
 The
 .I flags
 argument contains a multi-bit field defining the notification class of the
@@ -86,6 +77,9 @@ It is intended for event listeners that need to access files before they
 contain their final data.
 This notification class might be used by hierarchical storage managers,
 for example.
+Use of this flag requires the
+.B CAP_SYS_ADMIN
+capability.
 .TP
 .B FAN_CLASS_CONTENT
 This value allows the receipt of events notifying that a file has been
@@ -94,6 +88,9 @@ It is intended for event listeners that need to access files when they
 already contain their final content.
 This notification class might be used by malware detection programs, for
 example.
+Use of this flag requires the
+.B CAP_SYS_ADMIN
+capability.
 .TP
 .B FAN_CLASS_NOTIF
 This is the default value.
@@ -155,6 +152,9 @@ supplied to
 .BR read (2)
 (see
 .BR fanotify (7)).
+Use of this flag requires the
+.B CAP_SYS_ADMIN
+capability.
 .TP
 .BR FAN_ENABLE_AUDIT " (since Linux 4.15)"
 .\" commit de8cd83e91bc3ee212b3e6ec6e4283af9e4ab269
@@ -163,6 +163,9 @@ permission events.
 The permission event response has to be marked with the
 .B FAN_AUDIT
 flag for an audit log record to be generated.
+Use of this flag requires the
+.B CAP_AUDIT_WRITE
+capability.
 .TP
 .BR FAN_REPORT_FID " (since Linux 5.1)"
 .\" commit a8b13aa20afb69161b5123b4f1acc7ea0a03d360
@@ -378,13 +381,63 @@ The fanotify API is available only if the kernel was configured with
 .BR CONFIG_FANOTIFY .
 .TP
 .B EPERM
-The operation is not permitted because the caller lacks the
-.B CAP_SYS_ADMIN
-capability.
+The operation is not permitted because the caller lacks a required capability.
 .SH VERSIONS
 .BR fanotify_init ()
 was introduced in version 2.6.36 of the Linux kernel and enabled in version
 2.6.37.
+.PP
+Prior to Linux 5.13,
+.\" commit 7cea2a3c505e87a9d6afc78be4a7f7be636a73a7
+calling
+.BR fanotify_init ()
+required the
+.B CAP_SYS_ADMIN
+capability.
+Since Linux 5.13,
+.\" commit 7cea2a3c505e87a9d6afc78be4a7f7be636a73a7
+users may call
+.BR fanotify_init ()
+without the
+.B CAP_SYS_ADMIN
+capability to create and intialize an fanotify group with limited functionality.
+.TP
+The limitations imposed on an event listener created by a user without the
+.B CAP_SYS_ADMIN
+capability are as follows:
+.RS
+.IP * 3
+The user cannot request for an unlimited event queue by using
+.BR FAN_UNLIMITED_QUEUE .
+.IP * 3
+The user cannot request for an unlimited number of marks by using
+.BR FAN_UNLIMITED_MARKS .
+.IP * 3
+The user cannot request to use either notification classes
+.BR FAN_CLASS_CONTENT
+or
+.BR FAN_CLASS_PRE_CONTENT .
+This means that user cannot request permission events.
+.IP * 3
+The user is required to create a group that identifies filesystem objects by
+file handles, for example, by providing the
+.BR FAN_REPORT_FID
+flag.
+.IP * 3
+The user is limited to only mark inodes.
+The ability to mark a mount or filesystem via
+.BR fanotify_mark()
+through the use of
+.BR FAN_MARK_MOUNT
+or
+.BR FAN_MARK_FILESYSTEM
+is not permitted.
+.IP * 3
+The event object in the event queue is limited in terms of the information
+that is made available to the unprivileged user.
+A user will also not receive the pid that generated the event, unless the
+listening process itself generated the event.
+.RE
 .SH CONFORMING TO
 This system call is Linux-specific.
 .SH BUGS
diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index d5dcecc74..1bd0a30ea 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -142,6 +142,9 @@ contains
 Attempting to do so will result in the error
 .B EINVAL
 being returned.
+Use of this flag requires the
+.B CAP_SYS_ADMIN
+capability.
 .TP
 .BR FAN_MARK_FILESYSTEM " (since Linux 4.20)"
 .\" commit d54f4fba889b205e9cd8239182ca5d27d0ac3bc2
@@ -152,6 +155,9 @@ The filesystem containing
 will be marked.
 All the contained files and directories of the filesystem from any mount
 point will be monitored.
+Use of this flag requires the
+.B CAP_SYS_ADMIN
+capability.
 .TP
 .B FAN_MARK_IGNORED_MASK
 The events in
@@ -441,6 +447,9 @@ handles.
 This error can be returned only with an fanotify group that identifies
 filesystem objects by file handles.
 .TP
+.B EPERM
+The operation is not permitted because the caller lacks a required capability.
+.TP
 .B EXDEV
 The filesystem object indicated by
 .I pathname
-- 
2.25.1

