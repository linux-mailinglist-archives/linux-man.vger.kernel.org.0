Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B243623502D
	for <lists+linux-man@lfdr.de>; Sat,  1 Aug 2020 06:05:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725280AbgHAEF6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Aug 2020 00:05:58 -0400
Received: from [220.88.252.109] ([220.88.252.109]:47749 "EHLO
        mail.stackframe.dev" rhost-flags-FAIL-FAIL-OK-OK) by vger.kernel.org
        with ESMTP id S1725275AbgHAEF6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Aug 2020 00:05:58 -0400
X-Greylist: delayed 537 seconds by postgrey-1.27 at vger.kernel.org; Sat, 01 Aug 2020 00:05:58 EDT
Received: from stackframe.dev (stackframe-dev [220.88.252.109])
        by mail.stackframe.dev (Postfix) with ESMTPS id 0E11B2391F;
        Sat,  1 Aug 2020 12:57:00 +0900 (KST)
Date:   Sat, 1 Aug 2020 12:56:58 +0900
From:   Gibeom Gwon <gb.gwon@stackframe.dev>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] feature_test_macros.7: tfix
Message-ID: <20200801035658.GA683@stackframe.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Gibeom Gwon <gb.gwon@stackframe.dev>
---
 man7/feature_test_macros.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
index 445295acc..53689d781 100644
--- a/man7/feature_test_macros.7
+++ b/man7/feature_test_macros.7
@@ -50,7 +50,7 @@ itself includes
 .EX
 #include <abc.h>
 #define _GNU_SOURCE
-#include <xys.h>
+#include <xyz.h>
 .EE
 .in
 .PP
-- 
2.27.0

