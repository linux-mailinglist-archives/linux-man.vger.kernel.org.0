Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98DFE68E1B7
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 21:11:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229688AbjBGULx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 15:11:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229704AbjBGULu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 15:11:50 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34981658B
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 12:11:47 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id PTlHpqc9bc9C4PUJfpYP8c; Tue, 07 Feb 2023 20:11:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675800707; bh=gvhgllWTn4xRp5dHAWzZPZVW8tAtZOOSf+PlFPCNKXo=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=muUlKru9qli8bUoGZZGsCtv1/xqsVIZYLKKMyavHkmne8ShpGlYLtK/A/T+mCYAeM
         9FirtL7h87HDrtVtN2uqNy9bNKOQsNTvnx0zlnV84V5MdRsg5dTDOMZvOHnECBx6MK
         rAp8iRez786FLtogjLNhmrqT5s9e5fSBJBjsDnuzqsK1ldf1lj6KQM2tYnH8T6kowI
         azjKwGAfO+6t6edbj6TswfVTbonC7wohR9vVZAtxWRTZb/hf2THxcBAeoJztxpgSkY
         Y+vImYB/yIQtHUnDpwfnwvRhI0tpwDlCctCZfY4vDrQRCbboqHUY33lYeJiZdYdThE
         OGeaMqkOp5ntQ==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PUJdpfnuvHFsOPUJep7rPJ; Tue, 07 Feb 2023 20:11:47 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63e2b083
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=iqSyOaP4YS47XGSMiOkA:9
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 02/11] man2/spu_run.2: fix example comment status code or-ed value
Date:   Tue,  7 Feb 2023 13:11:23 -0700
Message-Id: <fde9ec8187bbb7d2b30b0cf5b5cd0d67190fcc2b.1675800581.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675800581.git.Brian.Inglis@Shaw.ca>
References: <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675800581.git.Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Organization: Systematic Software
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfAGpQUqEjIKBsBGMsRHnAR1JTAiBq+ksy/rhB7plXVaRWE0YzIeWALe5HZ9vqGbHvFPbnmlv463C9VCvApigul9cSDkvHujtKJDNX29hj5OsFDNjDzJT
 fpUL4sqsGR9W63PbwjVHr/CSpl5wtJR0+m4KqfzlVLOwMs7rOwsRSV2mCSnjroXh2pxqx6EchZdEDI1zjLPV8niqD/pMVmqNJhmmqC/tE+jk6EpQAX2+kVGs
 OOZ8OPRoXsozVCxPvbvNo473TUqrG0LKg0g9eS+v4/MK/ps5mnZmnt+tF8xETAbv
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man2/spu_run.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/spu_run.2 b/man2/spu_run.2
index 00d552986052..139f10a97a80 100644
--- a/man2/spu_run.2
+++ b/man2/spu_run.2
@@ -245,7 +245,7 @@ int main(void)
         err(EXIT_FAILURE, "open");
 
     /*
-     * We should see a status code of 0x1234002:
+     * We should see a status code of 0x12340002:
      *   0x00000002 (spu was stopped due to stop\-and\-signal)
      * | 0x12340000 (the stop\-and\-signal code)
      */
-- 
2.39.0

