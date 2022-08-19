Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBE8059A61C
	for <lists+linux-man@lfdr.de>; Fri, 19 Aug 2022 21:17:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350472AbiHSTKj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Aug 2022 15:10:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351374AbiHSTK2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Aug 2022 15:10:28 -0400
X-Greylist: delayed 3102 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 19 Aug 2022 12:10:27 PDT
Received: from 3.mo552.mail-out.ovh.net (3.mo552.mail-out.ovh.net [178.33.254.192])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDF818981B
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 12:10:27 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.188])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 3B85325941;
        Fri, 19 Aug 2022 19:10:26 +0000 (UTC)
Received: from jwilk.net (37.59.142.100) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.9; Fri, 19 Aug
 2022 21:10:25 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-100R0036d956c5d-daf8-44e9-80f5-4103e5ec46aa,
                    504186192CBDCCB46C37AA7B8534EBBC1F215137) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.242
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 10/10] tcp.7: tfix
Date:   Fri, 19 Aug 2022 21:08:59 +0200
Message-ID: <20220819190859.6248-10-jwilk@jwilk.net>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220819190859.6248-1-jwilk@jwilk.net>
References: <20220819190859.6248-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.100]
X-ClientProxiedBy: DAG7EX2.mxp6.local (172.16.2.62) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: dd16ccb1-817b-47bf-a9f6-eb06ddfa4917
X-Ovh-Tracer-Id: 16150471216293795808
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeiuddgudefjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgjfhgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepieetheevtdffvddvkeegveeujeekheegteelvdehgfdtueejfffhleduveeuueevnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutddtnecuvehluhhsthgvrhfuihiivgepgeenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehhedv
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man7/tcp.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/tcp.7 b/man7/tcp.7
index a4c467fcd..61b55db66 100644
--- a/man7/tcp.7
+++ b/man7/tcp.7
@@ -1284,7 +1284,7 @@ to solicit a cookie.
 .IP
 If a cookie is available,
 .BR connect (2)
-would return 0 immediately but the SYN transmission is defered.
+would return 0 immediately but the SYN transmission is deferred.
 A subsequent
 .BR write (2)
 or
-- 
2.37.2

