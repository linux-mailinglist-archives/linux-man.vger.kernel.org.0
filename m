Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D48A1712982
	for <lists+linux-man@lfdr.de>; Fri, 26 May 2023 17:32:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237475AbjEZPcF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 May 2023 11:32:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229880AbjEZPcE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 May 2023 11:32:04 -0400
X-Greylist: delayed 1196 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 26 May 2023 08:32:01 PDT
Received: from 3.mo548.mail-out.ovh.net (3.mo548.mail-out.ovh.net [188.165.32.156])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61212A3
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 08:32:01 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.47])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id 5602E231D9;
        Fri, 26 May 2023 14:53:31 +0000 (UTC)
Received: from jwilk.net (37.59.142.96) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Fri, 26 May
 2023 16:53:30 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-96R001f88f3afd-04b9-4d95-824d-b4e003d478da,
                    F4F83329209D592252FA6A68FA60AFCB8F36FF1B) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.18
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] malloc.3: srcfix
Date:   Fri, 26 May 2023 16:53:28 +0200
Message-ID: <20230526145328.3135-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 826777ba-cfcc-4745-9ebb-b41efdcaedce
X-Ovh-Tracer-Id: 14405607834764564448
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrfeejledgkedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvfevufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeefhfetfffhffehtedufedvfeehfffgudeljeehieetiefhfeffjeevleejveehieenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddrleeipdehrddujedvrddvheehrddukeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomhdprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehgeekpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man3/malloc.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/malloc.3 b/man3/malloc.3
index 0ada87a92..b26a1955e 100644
--- a/man3/malloc.3
+++ b/man3/malloc.3
@@ -1,6 +1,6 @@
 '\" t
 .\" Copyright (c) 1993 by Thomas Koenig (ig25@rz.uni-karlsruhe.de)
-.\" and Copyright i2007, 2012, 2018, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" and Copyright 2007, 2012, 2018, Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" SPDX-License-Identifier: Linux-man-pages-copyleft
 .\"
-- 
2.40.1

