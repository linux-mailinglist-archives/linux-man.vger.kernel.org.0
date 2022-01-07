Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D365487AE0
	for <lists+linux-man@lfdr.de>; Fri,  7 Jan 2022 18:03:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348413AbiAGRDG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 12:03:06 -0500
Received: from 2.mo576.mail-out.ovh.net ([178.33.251.80]:54525 "EHLO
        2.mo576.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240182AbiAGRDG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 12:03:06 -0500
X-Greylist: delayed 950 seconds by postgrey-1.27 at vger.kernel.org; Fri, 07 Jan 2022 12:03:06 EST
Received: from player758.ha.ovh.net (unknown [10.110.171.238])
        by mo576.mail-out.ovh.net (Postfix) with ESMTP id ED0C52367A
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 16:47:27 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player758.ha.ovh.net (Postfix) with ESMTPSA id 79CCA261091B2;
        Fri,  7 Jan 2022 16:47:23 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-104R005d629a6a2-71cf-495c-ab3f-d43d7e5d516b,
                    378F7200CA80B4250C2E4B9C353773DD9C33FBEE) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From:   Stephen Kitt <steve@sk2.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH 6/9] newlocale.3: Use LC_GLOBAL_LOCALE, not ..._HANDLE
Date:   Fri,  7 Jan 2022 17:46:18 +0100
Message-Id: <20220107164621.275794-6-steve@sk2.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220107164621.275794-1-steve@sk2.org>
References: <20220107164621.275794-1-steve@sk2.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 7971089867856184966
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudegvddgieekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepjeelledvfeeiiedutdefveekgeeuheekkedvffegvdehudegkefgjeejkefgueegnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeehkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

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

