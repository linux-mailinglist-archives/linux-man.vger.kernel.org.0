Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9D6DEBE1FE
	for <lists+linux-man@lfdr.de>; Wed, 25 Sep 2019 18:08:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439702AbfIYQIY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Sep 2019 12:08:24 -0400
Received: from 9.mo68.mail-out.ovh.net ([46.105.78.111]:56961 "EHLO
        9.mo68.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727484AbfIYQIY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Sep 2019 12:08:24 -0400
X-Greylist: delayed 570 seconds by postgrey-1.27 at vger.kernel.org; Wed, 25 Sep 2019 12:08:23 EDT
Received: from player728.ha.ovh.net (unknown [10.109.160.87])
        by mo68.mail-out.ovh.net (Postfix) with ESMTP id 9EA7B143124
        for <linux-man@vger.kernel.org>; Wed, 25 Sep 2019 17:58:51 +0200 (CEST)
Received: from jwilk.net (user-5-173-40-240.play-internet.pl [5.173.40.240])
        (Authenticated sender: jwilk@jwilk.net)
        by player728.ha.ovh.net (Postfix) with ESMTPSA id CA171A25DD6D;
        Wed, 25 Sep 2019 15:58:48 +0000 (UTC)
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] pivot_root.2: tfix
Date:   Wed, 25 Sep 2019 17:58:46 +0200
Message-Id: <20190925155846.5914-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 10284814175815063421
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrfedvgdeliecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecu
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Remove duplicated words.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/pivot_root.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/pivot_root.2 b/man2/pivot_root.2
index 98609ce68..36dafc0b4 100644
--- a/man2/pivot_root.2
+++ b/man2/pivot_root.2
@@ -121,7 +121,7 @@ Additionally, it may fail with the following errors:
 .\" itself. Of course, this is an odd situation, since a later check
 .\" in the kernel code will in any case yield EINVAL if 'new_root' is
 .\" not a mount point. However, when the system call was first added,
-.\" 'new_root' was not required to be a mount point. So, this this
+.\" 'new_root' was not required to be a mount point. So, this
 .\" error is nowadays probably just the result of crufty accumulation.
 .\" This error can also occur if we bind mount "/" on top of itself
 .\" and try to specify "/" as the 'new' (again, an odd situation). So,
@@ -357,7 +357,7 @@ child(void *arg)
     if (pivot_root(new_root, path) == \-1)
         errExit("pivot_root");
 
-    /* Switch the current working working directory to "/" */
+    /* Switch the current working directory to "/" */
 
     if (chdir("/") == \-1)
         errExit("chdir");
-- 
2.23.0

