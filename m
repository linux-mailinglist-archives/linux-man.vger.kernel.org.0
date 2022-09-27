Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06B395EBBC7
	for <lists+linux-man@lfdr.de>; Tue, 27 Sep 2022 09:42:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230464AbiI0HmM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Sep 2022 03:42:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230473AbiI0HmG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Sep 2022 03:42:06 -0400
Received: from smtp.gentoo.org (smtp.gentoo.org [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D83A99AFC3
        for <linux-man@vger.kernel.org>; Tue, 27 Sep 2022 00:42:05 -0700 (PDT)
Received: by smtp.gentoo.org (Postfix, from userid 559)
        id 38CD83412EF; Tue, 27 Sep 2022 07:41:06 +0000 (UTC)
From:   Mike Frysinger <vapier@gentoo.org>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] unix.7: fix section reference wrt length
Date:   Tue, 27 Sep 2022 13:26:32 +0545
Message-Id: <20220927074132.16007-1-vapier@gentoo.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Mike Frysinger <vapier@chromium.org>

The description of Linux path length handling has always been in the
BUGS section.  The commit that added this see-also note incorrectly
referred to the NOTES section instead.

Signed-off-by: Mike Frysinger <vapier@gentoo.org>
---
 man7/unix.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/unix.7 b/man7/unix.7
index f44ffbe3094c..693c339b244c 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -75,7 +75,7 @@ field always contains
 .BR AF_UNIX .
 On Linux,
 .I sun_path
-is 108 bytes in size; see also NOTES, below.
+is 108 bytes in size; see also BUGS, below.
 .PP
 Various systems calls (for example,
 .BR bind (2),
-- 
2.37.3

