Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62048364AE7
	for <lists+linux-man@lfdr.de>; Mon, 19 Apr 2021 22:01:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234030AbhDSUCF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Apr 2021 16:02:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230160AbhDSUCF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Apr 2021 16:02:05 -0400
Received: from sipsolutions.net (s3.sipsolutions.net [IPv6:2a01:4f8:191:4433::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEE2CC06174A
        for <linux-man@vger.kernel.org>; Mon, 19 Apr 2021 13:01:34 -0700 (PDT)
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94)
        (envelope-from <johannes@sipsolutions.net>)
        id 1lYa5K-00DwmV-Kp; Mon, 19 Apr 2021 22:01:30 +0200
From:   Johannes Berg <johannes@sipsolutions.net>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] clone.2: tfix
Date:   Mon, 19 Apr 2021 22:01:27 +0200
Message-Id: <20210419200127.158029-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Despite my mention of this spawning a hilarious discussion
on IRC, this alignment restriction should be 128-bit, not
126-bit.

Signed-off-by: Johannes Berg <johannes@sipsolutions.net>
---
 man2/clone.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/clone.2 b/man2/clone.2
index 818e584ceee1..838fbd669c57 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -1418,7 +1418,7 @@ was an invalid.
 .TP
 .BR EINVAL " (AArch64 only, Linux 4.6 and earlier)"
 .I stack
-was not aligned to a 126-bit boundary.
+was not aligned to a 128-bit boundary.
 .TP
 .B ENOMEM
 Cannot allocate sufficient memory to allocate a task structure for the
-- 
2.30.2

