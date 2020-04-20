Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE7D61B0D80
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 15:56:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726717AbgDTN4G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 09:56:06 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:47981 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726608AbgDTN4G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 09:56:06 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.179])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 9D97B36F3A80;
        Mon, 20 Apr 2020 15:56:04 +0200 (CEST)
Received: from jwilk.net (37.59.142.103) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Mon, 20 Apr
 2020 15:56:03 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 1/2] posix_spawn.3: tfix
Date:   Mon, 20 Apr 2020 15:55:59 +0200
Message-ID: <20200420135600.450-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.103]
X-ClientProxiedBy: DAG6EX2.mxp6.local (172.16.2.52) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 75b0c7ce-8bc4-4518-9688-dbdabb256fac
X-Ovh-Tracer-Id: 12246413287642421213
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrgeefgdeilecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucffohhmrghinheprghushhtihhnghhrohhuphgsuhhgshdrnhgvthenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtfeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man3/posix_spawn.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
index 63168b63e..c21c90f50 100644
--- a/man3/posix_spawn.3
+++ b/man3/posix_spawn.3
@@ -393,7 +393,7 @@ instead of
 .BR fork (2).
 The
 .B _GNU_SOURCE
-feature test macro must be defined to obtain the definition of this contant.
+feature test macro must be defined to obtain the definition of this constant.
 .TP
 .BR POSIX_SPAWN_SETSID " (since glibc 2.26)"
 If this flag is set,
@@ -403,7 +403,7 @@ group in the session (see
 .BR setsid (2)).
 The
 .B _GNU_SOURCE
-feature test macro must be defined to obtain the definition of this contant.
+feature test macro must be defined to obtain the definition of this constant.
 .\" This flag has been accepted in POSIX, see:
 .\" http://austingroupbugs.net/view.php?id=1044
 .\" and has been implemented in glibc since version 2.26
-- 
2.26.1

