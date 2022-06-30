Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A404562293
	for <lists+linux-man@lfdr.de>; Thu, 30 Jun 2022 21:06:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236418AbiF3TGX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Jun 2022 15:06:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236700AbiF3TGV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Jun 2022 15:06:21 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D4DF3F894
        for <linux-man@vger.kernel.org>; Thu, 30 Jun 2022 12:06:18 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id i132-20020a1c3b8a000000b003a1888b9d36so153292wma.0
        for <linux-man@vger.kernel.org>; Thu, 30 Jun 2022 12:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RiZLUJCq6NRigoXy+b2Oy3452vh6C6e3fSylJN6sGqY=;
        b=dSeT3btuDXaMcqiybXfcpDEyRVaqNMIFtN3YLV2RjY3aWBRKUrKpYeXcnnSL5VYLbc
         PEhO9gy1M2SEptHwTn6/fprgWVF0ZjGH2Mz3/d9SmCKpkpA7zs7Dmq3PTRptxFbN+H4m
         K2EE6yAoT0DlkB16uego0Y+stpNroH3SAkgVU/1Kv+A1Uj4SF3emzPxVC4aHWx4WZ72W
         Xf3NvRXD6KZfxMvm+ZA9k8GH9B5qceUDrs9iw4hpEBBqk4leh8HrUIVvlsQEhIKkmcNx
         xxmCNHUeYV9JVbEXwAp+4iIz+8LFxSYQDN+gQ7kEv6QMkiGC0qMm4g4udO2xXhPK8KHm
         qb2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RiZLUJCq6NRigoXy+b2Oy3452vh6C6e3fSylJN6sGqY=;
        b=owetV/mDowuiLStlCo0sD9dvkplkebL/mQJa1H24WamUPQtJOMpVUhHmqxOIMBnBG8
         jvlfNELLGf2ixDvZolKl8TLdxSltNgVxVKd0BijN8iw7CfWRu5XZG9Dn4Qfuo5Hnuhy3
         isYSS7EE/ubN3SRtKQUS7wPR8bf4Qq0yfsKl31XAynI8j6CxXXOr8gocgQXco0HfF0z+
         7oJb5neS3vnNwtqxCKQNvXiBJAQ79eJtOJIxsLS1pthjrGtwjB6JmnNBha0YN1vjVgQv
         8HVvUcC4EhyTTp8fr/csMRATp/OfcGZ6Faz2NCErxxkJe44jfM/FI4gLLTbwz1YhWbbG
         vMUw==
X-Gm-Message-State: AJIora+khlJtXZEbMi2vW60hxNc4PS7uNru0CSZZ2fKd/yHblMSFe8sa
        ArXdIZD5rR8bQ6jlCWvORpw=
X-Google-Smtp-Source: AGRyM1uw5uWH0qttECE2/xbGcZI9A7Iswgtbir7b6PewLsSWSJwO132UeU6nYTrqU/e/vDpsIK1ehA==
X-Received: by 2002:a05:600c:1d95:b0:3a0:3cf1:5eb4 with SMTP id p21-20020a05600c1d9500b003a03cf15eb4mr11804579wms.50.1656615977499;
        Thu, 30 Jun 2022 12:06:17 -0700 (PDT)
Received: from localhost.localdomain ([5.29.8.191])
        by smtp.gmail.com with ESMTPSA id z21-20020a1c4c15000000b0039c871d3191sm7825220wmf.3.2022.06.30.12.06.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 12:06:17 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v3 1/2] fanotify.7, fanotify_init.2: Document FAN_REPORT_TARGET_FID
Date:   Thu, 30 Jun 2022 22:06:09 +0300
Message-Id: <20220630190610.3043428-2-amir73il@gmail.com>
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

FAN_REPORT_TARGET_FID adds an information record about the child
to directory entry modification events (create/delete/move).

This flag also adds sanity checks that directory modification events
(create,delete,moved) cannot be set in mask of a non-dir inode mark.

