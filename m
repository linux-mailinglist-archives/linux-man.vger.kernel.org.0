Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5FE51457FC3
	for <lists+linux-man@lfdr.de>; Sat, 20 Nov 2021 18:13:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237712AbhKTRQD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Nov 2021 12:16:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231557AbhKTRQC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Nov 2021 12:16:02 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 233BAC061574
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 09:12:59 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id d5so24056661wrc.1
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 09:12:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dWzGfdwEXwvgGylNgZmFPq2hdBBrBuejNX8fZbP35Hk=;
        b=gJTsYyPA/R9ZhgXlaVzUzdCXYYug/eyclOiJPUo2GZ7u2puL2b9bmjt0/mnWpD3WIl
         lxWFOBXZ2D5m541u3x5W8q4a5kNG7/ob8gFm8nE9+Eqn6aDKnM4JXqYyOaFPaMJUWa7r
         cx4itWW1GSN0vzivQaJBIxvBxMOEmfMIzfvN5BIYcvTKPrdEa2sQ6rzVLrAH84LFJ9uM
         jfaVCaih0LojELihknWFPyPd0UrgDg6TFzci52aJHcwPeAaZivioWnQ7iQMpTnB17xVh
         DZh8oBvzWLRtXZHloqEOetdbWOYR7sLvPYFO4uuHhs5+4RAKmdG56BJTv2BJr9uaNt2O
         bK/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dWzGfdwEXwvgGylNgZmFPq2hdBBrBuejNX8fZbP35Hk=;
        b=UXD36QRVhAC0YxbKtxDzZZ6qURav0mQrELhEuBwrQ5ZLDIEd/B70LfiUi3HCKhX6rD
         Gy+NH+aGD8DCqukGm7JIHMDPyUZXO8Qj6R2imLOqy0afCXDtqS9soa9UFpk/fR9ffkQ7
         q8Ersjbq7ohEbt/jXYkUq2S2/8YAWHnRhyHujlvXMbC9yA31bA6ZI3t2G/SDz5/ETnQf
         qIyE3NsCOydYb1BWcV2WgXmiK6tNAU8mOYAh3pfU92qaDogU9nqDhMTaoN0BX+Dt87nl
         SYjvQ300VtM53fuPI/oAQE5/CHjXAqpaOYNQnWzP+qwaSSA+QuxJu0bFIWkrkqIFMyzB
         tpDw==
X-Gm-Message-State: AOAM533TkIDZDVwWIr1LddiEX8Bj4hffY7ZSUsf/8FW0piDoOP8r31DW
        MYfLTmoIAU0E5ehAW4m1O7A/5p//3Bw=
X-Google-Smtp-Source: ABdhPJwAbwYF0fl8AOy81d7asgTQIUaN0Yf5U7wR4tEbF2qfHn/vF00B3e3IHjCuDE4XbtOPZC4VVw==
X-Received: by 2002:a5d:64e7:: with SMTP id g7mr20155472wri.350.1637428377244;
        Sat, 20 Nov 2021 09:12:57 -0800 (PST)
Received: from localhost.localdomain ([82.114.45.86])
        by smtp.gmail.com with ESMTPSA id n8sm3108829wrp.95.2021.11.20.09.12.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Nov 2021 09:12:56 -0800 (PST)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 1/4] fanotify_init.2, fanotify_mark.2: Document unprivileged listener
Date:   Sat, 20 Nov 2021 19:12:50 +0200
Message-Id: <20211120171253.1385863-2-amir73il@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211120171253.1385863-1-amir73il@gmail.com>
References: <20211120171253.1385863-1-amir73il@gmail.com>
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
index 2b44fc6ec..b2ceb17f3 100644
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
index 036f56ebf..9cf71320c 100644
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
@@ -454,6 +460,9 @@ handles.
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
2.33.1

