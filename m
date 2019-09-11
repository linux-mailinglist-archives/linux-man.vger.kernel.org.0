Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D30A1AFD64
	for <lists+linux-man@lfdr.de>; Wed, 11 Sep 2019 15:07:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728027AbfIKNHA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Sep 2019 09:07:00 -0400
Received: from h2.fbrelay.privateemail.com ([131.153.2.43]:59092 "EHLO
        h2.fbrelay.privateemail.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728023AbfIKNG7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Sep 2019 09:06:59 -0400
X-Greylist: delayed 832 seconds by postgrey-1.27 at vger.kernel.org; Wed, 11 Sep 2019 09:06:59 EDT
Received: from MTA-08-4.privateemail.com (mta-08.privateemail.com [68.65.122.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by h1.fbrelay.privateemail.com (Postfix) with ESMTPS id 6BF3F80A35
        for <linux-man@vger.kernel.org>; Wed, 11 Sep 2019 08:53:07 -0400 (EDT)
Received: from MTA-08.privateemail.com (localhost [127.0.0.1])
        by MTA-08.privateemail.com (Postfix) with ESMTP id 33DF060056;
        Wed, 11 Sep 2019 08:53:06 -0400 (EDT)
Received: from wrwlf0000.attlocal.net (unknown [10.20.151.209])
        by MTA-08.privateemail.com (Postfix) with ESMTPA id D833D60051;
        Wed, 11 Sep 2019 12:53:05 +0000 (UTC)
From:   "Christopher M. Riedl" <cmr@informatik.wtf>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] mprotect.2: wfix
Date:   Wed, 11 Sep 2019 07:56:39 -0500
Message-Id: <20190911125639.2083-1-cmr@informatik.wtf>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Christopher M. Riedl <cmr@informatik.wtf>
---
 man2/mprotect.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/mprotect.2 b/man2/mprotect.2
index a65d80f3e..f96b41560 100644
--- a/man2/mprotect.2
+++ b/man2/mprotect.2
@@ -271,7 +271,7 @@ is used with
 .IR prot
 set to
 .B PROT_EXEC
-a pkey is may be allocated and set on the memory implicitly
+a pkey may be allocated and set on the memory implicitly
 by the kernel, but only when the pkey was 0 previously.
 .PP
 On systems that do not support protection keys in hardware,
-- 
2.23.0