Note that while FAN_REPORT_TARGET_FID was merged to v5.17, the sanity
checks resulting in ENOTDIR were merged as fix commits ceaf69f8eadc
("fanotify: do not allow setting dirent events in mask of non-dir")
and 8698e3bab4dd ("fanotify: refine the validation checks on non-dir
inode mask") in later kernel releases.

Reviewed-by: Matthew Bobrowski <repnop@google.com>
Reviewed-by: Jan Kara <jack@suse.cz>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man2/fanotify_init.2 | 40 +++++++++++++++++++++++++++++++++++++---
 man2/fanotify_mark.2 | 18 ++++++++++++++++++
 man7/fanotify.7      | 27 +++++++++++++--------------
 3 files changed, 68 insertions(+), 17 deletions(-)

diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index 9abec5fca..ac4d3a305 100644
--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -182,9 +182,11 @@ and
 .BR FAN_MOVE_SELF .
 All the events above require an fanotify group that identifies filesystem
 objects by file handles.
-Note that for the directory entry modification events the reported file handle
-identifies the modified directory and not the created/deleted/moved child
-object.
+Note that without the flag
+.BR FAN_REPORT_TARGET_FID ,
+for the directory entry modification events,
+there is an inforamtion record that identifies the modified directory
+and not the created/deleted/moved child object.
 The use of
 .B FAN_CLASS_CONTENT
 or
@@ -282,6 +284,38 @@ for additional details.
 .B FAN_REPORT_DFID_NAME
 This is a synonym for
 .RB ( FAN_REPORT_DIR_FID | FAN_REPORT_NAME ).
+.TP
+.BR FAN_REPORT_TARGET_FID " (since Linux 5.17)"
+.\" commit d61fd650e9d206a71fda789f02a1ced4b19944c4
+Events for fanotify groups initialized with this flag
+will contain additional information about the child
+correlated with directory entry modification events.
+This flag must be provided in conjunction with the flags
+.BR FAN_REPORT_FID ,
+.B FAN_REPORT_DIR_FID
+and
+.BR FAN_REPORT_NAME .
+or else the error
+.B EINVAL
+will be returned.
+For the directory entry modification events
+.BR FAN_CREATE ,
+.BR FAN_DELETE ,
+and
+.BR FAN_MOVE ,
+an additional record of type
+.BR FAN_EVENT_INFO_TYPE_FID ,
+is reported in addition to the information record of type
+.B FAN_EVENT_INFO_TYPE_DFID
+or
+.BR FAN_EVENT_INFO_TYPE_DFID_NAME .
+The additional record includes a file handle
+that identifies the filesystem child object
+that the directory entry is referring to.
+.TP
+.B FAN_REPORT_DFID_NAME_TARGET
+This is a synonym for
+.RB ( FAN_REPORT_DFID_NAME | FAN_REPORT_FID | FAN_REPORT_TARGET_FID ).
 .PP
 .TP
 .BR FAN_REPORT_PIDFD " (since Linux 5.15)"
diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index 3dc538b7f..80f73b983 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -473,6 +473,24 @@ and
 .I pathname
 do not specify a directory.
 .TP
+.B ENOTDIR
+The fanotify group was initialized with flag
+.BR FAN_REPORT_TARGET_FID ,
+.I mask
+contains directory entry modification events
+(e.g.,
+.BR FAN_CREATE ,
+.BR FAN_DELETE ) ,
+or directory event flags
+(e.g.,
+.BR FAN_ONDIR ,
+.BR FAN_EVENT_ON_CHILD ) ,
+and
+.I dirfd
+and
+.I pathname
+do not specify a directory.
+.TP
 .B EOPNOTSUPP
 The object indicated by
 .I pathname
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index f4d391603..5f2c01408 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -171,14 +171,14 @@ alongside the generic
 structure.
 For example,
 if a notification group is initialized with
-.B FAN_REPORT_FID
+.B FAN_REPORT_TARGET_FID
 and
 .BR FAN_REPORT_PIDFD ,
-then an event listener should also expect to receive both
+then an event listener should expect to receive up to two
 .I fanotify_event_info_fid
-and
+information records and one
 .I fanotify_event_info_pidfd
-structures alongside the generic
+information record alongside the generic
 .I fanotify_event_metadata
 structure.
 Importantly,
@@ -552,7 +552,15 @@ identifying a parent directory object, and one with
 .I info_type
 field value of
 .BR FAN_EVENT_INFO_TYPE_FID ,
-identifying a non-directory object.
+identifying a child object.
+Note that for the directory entry modification events
+.BR FAN_CREATE ,
+.BR FAN_DELETE ,
+and
+.BR FAN_MOVE ,
+an information record identifying the created/deleted/moved child object
+is reported only if an fanotify group was initialized with the flag
+.BR FAN_REPORT_TARGET_FID.
 .TP
 .I fsid
 This is a unique identifier of the filesystem containing the object
@@ -572,15 +580,6 @@ filesystem as returned by
 It can be used to uniquely identify a file on a filesystem and can be
 passed as an argument to
 .BR open_by_handle_at (2).
-Note that for the directory entry modification events
-.BR FAN_CREATE ,
-.BR FAN_DELETE ,
-and
-.BR FAN_MOVE ,
-the
-.I file_handle
-identifies the modified directory and not the created/deleted/moved child
-object.
 If the value of
 .I info_type
 field is
-- 
2.25.1

