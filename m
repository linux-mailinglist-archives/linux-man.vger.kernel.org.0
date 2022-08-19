Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D05159A657
	for <lists+linux-man@lfdr.de>; Fri, 19 Aug 2022 21:29:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351349AbiHST2D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Aug 2022 15:28:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351370AbiHST2B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Aug 2022 15:28:01 -0400
Received: from smtpout3.mo529.mail-out.ovh.net (smtpout3.mo529.mail-out.ovh.net [46.105.54.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B99288DE8
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 12:27:57 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.193])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id A3AC111F36A46;
        Fri, 19 Aug 2022 21:09:35 +0200 (CEST)
Received: from jwilk.net (37.59.142.106) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.9; Fri, 19 Aug
 2022 21:09:34 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-106R00601916f06-8a49-4a83-af88-7a9dc21187aa,
                    504186192CBDCCB46C37AA7B8534EBBC1F215137) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.242
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 08/10] tm.3type: tfix
Date:   Fri, 19 Aug 2022 21:08:57 +0200
Message-ID: <20220819190859.6248-8-jwilk@jwilk.net>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220819190859.6248-1-jwilk@jwilk.net>
References: <20220819190859.6248-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG5EX1.mxp6.local (172.16.2.41) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 50669b05-b12d-452c-8c9d-4ba4a0f906ea
X-Ovh-Tracer-Id: 16136115993013901280
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeiuddgudefjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgjfhgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepieetheevtdffvddvkeegveeujeekheegteelvdehgfdtueejfffhleduveeuueevnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehvdel
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
 man3type/tm.3type | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3type/tm.3type b/man3type/tm.3type
index 2cec54736..450bfbfe5 100644
--- a/man3type/tm.3type
+++ b/man3type/tm.3type
@@ -50,7 +50,7 @@ Feature Test Macro Requirements for glibc (see
 Describes time, broken down into distinct components.
 .PP
 .I tm_isdst
-describes wether daylight saving time is in effect at the time described.
+describes whether daylight saving time is in effect at the time described.
 The value is positive if daylight saving time is in effect,
 zero if it is not,
 and negative if the information is not available.
@@ -101,7 +101,7 @@ The
 field provides an alternative (with the opposite sign) for those systems.
 .PP
 .I tm_zone
-points to static storage and may be overriden on subsequent calls to
+points to static storage and may be overridden on subsequent calls to
 .BR localtime (3)
 and similar functions (however, this never happens under glibc).
 .SH SEE ALSO
-- 
2.37.2

