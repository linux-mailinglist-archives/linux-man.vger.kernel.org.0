Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DA54C17B688
	for <lists+linux-man@lfdr.de>; Fri,  6 Mar 2020 07:01:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725855AbgCFGBA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Mar 2020 01:01:00 -0500
Received: from smtp.gentoo.org ([140.211.166.183]:58942 "EHLO smtp.gentoo.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725847AbgCFGA7 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 6 Mar 2020 01:00:59 -0500
Received: from vapier.lan (localhost [127.0.0.1])
        by smtp.gentoo.org (Postfix) with ESMTP id E8AD434EDD4;
        Fri,  6 Mar 2020 06:00:58 +0000 (UTC)
From:   Mike Frysinger <vapier@gentoo.org>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] mlock.2: fix missing func styling
Date:   Fri,  6 Mar 2020 01:00:57 -0500
Message-Id: <20200306060057.21910-1-vapier@gentoo.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Mike Frysinger <vapier@gentoo.org>
---
 man2/mlock.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/mlock.2 b/man2/mlock.2
index 1e3d13257d1c..920b09d969ee 100644
--- a/man2/mlock.2
+++ b/man2/mlock.2
@@ -273,7 +273,7 @@ glibc support was added in version 2.27.
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, SVr4.
 .PP
-mlock2 ()
+.BR mlock2 ()
 is Linux specific.
 .SH AVAILABILITY
 On POSIX systems on which
-- 
2.23.0

