Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A358617BC12
	for <lists+linux-man@lfdr.de>; Fri,  6 Mar 2020 12:48:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726300AbgCFLsa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Mar 2020 06:48:30 -0500
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:54203 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726185AbgCFLsa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Mar 2020 06:48:30 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.214])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 680422509EC9;
        Fri,  6 Mar 2020 12:41:09 +0100 (CET)
Received: from jwilk.net (37.59.142.95) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Fri, 6 Mar 2020
 12:41:08 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 3/3] socket.7: tfix
Date:   Fri, 6 Mar 2020 12:41:04 +0100
Message-ID: <20200306114104.1179-3-jwilk@jwilk.net>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306114104.1179-1-jwilk@jwilk.net>
References: <20200306114104.1179-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.95]
X-ClientProxiedBy: DAG8EX2.mxp6.local (172.16.2.72) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 905d636f-d4a7-4a59-9296-1f8db2c1d2c5
X-Ovh-Tracer-Id: 3951064248769173469
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudduvddgfeegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgjfhgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man7/socket.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/socket.7 b/man7/socket.7
index aadbe6ab5..7f309cb8e 100644
--- a/man7/socket.7
+++ b/man7/socket.7
@@ -887,7 +887,7 @@ event is returned.
 .\" It does not affect wake up.
 .IP
 Background: this option was added when waking up on an error condition
-occurred occured only via the
+occurred only via the
 .IR readfds
 and
 .IR writefds
-- 
2.25.1

