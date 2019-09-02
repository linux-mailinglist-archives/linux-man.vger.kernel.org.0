Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 130DBA4FFC
	for <lists+linux-man@lfdr.de>; Mon,  2 Sep 2019 09:35:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729371AbfIBHfO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Sep 2019 03:35:14 -0400
Received: from 7.mo177.mail-out.ovh.net ([46.105.61.149]:35931 "EHLO
        7.mo177.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725839AbfIBHfO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Sep 2019 03:35:14 -0400
X-Greylist: delayed 1199 seconds by postgrey-1.27 at vger.kernel.org; Mon, 02 Sep 2019 03:35:13 EDT
Received: from player760.ha.ovh.net (unknown [10.108.57.23])
        by mo177.mail-out.ovh.net (Postfix) with ESMTP id 54C251085F4
        for <linux-man@vger.kernel.org>; Mon,  2 Sep 2019 08:55:50 +0200 (CEST)
Received: from jwilk.net (user-5-173-40-143.play-internet.pl [5.173.40.143])
        (Authenticated sender: jwilk@jwilk.net)
        by player760.ha.ovh.net (Postfix) with ESMTPSA id 8C1DB956F867;
        Mon,  2 Sep 2019 06:55:47 +0000 (UTC)
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 3/4] fanotify_mark.2: Add kernel version numbers for some FAN_* constants
Date:   Mon,  2 Sep 2019 08:55:35 +0200
Message-Id: <20190902065536.4878-3-jwilk@jwilk.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190902065536.4878-1-jwilk@jwilk.net>
References: <20190902065536.4878-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 13616070524051183485
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudeiledguddufecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecu
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/fanotify_mark.2 | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index 7a497f29c..e62b6d2c2 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -177,28 +177,35 @@ Create an event when a read-only file or directory is closed.
 Create an event when a file or directory is opened.
 .TP
 .BR FAN_OPEN_EXEC " (since Linux 5.0)"
+.\" commit 9b076f1c0f4869b838a1b7aa0edb5664d47ec8aa
 Create an event when a file is opened with the intent to be executed.
 See NOTES for additional details.
 .TP
-.B FAN_ATTRIB
+.BR FAN_ATTRIB " (since Linux 5.1)"
+.\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
 Create an event when the metadata for a file or directory has changed.
 .TP
-.B FAN_CREATE
+.BR FAN_CREATE " (since Linux 5.1)"
+.\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
 Create an event when a file or directory has been created in a marked
 parent directory.
 .TP
-.B FAN_DELETE
+.BR FAN_DELETE " (since Linux 5.1)"
+.\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
 Create an event when a file or directory has been deleted in a marked
 parent directory.
 .TP
-.B FAN_DELETE_SELF
+.BR FAN_DELETE_SELF " (since Linux 5.1)"
+.\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
 Create an event when a marked file or directory itself is deleted.
 .TP
-.B FAN_MOVED_FROM
+.BR FAN_MOVED_FROM " (since Linux 5.1)"
+.\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
 Create an event when a file or directory has been moved from a marked
 parent directory.
 .TP
-.B FAN_MOVED_TO
+.BR FAN_MOVED_TO " (since Linux 5.1)"
+.\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
 Create an event when a file or directory has been moved to a marked parent
 directory.
 .TP
@@ -218,6 +225,7 @@ or
 is required.
 .TP
 .BR FAN_OPEN_EXEC_PERM " (since Linux 5.0)"
+.\" commit 66917a3130f218dcef9eeab4fd11a71cd00cd7c9
 Create an event when a permission to open a file for execution is
 requested.
 An fanotify file descriptor created with
-- 
2.23.0

