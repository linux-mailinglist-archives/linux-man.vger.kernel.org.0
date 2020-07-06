Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 698392151CE
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 06:39:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726478AbgGFEjU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 00:39:20 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:59837 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726001AbgGFEjT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 00:39:19 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.173])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 7900D4392967;
        Mon,  6 Jul 2020 06:39:18 +0200 (CEST)
Received: from jwilk.net (37.59.142.95) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3; Mon, 6 Jul 2020
 06:39:17 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-95G0013855c6aa-24c2-4801-a094-1d9d2f39135e,46907DD7FEC5841C66EC7F8F4BE39465BDB61822) smtp.auth=jwilk@jwilk.net
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 3/3] Changes.old: tfix
Date:   Mon, 6 Jul 2020 06:39:07 +0200
Message-ID: <20200706043907.9667-3-jwilk@jwilk.net>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200706043907.9667-1-jwilk@jwilk.net>
References: <20200706043907.9667-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.95]
X-ClientProxiedBy: DAG8EX2.mxp6.local (172.16.2.72) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 8ff8ab07-b0a1-43e8-8bbb-d53764363d24
X-Ovh-Tracer-Id: 12319033833623377885
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedruddvgdekgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffojghfggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedtheduheekudeltdehledukeehjeeiudeggfdvhfehleelueehhfefffeitdeiieenucffohhmrghinhepohhpvghnqdhsthgurdhorhhgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 Changes.old | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Changes.old b/Changes.old
index 43b0cc844..0e67fe3c8 100644
--- a/Changes.old
+++ b/Changes.old
@@ -41677,7 +41677,7 @@ core.5
 locale.5
     Marko Myllynen
         Adjust LC_IDENTIFICATION / abbreviation
-            Tiny tweak to locale.5 based on the on ISO/IEC TR 14652:
+            Tiny tweak to locale.5 based on ISO/IEC TR 14652:
 
             http://www.open-std.org/jtc1/SC22/WG20/docs/n972-14652ft.pdf
     Marko Myllynen
-- 
2.27.0

