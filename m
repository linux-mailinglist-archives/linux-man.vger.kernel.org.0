Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DB864180C1
	for <lists+linux-man@lfdr.de>; Sat, 25 Sep 2021 11:18:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235512AbhIYJUK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 25 Sep 2021 05:20:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234271AbhIYJUJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 25 Sep 2021 05:20:09 -0400
X-Greylist: delayed 624 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 25 Sep 2021 02:18:34 PDT
Received: from mailgw1.uni-kl.de (mailgw1.uni-kl.de [IPv6:2001:638:208:120::220])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A3D8C061570
        for <linux-man@vger.kernel.org>; Sat, 25 Sep 2021 02:18:34 -0700 (PDT)
Received: from sushi.unix-ag.uni-kl.de (sushi.unix-ag.uni-kl.de [IPv6:2001:638:208:ef34:0:ff:fe00:65])
        by mailgw1.uni-kl.de (8.14.4/8.14.4/Debian-8+deb8u2) with ESMTP id 18P986kA018552
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Sat, 25 Sep 2021 11:08:06 +0200
Received: from localhost (sushi.unix-ag.uni-kl.de [IPv6:2001:638:208:ef34:0:ff:fe00:65])
        by sushi.unix-ag.uni-kl.de (8.14.4/8.14.4/Debian-4+deb7u1) with ESMTP id 18P985lK007019;
        Sat, 25 Sep 2021 11:08:05 +0200
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <guenther@unix-ag.uni-kl.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <guenther@unix-ag.uni-kl.de>
Subject: [PATCH] syscalls.2: Remove duplicate mention of landlock_add_rule.
Date:   Sat, 25 Sep 2021 11:08:03 +0200
Message-Id: <20210925090803.6884-1-guenther@unix-ag.uni-kl.de>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, hits=-1, tests=ALL_TRUSTED=-1
X-Spam-Score:  (-1)
X-Spam-Flag: NO
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man2/syscalls.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/syscalls.2 b/man2/syscalls.2
index 800873b55..1b011ce6e 100644
--- a/man2/syscalls.2
+++ b/man2/syscalls.2
@@ -415,7 +415,6 @@ T}
 \fBlandlock_add_rule\fP(2)	5.13
 \fBlandlock_create_ruleset\fP(2)	5.13
 \fBlandlock_restrict_self\fP(2)	5.13
-\fBlandlock_add_rule\fP(2)	5.13
 \fBlchown\fP(2)	1.0	T{
 See \fBchown\fP(2) for
 version details
-- 
2.33.0

