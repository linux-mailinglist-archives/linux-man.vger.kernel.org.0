Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C63CF5FB025
	for <lists+linux-man@lfdr.de>; Tue, 11 Oct 2022 12:09:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229635AbiJKKJK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Oct 2022 06:09:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229630AbiJKKJK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Oct 2022 06:09:10 -0400
X-Greylist: delayed 11989 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 11 Oct 2022 03:09:08 PDT
Received: from 10.mo548.mail-out.ovh.net (10.mo548.mail-out.ovh.net [46.105.77.235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 943A36745F
        for <linux-man@vger.kernel.org>; Tue, 11 Oct 2022 03:09:08 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.227])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id 2C02D2250F;
        Tue, 11 Oct 2022 06:31:28 +0000 (UTC)
Received: from jwilk.net (37.59.142.103) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.12; Tue, 11 Oct
 2022 08:31:25 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-103G0059d2b53a2-fdf5-49b2-8982-5ea1f4770896,
                    BFFA122BD8CA4C6E4E903379B22456E68B469BCA) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.168
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] Changes: tfix
Date:   Tue, 11 Oct 2022 08:31:18 +0200
Message-ID: <20221011063118.4953-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.103]
X-ClientProxiedBy: DAG7EX1.mxp6.local (172.16.2.61) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 58c62c8f-6b62-4d86-8d98-f21f2bdce6ad
X-Ovh-Tracer-Id: 990791921857386464
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrfeejhedguddtjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepfefhteffhfffheetudefvdefheffgfduleejheeiteeihfefffejveeljeevheeinecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehgeek
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The past participle of "spread" is just "spread".

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 Changes | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Changes b/Changes
index 4c53dcc68..0569022a2 100644
--- a/Changes
+++ b/Changes
@@ -318,7 +318,7 @@ Global changes
 - Man dirs:
 
   - Move definitions of types to separate pages in man2type/ and
-    man3type/.  Previously, they were spreaded (and duplicated) in other
+    man3type/.  Previously, they were spread (and duplicated) in other
     pages, or in system_data_types.7 (with links in man3/).
 
   - Add man3head/ for pages that document header files.
-- 
2.37.2

