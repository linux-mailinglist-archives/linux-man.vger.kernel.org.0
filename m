Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 299CA437C39
	for <lists+linux-man@lfdr.de>; Fri, 22 Oct 2021 19:47:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233752AbhJVRtQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Oct 2021 13:49:16 -0400
Received: from woodpecker.gentoo.org ([140.211.166.183]:37218 "EHLO
        smtp.gentoo.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233305AbhJVRtQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Oct 2021 13:49:16 -0400
Received: by smtp.gentoo.org (Postfix, from userid 559)
        id 1B3093433DE; Fri, 22 Oct 2021 17:46:58 +0000 (UTC)
From:   Mike Frysinger <vapier@gentoo.org>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] fix trailing , with SEE ALSO
Date:   Fri, 22 Oct 2021 13:46:53 -0400
Message-Id: <20211022174653.18277-1-vapier@gentoo.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Mike Frysinger <vapier@gentoo.org>
---
 man2/syscalls.2 | 2 +-
 man3/encrypt.3  | 2 +-
 man3/strtol.3   | 2 +-
 man4/hpsa.4     | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/man2/syscalls.2 b/man2/syscalls.2
index 800873b559bb..e80e20f524f7 100644
--- a/man2/syscalls.2
+++ b/man2/syscalls.2
@@ -1181,7 +1181,7 @@ returns a pair of GID and effective GID via registers
 is used for configuring the Host Address Extension register on
 low-cost Alphas in order to access address space beyond first 27 bits.
 .SH SEE ALSO
-.BR ausyscall (1)
+.BR ausyscall (1),
 .BR intro (2),
 .BR syscall (2),
 .BR unimplemented (2),
diff --git a/man3/encrypt.3 b/man3/encrypt.3
index b4be7f3e0a56..e4e22f286718 100644
--- a/man3/encrypt.3
+++ b/man3/encrypt.3
@@ -221,5 +221,5 @@ main(void)
 .SH SEE ALSO
 .BR cbc_crypt (3),
 .BR crypt (3),
-.BR ecb_crypt (3),
+.BR ecb_crypt (3)
 .\" .BR fcrypt (3)
diff --git a/man3/strtol.3 b/man3/strtol.3
index f1470c68131d..eca92dbbefec 100644
--- a/man3/strtol.3
+++ b/man3/strtol.3
@@ -305,4 +305,4 @@ main(int argc, char *argv[])
 .BR atol (3),
 .BR strtod (3),
 .BR strtoimax (3),
-.BR strtoul (3),
+.BR strtoul (3)
diff --git a/man4/hpsa.4 b/man4/hpsa.4
index 286f078a70a8..ab8ba1c6f0a7 100644
--- a/man4/hpsa.4
+++ b/man4/hpsa.4
@@ -222,7 +222,7 @@ for some examples.
 .BR st (4),
 .BR cciss_vol_status (8),
 .BR hpacucli (8),
-.BR hpacuxe (8),
+.BR hpacuxe (8)
 .PP
 .UR http://cciss.sf.net
 .UE ,
-- 
2.33.0

