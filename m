Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C2B931DFD5
	for <lists+linux-man@lfdr.de>; Wed, 17 Feb 2021 20:52:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232371AbhBQTvr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 17 Feb 2021 14:51:47 -0500
Received: from vmicros1.altlinux.org ([194.107.17.57]:36026 "EHLO
        vmicros1.altlinux.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229707AbhBQTvq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 17 Feb 2021 14:51:46 -0500
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id 2836372C8B1;
        Wed, 17 Feb 2021 22:51:00 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id 124247CC8A2; Wed, 17 Feb 2021 22:50:59 +0300 (MSK)
Date:   Wed, 17 Feb 2021 08:00:00 +0000
From:   "Dmitry V. Levin" <ldv@altlinux.org>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] epoll_wait.2: tfix
Message-ID: <20210217080000.GA21832@altlinux.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Mention epoll_pwait2 in "CONFORMING TO" section.

Complements: ba47eb5e3 "epoll_wait.2: Add documentation of epoll_pwait2()"
Signed-off-by: Dmitry V. Levin <ldv@altlinux.org>
---
 man2/epoll_wait.2 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man2/epoll_wait.2 b/man2/epoll_wait.2
index f941023c2..af4180df0 100644
--- a/man2/epoll_wait.2
+++ b/man2/epoll_wait.2
@@ -248,9 +248,10 @@ Library support is provided in glibc starting with version 2.6.
 .BR epoll_pwait2 ()
 was added to Linux in kernel 5.11.
 .SH CONFORMING TO
-.BR epoll_wait ()
+.BR epoll_wait (),
+.BR epoll_pwait (),
 and
-.BR epoll_pwait ()
+.BR epoll_pwait2 ()
 are Linux-specific.
 .SH NOTES
 While one thread is blocked in a call to
-- 
ldv
