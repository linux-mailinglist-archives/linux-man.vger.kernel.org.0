Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA98C59A552
	for <lists+linux-man@lfdr.de>; Fri, 19 Aug 2022 20:39:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350052AbiHSScx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Aug 2022 14:32:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349790AbiHSScw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Aug 2022 14:32:52 -0400
X-Greylist: delayed 495 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 19 Aug 2022 11:32:50 PDT
Received: from smtpout3.mo529.mail-out.ovh.net (smtpout3.mo529.mail-out.ovh.net [46.105.54.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C38FC9261
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 11:32:50 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.62])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 33AE411F3538A;
        Fri, 19 Aug 2022 20:24:34 +0200 (CEST)
Received: from jwilk.net (37.59.142.101) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.9; Fri, 19 Aug
 2022 20:24:33 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-101G0042f3169d4-f347-484a-8919-605b54873159,
                    504186192CBDCCB46C37AA7B8534EBBC1F215137) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.96
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] build-src.mk: Fix appending -Wstrict-prototypes
Date:   Fri, 19 Aug 2022 20:24:31 +0200
Message-ID: <20220819182431.1612-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: dc055757-3602-43b1-b800-87cb04b03b58
X-Ovh-Tracer-Id: 15375852077997742048
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeiuddguddvjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepfefhteffhfffheetudefvdefheffgfduleejheeiteeihfefffejveeljeevheeinecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehvdel
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
 lib/build-src.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/build-src.mk b/lib/build-src.mk
index 502b8c531..ab3c741d9 100644
--- a/lib/build-src.mk
+++ b/lib/build-src.mk
@@ -21,7 +21,7 @@ CPPFLAGS         := $(DEFAULT_CPPFLAGS) $(EXTRA_CPPFLAGS)
 DEFAULT_CFLAGS := -std=gnu17
 DEFAULT_CFLAGS += -Wall
 DEFAULT_CFLAGS += -Wextra
-DEAFULT_CFLAGS += -Wstrict-prototypes
+DEFAULT_CFLAGS += -Wstrict-prototypes
 DEFAULT_CFLAGS += -Werror
 DEFAULT_CFLAGS += -Wno-error=unused-parameter
 DEFAULT_CFLAGS += -Wno-error=sign-compare
-- 
2.37.2

