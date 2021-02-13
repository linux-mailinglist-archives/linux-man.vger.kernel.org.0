Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4868031AE5F
	for <lists+linux-man@lfdr.de>; Sat, 13 Feb 2021 23:49:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229653AbhBMWsr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 17:48:47 -0500
Received: from vmicros1.altlinux.org ([194.107.17.57]:32800 "EHLO
        vmicros1.altlinux.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229647AbhBMWsr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 17:48:47 -0500
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id 6CBC972C8E0;
        Sun, 14 Feb 2021 01:48:05 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id 5AECD7CC8A2; Sun, 14 Feb 2021 01:48:05 +0300 (MSK)
Date:   Sat, 13 Feb 2021 08:00:00 +0000
From:   "Dmitry V. Levin" <ldv@altlinux.org>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] epoll_pwait2.2: New link to epoll_wait(2)
Message-ID: <20210213080000.GA25299@altlinux.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Complements: ba47eb5e3 "epoll_wait.2: Add documentation of epoll_pwait2()"
Signed-off-by: Dmitry V. Levin <ldv@altlinux.org>
---
 man2/epoll_pwait2.2 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man2/epoll_pwait2.2

diff --git a/man2/epoll_pwait2.2 b/man2/epoll_pwait2.2
new file mode 100644
index 000000000..9282a7064
--- /dev/null
+++ b/man2/epoll_pwait2.2
@@ -0,0 +1 @@
+.so man2/epoll_wait.2
-- 
ldv
