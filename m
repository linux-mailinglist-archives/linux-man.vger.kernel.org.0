Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 297E155516B
	for <lists+linux-man@lfdr.de>; Wed, 22 Jun 2022 18:42:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236904AbiFVQmE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Jun 2022 12:42:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357542AbiFVQmC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Jun 2022 12:42:02 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB565377FB
        for <linux-man@vger.kernel.org>; Wed, 22 Jun 2022 09:42:01 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id k22so17789233wrd.6
        for <linux-man@vger.kernel.org>; Wed, 22 Jun 2022 09:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=i5Wo2vrRNTfZwUb+MdFUsb+MCNwlW1IyeDZXIUDWqVw=;
        b=GE0ZSXr+X3ZwY9tPK3Pvj4SOT529bPCXvMeVQkHXhVcjujYk4uHqxBryFYb1Lwuwoc
         n3KQU8z+bg0RK/Fs4OKRnzeTAFfR71S2LF3hMW+EAvnHXWYuYebqURNbPs3qF7F9ZUq4
         beRcQcgJbh9O29PuT8MWe5yEptH8je3ceoY9VS6+6Ukn6GCzK9wMSnQ1dENS7nBAzgzx
         XlStlKktMBRV/GAhNgFO4+EjrZOcxjApsRfxVH9SB4G3TZnPYBbQnVHPvP3pwukLSwrF
         Mjd4rs11fvTzsrZoGhBzsWT5B8mYqm/uWB6gdaQf3vQGtA5uU4s4VcNhJEzwSGB0hgWl
         rx+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i5Wo2vrRNTfZwUb+MdFUsb+MCNwlW1IyeDZXIUDWqVw=;
        b=bHjeWg8exF3nETV1MLJooSBILCsHGAvE9zMv7j4dgHyJd89kPKFKTua1/JZpSzHgpS
         z3eAphYCNEnoy8UOEaAM1hj6K5bb3S6zW+U+ISkf0HQ6Hm6s0CGRE8tRDvbXNKn64GM+
         D8DcseLuYoqGm0DKyzpYNXio4rciaJAshcfnoyLUiI+OuZb325biIAD/kzFH0R3t7dtz
         4UIWv5zJsSsB+wXc1hCLZR5NtiDJtIJu/KXCnat4Fp8Yu98BVdM1w7W2NHYC/TyJEF9Y
         OcZJk3MQ6yaWHbSByCyjJXnhpMQfhhLk7Fcina1tP8NX5cSs1ypeulNlVdRkBhVzzagZ
         TZVA==
X-Gm-Message-State: AJIora+jFOuwK+DsnLLkJLGjTjHQGNTk03nsqm7jxvi+D+49Zdti96nN
        MQOmZRpMW5gqxUkcnwYbAJ8=
X-Google-Smtp-Source: AGRyM1sIGYFJLZonPtTEzrw2ZLuv1xVWN7exq/na3iP2Ys+PsuKZbXDHokSWyC5xcl+C4BlNdGUa9w==
X-Received: by 2002:a05:6000:1f81:b0:21b:a1b5:776 with SMTP id bw1-20020a0560001f8100b0021ba1b50776mr3401996wrb.201.1655916120411;
        Wed, 22 Jun 2022 09:42:00 -0700 (PDT)
Received: from localhost.localdomain ([77.137.66.49])
        by smtp.gmail.com with ESMTPSA id o12-20020a05600c4fcc00b0039751bb8c62sm26934236wmq.24.2022.06.22.09.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 09:41:59 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 1/2] fanotify.7, fanotify_init.2: Document FAN_REPORT_TARGET_FID
Date:   Wed, 22 Jun 2022 19:41:52 +0300
Message-Id: <20220622164153.2188751-2-amir73il@gmail.com>
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

FAN_REPORT_TARGET_FID adds an information record about the child
to directory entry modification events (create/delete/move).

This flag also adds sanity checks that directory modification events
(create,delete,moved) cannot be set in mask of a non-dir inode mark.

Note that while FAN_REPORT_TARGET_FID was merged to v5.17, the sanity
checks resulting in ENOTDIR were merged as fix commit ceaf69f8eadc
("fanotify: do not allow setting dirent events in mask of non-dir")
to v5.18 and backported to v5.17.9.

Reviewed-by: Matthew Bobrowski <repnop@google.com>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man2/fanotify_init.2 | 40 +++++++++++++++++++++++++++++++++++++---
 man2/fanotify_mark.2 |  8 ++++++++
 man7/fanotify.7      | 27 +++++++++++++--------------
 3 files changed, 58 insertions(+), 17 deletions(-)

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
index 3dc538b7f..eeaddd173 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -472,6 +472,14 @@ and
 and
 .I pathname
 do not specify a directory.
+For an fanotify group that was initialized with flag
+.BR FAN_REPORT_TARGET_FID ,
+this error will also be returned
+when trying to set directory entry modification events
+(e.g.,
+.BR FAN_CREATE ,
+.BR FAN_DELETE )
+in the mask of a non directory inode mark.
 .TP
 .B EOPNOTSUPP
 The object indicated by
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

