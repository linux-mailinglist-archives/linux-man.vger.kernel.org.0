Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7E902151CD
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 06:39:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725892AbgGFEjQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 00:39:16 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:34643 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726001AbgGFEjP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 00:39:15 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.84])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 78A07439295F;
        Mon,  6 Jul 2020 06:39:14 +0200 (CEST)
Received: from jwilk.net (37.59.142.100) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3; Mon, 6 Jul 2020
 06:39:13 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-100R003cd5a4ac3-c968-46ab-b930-70f20de2039a,46907DD7FEC5841C66EC7F8F4BE39465BDB61822) smtp.auth=jwilk@jwilk.net
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 2/3] termios.3: tfix
Date:   Mon, 6 Jul 2020 06:39:06 +0200
Message-ID: <20200706043907.9667-2-jwilk@jwilk.net>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200706043907.9667-1-jwilk@jwilk.net>
References: <20200706043907.9667-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.100]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 05a45305-353e-45d3-a71a-443be2b37d83
X-Ovh-Tracer-Id: 12317907933940668381
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedruddvgdekgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffojghfggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeulefftddufefggeehjeetgfevvdeljeehheegkedtkeetfeetgfffueetudffkeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddttdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man3/termios.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/termios.3 b/man3/termios.3
index b05f13a1b..e80db9e26 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -860,7 +860,7 @@ transmits a continuous stream of zero-valued bits for a specific
 duration, if the terminal is using asynchronous serial data
 transmission.
 If \fIduration\fP is zero, it transmits zero-valued bits
-for at least 0.25 seconds, and not more that 0.5 seconds.
+for at least 0.25 seconds, and not more than 0.5 seconds.
 If \fIduration\fP is not zero, it sends zero-valued bits for some
 implementation-defined length of time.
 .PP
-- 
2.27.0

