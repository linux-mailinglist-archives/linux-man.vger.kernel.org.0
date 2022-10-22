Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44BDE608F0A
	for <lists+linux-man@lfdr.de>; Sat, 22 Oct 2022 20:50:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229661AbiJVSuz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Oct 2022 14:50:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229491AbiJVSuy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Oct 2022 14:50:54 -0400
Received: from smtp.gentoo.org (smtp.gentoo.org [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42130CABF6
        for <linux-man@vger.kernel.org>; Sat, 22 Oct 2022 11:50:52 -0700 (PDT)
Received: by smtp.gentoo.org (Postfix, from userid 559)
        id EF4DA3412B1; Sat, 22 Oct 2022 18:50:50 +0000 (UTC)
From:   Mike Frysinger <vapier@gentoo.org>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man-pages.7: add missing . before macro
Date:   Sat, 22 Oct 2022 23:21:23 +0545
Message-Id: <20221022173623.11560-1-vapier@gentoo.org>
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

Signed-off-by: Mike Frysinger <vapier@gentoo.org>
---
 man7/man-pages.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 8ed5f66e54ea..941832f15329 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -749,7 +749,7 @@ and
 format them using the
 .I .EX
 and
-.I EE
+.I .EE
 macros, and surround them with suitable paragraph markers (either
 .I .PP
 or
-- 
2.37.3

