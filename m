Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0D62D18F162
	for <lists+linux-man@lfdr.de>; Mon, 23 Mar 2020 10:04:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727647AbgCWJEe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Mar 2020 05:04:34 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:59231 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727587AbgCWJEe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Mar 2020 05:04:34 -0400
X-Greylist: delayed 385 seconds by postgrey-1.27 at vger.kernel.org; Mon, 23 Mar 2020 05:04:33 EDT
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.172])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 883FB2F857BF;
        Mon, 23 Mar 2020 09:58:06 +0100 (CET)
Received: from jwilk.net (37.59.142.98) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Mon, 23 Mar
 2020 09:58:05 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] units.7: tfix
Date:   Mon, 23 Mar 2020 09:57:50 +0100
Message-ID: <20200323085750.5833-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.98]
X-ClientProxiedBy: DAG4EX2.mxp6.local (172.16.2.32) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 45a5f1d4-503f-4bd4-9360-bc675b7aaa66
X-Ovh-Tracer-Id: 8799470725828368349
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudegjedgudduhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Escape hyphens.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man7/units.7 | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/man7/units.7 b/man7/units.7
index 3df0f28c8..e2191a310 100644
--- a/man7/units.7
+++ b/man7/units.7
@@ -35,16 +35,16 @@ Below the standard prefixes.
 .TS
 l l l.
 Prefix	Name	Value
-y	yocto	10^-24 = 0.000000000000000000000001
-z	zepto	10^-21 = 0.000000000000000000001
-a	atto	10^-18 = 0.000000000000000001
-f	femto	10^-15 = 0.000000000000001
-p	pico	10^-12 = 0.000000000001
-n	nano	10^-9  = 0.000000001
-\(mc	micro	10^-6  = 0.000001
-m	milli	10^-3  = 0.001
-c	centi	10^-2  = 0.01
-d	deci	10^-1  = 0.1
+y	yocto	10^\-24 = 0.000000000000000000000001
+z	zepto	10^\-21 = 0.000000000000000000001
+a	atto	10^\-18 = 0.000000000000000001
+f	femto	10^\-15 = 0.000000000000001
+p	pico	10^\-12 = 0.000000000001
+n	nano	10^\-9  = 0.000000001
+\(mc	micro	10^\-6  = 0.000001
+m	milli	10^\-3  = 0.001
+c	centi	10^\-2  = 0.01
+d	deci	10^\-1  = 0.1
 da	deka	10^ 1  = 10
 h	hecto	10^ 2  = 100
 k	kilo	10^ 3  = 1000
-- 
2.26.0.rc2

