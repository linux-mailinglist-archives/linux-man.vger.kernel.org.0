Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7EF85622A1
	for <lists+linux-man@lfdr.de>; Thu, 30 Jun 2022 21:06:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235847AbiF3TGX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Jun 2022 15:06:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236418AbiF3TGV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Jun 2022 15:06:21 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D53D37034
        for <linux-man@vger.kernel.org>; Thu, 30 Jun 2022 12:06:20 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id o4so24729795wrh.3
        for <linux-man@vger.kernel.org>; Thu, 30 Jun 2022 12:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QP9dejkrJZO7EoAe/KR382KxyRZmoFXcp9w49gw9SaI=;
        b=jdmltsw5uPGCMR0rr/6CX+Ok27WLA7z3opBQo44liVRAc3el7CYAOt299FO8NtCHGw
         p4F3n5bMlRVw9pspuzVso1r+TvNsKQDBRlkeZyN44VIrW7sJgUkPScT04rqGvtj3yAhz
         P2OZaxfgX61AIxLo/UR4PZbIJhCqrojewrUmCuB2pthBIbc2jsR1xfgJrxFRHVqoJ+mV
         yzM/9m74VJE41oqCkJsIYu5CJkxxa8MRgcbBCLDTUe0kjRz7lRs8WJUW4MQOTvgjwJ8R
         JM+ywyNgQTIRs3aBJZhwMju4UCReyd0YLQsqekOzMCC1cYTJm+zG9CH0q2od07Axof6r
         YLQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QP9dejkrJZO7EoAe/KR382KxyRZmoFXcp9w49gw9SaI=;
        b=T+Q3gpDxzT252GAegbxvRsVGXui1LtWCk1h5uYHyhPNd41NfOM98WWSl2zgiZMgfbo
         pCG+kUz/bbNd3RHJFvFIRQQhWGX6Zl+Am0OvF5MiXNJI2yYA4k/5Lj43alRBeYAsXyjc
         L2hkn2Vgz+AxZOOtIrmc6iuRQc1lVSG4CGi6JkIdNr34T3ALmqbLGyi3JnPewLB+9YCc
         iqgNKKQdwlzCE5B3Q1zT/QqwUVAMhFsZMZWL5VSN4eztXREcBzj2XEgCFyE2DvbDpmFI
         BK5ojKFiFssfpOyNNbxLtaoQzyQRCvX7rJA0JczxmN8fKtBvBc02wWxzbUex+OcPHyM+
         jepw==
X-Gm-Message-State: AJIora9BmF+Jo03Zxhp3F5dW81MpmE2vET/SPwLhvUSjqpgxMgMdQTvr
        oIx6COPh1OKlCceULKGRcd5upqUWiI4=
X-Google-Smtp-Source: AGRyM1vSLNtW5hl5a7kZhzrTnOq61swwG6U+z+M0uS8zoKs79jjSCnpR6UEAd6A7zXP5qt+YkbFGtA==
X-Received: by 2002:a5d:6c62:0:b0:21d:2204:1338 with SMTP id r2-20020a5d6c62000000b0021d22041338mr9732558wrz.533.1656615978781;
        Thu, 30 Jun 2022 12:06:18 -0700 (PDT)
Received: from localhost.localdomain ([5.29.8.191])
        by smtp.gmail.com with ESMTPSA id z21-20020a1c4c15000000b0039c871d3191sm7825220wmf.3.2022.06.30.12.06.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 12:06:18 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v3 2/2] fanotify.7, fanotify_init.2, fanotify_mark.2: Document FAN_RENAME
Date:   Thu, 30 Jun 2022 22:06:10 +0300
Message-Id: <20220630190610.3043428-3-amir73il@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220630190610.3043428-1-amir73il@gmail.com>
References: <20220630190610.3043428-1-amir73il@gmail.com>
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

FAN_RENAME is a new event type that includes information about
both old and new directory entries.

It is a successor of the two separate FAN_MOVED_TO/FROM events,
but those event types are still supported.

Reviewed-by: Matthew Bobrowski <repnop@google.com>
Reviewed-by: Jan Kara <jack@suse.cz>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man2/fanotify_init.2 | 25 +++++++++++++++++++------
 man2/fanotify_mark.2 | 23 +++++++++++++++++++++++
 man7/fanotify.7      |  6 +++++-
 3 files changed, 47 insertions(+), 7 deletions(-)

diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index ac4d3a305..810f3fc73 100644
--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -173,8 +173,9 @@ Additionally, it may be used for applications monitoring a directory or a
 filesystem that are interested in the directory entry modification events
 .BR FAN_CREATE ,
 .BR FAN_DELETE ,
-and
 .BR FAN_MOVE ,
+and
+.BR FAN_RENAME ,
 or in events such as
 .BR FAN_ATTRIB ,
 .BR FAN_DELETE_SELF ,
@@ -257,6 +258,15 @@ For the directory entry modification events
 and
 .BR FAN_MOVE ,
 the reported name is that of the created/deleted/moved directory entry.
+The event
+.B FAN_RENAME
+may contain two information records.
+One of type
+.B FAN_EVENT_INFO_TYPE_OLD_DFID_NAME
+identifying the old directory entry,
+and another of type
+.B FAN_EVENT_INFO_TYPE_NEW_DFID_NAME
+identifying the new directory entry.
 For other events that occur on a directory object, the reported file handle
 is that of the directory object itself and the reported name is '.'.
 For other events that occur on a non-directory object, the reported file handle
@@ -301,14 +311,17 @@ will be returned.
 For the directory entry modification events
 .BR FAN_CREATE ,
 .BR FAN_DELETE ,
-and
 .BR FAN_MOVE ,
+and
+.BR FAN_RENAME ,
 an additional record of type
 .BR FAN_EVENT_INFO_TYPE_FID ,
-is reported in addition to the information record of type
-.B FAN_EVENT_INFO_TYPE_DFID
-or
-.BR FAN_EVENT_INFO_TYPE_DFID_NAME .
+is reported in addition to the information records of type
+.BR FAN_EVENT_INFO_TYPE_DFID ,
+.BR FAN_EVENT_INFO_TYPE_DFID_NAME ,
+.BR FAN_EVENT_INFO_TYPE_OLD_DFID_NAME ,
+and
+.BR FAN_EVENT_INFO_TYPE_NEW_DFID_NAME .
 The additional record includes a file handle
 that identifies the filesystem child object
 that the directory entry is referring to.
diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index 80f73b983..a56475f0a 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -240,6 +240,19 @@ directory.
 An fanotify group that identifies filesystem objects by file handles
 is required.
 .TP
+.BR FAN_RENAME " (since Linux 5.17)"
+.\" commit 8cc3b1ccd930fe6971e1527f0c4f1bdc8cb56026
+This event contains the same information provided by events
+.B FAN_MOVED_FROM
+and
+.BR FAN_MOVED_TO ,
+however is represented by a single event with up to two information records.
+An fanotify group that identifies filesystem objects by file handles
+is required.
+If the filesystem object to be marked is not a directory, the error
+.B ENOTDIR
+shall be raised.
+.TP
 .BR FAN_MOVE_SELF " (since Linux 5.1)"
 .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
 Create an event when a marked file or directory itself has been moved.
@@ -474,6 +487,16 @@ and
 do not specify a directory.
 .TP
 .B ENOTDIR
+.I mask
+contains
+.BR FAN_RENAME ,
+and
+.I dirfd
+and
+.I pathname
+do not specify a directory.
+.TP
+.B ENOTDIR
 The fanotify group was initialized with flag
 .BR FAN_REPORT_TARGET_FID ,
 .I mask
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index 5f2c01408..47e104b1b 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -391,6 +391,9 @@ A watched file or directory was deleted.
 .B FAN_FS_ERROR
 A filesystem error was detected.
 .TP
+.B FAN_RENAME
+A file or directory has been moved to or from a watched parent directory.
+.TP
 .B FAN_MOVED_FROM
 A file or directory has been moved from a watched parent directory.
 .TP
@@ -556,8 +559,9 @@ identifying a child object.
 Note that for the directory entry modification events
 .BR FAN_CREATE ,
 .BR FAN_DELETE ,
-and
 .BR FAN_MOVE ,
+and
+.BR FAN_RENAME ,
 an information record identifying the created/deleted/moved child object
 is reported only if an fanotify group was initialized with the flag
 .BR FAN_REPORT_TARGET_FID.
-- 
2.25.1

