Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04C8C6BF4DC
	for <lists+linux-man@lfdr.de>; Fri, 17 Mar 2023 23:05:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230091AbjCQWFU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Mar 2023 18:05:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229872AbjCQWFT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Mar 2023 18:05:19 -0400
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F4E926CFE
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 15:05:18 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout02.posteo.de (Postfix) with ESMTPS id BE0322406E2
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 23:05:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1679090716; bh=u3kw9mkWJ2t5vPrUMMHqMNZAgmvgKw3kWL50XcqXOlA=;
        h=From:To:Cc:Subject:Date:From;
        b=NODstHs6BKbAXlxO8fTd8z5GUQyA7oHmtuRElA0ZiNRHEs7HCes5Lwp5lQU23ou0N
         7gzXJfKjHWi4vnklTPS6LcdTW6x130IV/MnfGa3tY7ug5qIsLpLX1Ia7yolfHCdCEp
         xIa8j6b+I4uYyGJk3wdVpEgZ5qJ+CHGdE8g2hvMQZJC6DX+rQatIERlA38UDXUntZd
         sH/g+4Jl9RpLtS+fJmOZ+JEXtPM65ph+zpguRh1KGkpO+Xvqk/SnyN18q4bJ6SprWm
         E45lTSjMQnFmuUwwX5CWiz+yiomGH+91ufcT1uIi9Az6E5W0/Qhdj1+snm+N1/mgN1
         abDHDQeaYzzBQ==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4PddV36kdPz9rxF;
        Fri, 17 Mar 2023 23:05:15 +0100 (CET)
From:   Tom Schwindl <schwindl@posteo.de>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] pthreads.7: tfix
Date:   Fri, 17 Mar 2023 22:04:19 +0000
Message-Id: <20230317220419.1348-1-schwindl@posteo.de>
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
 man7/pthreads.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

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

