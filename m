Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CBA37184C24
	for <lists+linux-man@lfdr.de>; Fri, 13 Mar 2020 17:15:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726480AbgCMQPE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Mar 2020 12:15:04 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:38722 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726406AbgCMQPE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Mar 2020 12:15:04 -0400
Received: by mail-pl1-f194.google.com with SMTP id w3so4480491plz.5
        for <linux-man@vger.kernel.org>; Fri, 13 Mar 2020 09:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Md6nazhrhduCDg97SPPXdEJ/4u80EHqXlBSSgSG3qsY=;
        b=J4uWZYNK74W1zb72C7rBvRBNmENhBfWq1qO2tJTNJdC/rQzqfTZTMGVPouwdY8rUMD
         FkCTt/pXoF5042YvuQ4ppFF1neGdXUl6oNMy9dkDe28fM1XABakKlVLJWj8894Div5P9
         5VT5HvXJLQoJT5H0UdTa7rmaeRJj/OXutFddITvCC4/2wCEDA/+fDuzefpwJecCYzm69
         ULYQ3kSUta7mFnQiu/UmSVo6r8dGE0HEPy6JrQrh0xZF7+k6QKqA3omW/kpG2TXlJ2Nv
         lX0PI9HJSRXmwqMSjyO5tu/Ee6ym4EG/Zd3OUCAnJhi3Zd74aC3H7CxuR1xu5dtFz9+U
         KydA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Md6nazhrhduCDg97SPPXdEJ/4u80EHqXlBSSgSG3qsY=;
        b=Ogyi3IVMerodDoiWj51+sv7kJiu24FCjqpppsdUhaJZ4LTnEjDF2eEqoI/4YrERwlI
         Vydua41H6mrn4xFIP6mdnskamFRng3Ksyn++fmry8w2c8xkyFYIlN5CybbV1LFGOdg4Z
         482HYxj/RTurboar2UVETpocQg+3HnRZ4gN5dlQVGmrWposqMIkVKk4zKEn13Mfgdgsw
         aTRSfwS8jXrn6wzNvEskQbmoW3c3xwju48GdySMVSpyHVHutoBQieHZ6TWYiTiE5+tQq
         gjTRMcrMhxcZrKAccQua1pdC0xXfOT/fgd78aNZwKcrR2jFon/yVVxHUDUwjtH1IYAC6
         ZX6A==
X-Gm-Message-State: ANhLgQ1g9VEC7Me6lqFvJrbcHTil5LelI0deGSec2NRi98CDfqHAIh7E
        lIQaYN5p4nkAEPh1CTEAEHU=
X-Google-Smtp-Source: ADFU+vuyp2OrSRLrkXWoy2Jiqp5hxz/3q18cag+9L57l71UgS4rifI6Jz1i6u0KhEWZUxKH9SBT0OA==
X-Received: by 2002:a17:90a:1b6b:: with SMTP id q98mr8770917pjq.107.1584116102766;
        Fri, 13 Mar 2020 09:15:02 -0700 (PDT)
Received: from localhost.localdomain ([73.109.60.165])
        by smtp.gmail.com with ESMTPSA id u6sm55278202pgj.7.2020.03.13.09.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 09:15:01 -0700 (PDT)
From:   Kir Kolyshkin <kolyshkin@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Kir Kolyshkin <kolyshkin@gmail.com>
Subject: [PATCH] proc(5): ffix
Date:   Fri, 13 Mar 2020 09:14:58 -0700
Message-Id: <20200313161458.412515-1-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Mark some literal strings with bold.

Mark some variable strings with italic.

Remove some unneeded R from .BR, .IR etc.

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man5/proc.5 | 45 +++++++++++++++++++++++++++++----------------
 1 file changed, 29 insertions(+), 16 deletions(-)

diff --git a/man5/proc.5 b/man5/proc.5
index a5dbad702..58129cdcf 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -131,7 +131,7 @@ but it hides a process's UID and GID,
 which could otherwise be learned by employing
 .BR stat (2)
 on a
-.IR /proc/[pid]
+.I /proc/[pid]
 directory.
 This greatly complicates an attacker's task of gathering
 information about running processes (e.g., discovering whether
@@ -144,11 +144,11 @@ whether other users are running any program at all, and so on).
 .\" commit 0499680a42141d86417a8fbaa8c8db806bea1201
 Specifies the ID of a group whose members are authorized to
 learn process information otherwise prohibited by
-.BR hidepid
+.B hidepid
 (i.e., users in this group behave as though
 .I /proc
 was mounted with
-.IR hidepid=0 ).
+.BR hidepid=0 ).
 This group should be used instead of approaches such as putting
 nonroot users into the
 .BR sudoers (5)
@@ -1465,16 +1465,20 @@ mount options: per-mount options (see
 .BR mount (2)).
 .TP
 (7)
-optional fields: zero or more fields of the form "tag[:value]"; see below.
+optional fields: zero or more fields of the form
+.IR tag [: value ];
+see below.
 .TP
 (8)
 separator: the end of the optional fields is marked by a single hyphen.
 .TP
 (9)
-filesystem type: the filesystem type in the form "type[.subtype]".
+filesystem type: the filesystem type in the form
+.IR type [. subtype ].
 .TP
 (10)
-mount source: filesystem-specific information or "none".
+mount source: filesystem-specific information or
+.BR none .
 .TP
 (11)
 super options: per-superblock options (see
@@ -1482,11 +1486,11 @@ super options: per-superblock options (see
 .RE
 .IP
 Currently, the possible optional fields are
-.IR shared ,
-.IR master ,
-.IR propagate_from ,
+.BR shared ,
+.BR master ,
+.BR propagate_from ,
 and
-.IR unbindable .
+.BR unbindable .
 See
 .BR mount_namespaces (7)
 for a description of these fields.
@@ -1540,7 +1544,9 @@ The fields in each line are:
 .TP 5
 (1)
 The name of the mounted device
-(or "nodevice" if there is no corresponding device).
+(or
+.B nodevice
+if there is no corresponding device).
 .TP
 (2)
 The mount point within the filesystem tree.
@@ -2856,11 +2862,18 @@ Valid only for timers that notify via a signal.
 .I notify
 The part before the slash specifies the mechanism
 that this timer uses to deliver notifications,
-and is one of "thread", "signal", or "none".
-Immediately following the slash is either the string "tid" for timers
-with
+and is one of
+.BR thread ,
+.BR signal ,
+or
+.BR none .
+Immediately following the slash is either the string
+.B tid
+for timers with
 .B SIGEV_THREAD_ID
-notification, or "pid" for timers that notify by other mechanisms.
+notification, or
+.B pid
+for timers that notify by other mechanisms.
 Following the "." is the PID of the process
 (or the kernel thread ID of the thread)  that will be delivered
 a signal if the timer delivers notifications via a signal.
@@ -2868,7 +2881,7 @@ a signal if the timer delivers notifications via a signal.
 .I ClockID
 This field identifies the clock that the timer uses for measuring time.
 For most clocks, this is a number that matches one of the user-space
-.BR CLOCK_*
+.B CLOCK_*
 constants exposed via
 .IR <time.h> .
 .B CLOCK_PROCESS_CPUTIME_ID
-- 
2.24.1

