Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28F386BF61E
	for <lists+linux-man@lfdr.de>; Sat, 18 Mar 2023 00:17:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229639AbjCQXRl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Mar 2023 19:17:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229575AbjCQXRk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Mar 2023 19:17:40 -0400
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F9A11DBAA
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 16:17:39 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout02.posteo.de (Postfix) with ESMTPS id 9642724072B
        for <linux-man@vger.kernel.org>; Sat, 18 Mar 2023 00:17:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1679095057; bh=12TUN8D721h3E6W6LOTy5VoUzODT5i33Oz5MBDk4MBc=;
        h=From:To:Cc:Subject:Date:From;
        b=ONrcBVqy8hoIR7wWI9qJw/YYrlw2K5PyhbDRFt7vhOmo1PvcdDKSDd89JdE3K5oww
         TUm8ILbM9OylPnFFFQu4oIuPu7H6aRHTJEquYiWO1PTdidKExEvhockK9JFpHOY8/r
         HYe+a0um1yqwHuDDlN6uU4Qs82Vtb4mj+jEKApel22ZFanHrUC2V4Hpg0sMAC7sKw1
         ntk2U4xGmDPw21cPwLtxCY02t88+CmS1HjMLvlLbvAVyuapp5Wc98DVsxP7iBgxQsQ
         Da/UfjqcrWCWk3o6oS7t+sBIjKtb7yiWe4MhwXU0lSTVv9T6hEJkvejTSytfiC747P
         hJvT9aX3Fx4bg==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4Pdg5Y0T3qz6tmB;
        Sat, 18 Mar 2023 00:17:37 +0100 (CET)
From:   Tom Schwindl <schwindl@posteo.de>
To:     Alejandro Colomar <alx@kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] man*/: tfix
Date:   Fri, 17 Mar 2023 23:16:40 +0000
Message-Id: <20230317231640.20129-1-schwindl@posteo.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Tom Schwindl <schwindl@posteo.de>
---
Hi Alex,

I missed those, thanks!
---
 man3/pthread_cancel.3 | 2 +-
 man7/attributes.7     | 2 +-
 man7/pthreads.7       | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/man3/pthread_cancel.3 b/man3/pthread_cancel.3
index da41931a556d..a6bd16bd0cdc 100644
--- a/man3/pthread_cancel.3
+++ b/man3/pthread_cancel.3
@@ -61,7 +61,7 @@ When a cancelation requested is acted on, the following steps occur for
 .I thread
 (in this order):
 .IP (1) 5
-Cancellation clean-up handlers are popped
+Cancelation clean-up handlers are popped
 (in the reverse of the order in which they were pushed) and called.
 (See
 .BR pthread_cleanup_push (3).)
diff --git a/man7/attributes.7 b/man7/attributes.7
index 02b2661b8155..e8d028ee8dc2 100644
--- a/man7/attributes.7
+++ b/man7/attributes.7
@@ -67,7 +67,7 @@ safe for inlining.
 .\" .I AC-Safe
 .\" or Async-Cancel-Safe functions are safe to call when
 .\" asynchronous cancelation is enabled.
-.\" AC in AC-Safe stands for Asynchronous Cancellation.
+.\" AC in AC-Safe stands for Asynchronous Cancelation.
 .\"
 .\" The POSIX standard defines only three functions to be AC-Safe, namely
 .\" .BR pthread_cancel (3),
diff --git a/man7/pthreads.7 b/man7/pthreads.7
index e0aad99215d4..50d211a9adba 100644
--- a/man7/pthreads.7
+++ b/man7/pthreads.7
@@ -235,7 +235,7 @@ pthread_setcancelstate()
 pthread_setcanceltype()
 .EE
 .in
-.SS Cancellation points
+.SS Cancelation points
 POSIX.1 specifies that certain functions must,
 and certain other functions may, be cancelation points.
 If a thread is cancelable, its cancelability type is deferred,
-- 
2.40.0

