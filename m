Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA8E055516A
	for <lists+linux-man@lfdr.de>; Wed, 22 Jun 2022 18:42:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357544AbiFVQmH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Jun 2022 12:42:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357542AbiFVQmG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Jun 2022 12:42:06 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57A9D377F3
        for <linux-man@vger.kernel.org>; Wed, 22 Jun 2022 09:42:03 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id g27so17571893wrb.10
        for <linux-man@vger.kernel.org>; Wed, 22 Jun 2022 09:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xv+pt2/QO73a+cDslRoWPKm+lH0dhZ5Se7BEBeTpzAI=;
        b=UjCq6EHRHmLei1fDbnecI9zIkU8sRHogsr96PwWuM++Qg0eC2i7foAA873DaP390k4
         +0qUL0v3zYECBrPRf8NDDwuVxCRcK3OyearbVGnoFpw++5q7qO3YFWN5rjYKh/OWcEtM
         KkCVjUocmY1wHzgz/wNHpl0cdHHXMKoKgrxes6B7rHt1JIRXyW+bLC4tx0t4vuE6ySPS
         tNttpJF7RQ4HPdzVyztw5agqe2tB6W1cwNSzy+p7Of5uwSDDQK0MygMpc396amX40QEv
         OuwI2ksYqwvqdWxuOFlA95jv1nnQqL61sUOs8Nohj4T5zUd/oZtOSCFME994Xj1JUcOr
         j/qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xv+pt2/QO73a+cDslRoWPKm+lH0dhZ5Se7BEBeTpzAI=;
        b=JbFjVUrb2nTtu9KiZWVlyMbn8bwMtWHXL/qx1UXv5HBjCJPtlmu9cdAGp4RxPVMxbs
         xRe8E87jAicTds8SxeA7mnuGysKYONmGVXzZbIPUruICdnabaWaMu71qj1EDq5p8W6HM
         0EVmIzvCtJtxLh38nQZNe3RGSxmLtAL8kLgs0KI9D7Emg/fR4u+5ENtnNhHaISsFu6Wp
         RxiGyZ/MWtHbmVbzE93g8X5y5nsI61TIGQqo239k0LmgHkOo8QWBayYq0cLmkwab3uaY
         jnaI1IcAVw6oExSBRIL+lVnJJr7ZK2ZwchnV1G8k7a3JVOS2U8/wSjineIa16tkNS3dG
         ysoQ==
X-Gm-Message-State: AJIora+cMChbKTH/x9Yl9X+XrbOkTvds/KjAjZtzB/+IZ2CL3LNdMTQK
        VQpV7uIPjLcLfFvRoxl1QE8=
X-Google-Smtp-Source: AGRyM1sePC0rd5trdFtLC+AitjQkSH0FtzjWI9z0uD0mBtdUwHU+2xBeieIn2ng5TppbplA0y+cwyQ==
X-Received: by 2002:a5d:5f05:0:b0:21b:8ca0:6d3d with SMTP id cl5-20020a5d5f05000000b0021b8ca06d3dmr4256828wrb.382.1655916121783;
        Wed, 22 Jun 2022 09:42:01 -0700 (PDT)
Received: from localhost.localdomain ([77.137.66.49])
        by smtp.gmail.com with ESMTPSA id o12-20020a05600c4fcc00b0039751bb8c62sm26934236wmq.24.2022.06.22.09.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 09:42:01 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 2/2] fanotify.7, fanotify_init.2, fanotify_mark.2: Document FAN_RENAME
Date:   Wed, 22 Jun 2022 19:41:53 +0300
Message-Id: <20220622164153.2188751-3-amir73il@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220622164153.2188751-1-amir73il@gmail.com>
References: <20220622164153.2188751-1-amir73il@gmail.com>
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
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man2/fanotify_init.2 | 25 +++++++++++++++++++------
 man2/fanotify_mark.2 | 16 ++++++++++++++++
 man7/fanotify.7      |  6 +++++-
 3 files changed, 40 insertions(+), 7 deletions(-)

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
index eeaddd173..66c704c19 100644
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
@@ -472,6 +485,9 @@ and
 and
 .I pathname
 do not specify a directory.
+This error will also be returned when trying to set the event
+.B FAN_RENAME
+in the mask of a non directory inode mark.
 For an fanotify group that was initialized with flag
 .BR FAN_REPORT_TARGET_FID ,
 this error will also be returned
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

