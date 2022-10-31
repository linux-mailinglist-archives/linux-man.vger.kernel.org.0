Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BA16613C10
	for <lists+linux-man@lfdr.de>; Mon, 31 Oct 2022 18:23:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231414AbiJaRXG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 13:23:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbiJaRXD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 13:23:03 -0400
X-Greylist: delayed 6535 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 31 Oct 2022 10:23:02 PDT
Received: from 3.mo552.mail-out.ovh.net (3.mo552.mail-out.ovh.net [178.33.254.192])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F29D3F58F
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 10:23:02 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.173])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 7B6B1262AA;
        Mon, 31 Oct 2022 14:56:08 +0000 (UTC)
Received: from jwilk.net (37.59.142.99) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.12; Mon, 31 Oct
 2022 15:56:07 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-99G00323b190c5-c054-4835-aec8-ac9e3ee3d530,
                    6E91F404A412C14E40D820F458A81D4F50603626) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.50
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 1/2] INSTALL: tfix
Date:   Mon, 31 Oct 2022 15:56:04 +0100
Message-ID: <20221031145605.9948-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.99]
X-ClientProxiedBy: DAG4EX2.mxp6.local (172.16.2.32) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 682b92df-ab4f-44b1-833a-f797af6cedc6
X-Ovh-Tracer-Id: 16287268053271959520
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvgedrudefgdejtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepfefhteffhfffheetudefvdefheffgfduleejheeiteeihfefffejveeljeevheeinecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrdelleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomhdprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehhedvpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 INSTALL | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/INSTALL b/INSTALL
index bcaadf763..11b2d8462 100644
--- a/INSTALL
+++ b/INSTALL
@@ -47,7 +47,7 @@ Description
            -  DESTDIR
            -  prefix
 
-       Comand Variables
+       Command Variables
            Some commands use flags.  A command named 'command' will have a
            variable COMMAND to specify an alternative command name.  To append
            flags to the default ones, set the variable EXTRA_COMMANDFLAGS.  To
-- 
2.37.2

