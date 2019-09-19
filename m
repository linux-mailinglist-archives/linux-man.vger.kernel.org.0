Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DA4E0B72CB
	for <lists+linux-man@lfdr.de>; Thu, 19 Sep 2019 07:43:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727305AbfISFn4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Sep 2019 01:43:56 -0400
Received: from smtp.gentoo.org ([140.211.166.183]:52958 "EHLO smtp.gentoo.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725887AbfISFn4 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 19 Sep 2019 01:43:56 -0400
Received: from vapier.lan (localhost [127.0.0.1])
        by smtp.gentoo.org (Postfix) with ESMTP id BCF2834B1E5;
        Thu, 19 Sep 2019 05:43:54 +0000 (UTC)
From:   Mike Frysinger <vapier@gentoo.org>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] setns.2: fix CLONE_NEWNS restriction info
Date:   Thu, 19 Sep 2019 01:43:42 -0400
Message-Id: <20190919054342.5405-1-vapier@gentoo.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Threads are allowed to switch mount namespaces if the filesystem
details aren't being shared.  That's the purpose of the check in
the kernel quoted by the comment:
    if (fs->users != 1)
        return -EINVAL;

It's been this way since the code was originally merged in v3.8.

Signed-off-by: Mike Frysinger <vapier@gentoo.org>
---
 man2/setns.2 | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/man2/setns.2 b/man2/setns.2
index 18e80202326a..5985c099b464 100644
--- a/man2/setns.2
+++ b/man2/setns.2
@@ -131,8 +131,12 @@ capabilities in its own user namespace and
 .BR CAP_SYS_ADMIN
 in the user namespace that owns the target mount namespace.
 .IP
-A process may not be reassociated with a new mount namespace if it is
-multithreaded.
+A process can't join a new mount namespace if it is sharing
+filesystem-related attributes
+(the attributes whose sharing is controlled by the
+.BR clone (2)
+.B CLONE_FS
+flag) with another process.
 .\" Above check is in fs/namespace.c:mntns_install() [3.8 source]
 .IP
 See
-- 
2.23.0

