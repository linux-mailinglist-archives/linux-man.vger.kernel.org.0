Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A15532FACC0
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 22:36:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389544AbhARVfC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 16:35:02 -0500
Received: from 7.mo52.mail-out.ovh.net ([188.165.59.253]:38043 "EHLO
        7.mo52.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389495AbhARKE5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 05:04:57 -0500
X-Greylist: delayed 3313 seconds by postgrey-1.27 at vger.kernel.org; Mon, 18 Jan 2021 05:04:56 EST
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.5])
        by mo52.mail-out.ovh.net (Postfix) with ESMTPS id 8E1FF235AEA;
        Mon, 18 Jan 2021 10:08:41 +0100 (CET)
Received: from jwilk.net (37.59.142.101) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Mon, 18 Jan
 2021 10:08:33 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-101G00497c909e1-2fa5-406c-a213-2e8aaadea133,
                    30D6792FA97DA8DABAA366C5D1D6D327A489FDAC) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.73
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 1/2] cacheflush.2: tfix
Date:   Mon, 18 Jan 2021 10:08:10 +0100
Message-ID: <20210118090811.6495-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG2EX1.mxp6.local (172.16.2.11) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 629623a8-39eb-42e6-a85c-1cdedc7f6e72
X-Ovh-Tracer-Id: 5771644401510438877
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrtdekgddtudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvheejjeffjeejvdekheehjeeilefhffdtudetfeehueekueeivdduheevheefhfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/cacheflush.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/cacheflush.2 b/man2/cacheflush.2
index 12be4c94a..44fc064a8 100644
--- a/man2/cacheflush.2
+++ b/man2/cacheflush.2
@@ -27,7 +27,7 @@
 cacheflush \- flush contents of instruction and/or data cache
 .SH SYNOPSIS
 .nf
-.B #inlcude <sys/cachectl.h>
+.B #include <sys/cachectl.h>
 .PP
 .BI "int cacheflush(void *" addr ", int "nbytes ", int "cache );
 .fi
-- 
2.30.0

