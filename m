Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D5AD407245
	for <lists+linux-man@lfdr.de>; Fri, 10 Sep 2021 22:10:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233311AbhIJULt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 16:11:49 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:38763 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232310AbhIJULs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 16:11:48 -0400
X-Greylist: delayed 361 seconds by postgrey-1.27 at vger.kernel.org; Fri, 10 Sep 2021 16:11:48 EDT
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.114])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 1676DBD5AA6A;
        Fri, 10 Sep 2021 22:04:39 +0200 (CEST)
Received: from jwilk.net (37.59.142.104) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Fri, 10 Sep
 2021 22:04:38 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-104R005f461d039-75bb-44fb-813d-45829f5377ce,
                    986461A3A8319992D35CA4C7B8310D2A97693F46) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.89.24
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 3/3] mount_setattr.2: tfix
Date:   Fri, 10 Sep 2021 22:04:29 +0200
Message-ID: <20210910200429.4816-3-jwilk@jwilk.net>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910200429.4816-1-jwilk@jwilk.net>
References: <20210910200429.4816-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.104]
X-ClientProxiedBy: DAG6EX2.mxp6.local (172.16.2.52) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 8074f834-3e14-4028-8e58-f6feb7a1a0ac
X-Ovh-Tracer-Id: 13427200816509147101
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrudeguddgudegfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffojghfggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeulefftddufefggeehjeetgfevvdeljeehheegkedtkeetfeetgfffueetudffkeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtgeenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/mount_setattr.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
index 77233f589..ca56256ce 100644
--- a/man2/mount_setattr.2
+++ b/man2/mount_setattr.2
@@ -986,7 +986,7 @@ main(int argc, char *argv[])
 .\"     because. Because making assumptions about the current working directory
 .\"     of the calling process is just too easy to get wrong; especially when
 .\"     pivot_root() or chroot() are in play.
-.\"     My absolut preference (joke intended) is to open a well-known starting
+.\"     My absolute preference (joke intended) is to open a well-known starting
 .\"     point with an absolute path to get a dirfd and then scope all future
 .\"     operations beneath that dirfd. This already works with old-style
 .\"     openat() and _very_ cautious programming but openat2() and its
-- 
2.33.0

