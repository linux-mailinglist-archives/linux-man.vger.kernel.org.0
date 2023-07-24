Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCA0575F8EA
	for <lists+linux-man@lfdr.de>; Mon, 24 Jul 2023 15:52:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231345AbjGXNwV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Jul 2023 09:52:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230444AbjGXNwI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 Jul 2023 09:52:08 -0400
Received: from a3.inai.de (a3.inai.de [IPv6:2a01:4f8:10b:45d8::f5])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0723B59D0
        for <linux-man@vger.kernel.org>; Mon, 24 Jul 2023 06:49:10 -0700 (PDT)
Received: by a3.inai.de (Postfix, from userid 65534)
        id 1802F591FB0FC; Mon, 24 Jul 2023 15:49:03 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
Received: from a4.inai.de (a4.inai.de [IPv6:2a01:4f8:10b:45d8::f8])
        by a3.inai.de (Postfix) with ESMTP id C4B035908F83D;
        Mon, 24 Jul 2023 15:49:02 +0200 (CEST)
From:   Jan Engelhardt <jengelh@inai.de>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/2] fmod.3: add note how to obtain modulus/LPR
Date:   Mon, 24 Jul 2023 15:49:01 +0200
Message-ID: <20230724134902.77081-1-jengelh@inai.de>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jan Engelhardt <jengelh@inai.de>
---
 man3/fmod.3 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man3/fmod.3 b/man3/fmod.3
index ee2333fdc..a33b83eb5 100644
--- a/man3/fmod.3
+++ b/man3/fmod.3
@@ -58,6 +58,9 @@ is the quotient of
 /
 .IR y ,
 rounded toward zero to an integer.
+.PP
+To obtain the modulus, more specifically, the Least Positive Residue, the
+expression "fmod(fmod(x, y) + y, y)" needs to be used.
 .SH RETURN VALUE
 On success, these
 functions return the value \fIx\fP\ \-\ \fIn\fP*\fIy\fP,
-- 
2.41.0

