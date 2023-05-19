Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 021D1709527
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 12:37:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231140AbjESKhR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 06:37:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231491AbjESKhB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 06:37:01 -0400
X-Greylist: delayed 580 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 19 May 2023 03:36:23 PDT
Received: from dcvr.yhbt.net (dcvr.yhbt.net [173.255.242.215])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 793931991
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 03:36:23 -0700 (PDT)
Received: from localhost (dcvr.yhbt.net [127.0.0.1])
        by dcvr.yhbt.net (Postfix) with ESMTP id C0C381F542;
        Fri, 19 May 2023 10:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=80x24.org;
        s=selector1; t=1684492003;
        bh=cNSyz450mALWz0WlZCgLkM6HNb3f5o5kSStgWs1ao5Y=;
        h=From:To:Cc:Subject:Date:From;
        b=U1mFWA6s6NxH+5+YuhLIo+lo311zSCkdqrpQb07yRTgYsi7LbCCqOLxX7ViQSTv4X
         94S8aLDwmOxrVojWCR0UbA9gqGx9kUbx3sQR0h90txJ3J0Bj13qbSTSXjvU7EBHhtr
         pDppQcpNTuVcmv5QGXTuKD33FgecLYONBL/xMNRs=
From:   Eric Wong <e@80x24.org>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Eric Wong <e@80x24.org>
Subject: [PATCH] system_data_types.7: tfix
Date:   Fri, 19 May 2023 10:26:43 +0000
Message-ID: <20230519102643.3615995-1-e@80x24.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The actual field names omit the 'g', matching sigevent.7.

Signed-off-by: Eric Wong <e@80x24.org>
---
 I really don't understand why the 'g' is omitted to give us
 this footgun; `struct sigevent' has longer field names...

 man7/system_data_types.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 6bbf71004..1840a40fa 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -183,8 +183,8 @@ POSIX.1-2001 and later.
 .PP
 .EX
 union sigval {
-    int     sigval_int; /* Integer value */
-    void   *sigval_ptr; /* Pointer value */
+    int     sival_int; /* Integer value */
+    void   *sival_ptr; /* Pointer value */
 };
 .EE
 .PP
