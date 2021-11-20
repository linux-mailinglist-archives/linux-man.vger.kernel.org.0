Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AE03457FC4
	for <lists+linux-man@lfdr.de>; Sat, 20 Nov 2021 18:13:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237844AbhKTRQD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Nov 2021 12:16:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231557AbhKTRQD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Nov 2021 12:16:03 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E60B0C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 09:12:59 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id a9so23998205wrr.8
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 09:12:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y/FMzkAObvabUMe0z1BX76z0O3d4tzCuYBsP/46lj9M=;
        b=VYNYajPRZejxxUsfU4cXHBTz3o3GRfnJp59TRAi5uS7F+gdAcN1vyR58LKRZRSMaSX
         6SdkAA9+5tjZLX/esZkFZZbmjIkHOvHKdq9N4Z2mn3ccppXUxjSEvPQ8tRI28OEKDNNf
         uQkL2YU+8IXWy0PGHACo+YQJMDlvjcdzRe46N6sfzIgdyOayJcv6QelnCAYH9a8uQ5eo
         5+dmfzBULEKLyppd2FDppOgZs8zaK/SGvtkSKwC5RCQ6JFnxnS8ryidnRir1CX02HPJB
         0potxowVq9MQ64S6o1C9DYevGinUg4l9MQKn3y1CIAExQHKlS0moswIjtlr8lCyRoQ+B
         auag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y/FMzkAObvabUMe0z1BX76z0O3d4tzCuYBsP/46lj9M=;
        b=w82hGCGPwDuXJyM0iNerXUwnWty5HOOsnGGdC6uEvOTm53fj+lFsZe6QuUmnnttjqW
         VxzbtJEqm06XTFq2u5wFW08sl/gP76PyKASpfryki23uz0sVXrfLFc6iAHOBZeMMhUiY
         pWe2IqZY9ynTZHjUWbIIgaX5/7O75bxav4tEKf9kGSjKkbKTslBj6aMRbJC8N/Y72byP
         iaklOLq7GdMy15qGN/aIEeHr8pRS97Xr/bYJRWghJD6XCThryRVI+aSrz/QdqN8N/3/L
         p3DTyfVbat6FAnI4Z46DZgtjkW1Z7C00X/rVscI+2Sl0nrt5osWc9MUA03vSPa004tLF
         rVOw==
X-Gm-Message-State: AOAM530Ljy/BGtuNXttSTt/u46vV9q9AqfVyx/NpNIZehhQZ8WxyEPZu
        EmhhjJ+lni7WLUidWSRwXIcODBadBBI=
X-Google-Smtp-Source: ABdhPJwLY+sCfAIuKcK9zzBNcN2+NeD13INaqeGsgGYMORsmKqUWozglf5QQuq8tMCpBwxw+e51ySg==
X-Received: by 2002:adf:e848:: with SMTP id d8mr19305748wrn.3.1637428378487;
        Sat, 20 Nov 2021 09:12:58 -0800 (PST)
Received: from localhost.localdomain ([82.114.45.86])
        by smtp.gmail.com with ESMTPSA id n8sm3108829wrp.95.2021.11.20.09.12.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Nov 2021 09:12:58 -0800 (PST)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 2/4] fanotify_init.2, fanotify_mark.2, fanotify.7: Configurable limits
Date:   Sat, 20 Nov 2021 19:12:51 +0200
Message-Id: <20211120171253.1385863-3-amir73il@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211120171253.1385863-1-amir73il@gmail.com>
References: <20211120171253.1385863-1-amir73il@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Update documentation about the new configurable fanotify limits
that will be available from Linux kernel 5.13.

Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man2/fanotify_init.2 | 22 ++++++++++++++++------
 man2/fanotify_mark.2 |  5 ++++-
 man7/fanotify.7      | 35 +++++++++++++++++++++++++++++++++--
 3 files changed, 53 insertions(+), 9 deletions(-)

diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index b2ceb17f3..0d83e817f 100644
--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -53,9 +53,10 @@ descriptor.
 Multiple programs may be using the fanotify interface at the same time to
 monitor the same files.
 .PP
