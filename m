Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 384D254F837
	for <lists+linux-man@lfdr.de>; Fri, 17 Jun 2022 15:12:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1381698AbiFQNMJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jun 2022 09:12:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1381920AbiFQNMI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jun 2022 09:12:08 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B4114D9FE
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 06:12:07 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id o16so5723601wra.4
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 06:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZxKzlwzpWhzwUKiHnO/uXORpMp4vLWe8egiIzX8ldgY=;
        b=U2lXaq+0wirT9yYVM1GbiEUfSPtK9SN2gMAX3Ym/MVxfFw8UF7vUJfW1cXTwHH0RuT
         +4WMIh7pY0iBwhDiHwandiSDcntMYLGyHXZmOVPG9h3cjtlSNioPSz2s3uJaOrmpK1pH
         vbRdMLdOFj1MJL09Sj1n/xlnAwlfTI8q33o4gKPzf8+wQdNqeBiciY/75ZHJNkvvuhtN
         /y2HJfCmGfORWVn3TZZvinzq+4+rE1L5QWEE8LHoq8pZ+70SqVZ1U69fB+QAqw2+Pjxs
         8omvMb7TQeur3EEwnsX+aVcIXUSVHqMWILKLIIuhR4x4AVzPToH4kGnXIvAMPPD2nvjI
         eeyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZxKzlwzpWhzwUKiHnO/uXORpMp4vLWe8egiIzX8ldgY=;
        b=15/JWmYbXGVFiKp3Unf5eZmQ49O009tODftnLfa19gQOooEjMt3HUPgU6BIqVdoY1k
         BNEKa3cGEghhTcpZtLYfH8j3NSnPHpazUIJuY8mJZa80NCNSskaFrMJyEArayv6nKmZw
         mij0x9DJnmJPL6O3Ap1jy1JnFfl9PTA14WTBxGMoGBIYk1OhnJ8em/HqOI/ivrc8NDl/
         d2/UNNS28ZthQRErsMbWP5gAuC9TmL6J5k/1TwqFRvkFTbXfkG/BVWNwKHhVouROjt3U
         D1LNH6OxUdXmo+p54rSKGyTskZE+rxUcuNwTk/pZdH3OBPULml3s2HDLInOVCkpDFP4S
         FMxA==
X-Gm-Message-State: AJIora+ysFNNI/3d6lBbloybBlRXhtupwowrylzkL9x3sv8etwcKvUx4
        xMG6K49JDyNmcITK3sWaVcY=
X-Google-Smtp-Source: AGRyM1sEyrwoG+3hEgZt1ce6xnaVLw7ZsIVzgqYCqpxJLAVJnh32r/wOFCpUL8XHm2NC78ZInVMVsA==
X-Received: by 2002:a5d:4206:0:b0:213:bb1f:b81f with SMTP id n6-20020a5d4206000000b00213bb1fb81fmr9149251wrq.363.1655471525640;
        Fri, 17 Jun 2022 06:12:05 -0700 (PDT)
Received: from localhost.localdomain ([77.137.66.49])
        by smtp.gmail.com with ESMTPSA id l18-20020adfe592000000b002102af52a2csm5812954wrm.9.2022.06.17.06.12.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 06:12:05 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 2/2] fanotify.7, fanotify_init.2, fanotify_mark.2: Document FAN_RENAME
Date:   Fri, 17 Jun 2022 16:11:58 +0300
Message-Id: <20220617131158.1661235-3-amir73il@gmail.com>
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

FAN_RENAME is a new event type that includes information about
both old and new directory entries.

It is a successor of the two separate FAN_MOVED_TO/FROM events,
but those event types are still supported.

Reviewed-by: Matthew Bobrowski <repnop@google.com>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man2/fanotify_init.2 | 21 +++++++++++++++++----
 man2/fanotify_mark.2 | 16 ++++++++++++++++
 man7/fanotify.7      |  4 ++++
 3 files changed, 37 insertions(+), 4 deletions(-)

diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index ac4d3a305..bf87f394b 100644
--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -173,6 +173,7 @@ Additionally, it may be used for applications monitoring a directory or a
 filesystem that are interested in the directory entry modification events
 .BR FAN_CREATE ,
 .BR FAN_DELETE ,
+.BR FAN_RENAME ,
 and
 .BR FAN_MOVE ,
 or in events such as
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
+.BR FAN_RENAME ,
 and
 .BR FAN_MOVE ,
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
index ebb327bdd..eb82325b6 100644
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
 this error will also be returned when trying to set directory entry modification
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index 5f2c01408..e08508337 100644
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
@@ -556,6 +559,7 @@ identifying a child object.
 Note that for the directory entry modification events
 .BR FAN_CREATE ,
 .BR FAN_DELETE ,
+.BR FAN_RENAME ,
 and
 .BR FAN_MOVE ,
 an information record identifying the created/deleted/moved child object
-- 
2.25.1

