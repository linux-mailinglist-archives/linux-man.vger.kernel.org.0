Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BCE461B0D81
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 15:56:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726863AbgDTN4I (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 09:56:08 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:41845 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726608AbgDTN4I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 09:56:08 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.188])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id A138836F3A8C;
        Mon, 20 Apr 2020 15:56:06 +0200 (CEST)
Received: from jwilk.net (37.59.142.100) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Mon, 20 Apr
 2020 15:56:05 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 2/2] adjtimex.2: tfix
Date:   Mon, 20 Apr 2020 15:56:00 +0200
Message-ID: <20200420135600.450-2-jwilk@jwilk.net>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200420135600.450-1-jwilk@jwilk.net>
References: <20200420135600.450-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.100]
X-ClientProxiedBy: DAG2EX2.mxp6.local (172.16.2.12) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 93532ee8-ee20-4932-84c7-fcbe834f7e80
X-Ovh-Tracer-Id: 12246976238992938973
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrgeefgdejtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffojghfggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddttdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/adjtimex.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
index a45dece9f..1722369a1 100644
--- a/man2/adjtimex.2
+++ b/man2/adjtimex.2
@@ -528,7 +528,7 @@ where
 is the system timer interrupt frequency.
 .TP
 .B ENODEV
-The hot-plugable device (like USB for example) represented by a
+The hot-pluggable device (like USB for example) represented by a
 dynamic
 .I clk_id
 has disappeared after its character device was opened.
-- 
2.26.1

