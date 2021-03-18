Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BD803409AA
	for <lists+linux-man@lfdr.de>; Thu, 18 Mar 2021 17:09:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231858AbhCRQIc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Mar 2021 12:08:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231842AbhCRQIZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Mar 2021 12:08:25 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED7B3C06174A
        for <linux-man@vger.kernel.org>; Thu, 18 Mar 2021 09:08:24 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id d191so3901085wmd.2
        for <linux-man@vger.kernel.org>; Thu, 18 Mar 2021 09:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=f72JkWic70TZzhE+vjEI8JLg9cACFDkaifdkrQPPX8E=;
        b=Xy8DfD+Q1ODcN3KD/+s3QXzHn4PQFI89bVlEJvcUttG/5VyQ9d6cxLoupUolqJtBID
         MfN6AP8ZP9PfhT26f1wNXozC8FZCS+QLWvE+CCODQfDc/zu4tJ9Kv8Lo/L1JI0xNy9d1
         Tv65eK4sUILMYMVw+/RqW6rwcXlMlm7mB7MSS6rcX2qW5K7rNTfkCFbi2NgBG0zXDqHP
         Avbk++BWdqWe+BNHz+QM4PTGyXaBIJe9FZ7BOt4n4HFWqE7Pkmqwc8UuQRnsMNZiY5cP
         I2YWolLPu6ze77N7E4sJzmZoEJhXJdti0c4KfXTKe3N5NbQFo9JwSTZKh9XAisfhdGm1
         2TIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=f72JkWic70TZzhE+vjEI8JLg9cACFDkaifdkrQPPX8E=;
        b=K/1X6YQBzbOO7TSIHCa6bJ7iDge20meXJqB5eWZHVRr4Y6l+jnlUzu93bdf+i0eSse
         Epl2VMdoLCocjrc4OoS5QPLeMGyrHVbN68ICxzQpYyIYFnrxQuWGwGn4Uqx8NFCLzhEa
         sIZAZ2fVV9LgReYfSNRlpdNlQgFV1EkHoGUgDmyqwRt3vDaCiwtBwh6YLHQd0djSjBo+
         Ra15JZwu/agl7wjaWec2RE+FJ4W3TdTz+5UgP3SAeuBf+tObZJAjbQQPGvKais4A5wka
         +YLx9ezszGHskeClhv1Wa8tohkQCyxlKk+Xkn/ftiX8if/JER0rwxWZJmcyZG/M910if
         eMOw==
X-Gm-Message-State: AOAM532xOc/ali8kWbyCiN17ARo+QlEtMXXpKeCz7vXpuN96aRII1ZHR
        dTk1DE1Iky1UsPc/O0pGr08=
X-Google-Smtp-Source: ABdhPJwh9YOIBAlGcQi6r2rbUMilgKfQ6xfYDrVrzzAn9QhFRxTWKCp4AnrW6uYFh4RPLtogNQCUKQ==
X-Received: by 2002:a7b:cf2f:: with SMTP id m15mr4295835wmg.177.1616083703711;
        Thu, 18 Mar 2021 09:08:23 -0700 (PDT)
Received: from localhost.localdomain ([185.240.141.204])
        by smtp.gmail.com with ESMTPSA id i4sm2510236wmq.12.2021.03.18.09.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 09:08:23 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH 2/2] fanotify_init.2, fanotify_mark.2, fanotify.7: Configurable limits
Date:   Thu, 18 Mar 2021 18:08:17 +0200
Message-Id: <20210318160817.3586288-3-amir73il@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210318160817.3586288-1-amir73il@gmail.com>
References: <20210318160817.3586288-1-amir73il@gmail.com>
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
index 5f54a8506..d18c6b6b1 100644
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
index 1bd0a30ea..104f1c176 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -418,10 +418,13 @@ which is not marked.
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
index 2785dd773..f62008374 100644
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
2.25.1

