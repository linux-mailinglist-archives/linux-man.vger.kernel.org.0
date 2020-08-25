Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 088C52517EF
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 13:41:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729992AbgHYLla (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 07:41:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730020AbgHYLlI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 07:41:08 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37417C061756
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 04:41:08 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id x9so1808438wmi.2
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 04:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=GAxzSjEKMceSVXu09wr14W6gD+4dLk5aPuHd/F8x/N8=;
        b=KZg5fYlafoz2o7gRRWIpvOqR0VBPUUoOcqa76Jq9++3xk8TsNU9/kuUn1u9UuszoZw
         FS6a85AShFoE+RUg5v+TeEH6awP8UM7jpICXmNwO+3y6qi3afsSBW+Mpu3EnvZu+kBDI
         tFHvzS4uFhQK+BBsvCh8tnAzF3mCX0i01yt1Zz04NrRF2aG1gmJquYHY923US8Ye43op
         qlp8R4XquEwX/W4bptxkGoXvd6Shxu7Hpn1HERS7LFQfLltIijCpucbIn38r/8Ibo+Bh
         W7KKJDqAzEuLHO6K3dNbCX/A7UrDzsT9rm99+eY1Je/cZBo6ZV/huja8dFIm+OqxvnJe
         O2yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=GAxzSjEKMceSVXu09wr14W6gD+4dLk5aPuHd/F8x/N8=;
        b=gtrGMEcR99FMb5X8RamXBw8IdDuPFQebOzi/laPOxMYN4Q3lDN1tVCrpJGuOcj1i0P
         bp/YAdJeLnZakPPH8rxh3A2ZUiDFBmI6gUMe5cGwK4WoX3LBTBwwxY/ntidpbBUxQZ+q
         xhdmwhlJu70VKM1Gdr7JWNMVOXov5penOGDhmER+CL4iCSZUzFJCuK+4nMRQZZdXoUMC
         lsvIDjNQ+NBWefH0u38dTXtOvz8TEvpuIzOcp7UGicBkIde8USzr+OJT0yuCgd4LeTuU
         AlbyK0SyGmRhaJ+IY6bcyr6J4NLf+AVOAtGmnB9NTp3i7qEHbIoaFuAeEJ1kgtNWRcEd
         9dow==
X-Gm-Message-State: AOAM531zjmtN2dzOXH+2tJp0+KhBbGrpksWSqbbWVah6IUTSyqaS6fey
        87fFDOCGWwbFHx+3495IDqs=
X-Google-Smtp-Source: ABdhPJwmFLUlqC/xJ6gcEQt4hiNeudDuqiOc89dFEYJGj2jBsfo5S1+BOXZkya2hVMXobH3vSabl/w==
X-Received: by 2002:a7b:cb17:: with SMTP id u23mr1689841wmj.79.1598355666667;
        Tue, 25 Aug 2020 04:41:06 -0700 (PDT)
Received: from localhost.localdomain ([141.226.8.56])
        by smtp.gmail.com with ESMTPSA id g18sm31256574wru.27.2020.08.25.04.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2020 04:41:06 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 2/3] fanotify.7, fanotify_init.2: Document FAN_REPORT_DIR_FID
Date:   Tue, 25 Aug 2020 14:40:55 +0300
Message-Id: <20200825114056.5179-3-amir73il@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200825114056.5179-1-amir73il@gmail.com>
References: <20200825114056.5179-1-amir73il@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Document fanotify_init(2) flag FAN_REPORT_DIR_FID and event info type
FAN_EVENT_INFO_TYPE_DFID.

Signed-off-by: Amir Goldstein <amir73il@gmail.com>
Reviewed-by: Jan Kara <jack@suse.cz>
Reviewed-by: Matthew Bobrowski <mbobrowski@mbobrowski.org>
---
 man2/fanotify_init.2 | 35 +++++++++++++++++++++++++++++++++--
 man7/fanotify.7      | 30 ++++++++++++++++++++++++++----
 2 files changed, 59 insertions(+), 6 deletions(-)

diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index 54646e3c6..6167a1c37 100644
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
+When combined with the flag
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
index 734fa7b7c..fa1c85159 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -137,12 +137,13 @@ until either a file event occurs or the call is interrupted by a signal
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
@@ -409,6 +410,19 @@ a single information record is expected to be attached to the event with
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
@@ -466,6 +480,14 @@ field is
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

