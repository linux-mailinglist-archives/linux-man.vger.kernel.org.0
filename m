Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40E15697CD1
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 14:09:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233916AbjBONJI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 08:09:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234092AbjBONJD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 08:09:03 -0500
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDC4F1A6
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 05:08:57 -0800 (PST)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout02.posteo.de (Postfix) with ESMTPS id 3CD5E24047A
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 14:08:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1676466536; bh=bFisA8uH0VA6zBVBpKiFJGjqL+vy6DgmFwB4Qz0C6vQ=;
        h=From:To:Cc:Subject:Date:From;
        b=PL30pTCIioGOYI7kORoShjFnYRC8mVWTCUEx2X6+bZbf3sHb15ylHZep8eB69T0uy
         CqgL69UYHPDCyv3I1sB6P0lO++pRG4PpTQND/0CNynKAGAP2ni3YMHpf9kYqGhYcXP
         M+RxjN2ewT6bOyMQzbukhNvd4nfVU8h6k3kpMgy0j9ojl4zHDnamobhzz3BR1bAlX/
         axffs7zF/n5zUcUBEGtSD/bkIyJMLCCMjnUlv98Sd90kzJikne/qbbj6NIkq+UNwuw
         3Bv3yAB5rqVKPNZ34mky8L9B7kErObaJnEpudWDlDEYQbagbBwjNzlZCM0OUbAw1TK
         ChFE4S/ajOayA==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4PGz134tpVz6tnD;
        Wed, 15 Feb 2023 14:08:55 +0100 (CET)
From:   Tom Schwindl <schwindl@posteo.de>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] memcmp.3: wfix
Date:   Wed, 15 Feb 2023 13:07:50 +0000
Message-Id: <20230215130750.30037-1-schwindl@posteo.de>
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
index c2427a00ac12..26aeaa439e78 100644
--- a/man3/memcmp.3
+++ b/man3/memcmp.3
@@ -73,7 +73,7 @@ Instead, a function that performs comparisons in constant time is required.
 Some operating systems provide such a function (e.g., NetBSD's
 .BR consttime_memequal ()),
 but no such function is specified in POSIX.
-On Linux, it may be necessary to implement such a function oneself.
+On Linux, it may be necessary to implement such a function yourself.
 .SH SEE ALSO
 .BR bstring (3),
 .BR strcasecmp (3),
-- 
2.39.1

