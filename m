Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77E87698238
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 18:34:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229532AbjBORe4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 12:34:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230024AbjBORew (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 12:34:52 -0500
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43F04269B
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 09:34:51 -0800 (PST)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout02.posteo.de (Postfix) with ESMTPS id C2F012403B2
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 18:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1676482489; bh=pN7TdKkEMFPcOQdrhsyce2JpDs9wXW6nZrG4YcLTU8w=;
        h=From:To:Cc:Subject:Date:From;
        b=oerOwMRH7w2foS0yPtO3ykSLIsSq+IyfJ6Ln7lBkKtt+llCD+AvdPp/M0AH2/yH5l
         mwHVrSQFD07qWFl3r8kd/eFN3bcm7/H3HwlwriUkbtgqtvnyDWJ57VTe52MZo4/iqP
         RnXtvMNbUI7KsRnaz0rDyFFg0dHzPCgOpj5PmK9H1Qsz84YnzGtA/1/ID/JzXlD/Ta
         idIFGUrVlW+bbZL+a5/P73DLaSTeED+E34XYYRd8z99PP/AeKeUSTbb1CZFhdqLX/9
         CZ7D0MWbBRr66cdp+3T9rNUwlSrtePOQ+/v7SolLH1oA7b0p8mx329S4c+LjEfDrLG
         giK7gt5WRKXIw==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4PH4vr2jzqz9rxW;
        Wed, 15 Feb 2023 18:34:48 +0100 (CET)
From:   Tom Schwindl <schwindl@posteo.de>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] memcmp.3: wfix
Date:   Wed, 15 Feb 2023 17:33:43 +0000
Message-Id: <20230215173343.30846-1-schwindl@posteo.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Tom Schwindl <schwindl@posteo.de>
---
 man3/memcmp.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/memcmp.3 b/man3/memcmp.3
index c2427a00ac12..de712bd0ae13 100644
--- a/man3/memcmp.3
+++ b/man3/memcmp.3
@@ -73,7 +73,7 @@ Instead, a function that performs comparisons in constant time is required.
 Some operating systems provide such a function (e.g., NetBSD's
 .BR consttime_memequal ()),
 but no such function is specified in POSIX.
-On Linux, it may be necessary to implement such a function oneself.
+On Linux, you may need to implement such a function yourself.
 .SH SEE ALSO
 .BR bstring (3),
 .BR strcasecmp (3),
-- 
2.39.1

