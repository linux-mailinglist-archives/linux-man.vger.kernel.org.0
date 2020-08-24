Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3FBB24F388
	for <lists+linux-man@lfdr.de>; Mon, 24 Aug 2020 10:03:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726187AbgHXIDq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Aug 2020 04:03:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726189AbgHXIDj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 Aug 2020 04:03:39 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3374C061573
        for <linux-man@vger.kernel.org>; Mon, 24 Aug 2020 01:03:38 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id oz20so5726426ejb.5
        for <linux-man@vger.kernel.org>; Mon, 24 Aug 2020 01:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=24d9wjzO/fXs+ukG4rN8g7CrCAW5+Ta8g23kaYl2otE=;
        b=lB+7O7AI1vmGBvgxj3m9k+THR0hWlbpSJRSExeRcFxe8RaZiBS68k17+kTZXVRGRdu
         RTYbPKKH/qG1r1Zu8QIDuPnw+uvNSDij6yeGZo3yx9rbTBJ8d6Emm/eApDCgXRkoxOG0
         dAd1x69UDZNWdSUVGGK+yH2SZOAnVFF268EB5T++5G3zC5hhTK4kh+dnnROLUHyfQmr5
         3cBfo9L3qdlTK9ut6PBjtgIFews97ZkuX56tyI+azxXSnnfbPdfGgIiuVyPbpGr+z8tl
         EfjmHH5IOO76rwHb4eXGs6oPNGMQojKMAh+uLWCbeb97SVi4xJPZ6ZXlyGg1o5ZgGB+9
         jEDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=24d9wjzO/fXs+ukG4rN8g7CrCAW5+Ta8g23kaYl2otE=;
        b=jJZScTrRkGsSP5PcmfLBod5nSl7a/RTy02OAvH8PNiztT3I7bfuZZo+TWdTuaEDlnG
         4aqhoCnLz+q6oH1YxIWi55RnJNq3R+DXAcKlxicydDza3cxJXjusdCK7dlVJqa3uui5q
         urz02yVGerU0gYdhztEEZ/hKMaeaSKsdhYPbN7Thp35NePpoDJFzbIlkZ3ztwxlmx2R6
         LZdmpTHC8FackH+YKkJpP4pDx9IFFlEL5yNZe2S3dA7DR0sMBL0aR6hc1O0JfnNhkFbg
         2jGITCk76ZCgRe+BszZwyipLMLDhcKjlnVDxXlZ1f0V6vhQjCo2oFCdiv94nUQWDI+Di
         nS7Q==
X-Gm-Message-State: AOAM531E3Eb36udHkaECyBRsViccnNrYfq3AFHt9wddw7/1gvNIzPM3u
        ouJlK3oL5cD9bzK1Y0DiYqaz78RkWKM=
X-Google-Smtp-Source: ABdhPJwjkv4MlZ/F2lpIEjkQqPnStrRS6tw7zweDEAsykZ8jhj7oN4rLVjBDhGAlXkX1Q071VFpXrw==
X-Received: by 2002:a17:906:5914:: with SMTP id h20mr431624ejq.346.1598256217328;
        Mon, 24 Aug 2020 01:03:37 -0700 (PDT)
Received: from localhost.localdomain ([141.226.8.56])
        by smtp.gmail.com with ESMTPSA id v13sm8882933edl.9.2020.08.24.01.03.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2020 01:03:36 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH 2/3] fanotify.7, fanotify_init.2: Document FAN_REPORT_DIR_FID
Date:   Mon, 24 Aug 2020 11:03:25 +0300
Message-Id: <20200824080326.5012-3-amir73il@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200824080326.5012-1-amir73il@gmail.com>
References: <20200824080326.5012-1-amir73il@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Document fanotify_init(2) flag FAN_REPORT_DIR_FID and event info type
FAN_EVENT_INFO_TYPE_DFID.

Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man2/fanotify_init.2 | 35 +++++++++++++++++++++++++++++++++--
 man7/fanotify.7      | 30 ++++++++++++++++++++++++++----
 2 files changed, 59 insertions(+), 6 deletions(-)

diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index 54646e3c6..c58ae4493 100644
--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -1,4 +1,4 @@
-.\" Copyright (C) 2013, Heinrich Schuchardt <xypron.glpk@gmx.de>
+\" Copyright (C) 2013, Heinrich Schuchardt <xypron.glpk@gmx.de>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
 .\" Permission is granted to make and distribute verbatim copies of this
@@ -191,7 +191,38 @@ is not permitted with this flag and will result in the error
 .BR EINVAL .
 See
 .BR fanotify (7)
-for additional information.
+for additional details.
+.TP
+.BR FAN_REPORT_DIR_FID " (since Linux 5.9)"
+Events for fanotify groups initialized with this flag will contain
+(see exceptions below) additional information about a directory object
+correlated to an event.
+An additional record of type
+.BR FAN_EVENT_INFO_TYPE_DFID
+encapsulates the information about the directory object and is included
+alongside the generic event metadata structure.
+For events that occur on a non-directory object, the additional structure
+includes a file handle that identifies the parent directory filesystem object.
+Note that there is no guarantee that the directory filesystem object will be
+found at the location described by the file handle information at the time
+the event is received.
+In combination with the flag
+.BR FAN_REPORT_FID ,
+two records may be reported with events that occur on a non-directory object,
+one to identify the non-directory object itself and one to identify the parent
+directory object.
+Note that in some cases, a filesystem object does not have a parent,
+for example, when an event occurs on an unlinked but open file.
+In that case, with the
+.BR FAN_REPORT_FID
+flag, the event will be reported with only one record to identify the
+non-directory object itself, because there is no directory associated with
+the event. Without the
+.BR FAN_REPORT_FID
+flag, no event will be reported.
+See
+.BR fanotify (7)
+for additional details.
 .PP
 The
 .I event_f_flags
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index a7b219168..00fc56368 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -140,12 +140,13 @@ until either a file event occurs or the call is interrupted by a signal
 (see
 .BR signal (7)).
 .PP
-The use of the
-.BR FAN_REPORT_FID
-flag in
+The use of one of the flags
+.BR FAN_REPORT_FID ,
+.BR FAN_REPORT_DIR_FID
+in
 .BR fanotify_init (2)
 influences what data structures are returned to the event listener for each
-event. Events reported to a group initialized with this flag will
+event. Events reported to a group initialized with one of these flags will
 use file handles to identify filesystem objects instead of file descriptors.
 .TP
 After a successful
@@ -412,6 +413,19 @@ a single information record is expected to be attached to the event with
 .I info_type
 field value of
 .BR FAN_EVENT_INFO_TYPE_FID .
+When an fanotify file descriptor is created using the combination of
+.BR FAN_REPORT_FID
+and
+.BR FAN_REPORT_DIR_FID ,
+there may be two information records attached to the event. One with
+.I info_type
+field value of
+.BR FAN_EVENT_INFO_TYPE_DFID ,
+identifying a parent directory object, and one with
+.I info_type
+field value of
+.BR FAN_EVENT_INFO_TYPE_FID ,
+identifying a non-directory object.
 The
 .I fanotify_event_info_header
 contains a
@@ -469,6 +483,14 @@ field is
 the
 .IR file_handle
 identifies the object correlated to the event.
+If the value of
+.I info_type
+field is
+.BR FAN_EVENT_INFO_TYPE_DFID ,
+the
+.IR file_handle
+identifies the directory object correlated to the event or the parent directory
+of the non-directory object correlated to the event.
 .PP
 The following macros are provided to iterate over a buffer containing
 fanotify event metadata returned by a
-- 
2.17.1

