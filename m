Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D8A101381EC
	for <lists+linux-man@lfdr.de>; Sat, 11 Jan 2020 16:01:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729896AbgAKPBX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Jan 2020 10:01:23 -0500
Received: from forward100o.mail.yandex.net ([37.140.190.180]:40972 "EHLO
        forward100o.mail.yandex.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729696AbgAKPBX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Jan 2020 10:01:23 -0500
X-Greylist: delayed 331 seconds by postgrey-1.27 at vger.kernel.org; Sat, 11 Jan 2020 10:01:22 EST
Received: from forward101q.mail.yandex.net (forward101q.mail.yandex.net [IPv6:2a02:6b8:c0e:4b:0:640:4012:bb98])
        by forward100o.mail.yandex.net (Yandex) with ESMTP id 9EC6F4AC065A
        for <linux-man@vger.kernel.org>; Sat, 11 Jan 2020 17:55:49 +0300 (MSK)
Received: from mxback12q.mail.yandex.net (mxback12q.mail.yandex.net [IPv6:2a02:6b8:c0e:1b3:0:640:3818:d096])
        by forward101q.mail.yandex.net (Yandex) with ESMTP id 9AB34CF40004
        for <linux-man@vger.kernel.org>; Sat, 11 Jan 2020 17:55:49 +0300 (MSK)
Received: from vla4-d1b041059520.qloud-c.yandex.net (vla4-d1b041059520.qloud-c.yandex.net [2a02:6b8:c17:914:0:640:d1b0:4105])
        by mxback12q.mail.yandex.net (mxback/Yandex) with ESMTP id mGmpSMaAE2-tnhmvAxY;
        Sat, 11 Jan 2020 17:55:49 +0300
Received: by vla4-d1b041059520.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA id yY0koTSVOD-tmW8jJcR;
        Sat, 11 Jan 2020 17:55:48 +0300
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (Client certificate not present)
From:   Shawn Landden <shawn@git.icu>
Cc:     linux-man@vger.kernel.org, Shawn Landden <shawn@git.icu>
Subject: [PATCH] bcmp: note that this function is no longer legacy due to LLVM 9
Date:   Sat, 11 Jan 2020 18:55:44 +0400
Message-Id: <20200111145544.5592-1-shawn@git.icu>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
To:     unlisted-recipients:; (no To-header on input)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Shawn Landden <shawn@git.icu>
---
 man3/bcmp.3 | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/man3/bcmp.3 b/man3/bcmp.3
index ba9838019..18d238720 100644
--- a/man3/bcmp.3
+++ b/man3/bcmp.3
@@ -70,15 +70,21 @@ T{
 .BR bcmp ()
 T}	Thread safety	MT-Safe
 .TE
 .SH CONFORMING TO
 4.3BSD.
-This function is deprecated (marked as LEGACY in POSIX.1-2001): use
-.BR memcmp (3)
-in new programs.
+This function was deprecated (marked as LEGACY) by POSIX.1-2001).
 POSIX.1-2008 removes the specification of
 .BR bcmp ().
+LLVM 9, released in 2019, revived
+.BR bcmp ()
+and generates calls to it instead of
+.BR memcmp (3)
+as appropiate as an optimization (as
+.BR bcmp ()
+need not traverse memory in-order).
+.\" http://releases.llvm.org/9.0.0/docs/ReleaseNotes.html#noteworthy-optimizations
 .SH SEE ALSO
 .BR bstring (3),
 .BR memcmp (3),
 .BR strcasecmp (3),
 .BR strcmp (3),
-- 
2.20.1

