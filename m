Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 161FC187443
	for <lists+linux-man@lfdr.de>; Mon, 16 Mar 2020 21:50:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732575AbgCPUun (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Mar 2020 16:50:43 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:52394 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732567AbgCPUun (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Mar 2020 16:50:43 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: tonyk)
        with ESMTPSA id 9A69529348D
From:   =?UTF-8?q?Andr=C3=A9=20Almeida?= <andrealmeid@collabora.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, kernel@collabora.com,
        =?UTF-8?q?Andr=C3=A9=20Almeida?= <andrealmeid@collabora.com>
Subject: [PATCH] futex.2: wfix
Date:   Mon, 16 Mar 2020 17:47:57 -0300
Message-Id: <20200316204757.19543-1-andrealmeid@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The sixth argument of futex is uaddr2, instead of uaddr.

Signed-off-by: André Almeida <andrealmeid@collabora.com>
---
 man2/futex.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/futex.2 b/man2/futex.2
index 54dc8e590..141ebaa45 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1775,7 +1775,7 @@ futex(int *uaddr, int futex_op, int val,
       const struct timespec *timeout, int *uaddr2, int val3)
 {
     return syscall(SYS_futex, uaddr, futex_op, val,
-                   timeout, uaddr, val3);
+                   timeout, uaddr2, val3);
 }
 
 /* Acquire the futex pointed to by \(aqfutexp\(aq: wait for its value to
-- 
2.25.1

