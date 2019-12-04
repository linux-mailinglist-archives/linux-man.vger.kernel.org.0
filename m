Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 83ECC113675
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2019 21:30:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727911AbfLDUau (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Dec 2019 15:30:50 -0500
Received: from mail.kernel.org ([198.145.29.99]:44660 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727910AbfLDUau (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 4 Dec 2019 15:30:50 -0500
Received: from localhost (c-67-180-165-146.hsd1.ca.comcast.net [67.180.165.146])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 0C8D52073C;
        Wed,  4 Dec 2019 20:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1575491450;
        bh=htrGsVOBU8cV1IPc3JlgBaKEcYyOHEeDvfWHRxVRc2g=;
        h=From:To:Cc:Subject:Date:From;
        b=WUxi1/watmiWZn4+xwvjI/k+rnsDpaTbc5O5LQwp3tLsePbAbGj5cn0b/KmG8XODs
         e040UcSeTl27hrtQciErCOHqY5rlwLYCVWhPtLhR05ZmLO9LGOpBBtg5EWRNy+45mW
         YfZJUzB+ZYNqU8/USXLy8KQMlGP8HAmB8wmTCpHs=
From:   Andy Lutomirski <luto@kernel.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        "Metzger, Markus T" <markus.t.metzger@intel.com>,
        Andy Lutomirski <luto@kernel.org>
Subject: [PATCH] modify_ldt.2, set_thread_area.2: Fix type of base_addr
Date:   Wed,  4 Dec 2019 12:30:45 -0800
Message-Id: <cae4fcdc7ef5f2a1f2c81afb9bb1a9c552e39c4e.1575491386.git.luto@kernel.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Historically (before Linux 2.6.23), base_addr was unsigned long for
32-bit code and unsigned int for 64-bit code.  In other words, it
was always a 32-bit value.  When the ldt.h header files were
unified, the type became unsigned int on all systems.  Update
modify_ldt.2 and set_thread_area.2 accordingly.

Indeed, on x86, the GDT and LDT specify 32-bit bases for code and
data segments, and this has nothing to do with the kernel.

Reported-by: "Metzger, Markus T" <markus.t.metzger@intel.com>
Signed-off-by: Andy Lutomirski <luto@kernel.org>
---
 man2/modify_ldt.2      | 2 +-
 man2/set_thread_area.2 | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/modify_ldt.2 b/man2/modify_ldt.2
index 0db6efea47ad..ae979ed41a7d 100644
--- a/man2/modify_ldt.2
+++ b/man2/modify_ldt.2
@@ -79,7 +79,7 @@ structure is defined in \fI<asm/ldt.h>\fP as:
 .EX
 struct user_desc {
     unsigned int  entry_number;
-    unsigned long base_addr;
+    unsigned int  base_addr;
     unsigned int  limit;
     unsigned int  seg_32bit:1;
     unsigned int  contents:2;
diff --git a/man2/set_thread_area.2 b/man2/set_thread_area.2
index b2f0882ed9ad..3b6b22efd9aa 100644
--- a/man2/set_thread_area.2
+++ b/man2/set_thread_area.2
@@ -67,7 +67,7 @@ to a structure of the following type:
 .EX
 struct user_desc {
     unsigned int  entry_number;
-    unsigned long base_addr;
+    unsigned int  base_addr;
     unsigned int  limit;
     unsigned int  seg_32bit:1;
     unsigned int  contents:2;
-- 
2.23.0

