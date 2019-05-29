Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C22542E8E9
	for <lists+linux-man@lfdr.de>; Thu, 30 May 2019 01:15:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726540AbfE2XPN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 29 May 2019 19:15:13 -0400
Received: from wildebeest.demon.nl ([212.238.236.112]:44924 "EHLO
        gnu.wildebeest.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726189AbfE2XPM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 29 May 2019 19:15:12 -0400
X-Greylist: delayed 541 seconds by postgrey-1.27 at vger.kernel.org; Wed, 29 May 2019 19:15:12 EDT
Received: from tarox.wildebeest.org (tarox.wildebeest.org [172.31.17.39])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by gnu.wildebeest.org (Postfix) with ESMTPSA id 2A75B302BBFE;
        Thu, 30 May 2019 01:08:45 +0200 (CEST)
Received: by tarox.wildebeest.org (Postfix, from userid 1000)
        id 18BBC413CC18; Thu, 30 May 2019 01:08:45 +0200 (CEST)
From:   Mark Wielaard <mark@klomp.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Mark Wielaard <mark@klomp.org>
Subject: [PATCH] mprotect.2: pkey_mprotect acts like mprotect if pkey is set to -1, not 0.
Date:   Thu, 30 May 2019 01:08:39 +0200
Message-Id: <1559171319-13742-1-git-send-email-mark@klomp.org>
X-Mailer: git-send-email 1.8.3.1
X-Spam-Flag: NO
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
        autolearn=ham autolearn_force=no version=3.4.0
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on gnu.wildebeest.org
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The mprotect.2 NOTES say:

  On systems that do not support protection keys in hardware,
  pkey_mprotect() may still be used, but pkey must be set to 0.  When
  called this way, the operation of pkey_mprotect() is equivalent to
  mprotect().

But this is not what the glibc manual says:

  It is also possible to call pkey_mprotect with a key value of -1,
  in which case it will behave in the same way as mprotect.

Which is correct. Both the glibc implementation and the kernel check
whether pkey is -1. 0 is not a valid pkey when memory protection keys
are not supported in hardware.

Signed-off-by: Mark Wielaard <mark@klomp.org>
---
 man2/mprotect.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/mprotect.2 b/man2/mprotect.2
index 4d29f66..866ac77 100644
--- a/man2/mprotect.2
+++ b/man2/mprotect.2
@@ -278,7 +278,7 @@ On systems that do not support protection keys in hardware,
 .BR pkey_mprotect ()
 may still be used, but
 .IR pkey
-must be set to 0.
+must be set to -1.
 When called this way, the operation of
 .BR pkey_mprotect ()
 is equivalent to
-- 
1.8.3.1

