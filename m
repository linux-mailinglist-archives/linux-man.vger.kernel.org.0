Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41D8244215B
	for <lists+linux-man@lfdr.de>; Mon,  1 Nov 2021 21:05:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231228AbhKAUHi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 1 Nov 2021 16:07:38 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:52944 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231284AbhKAUHa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 1 Nov 2021 16:07:30 -0400
Received: from localhost (unknown [IPv6:2804:14c:124:8a08::1003])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: krisman)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 62C801F440F0;
        Mon,  1 Nov 2021 20:04:51 +0000 (GMT)
From:   Gabriel Krisman Bertazi <krisman@collabora.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Gabriel Krisman Bertazi <krisman@collabora.com>,
        Amir Goldstein <amir73il@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>
Subject: [PATCH v3] fanotify.7, fanotify_mark.2: Document FAN_FS_ERROR
Date:   Mon,  1 Nov 2021 17:04:45 -0300
Message-Id: <20211101200445.399801-1-krisman@collabora.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

FAN_FS_ERROR is a new event for fanotify to report filesystem errors.

Cc: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>
Cc: Matthew Bobrowski <repnop@google.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>

---
Changes since v2:
  (matthew)
    - Grammar
    - List filesystems that support the feature
    - file system -> filesystem
Changes since v1:
(Matthew)
  - Grammar fixes
  - Don't use the term "submitted" for events sent to the listener
  - Clarify the kind of information that is file system specific

To: Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
---
 man2/fanotify_mark.2 | 36 ++++++++++++++++++++++
 man7/fanotify.7      | 71 ++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 107 insertions(+)

diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index be3f72e040c0..d8560f788db8 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -214,6 +214,35 @@ Create an event when a marked file or directory itself is deleted.
 An fanotify group that identifies filesystem objects by file handles
 is required.
 .TP
+.BR FAN_FS_ERROR " (since Linux 5.15)"
+.\" commit 9709bd548f11a092d124698118013f66e1740f9b
+Create an event when a filesystem error is detected.
+Support for this notification type
+is dependent on the underlying filesystem.
+.IP
+The filesystems that currently support
+.BR FAN_FS_ERROR
+are:
+.RS
+.IP "* ext4 "
+.RE
+.IP
+A user can also expect to receive additional information
+in the form of a
+.BR FAN_EVENT_INFO_TYPE_ERROR
+record
+alongside the generic metadata event.
+.IP
+A fanotify group initialized with
+.BR FAN_REPORT_FID
+is required, or the error
+.B EINVAL
+will occur.
+.IP
+See
+.BR fanotify (7)
+for additional details.
+.TP
 .BR FAN_MOVED_FROM " (since Linux 5.1)"
 .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
 Create an event when a file or directory has been moved from a marked
@@ -389,6 +418,13 @@ and mask contains a flag for permission events
 or
 .BR FAN_ACCESS_PERM ).
 .TP
+.B EINVAL
+The group was initialized without
+.B FAN_REPORT_FID
+but one or more events in
+.I mask
+require it.
+.TP
 .B ENODEV
 The filesystem object indicated by
 .I pathname
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index 6a7e70d75845..5dd3bdcad5fb 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -188,6 +188,24 @@ struct fanotify_event_info_fid {
 .EE
 .in
 .PP
+In case of a FAN_FS_ERROR event,
+besides the file handle record,
+an additional record describing the error that occurred
+is included in the read buffer.
+The structure described below follows the generic
+.I fanotify_event_metadata
+structure within the read buffer:
+.PP
+.in +4n
+.EX
+struct fanotify_event_info_error {
+    struct fanotify_event_info_header hdr;
+    __s32 error;
+    __u32 error_count;
+};
+.EE
+.in
+.PP
 For performance reasons, it is recommended to use a large
 buffer size (for example, 4096 bytes),
 so that multiple events can be retrieved by a single
@@ -311,6 +329,9 @@ A child file or directory was deleted in a watched parent.
 .B FAN_DELETE_SELF
 A watched file or directory was deleted.
 .TP
+.B FAN_FS_ERROR
+A filesystem error was detected.
+.TP
 .B FAN_MOVED_FROM
 A file or directory has been moved from a watched parent directory.
 .TP
@@ -510,6 +531,32 @@ and the file handle is followed by a null terminated string that identifies the
 name of a directory entry in that directory, or '.' to identify the directory
 object itself.
 .PP
+The fields of the
+.I fanotify_event_info_error
+structure are as follows:
+.TP
+.I hdr
+This is a structure of type
+.IR fanotify_event_info_header .
+and is a generic header that contains information used to
+describe an additional information record attached to the event.
+For
+.IR fanotify_event_info_error ,
+.I info_type
+will have the value
+.BR FAN_EVENT_INFO_TYPE_ERROR .
+.I len
+has the size of the additional information record including the
+.IR fanotify_event_info_header
+itself.
+.TP
+.I error
+Identifies the type of error that occurred
+.TP
+.I error_count
+This is a counter of the number of errors suppressed
+since the last error was read.
+.PP
 The following macros are provided to iterate over a buffer containing
 fanotify event metadata returned by a
 .BR read (2)
@@ -599,6 +646,30 @@ field.
 In that case, the audit subsystem will log information about the access
 decision to the audit logs.
 .\"
+.SS Monitoring filesystems for errors
+A single FAN_FS_ERROR event is stored per filesystem at once.
+Extra error messages are suppressed and accounted for
+inside the current FAN_FS_ERROR event record,
+but details about the errors are lost.
+.PP
+Error types reported by FAN_FS_ERROR are generic errno values
+but not all kinds of errors types are reported by all filesystems.
+Refer to the filesystem documentation
+for additional information on the type of errors that are reported,
+and the meaning of those errors.
+.PP
+Errors not directly related to a file (i.e. super block corruption)
+are reported with an invalid
+.IR file_handle .
+For these errors, the
+.I file_handle
+will have the field
+.I handle_type
+set to
+.BR FILEID_INVALID ,
+and the handle buffer size set to
+.BR 0 .
+.\"
 .SS Closing the fanotify file descriptor
 When all file descriptors referring to the fanotify notification group are
 closed, the fanotify group is released and its resources
-- 
2.33.0

