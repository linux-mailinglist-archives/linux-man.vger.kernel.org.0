Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D091D32058E
	for <lists+linux-man@lfdr.de>; Sat, 20 Feb 2021 14:39:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbhBTNj3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Feb 2021 08:39:29 -0500
Received: from 10.mo52.mail-out.ovh.net ([87.98.187.244]:59407 "EHLO
        10.mo52.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbhBTNj3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Feb 2021 08:39:29 -0500
X-Greylist: delayed 599 seconds by postgrey-1.27 at vger.kernel.org; Sat, 20 Feb 2021 08:39:28 EST
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.118])
        by mo52.mail-out.ovh.net (Postfix) with ESMTPS id 76378243E09;
        Sat, 20 Feb 2021 14:22:33 +0100 (CET)
Received: from jwilk.net (37.59.142.100) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2; Sat, 20 Feb
 2021 14:22:32 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-100R003cd6498a6-e5d7-439f-b3fb-ece226e6ad86,
                    8C4BC2ABF3B9514F26E7A1B9F8FE717E502CE9E0) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 94.254.144.56
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] pciconfig_read.2: tfix
Date:   Sat, 20 Feb 2021 14:22:30 +0100
Message-ID: <20210220132230.2537-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.100]
X-ClientProxiedBy: DAG3EX1.mxp6.local (172.16.2.21) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: ced84485-5cfc-4658-8386-d11b68630fc6
X-Ovh-Tracer-Id: 943785598577465309
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrjeekgdegiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvheejjeffjeejvdekheehjeeilefhffdtudetfeehueekueeivdduheevheefhfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddttdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/pciconfig_read.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/pciconfig_read.2 b/man2/pciconfig_read.2
index c379e2d3b..31a4eb879 100644
--- a/man2/pciconfig_read.2
+++ b/man2/pciconfig_read.2
@@ -17,7 +17,7 @@ pciconfig_read, pciconfig_write, pciconfig_iobase \- pci device information hand
 .BI "                   unsigned char *" buf );
 .BI "int pciconfig_write(unsigned long " bus ", unsigned long " dfn ,
 .BI "                   unsigned long " off ", unsigned long " len ,
-.BI "                   unsgined char *" buf );
+.BI "                   unsigned char *" buf );
 .BI "int pciconfig_iobase(int " which ", unsigned long " bus ,
 .BI "                   unsigned long " devfn );
 .fi
-- 
2.30.1

