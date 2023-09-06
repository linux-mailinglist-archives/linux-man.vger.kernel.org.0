Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F11079367F
	for <lists+linux-man@lfdr.de>; Wed,  6 Sep 2023 09:43:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231863AbjIFHnE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 Sep 2023 03:43:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232214AbjIFHnD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 Sep 2023 03:43:03 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EA4D1AB
        for <linux-man@vger.kernel.org>; Wed,  6 Sep 2023 00:42:57 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40078c4855fso32870395e9.3
        for <linux-man@vger.kernel.org>; Wed, 06 Sep 2023 00:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693986175; x=1694590975; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PphspeHdKPjtHF/uLH4EU0Tw7sLAMv3ZfncLI2VKHr0=;
        b=TLw7Z8jl35Xi0Rrnn1vZS3EPA7/ZaBkU6cn1+aR1jrjMkpD3d/fv6f3siS4z0Ce2/5
         kp5Na5A4j5X+JfwfNua5xi0MUJ1Kqu/DcjMcN8afTbNBFgOYCN1bbdKsRatzpGveTQv1
         nwduAH4BsI+9oIrSpskmB+OzYOLFopFYwFjcAxAQevb2D8QgsI097yUYiSExRhsCsaAt
         88gvX0BQc1RONC0mQjIFfPAuBOPOmVRjNOr/OMSk0KuK4sYf73+m5/WVdG0ntnFiwyZI
         5dOvhmaMqu3CgyQe6KK1vXWEGd8W6jLO/8KFJCe56ytqywRDkeS1370HvR9V+bL6rMOM
         BKhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693986175; x=1694590975;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PphspeHdKPjtHF/uLH4EU0Tw7sLAMv3ZfncLI2VKHr0=;
        b=c6NatxeSD+XJ8MEpFyw4b9xJ0binkr1YAK2CyQdLOmDhgV86Gj5aSnErdZJrTkEVVH
         6iYMhUeKD+kdPmBYlSgd13uz5wpWTrYvYCqzCvix7qKd0X/gC/tggxMfLYZDCzzK4UEC
         q6VtACK3U6JPdCxOJ602x4XIh+ExTpnPAqyxXx7T/Vv61UH4r2kfNzxlzQZuRlDAI+cK
         UmF75i5HHvuh58pVIha8mlT9WrlVxZiUeA5Cxt/LRej7RjO39DkncYzmdSMDLkllGCl/
         xJjV1bl0P+EKFBMT4/6XOhT7DcPuTQmSnxtuD0iFR1wAYAse+pUGfIqvjlGxNMgQBRKn
         foQg==
X-Gm-Message-State: AOJu0YzZakM915t4Fmn5XTZCgqNqgZm3SkzAbFcJ06WhvqL2NxyuSDTL
        DX6W6Js0XcqzjCtY5vawRNo=
X-Google-Smtp-Source: AGHT+IGYnHYEGTAZ/iT6DR1P5uyvkQ0GunukwSFFa1KntTyUGcNCxeXRe+Od5gCXpRm9R8ptkwKUdg==
X-Received: by 2002:a05:600c:2409:b0:402:ba85:3e3a with SMTP id 9-20020a05600c240900b00402ba853e3amr1626739wmp.19.1693986175265;
        Wed, 06 Sep 2023 00:42:55 -0700 (PDT)
Received: from amir-ThinkPad-T480.lan ([5.29.249.86])
        by smtp.gmail.com with ESMTPSA id bt12-20020a056000080c00b0031433443265sm13879532wrb.53.2023.09.06.00.42.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Sep 2023 00:42:54 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Tom Schwindl <schwindl@posteo.de>, Jan Kara <jack@suse.cz>,
        Jeff Layton <jlayton@poochiereds.net>,
        Christian Brauner <brauner@kernel.org>,
        linux-man@vger.kernel.org
Subject: [PATCH v2] name_to_handle_at.2,fanotify_mark.2: Document the AT_HANDLE_FID flag
Date:   Wed,  6 Sep 2023 10:42:51 +0300
Message-Id: <20230906074251.2788908-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

