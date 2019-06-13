Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7235643B76
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2019 17:29:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731019AbfFMP3D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Jun 2019 11:29:03 -0400
Received: from sym2.noone.org ([178.63.92.236]:59382 "EHLO sym2.noone.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728881AbfFMLZ2 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 13 Jun 2019 07:25:28 -0400
Received: by sym2.noone.org (Postfix, from userid 1002)
        id 45PhHW00p9zvjc1; Thu, 13 Jun 2019 13:25:26 +0200 (CEST)
From:   Tobias Klauser <tklauser@distanz.ch>
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: [PATCH] vdso.7: Mention removal of Blackfin port
Date:   Thu, 13 Jun 2019 13:25:26 +0200
Message-Id: <20190613112526.10285-1-tklauser@distanz.ch>
X-Mailer: git-send-email 2.11.0
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The Blackfin port was removed in Linux 4.17. Mention this in the section
concerning Blackfin vDSO functions.

Signed-off-by: Tobias Klauser <tklauser@distanz.ch>
---
 man7/vdso.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/vdso.7 b/man7/vdso.7
index 8ac6c12d2c2f..182acba00ea8 100644
--- a/man7/vdso.7
+++ b/man7/vdso.7
@@ -235,7 +235,7 @@ __kernel_clock_getres	LINUX_2.6.39
 .in
 .ft P
 \}
-.SS bfin (Blackfin) functions
+.SS bfin (Blackfin) functions (port removed in Linux 4.17)
 .\" See linux/arch/blackfin/kernel/fixed_code.S
 .\" See http://docs.blackfin.uclinux.org/doku.php?id=linux-kernel:fixed-code
 As this CPU lacks a memory management unit (MMU),
-- 
2.20.0