-In the current implementation, the number of fanotify groups per user is
-limited to 128.
-This limit cannot be overridden.
+The number of fanotify groups per user is limited.
+See
+.BR fanotify (7)
+for details about this limit.
 .PP
 The
 .I flags
@@ -130,13 +131,19 @@ fails with the error
 .BR EAGAIN .
 .TP
 .B FAN_UNLIMITED_QUEUE
-Remove the limit of 16384 events for the event queue.
+Remove the limit on the number of events in the event queue.
+See
+.BR fanotify (7)
+for details about this limit.
 Use of this flag requires the
 .B CAP_SYS_ADMIN
 capability.
 .TP
 .B FAN_UNLIMITED_MARKS
-Remove the limit of 8192 marks.
+Remove the limit on the number of fanotify marks per user.
+See
+.BR fanotify (7)
+for details about this limit.
 Use of this flag requires the
 .B CAP_SYS_ADMIN
 capability.
@@ -366,7 +373,10 @@ defines all allowable bits for
 .IR flags .
 .TP
 .B EMFILE
-The number of fanotify groups for this user exceeds 128.
+The number of fanotify groups for this user exceeds the limit.
+See
+.BR fanotify (7)
+for details about this limit.
 .TP
 .B EMFILE
 The per-process limit on the number of open file descriptors has been reached.
diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index 9cf71320c..cb69ac592 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -431,10 +431,13 @@ which is not marked.
 The necessary memory could not be allocated.
 .TP
 .B ENOSPC
-The number of marks exceeds the limit of 8192 and the
+The number of marks for this user exceeds the limit and the
 .B FAN_UNLIMITED_MARKS
 flag was not specified when the fanotify file descriptor was created with
 .BR fanotify_init (2).
+See
+.BR fanotify (7)
+for details about this limit.
 .TP
 .B ENOSYS
 This kernel does not implement
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index 9c66c24f0..455e3ed17 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -336,7 +336,7 @@ A file or directory that was opened read-only
 was closed.
 .TP
 .B FAN_Q_OVERFLOW
-The event queue exceeded the limit of 16384 entries.
+The event queue exceeded the limit on number of events.
 This limit can be overridden by specifying the
 .BR FAN_UNLIMITED_QUEUE
 flag when calling
@@ -606,7 +606,7 @@ are freed for reuse by the kernel.
 Upon
 .BR close (2),
 outstanding permission events will be set to allowed.
-.SS /proc/[pid]/fdinfo
+.SS /proc interfaces
 The file
 .I /proc/[pid]/fdinfo/[fd]
 contains information about fanotify marks for file descriptor
@@ -616,6 +616,37 @@ of process
 See
 .BR proc (5)
 for details.
+.PP
+Since Linux 5.13,
+.\" commit 5b8fea65d197f408bb00b251c70d842826d6b70b
+the following interfaces can be used to control the amount of
+kernel resources consumed by fanotify:
+.TP
+.I /proc/sys/fs/fanotify/max_queued_events
+The value in this file is used when an application calls
+.BR fanotify_init (2)
+to set an upper limit on the number of events that can be
+queued to the corresponding fanotify group.
+Events in excess of this limit are dropped, but an
+.B FAN_Q_OVERFLOW
+event is always generated.
+Prior to Linux kernel 5.13,
+.\" commit 5b8fea65d197f408bb00b251c70d842826d6b70b
+the hardcoded limit was 16384 events.
+.TP
+.I /proc/sys/fs/fanotify/max_user_group
+This specifies an upper limit on the number of fanotify groups
+that can be created per real user ID.
+Prior to Linux kernel 5.13,
+.\" commit 5b8fea65d197f408bb00b251c70d842826d6b70b
+the hardcoded limit was 128 groups per user.
+.TP
+.I /proc/sys/fs/fanotify/max_user_marks
+This specifies an upper limit on the number of fanotify marks
+that can be created per real user ID.
+Prior to Linux kernel 5.13,
+.\" commit 5b8fea65d197f408bb00b251c70d842826d6b70b
+the hardcoded limit was 8192 marks per group (not per user).
 .SH ERRORS
 In addition to the usual errors for
 .BR read (2),
-- 
2.33.1