A flag to indicate that the requested file_handle is not intended
to be used for open_by_handle_at(2) and may be needed to identify
filesystem objects reported in fanotify events.

Reviewed-by: Jan Kara <jack@suse.cz>
Acked-by: Christian Brauner <brauner@kernel.org>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---

Hi Alejandro,

This is a followup on AT_HANDLE_FID feature from v6.5.

Thanks,
Amir.

Changes from v1:
- Added RVB/ACK
- Spelling fixes

 man2/fanotify_mark.2     | 11 +++++++++--
 man2/open_by_handle_at.2 | 42 +++++++++++++++++++++++++++++++++++++---
 2 files changed, 48 insertions(+), 5 deletions(-)

diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index 3f85deb23..8e885af69 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -743,10 +743,17 @@ do not specify a directory.
 .B EOPNOTSUPP
 The object indicated by
 .I pathname
-is associated with a filesystem that does not support the encoding of file
-handles.
+is associated with a filesystem
+that does not support the encoding of file handles.
 This error can be returned only with an fanotify group that identifies
 filesystem objects by file handles.
+Calling
+.BR name_to_handle_at (2)
+with the flag
+.BR AT_HANDLE_FID " (since Linux 6.5)"
+.\" commit 96b2b072ee62be8ae68c8ecf14854c4d0505a8f8
+can be used as a test
+to check if a filesystem supports reporting events with file handles.
 .TP
 .B EPERM
 The operation is not permitted because the caller lacks a required capability.
diff --git a/man2/open_by_handle_at.2 b/man2/open_by_handle_at.2
index 4061faea9..3e38eb8e3 100644
--- a/man2/open_by_handle_at.2
+++ b/man2/open_by_handle_at.2
@@ -109,17 +109,44 @@ structure as an opaque data type: the
 .I handle_type
 and
 .I f_handle
-fields are needed only by a subsequent call to
+fields can be used in a subsequent call to
 .BR open_by_handle_at ().
+The caller can also use the opaque
+.I file_handle
+to compare the identity of filesystem objects
+that were queried at different times and possibly
+at different paths.
+The
+.BR fanotify (7)
+subsystem can report events
+with an information record containing a
+.I file_handle
+to identify the filesystem object.
 .PP
 The
 .I flags
 argument is a bit mask constructed by ORing together zero or more of
-.B AT_EMPTY_PATH
+.BR AT_HANDLE_FID ,
+.BR AT_EMPTY_PATH ,
 and
 .BR AT_SYMLINK_FOLLOW ,
 described below.
 .PP
+When
+.I flags
+contain the
+.BR AT_HANDLE_FID " (since Linux 6.5)"
+.\" commit 96b2b072ee62be8ae68c8ecf14854c4d0505a8f8
+flag, the caller indicates that the returned
+.I file_handle
+is needed to identify the filesystem object,
+and not for opening the file later,
+so it should be expected that a subsequent call to
+.BR open_by_handle_at ()
+with the returned
+.I file_handle
+may fail.
+.PP
 Together, the
 .I pathname
 and
@@ -363,8 +390,14 @@ capability.
 .B ESTALE
 The specified
 .I handle
-is not valid.
+is not valid for opening a file.
 This error will occur if, for example, the file has been deleted.
+This error can also occur if the
+.I handle
+was acquired using the
+.B AT_HANDLE_FID
+flag and the filesystem does not support
+.BR open_by_handle_at ().
 .SH VERSIONS
 FreeBSD has a broadly similar pair of system calls in the form of
 .BR getfh ()
@@ -386,6 +419,9 @@ file handles, for example,
 .IR /proc ,
 .IR /sys ,
 and various network filesystems.
+Some filesystems support the translation of pathnames to
+file handles, but do not support using those file handles in
+.BR open_by_handle_at ().
 .PP
 A file handle may become invalid ("stale") if a file is deleted,
 or for other filesystem-specific reasons.
-- 
2.34.1

