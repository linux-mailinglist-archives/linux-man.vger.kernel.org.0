Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C51E505C86
	for <lists+linux-man@lfdr.de>; Mon, 18 Apr 2022 18:39:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343585AbiDRQmU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Apr 2022 12:42:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346323AbiDRQmS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Apr 2022 12:42:18 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E122326C1
        for <linux-man@vger.kernel.org>; Mon, 18 Apr 2022 09:39:38 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: krisman)
        with ESMTPSA id 502C71F432E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1650299977;
        bh=dO6cvlYFH4hqj+IO4NSASQVFMMDDYegvif839IHK0S8=;
        h=From:To:Cc:Subject:Date:From;
        b=GcNr1eV42EYhDR4vA9WNB5Q1tFEjx5jDLH89sm6qOlb6KvbLfp1NORYhRz9qhmAgg
         erwymeWMRVohWVsTqgaLWkPkyvX2u39WTDYA6Fyww/9pG+4JVLje9Qu+eS0moX8Qsf
         vXlRvokHFHboh/P2WuRMXi8DSBQPaRWRQ4e7ttI7Jc69i6XCHHB2f1xZv+bXcOtMRi
         9Z98HOqsBdmcI1HeDYDDAuA3BNcqfyt8rjrG+DKtMfB/F+VjTYtU/uKO4NU2iXo0ti
         I+DM+djhYNYIYo/ovGebHlSVOgKb4kk0Xdlaa95vlFeOB/LBF36/aYZhmK5mqsk96Q
         YSNpUqE18lqmg==
From:   Gabriel Krisman Bertazi <krisman@collabora.com>
To:     repnop@google.com
Cc:     mtk.manpages@gmail.com,
        Gabriel Krisman Bertazi <krisman@collabora.com>,
        Amir Goldstein <amir73il@gmail.com>, Jan Kara <jack@suse.cz>,
        linux-man@vger.kernel.org
Subject: [PATCH v5] fanotify.7, fanotify_mark.2: Document FAN_FS_ERROR
Date:   Mon, 18 Apr 2022 12:39:33 -0400
Message-Id: <20220418163933.256771-1-krisman@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

FAN_FS_ERROR is a new event for fanotify to report filesystem errors
that might lead to some corruption.
This documents how to use the feature and specific caveats.

To: Michael Kerrisk <mtk.manpages@gmail.com>
Cc: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>
Cc: Matthew Bobrowski <repnop@google.com>
Cc: linux-man@vger.kernel.org
Reviewed-by: Amir Goldstein <amir73il@gmail.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>

---
Matthew,

as discussed this is rebased on top of the PIDFD documentation: commit
207080c7f7f5 ("fanotify: Document FAN_REPORT_PIDFD Feature")

changes since v4:
 (Matthew)
 - Grammar fixes
 - Reword sections
 (Jan)
 - Explain fs error only apply to some errors
 (Amir)
 - Clarify what supported by ext4 means.

Changes since v3:
 (Matthew)
 - Rewording and fixes from github)
 (amir)
 - 5.15 -> 5.16

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
---
 man2/fanotify_mark.2 | 31 +++++++++++++++++++++
 man7/fanotify.7      | 64 ++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 95 insertions(+)

diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index 9a45cbb77893..0bdee67850fb 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -203,6 +203,30 @@ Create an event when a marked file or directory itself is deleted.
 An fanotify group that identifies filesystem objects by file handles
 is required.
 .TP
+.BR FAN_FS_ERROR " (since Linux 5.16)"
+.\" commit 9709bd548f11a092d124698118013f66e1740f9b
+Create an event when a filesystem error
+leading to inconsisted filesystem metadata
+is detected.
+An additional information record of type
+.B FAN_EVENT_INFO_TYPE_ERROR
+is returned for each event in the read buffer.
+An fanotify group that identifies filesystem objects by file handles
+is required.
+.IP
+Events of such type are dependent on support
+from the underlying filesystem.
+At the time of writing,
+only the
+.B ext4
+filesystem reports
+.B FAN_FS_ERROR
+events.
+.IP
+See
+.BR fanotify (7)
+for additional details.
+.TP
 .BR FAN_MOVED_FROM " (since Linux 5.1)"
 .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
 Create an event when a file or directory has been moved from a marked
@@ -391,6 +415,13 @@ and mask contains a flag for permission events
 or
 .BR FAN_ACCESS_PERM ).
 .TP
+.B EINVAL
+The group was initialized without
+.B FAN_REPORT_FID
+but one or more event types specified in the
+.I mask
+require it.
+.TP
 .B ENODEV
 The filesystem object indicated by
 .I pathname
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index 57dd2b040380..3dc4113a551c 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -217,6 +217,25 @@ struct fanotify_event_info_pidfd {
 .EE
 .in
 .PP
+In case of a
+.B FAN_FS_ERROR
+event,
+an additional information record describing the error that occurred
+is returned alongside the generic
+.I fanotify_event_metadata
+structure within the read buffer.
+This structure is defined as follows:
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
 All information records contain a nested structure of type
 .IR fanotify_event_info_header .
 This structure holds meta-information about the information record
@@ -358,6 +377,9 @@ A child file or directory was deleted in a watched parent.
 .B FAN_DELETE_SELF
 A watched file or directory was deleted.
 .TP
+.B FAN_FS_ERROR
+A filesystem error was detected.
+.TP
 .B FAN_MOVED_FROM
 A file or directory has been moved from a watched parent directory.
 .TP
@@ -630,6 +652,25 @@ Once the event listener has dealt with an event and the pidfd is no
 longer required, the pidfd should be closed via
 .BR close(2) .
 .PP
+The fields of the
+.I fanotify_event_info_error
+structure are as follows:
+.TP
+.I hdr
+This is a structure of type
+.IR fanotify_event_info_header .
+The
+.I info_type
+field is set to
+.BR FAN_EVENT_INFO_TYPE_ERROR .
+.TP
+.I error
+Identifies the type of error that occurred.
+.TP
+.I error_count
+This is a counter of the number of errors suppressed
+since the last error was read.
+.PP
 The following macros are provided to iterate over a buffer containing
 fanotify event metadata returned by a
 .BR read (2)
@@ -719,6 +760,29 @@ field.
 In that case, the audit subsystem will log information about the access
 decision to the audit logs.
 .\"
+.SS Monitoring filesystems for errors
+A single FAN_FS_ERROR event is stored per filesystem at once.
+Extra error messages are suppressed and accounted for
+in the
+.I error_count
+field of the existing FAN_FS_ERROR event record,
+but details about the errors are lost.
+.PP
+Errors reported by FAN_FS_ERROR are generic errno values
+but not all kinds of error types are reported by all filesystems.
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
2.35.1

