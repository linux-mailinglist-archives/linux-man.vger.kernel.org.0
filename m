Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40BCE1E7960
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2020 11:25:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725928AbgE2JZm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 May 2020 05:25:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725306AbgE2JZl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 May 2020 05:25:41 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A071C03E969
        for <linux-man@vger.kernel.org>; Fri, 29 May 2020 02:25:41 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id j16so2676926wrb.7
        for <linux-man@vger.kernel.org>; Fri, 29 May 2020 02:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=zqLZsBT3rrdB6SdcYrAyjLjsmfCyoZ7uAnnoTDigPu8=;
        b=IrQjZIFsoP8BX4XvtW5Reso+1FVTmFwSt34lDm+Os2DUAO5rKIgzva8A9t63ZlXqpx
         pIhLfWQU3yQ/FDj30xj84D5b86J246AF7g5T9r4dJshwS1QoVzDyibXUQYuqqnebhXHb
         Bv5SgWAMONPp60BdCDE069f3APgtSfnOHJ7ZmkBJEqtmt5mZ5PJDmSN4SlZGlJTOxrgU
         XOPFHdg80wlQICQ40a98WBYf6jDTzsnvrgxAyRUqVKVWZHL7lNEMyF/6UZs628GSOqVd
         eFEFFpepqyJlF3WOBYAHnkdDMY11cxTh5ksy6yQufRWn/GWXTqE3Ww5eR5rTwt1d8ZCU
         N8bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=zqLZsBT3rrdB6SdcYrAyjLjsmfCyoZ7uAnnoTDigPu8=;
        b=mtPrb5KnBDaoO2Qokdx8c4deLNUOzXqg/QA8Y3HrGnof4PyudMIALUsd/KDJ9z2k2N
         cWmSV+PuZbQEaVxGdHCBQfIpUr+fFD58DL6Oblfi6yiP1jNIBsG91lZdcmHk2dUhhvaP
         cM2Unlmzr/RAxA9O54lSuS8LNMWpEzp2Khhr54o5tCy8e7WcAOSB+lsjRGchuPVar2B7
         95auYN4avz4cgiNpxTUnQ9YfRX97c266WiHiu6gGri3gIWCz3F7aVCrTGFaHUnoXiIBz
         CdOFHWe+EXQkQpfSIOJ/WXHKh0djysJTyp9pUCa+0vKztVsqXIC3AL6DQQiV/w6aGieN
         Pebg==
X-Gm-Message-State: AOAM532HsLyEtgkiI+rMm3JfsYGNdLoRsSiVOvFyJlUnQIEBoC5wwolt
        TjBQBPgxaLEjIUI/ZofUATE=
X-Google-Smtp-Source: ABdhPJzcDd7/1YIjUKBG+imaJwRz4vJH54q8tPI3q3a4GUGv0WUlZu6IV1vj8U8y3lQ6d4TdcNSW7w==
X-Received: by 2002:adf:8023:: with SMTP id 32mr8269778wrk.247.1590744340306;
        Fri, 29 May 2020 02:25:40 -0700 (PDT)
Received: from localhost.localdomain ([141.226.12.123])
        by smtp.gmail.com with ESMTPSA id 10sm10645817wmw.26.2020.05.29.02.25.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 02:25:39 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH 2/3] fanotify_init.2: move out of place entry FAN_REPORT_FID
Date:   Fri, 29 May 2020 12:25:29 +0300
Message-Id: <20200529092530.25207-3-amir73il@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200529092530.25207-1-amir73il@gmail.com>
References: <20200529092530.25207-1-amir73il@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

It was inserted in the middle of the FAN_CLASS_ multi flags bit and
broke the multi flag documentation.

Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man2/fanotify_init.2 | 60 ++++++++++++++++++++++----------------------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index 0131575ab..5cfeea023 100644
--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -94,36 +94,6 @@ already contain their final content.
 This notification class might be used by malware detection programs, for
 example.
 .TP
-.BR FAN_REPORT_FID " (since Linux 5.1)"
-.\" commit a8b13aa20afb69161b5123b4f1acc7ea0a03d360
-This value allows the receipt of events which contain additional information
-about the underlying filesystem object correlated to an event.
-An additional structure encapsulates the information about the object and is
-included alongside the generic event metadata structure.
-The file descriptor that is used to represent the object correlated to an
-event is instead substituted with a file handle.
-It is intended for applications that may find the use of a file handle to
-identify an object more suitable than a file descriptor.
-Additionally, it may be used for applications that are interested in
-directory entry events, such as
-.BR FAN_CREATE ,
-.BR FAN_ATTRIB ,
-.BR FAN_MOVE ,
-and
-.BR FAN_DELETE
-for example.
-Note that the use of directory modification events are not supported when
-monitoring a mount point.
-The use of
-.BR FAN_CLASS_CONTENT
-or
-.BR FAN_CLASS_PRE_CONTENT
-is not permitted with this flag and will result in the error
-.BR EINVAL .
-See
-.BR fanotify (7)
-for additional information.
-.TP
 .B FAN_CLASS_NOTIF
 This is the default value.
 It does not need to be specified.
@@ -184,6 +154,36 @@ supplied to
 .BR read (2)
 (see
 .BR fanotify (7)).
+.TP
+.BR FAN_REPORT_FID " (since Linux 5.1)"
+.\" commit a8b13aa20afb69161b5123b4f1acc7ea0a03d360
+This value allows the receipt of events which contain additional information
+about the underlying filesystem object correlated to an event.
+An additional structure encapsulates the information about the object and is
+included alongside the generic event metadata structure.
+The file descriptor that is used to represent the object correlated to an
+event is instead substituted with a file handle.
+It is intended for applications that may find the use of a file handle to
+identify an object more suitable than a file descriptor.
+Additionally, it may be used for applications that are interested in
+directory entry events, such as
+.BR FAN_CREATE ,
+.BR FAN_ATTRIB ,
+.BR FAN_MOVE ,
+and
+.BR FAN_DELETE
+for example.
+Note that the use of directory modification events are not supported when
+monitoring a mount point.
+The use of
+.BR FAN_CLASS_CONTENT
+or
+.BR FAN_CLASS_PRE_CONTENT
+is not permitted with this flag and will result in the error
+.BR EINVAL .
+See
+.BR fanotify (7)
+for additional information.
 .PP
 The
 .I event_f_flags
-- 
2.17.1

