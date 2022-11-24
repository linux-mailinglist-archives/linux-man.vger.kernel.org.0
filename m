Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B509C637C84
	for <lists+linux-man@lfdr.de>; Thu, 24 Nov 2022 16:10:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229919AbiKXPKl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Nov 2022 10:10:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbiKXPKk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Nov 2022 10:10:40 -0500
X-Greylist: delayed 151479 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 24 Nov 2022 07:10:39 PST
Received: from 5.mo548.mail-out.ovh.net (5.mo548.mail-out.ovh.net [188.165.49.213])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B8301541AB
        for <linux-man@vger.kernel.org>; Thu, 24 Nov 2022 07:10:39 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.238])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id AB9362301E;
        Thu, 24 Nov 2022 15:10:36 +0000 (UTC)
Received: from jwilk.net (37.59.142.95) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16; Thu, 24 Nov
 2022 16:10:35 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-95G00140d998f1-146d-4e0b-9a13-d30555f12526,
                    52EBBC6FCCF0EF623BBB279D01B7F6A926A75B37) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.86
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] confstr.3: srcfix
Date:   Thu, 24 Nov 2022 16:10:34 +0100
Message-ID: <20221124151034.8060-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.95]
X-ClientProxiedBy: DAG3EX2.mxp6.local (172.16.2.22) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: d67fecba-06d9-4c9e-9ba7-e548651af756
X-Ovh-Tracer-Id: 9902289684662966240
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvgedrieefgdejfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepfefhteffhfffheetudefvdefheffgfduleejheeiteeihfefffejveeljeevheeinecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrdelheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomhdprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehgeekpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

At least on Debian systems, there's no "confstr" in the info directory
node, so the command "info confstr" either fails with:

    info: No menu item 'confstr' in node '(dir)Top'

or shows you this very man page.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man3/confstr.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/confstr.3 b/man3/confstr.3
index 9d3b5d72d..31007e91f 100644
--- a/man3/confstr.3
+++ b/man3/confstr.3
@@ -5,7 +5,7 @@
 .\" Modified Sat Jul 24 19:53:02 1993 by Rik Faith (faith@cs.unc.edu)
 .\"
 .\" FIXME Many more values for 'name' are supported, some of which
-.\" are documented under 'info confstr'.
+.\" are documented under 'info libc confstr'.
 .\" See <bits/confname.h> for the rest.
 .\" These should all be added to this page.
 .\" See also the POSIX.1-2001 specification of confstr()
-- 
2.38.1

