Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D365759A65E
	for <lists+linux-man@lfdr.de>; Fri, 19 Aug 2022 21:29:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351207AbiHST1G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Aug 2022 15:27:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349705AbiHST1F (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Aug 2022 15:27:05 -0400
X-Greylist: delayed 592 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 19 Aug 2022 12:27:03 PDT
Received: from 9.mo548.mail-out.ovh.net (9.mo548.mail-out.ovh.net [46.105.48.137])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F409181B2F
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 12:27:03 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.193])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id 94738210FA;
        Fri, 19 Aug 2022 19:09:24 +0000 (UTC)
Received: from jwilk.net (37.59.142.103) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.9; Fri, 19 Aug
 2022 21:09:23 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-103G005fb4b967a-f229-4562-8a39-075f13e793d5,
                    504186192CBDCCB46C37AA7B8534EBBC1F215137) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.242
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 05/10] dev_t.3type: tfix
Date:   Fri, 19 Aug 2022 21:08:54 +0200
Message-ID: <20220819190859.6248-5-jwilk@jwilk.net>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220819190859.6248-1-jwilk@jwilk.net>
References: <20220819190859.6248-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.103]
X-ClientProxiedBy: DAG3EX2.mxp6.local (172.16.2.22) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: d70de9a4-6d46-48da-a4ab-766cbc5d9290
X-Ovh-Tracer-Id: 16133019768731391968
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeiuddgudefjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgjfhgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepieetheevtdffvddvkeegveeujeekheegteelvdehgfdtueejfffhleduveeuueevnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdefnecuvehluhhsthgvrhfuihiivgepvdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehgeek
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man3type/dev_t.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3type/dev_t.3type b/man3type/dev_t.3type
index e86aca7dc..5676b6909 100644
--- a/man3type/dev_t.3type
+++ b/man3type/dev_t.3type
@@ -6,7 +6,7 @@
 .\"
 .TH DEV_T 3type 2021-11-02 Linux "Linux Programmer's Manual"
 .SH NAME
-dev_t \- devide ID
+dev_t \- device ID
 .SH LIBRARY
 Standard C library
 .RI ( libc )
-- 
2.37.2

