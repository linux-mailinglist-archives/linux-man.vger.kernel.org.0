Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EFE062F0DB
	for <lists+linux-man@lfdr.de>; Fri, 18 Nov 2022 10:18:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241873AbiKRJSX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Nov 2022 04:18:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241922AbiKRJRs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Nov 2022 04:17:48 -0500
Received: from out0.migadu.com (out0.migadu.com [IPv6:2001:41d0:2:267::])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 943F893CD9
        for <linux-man@vger.kernel.org>; Fri, 18 Nov 2022 01:17:28 -0800 (PST)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thomasvoss.com;
        s=key1; t=1668763047;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=ECibKcM3OcZ9ZYv7mBFFGfEtF1hbpFEtBVMUpm6XEHE=;
        b=7vR+g8fsbz/Zsv3xHJNrQulKX4/BS/P3owdRtcaaSDzRe2Ef55wcE0W1cvnybuRfL1N05y
        oUazPSNMVnj0y8EPjMbS29C7ZmcjJc09XOBTbXP5GP2OAokGw+wMo19Q6MNReh3v3O1kTq
        cKO2NnvE9jXH52c+1wQms0Av9pyR0TL+W85Vi3e/pzoe9pZk0MAh2Uho557g3R8xdjqQQ4
        SvfPixCrxrSVxZZoTPjbAuyUGtgK2P6Pf5iNS9EkfQ9yCfTifKNFXORF9U6rlUIoZ52ZmB
        jo+mgjrEFzSx0vC4VbVREmF9nSZ5pHA2AmuKJYiNiOK858iPUzP/+mFyJevKlA==
From:   Thomas Voss <mail@thomasvoss.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Thomas Voss <mail@thomasvoss.com>
Subject: [PATCH] CONTRIBUTING: tfix
Date:   Fri, 18 Nov 2022 10:17:27 +0100
Message-Id: <20221118091727.26874-1-mail@thomasvoss.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 CONTRIBUTING | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/CONTRIBUTING b/CONTRIBUTING
index 8405f670d..59d980271 100644
--- a/CONTRIBUTING
+++ b/CONTRIBUTING
@@ -71,7 +71,7 @@ Description
 
              [patch] shmop.2: Add "(void *)" cast to RETURN VALUE
 
-       -  Sign your patch with "Signed-opff-by:".  Read about the "Developer's
+       -  Sign your patch with "Signed-off-by:".  Read about the "Developer's
           Certificate of Origin" at
           <https://www.kernel.org/doc/Documentation/process/submitting-patches.rst>.
           When appropriate, other tags documented in that file, such as
-- 
2.38.1

