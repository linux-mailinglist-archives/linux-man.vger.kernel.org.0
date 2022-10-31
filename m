Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5BB26139BD
	for <lists+linux-man@lfdr.de>; Mon, 31 Oct 2022 16:14:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230408AbiJaPOO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 11:14:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230244AbiJaPON (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 11:14:13 -0400
Received: from smtpout3.mo529.mail-out.ovh.net (smtpout3.mo529.mail-out.ovh.net [46.105.54.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4909F1114D
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 08:14:12 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.102])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id ACD2813874DA5;
        Mon, 31 Oct 2022 15:56:16 +0100 (CET)
Received: from jwilk.net (37.59.142.99) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.12; Mon, 31 Oct
 2022 15:56:14 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-99G003ed1d472a-cdb7-441d-b13e-ea783b765c33,
                    6E91F404A412C14E40D820F458A81D4F50603626) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.50
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 2/2] man-pages.7: tfix
Date:   Mon, 31 Oct 2022 15:56:05 +0100
Message-ID: <20221031145605.9948-2-jwilk@jwilk.net>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221031145605.9948-1-jwilk@jwilk.net>
References: <20221031145605.9948-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.99]
X-ClientProxiedBy: DAG7EX2.mxp6.local (172.16.2.62) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 876fc2be-b7cb-4bb6-bc75-29890001184b
X-Ovh-Tracer-Id: 16289519853843044320
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvgedrudefgdejtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgjfhgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepieetheevtdffvddvkeegveeujeekheegteelvdehgfdtueejfffhleduveeuueevnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrdelleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomhdprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehvdelpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man7/man-pages.7 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 73c0522d1..2244b6d85 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -634,14 +634,14 @@ macro.
 An example is this "Tagged paragraphs" subsection is itself.
 .TP
 Ordered lists
-Elements are preceeded by a number in parentheses (1), (2).
+Elements are preceded by a number in parentheses (1), (2).
 These represent a set of steps that have an order.
 .IP
 When there are substeps,
 they will be numbered like (4.2).
 .TP
 Positional lists
-Elements are preceeded by a number (index) in square brackets [4], [5].
+Elements are preceded by a number (index) in square brackets [4], [5].
 These represent fields in a set.
 The first index will be:
 .IP
@@ -660,11 +660,11 @@ to be consistent with tools like
 .RE
 .TP
 Alternatives list
-Elements are preceeded by a letter in parentheses (a), (b).
+Elements are preceded by a letter in parentheses (a), (b).
 These represent a set of (normally) exclusive alternatives.
 .TP
 Bullet lists
-Elements are preceeded by bullet symbols
+Elements are preceded by bullet symbols
 .RB ( \e(bu ).
 Anything that doesn't fit elsewhere is
 usually covered by this type of list.
-- 
2.37.2

