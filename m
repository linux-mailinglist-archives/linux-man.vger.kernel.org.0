Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 305F61B14E9
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 20:43:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726021AbgDTSnK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 14:43:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725613AbgDTSnK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 14:43:10 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B5F8C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:43:10 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id f13so13455863wrm.13
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=AOdQvMEc5z+bqanRzPuZ97iC7eHtME5Behu/ehh5Eis=;
        b=Z+1aTCd3VX5RN5Ap3AvRQsehzM7VCvEKHodEbU7Q8jLj6YksY5cmwwvZewFl9swM3Z
         j/VHqmEguUlu8+Jgk2GIK6uaaBOxqMHRwirFhT52bdhuCoWRuleIcneHhaX2kY855pRZ
         p0YHfI+TS+6ZRcmmZ9ODHaAYYYPAwLvP4GEV79kQWjgkkJpF12xbwD/ynpAclS+aoaGx
         xkkhKL4o7DeeVIDSNSHgKsuwvC7CO9GSTeSiZDmAwFX4IQff1bxT3P9Crs+tegvQF2S/
         wV34abGvjbRoy5ZTDQzrEjoMh0SxOf6n8o3FIV5zgupngUIRtbJZQLDKM52bY++JvJ+o
         mxKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=AOdQvMEc5z+bqanRzPuZ97iC7eHtME5Behu/ehh5Eis=;
        b=LHkrtbZNWw3n6aNTLAsWf+Y9O6Q5/ToTbQjvczuTxMcTnY5FmZH/tasrk9Aa4UHu4J
         6yGRM2OTDgSp+JrqPCtasiB1cQ1UakITJJTJink/WjuY7+D3n/xpDHX/O9R7Bm0987+5
         XEBPMBxsiVZlNN2npd4Hk+qezk7Xq8VnFU8+3qV8xVr+0TIDVisEBHlbnqpcpiczB3PU
         MxRL43z5LdoYkb/oDH42CNBCSjFQhhFXeoS2H7qwgW1XVy5wzbfZ16wp+2UsZSVBAV1t
         nAdXLUA8tqu4Jw6EGfB6ZPT9HqJP4TaHKkRCoCLmLHlNycLfMocA/D4M/mHCmqubEO8M
         4w6Q==
X-Gm-Message-State: AGi0PuYGLUmSee2OKzuC4H9QUkwkBO1hCv4X2HoU7Qkb8X0IrLaTsYGp
        f150E9iUBlhPSRd2DlP5Ti+IMVVJ
X-Google-Smtp-Source: APiQypK7iJXnH87kDOx3QfEany4N+9dKXCbkzmIOyCrL6CT1VOc7Fh6DFke2/aNws7hktswK2HRddA==
X-Received: by 2002:adf:ff82:: with SMTP id j2mr20841851wrr.96.1587408188080;
        Mon, 20 Apr 2020 11:43:08 -0700 (PDT)
Received: from localhost.localdomain ([141.226.12.123])
        by smtp.gmail.com with ESMTPSA id n9sm438873wrx.61.2020.04.20.11.43.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2020 11:43:06 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH 1/4] fanotify_mark.2: Clarification about FAN_MARK_MOUNT and FAN_REPORT_FID
Date:   Mon, 20 Apr 2020 21:42:56 +0300
Message-Id: <20200420184259.29406-2-amir73il@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200420184259.29406-1-amir73il@gmail.com>
References: <20200420184259.29406-1-amir73il@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

It is not true that FAN_MARK_MOUNT cannot be used with a group that
was initialized with flag FAN_REPORT_FID.

The correct assertion is that events that require a group with flag
FAN_REPORT_FID cannot be requested on a mark mount.

For exaple, a FAN_OPEN event can be requested on a mark mount and
will generate an event with file handle information if the group was
initialized with flag FAN_REPORT_FID.

Signed-off-by: Amir Goldstein <amir73il@gmail.com>
Reviewed-by: Jan Kara <jack@suse.cz>
Reviewed-by: Matthew Bobrowski <mbobrowski@mbobrowski.org>
---
 man2/fanotify_mark.2 | 41 ++++++++++++++++++++++++++++++++++++-----
 1 file changed, 36 insertions(+), 5 deletions(-)

diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index 30290d519..687e20f4a 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -126,12 +126,22 @@ is not itself a mount point, the mount point containing
 will be marked.
 All directories, subdirectories, and the contained files of the mount point
 will be monitored.
-This value cannot be used if the
+The events which require the
 .I fanotify_fd
-file descriptor has been initialized with the flag
-.BR FAN_REPORT_FID
-or if any of the new directory modification events are provided as a
-.IR mask .
+file descriptor to have been intialized with the flag
+.BR FAN_REPORT_FID ,
+such as
+.BR FAN_CREATE ,
+.BR FAN_ATTRIB ,
+.BR FAN_MOVE ,
+and
+.BR FAN_DELETE_SELF ,
+cannot be provided as a
+.IR mask
+when
+.I flags
+contains
+.BR FAN_MARK_MOUNT .
 Attempting to do so will result in the error
 .B EINVAL
 being returned.
@@ -184,34 +194,55 @@ See NOTES for additional details.
 .BR FAN_ATTRIB " (since Linux 5.1)"
 .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
 Create an event when the metadata for a file or directory has changed.
+An fanotify file descriptor created with
+.B FAN_REPORT_FID
+is required.
 .TP
 .BR FAN_CREATE " (since Linux 5.1)"
 .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
 Create an event when a file or directory has been created in a marked
 parent directory.
+An fanotify file descriptor created with
+.B FAN_REPORT_FID
+is required.
 .TP
 .BR FAN_DELETE " (since Linux 5.1)"
 .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
 Create an event when a file or directory has been deleted in a marked
 parent directory.
+An fanotify file descriptor created with
+.B FAN_REPORT_FID
+is required.
 .TP
 .BR FAN_DELETE_SELF " (since Linux 5.1)"
 .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
 Create an event when a marked file or directory itself is deleted.
+An fanotify file descriptor created with
+.B FAN_REPORT_FID
+is required.
 .TP
 .BR FAN_MOVED_FROM " (since Linux 5.1)"
 .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
 Create an event when a file or directory has been moved from a marked
 parent directory.
+An fanotify file descriptor created with
+.B FAN_REPORT_FID
+is required.
 .TP
 .BR FAN_MOVED_TO " (since Linux 5.1)"
 .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
 Create an event when a file or directory has been moved to a marked parent
 directory.
+An fanotify file descriptor created with
+.B FAN_REPORT_FID
+is required.
 .TP
 .BR FAN_MOVE_SELF " (since Linux 5.1)"
 .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
 Create an event when a marked file or directory itself has been moved.
+An fanotify file descriptor created with
+.B FAN_REPORT_FID
+is required.
 .TP
 .B FAN_Q_OVERFLOW
 Create an event when an overflow of the event queue occurs.
-- 
2.17.1

