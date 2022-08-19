Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15F6759A6B8
	for <lists+linux-man@lfdr.de>; Fri, 19 Aug 2022 21:51:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351438AbiHSTrP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Aug 2022 15:47:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349248AbiHSTrO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Aug 2022 15:47:14 -0400
X-Greylist: delayed 1805 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 19 Aug 2022 12:47:09 PDT
Received: from 2.mo548.mail-out.ovh.net (2.mo548.mail-out.ovh.net [178.33.255.19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92207D5EBB
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 12:47:09 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.246])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id A0BE0226A8;
        Fri, 19 Aug 2022 19:09:31 +0000 (UTC)
Received: from jwilk.net (37.59.142.107) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.9; Fri, 19 Aug
 2022 21:09:30 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-107S0011ec2eab5-da3d-454b-8370-65f490831930,
                    504186192CBDCCB46C37AA7B8534EBBC1F215137) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.242
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 06/10] itimerspec.3type: tfix
Date:   Fri, 19 Aug 2022 21:08:55 +0200
Message-ID: <20220819190859.6248-6-jwilk@jwilk.net>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220819190859.6248-1-jwilk@jwilk.net>
References: <20220819190859.6248-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.107]
X-ClientProxiedBy: DAG2EX1.mxp6.local (172.16.2.11) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: ca9f9cdd-81c5-4760-a111-a06631198b3a
X-Ovh-Tracer-Id: 16134990091536947168
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeiuddgudefjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgjfhgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepieetheevtdffvddvkeegveeujeekheegteelvdehgfdtueejfffhleduveeuueevnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdejnecuvehluhhsthgvrhfuihiivgepgeenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehgeek
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
 man3type/itimerspec.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3type/itimerspec.3type b/man3type/itimerspec.3type
index 4ededad52..4ae0470cd 100644
--- a/man3type/itimerspec.3type
+++ b/man3type/itimerspec.3type
@@ -5,7 +5,7 @@
 .\"
 .TH itimerspec 3type 2022-08-01 Linux "Linux Programmer's Manual"
 .SH NAME
-timespec \- interval for a timer with nanosecond precission
+timespec \- interval for a timer with nanosecond precision
 .SH LIBRARY
 Standard C library
 .RI ( libc )
-- 
2.37.2

