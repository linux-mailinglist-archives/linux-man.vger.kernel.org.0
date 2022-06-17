Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E457F54F836
	for <lists+linux-man@lfdr.de>; Fri, 17 Jun 2022 15:12:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235591AbiFQNMJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jun 2022 09:12:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1381709AbiFQNMH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jun 2022 09:12:07 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D81E351E62
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 06:12:05 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id x17so5715729wrg.6
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 06:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LTQaK7Vc1LdqL5OytQLzrP4i9k1CL4OzSMYfG5UetKg=;
        b=Z2QwGrnfdyYzwGmXPWA4Bg3LJFkpdJMiamp61DD1IHzcWdA6Kdt2h8h9P/tuL+IIas
         WVKGTRkARJG9C3yAYTY3JnVmmrPJz08tZczvSz5/P5GCfPmvrrjJvFsnqnrHeam9PKXK
         8UqJT0lW8ANcGs9s/SQ6YsZxROx9vBz+YckmSi8ReWAdFzI6LrFM8Th2mn1BAq/dPHjY
         sw3/DsKDW2YtGKxivlJQnNfgXAW3pb9mkAFj7yySpoZ7vv8gdWqBSK6CfeR8aX/JTy7x
         QA8zM9APPSxa/6fM7HEov1tuC46rcbjSlw6GfDL0ueYJ2kybz0syYcfwWQ2Z3g+1dYbB
         rG4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LTQaK7Vc1LdqL5OytQLzrP4i9k1CL4OzSMYfG5UetKg=;
        b=QK7ladU0Q25SwV5tKWDGLQ/SlllASDjZKP3JgWVH32uw7her9ope4wyfkZb4/YOU6S
         2ahoSasHYqmQru86lehGK9cf24foHp5NKhlBekUr01mGMkLEPlzlv5BKsGtjqqSbB/XB
         uElwXLaL6Fpu7UKpq3m/y/JsVeJSktiEOciEDmfzrpfOfYGm1sltb99BemPPesxruGG8
         keR9S7+I+eprR1uLABe1jXxSFPFRbIOdM/JBkZpsWPVcEuaongDikDZTcbOWerD6eHYN
         uFtJTNC8WtoQwgO1Zl6Ki8M0mV73f7kwg63MLw32iJhIXa5gcHej6hf3dHegPEk103Gt
         QQIw==
X-Gm-Message-State: AJIora/N57dDaUWzq/GLMJM7pT9bQ6TcHmE/9jddjWHj37PwPinPMWS4
        Bkx7MSrYHV+0mSnqmBHXhuE=
X-Google-Smtp-Source: AGRyM1umTAhR2obnX8vsLzvKGTOm5r0Cqa8gWiL6KgiBP/mAKfEesUjSdCDMt/MtHoIHwEFfuEEBKg==
X-Received: by 2002:a5d:5046:0:b0:210:20ba:843b with SMTP id h6-20020a5d5046000000b0021020ba843bmr9253143wrt.447.1655471524197;
        Fri, 17 Jun 2022 06:12:04 -0700 (PDT)
Received: from localhost.localdomain ([77.137.66.49])
        by smtp.gmail.com with ESMTPSA id l18-20020adfe592000000b002102af52a2csm5812954wrm.9.2022.06.17.06.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 06:12:03 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 1/2] fanotify.7, fanotify_init.2: Document FAN_REPORT_TARGET_FID
Date:   Fri, 17 Jun 2022 16:11:57 +0300
Message-Id: <20220617131158.1661235-2-amir73il@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220617131158.1661235-1-amir73il@gmail.com>
References: <20220617131158.1661235-1-amir73il@gmail.com>
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

Reviewed-by: Matthew Bobrowski <repnop@google.com>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man2/fanotify_init.2 | 40 +++++++++++++++++++++++++++++++++++++---
 man2/fanotify_mark.2 |  7 +++++++
 man7/fanotify.7      | 27 +++++++++++++--------------
 3 files changed, 57 insertions(+), 17 deletions(-)

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
index 3dc538b7f..ebb327bdd 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -472,6 +472,13 @@ and
 and
 .I pathname
 do not specify a directory.
+For an fanotify group that was initialized with flag
+.BR FAN_REPORT_TARGET_FID ,
+this error will also be returned when trying to set directory entry modification
+events (e.g.,
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

