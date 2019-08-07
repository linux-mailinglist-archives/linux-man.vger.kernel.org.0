Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0278A841EA
	for <lists+linux-man@lfdr.de>; Wed,  7 Aug 2019 03:50:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728727AbfHGBuh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Aug 2019 21:50:37 -0400
Received: from master.debian.org ([82.195.75.110]:33196 "EHLO
        master.debian.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727788AbfHGBuh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Aug 2019 21:50:37 -0400
X-Greylist: delayed 301 seconds by postgrey-1.27 at vger.kernel.org; Tue, 06 Aug 2019 21:50:36 EDT
Received: from pabs by master.debian.org with local (Exim 4.89)
        (envelope-from <pabs@master.debian.org>)
        id 1hvB63-00089s-Ur; Wed, 07 Aug 2019 01:50:35 +0000
From:   Paul Wise <pabs3@bonedaddy.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Paul Wise <pabs3@bonedaddy.net>
Subject: [PATCH] Add some tips for how to contribute
Date:   Wed,  7 Aug 2019 09:50:26 +0800
Message-Id: <20190807015026.26519-1-pabs3@bonedaddy.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Written-by: Michael Kerrisk <mtk.manpages@gmail.com>
---
 CONTRIBUTING | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 CONTRIBUTING

diff --git a/CONTRIBUTING b/CONTRIBUTING
new file mode 100644
index 000000000..db947b5af
--- /dev/null
+++ b/CONTRIBUTING
@@ -0,0 +1,16 @@
+Commit style:
+
+When referring to Linux kernel versions, please add a
+comment before it that shows the kernel commit hash.
+
+Use .PP rather than blank lines as paragraph separators.
+
+Starting new sentences on new source lines makes future patches against
+the source easier to grok. This is known as semantic newlines:
+
+https://rhodesmill.org/brandon/2012/one-sentence-per-line/
+
+Sending patches:
+
+To: Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>
+CC: linux-man@vger.kernel.org
-- 
2.20.1

