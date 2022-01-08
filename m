Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CD16488457
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 16:53:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229747AbiAHPxG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 10:53:06 -0500
Received: from 7.mo576.mail-out.ovh.net ([46.105.50.32]:43141 "EHLO
        7.mo576.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229573AbiAHPxG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 10:53:06 -0500
Received: from player157.ha.ovh.net (unknown [10.108.16.108])
        by mo576.mail-out.ovh.net (Postfix) with ESMTP id 77F2F21F3A
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 15:43:37 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player157.ha.ovh.net (Postfix) with ESMTPSA id 0E753261BA511;
        Sat,  8 Jan 2022 15:43:32 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-101G00414914925-bb20-44af-8d2f-062a3ffbbf2c,
                    E73EBA98AEB195A144C17DE4F959AB65BE9739A6) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From:   Stephen Kitt <steve@sk2.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH 2/5] newlocale.3: Use LC_GLOBAL_LOCALE, not ..._HANDLE
Date:   Sat,  8 Jan 2022 16:43:01 +0100
Message-Id: <20220108154304.1030478-2-steve@sk2.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220108154304.1030478-1-steve@sk2.org>
References: <20220108154304.1030478-1-steve@sk2.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 12765734621014427270
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudeghedgheegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepjeelledvfeeiiedutdefveekgeeuheekkedvffegvdehudegkefgjeejkefgueegnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrudehjedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

LC_GLOBAL_HANDLE has never existed; the locale object handle to use to
refer to the global locale determined by setlocale(3) is
LC_GLOBAL_LOCALE. See uselocale(3) for details.

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
 man3/newlocale.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/newlocale.3 b/man3/newlocale.3
index b5960c4c4..dc9406ede 100644
--- a/man3/newlocale.3
+++ b/man3/newlocale.3
@@ -360,7 +360,7 @@ main(int argc, char *argv[])
 
     /* Free the locale object. */
 
-    uselocale(LC_GLOBAL_HANDLE);    /* So \(aqloc\(aq is no longer in use */
+    uselocale(LC_GLOBAL_LOCALE);    /* So \(aqloc\(aq is no longer in use */
     freelocale(loc);
 
     exit(EXIT_SUCCESS);
-- 
2.30.2

