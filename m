Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B82354F80A
	for <lists+linux-man@lfdr.de>; Fri, 17 Jun 2022 15:00:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382194AbiFQNAj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jun 2022 09:00:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1381848AbiFQNAi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jun 2022 09:00:38 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7196B562DC
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 06:00:37 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id i10so1932783wrc.0
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 06:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1LA+qrDsxYttyWToavlhYqpiDVCJulf4mEjXjT7TEiI=;
        b=XpQKQ8o7uX4Gb+sjXC9HW48nL7uqQyptFXymuliZUHvGf9UlcdrL42ubQYnB5K+dNM
         dcOr48wNbYezLOeJ4aGJ0ugWucs6HDJTDdZ5Ni1Xu8onSAu1dpJNe6XmLQ/RF3+EtMjH
         Z7FAManMpCGEk3KUjTPmnPqgohLMa+lkAtiYA+FLuycOSjMcpVYgz7knzm5aDsO9yAJL
         78QRZoN+OUTT5RY8SlNPFESGOunjp80yJP2acewPNox2JEVPWoq/8pdCi3ORd76qLhdy
         AEWpH1RTQ3Y7Hzbb4EplgVuwgd6u8GjCvcimIHSSLKVAf6f4W5hcncObPhYXvAKvdFRs
         p/aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1LA+qrDsxYttyWToavlhYqpiDVCJulf4mEjXjT7TEiI=;
        b=Ucdb/g7nfIPR6pL10YhUJrkPYdixSM1vZLljZpHJ8kmy/9WtqyWpyv8dCGYp1jbJA8
         6AVb0qaxNZ9iWsgRxLnjnskYLZwoc/JVKv2wMTmY2EHvH65L6GVpmzR36hTagSVLuHls
         WhoSfAYrp/JgW0f3K0RTx6rRoclKaiGK/DmlYuB1VmPLXjFAlhAVjXiPJpF26lJokKLE
         37wlFZzLTtWUUc2RbXDVCVW2Ud3Y1Kec5p/z/ULH2NEqBq2H3kIqFC8iZvgZPCDCUGai
         3AMm+yl5sWmI800SYChSpIPjN4qeG9uyhBbGh3Co7PUNemZ5/rjgclUuSYNw03ULziMW
         nHsw==
X-Gm-Message-State: AJIora99cNsSfYltiBkvWvyMdE2hyUkrzrN7wyEbSVZBmdOxWTMbTMvk
        acmE0E7qEWaw+xRS/EneTUA=
X-Google-Smtp-Source: AGRyM1sBpJvpirOqFI0EVVPd1i/je5mQp6Aj3eZfCI/7ECMWe0AjPsOSFMOgzCGy0ADevqBJh2SF4Q==
X-Received: by 2002:a5d:560b:0:b0:218:5ba8:88e5 with SMTP id l11-20020a5d560b000000b002185ba888e5mr9568990wrv.100.1655470835824;
        Fri, 17 Jun 2022 06:00:35 -0700 (PDT)
Received: from localhost.localdomain ([77.137.66.49])
        by smtp.gmail.com with ESMTPSA id n125-20020a1c2783000000b003974cb37a94sm9055438wmn.22.2022.06.17.06.00.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 06:00:35 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org,
        Gabriel Krisman Bertazi <krisman@collabora.com>
Subject: [PATCH v6] fanotify.7, fanotify_mark.2: Document FAN_FS_ERROR
Date:   Fri, 17 Jun 2022 16:00:14 +0300
Message-Id: <20220617130014.1660717-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Gabriel Krisman Bertazi <krisman@collabora.com>

FAN_FS_ERROR is a new event for fanotify to report filesystem errors
that might lead to some corruption.
This documents how to use the feature and specific caveats.

Reviewed-by: Jan Kara <jack@suse.cz>
Reviewed-by: Amir Goldstein <amir73il@gmail.com>
Reviewed-by: Matthew Bobrowski <repnop@google.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---

Hi Alex,

Posting v6 of Gabriel's patch with minor fixes per your request.
Rebased on top of upstream.

Thanks,
Amir.


 man2/fanotify_mark.2 | 30 +++++++++++++++++++
 man7/fanotify.7      | 71 ++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 101 insertions(+)

diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index 9a45cbb77..3dc538b7f 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -203,6 +203,29 @@ Create an event when a marked file or directory itself is deleted.
 An fanotify group that identifies filesystem objects by file handles
 is required.
 .TP
+.BR FAN_FS_ERROR " (since Linux 5.16)"
+.\" commit 9709bd548f11a092d124698118013f66e1740f9b
+Create an event when a filesystem error
+leading to inconsistent filesystem metadata is detected.
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
@@ -391,6 +414,13 @@ and mask contains a flag for permission events
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
index a0dc0dfba..f4d391603 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -228,6 +228,25 @@ struct fanotify_event_info_pidfd {
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
@@ -369,6 +388,9 @@ A child file or directory was deleted in a watched parent.
 .B FAN_DELETE_SELF
 A watched file or directory was deleted.
 .TP
+.B FAN_FS_ERROR
+A filesystem error was detected.
+.TP
 .B FAN_MOVED_FROM
 A file or directory has been moved from a watched parent directory.
 .TP
@@ -643,6 +665,25 @@ and the pidfd is no longer required,
 the pidfd should be closed via
 .BR close (2).
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
@@ -732,6 +773,36 @@ field.
 In that case, the audit subsystem will log information about the access
 decision to the audit logs.
 .\"
+.SS Monitoring filesystems for errors
+A single
+.B FAN_FS_ERROR
+event is stored per filesystem at once.
+Extra error messages are suppressed and accounted for in the
+.I error_count
+field of the existing
+.B FAN_FS_ERROR
+event record,
+but details about the errors are lost.
+.PP
+Errors reported by
+.B FAN_FS_ERROR
+are generic
+.I errno
+values,
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
2.25.1

