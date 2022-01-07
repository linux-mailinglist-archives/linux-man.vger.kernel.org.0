Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E816487B50
	for <lists+linux-man@lfdr.de>; Fri,  7 Jan 2022 18:23:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348554AbiAGRXP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 12:23:15 -0500
Received: from 5.mo561.mail-out.ovh.net ([87.98.178.36]:57795 "EHLO
        5.mo561.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348550AbiAGRXP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 12:23:15 -0500
Received: from player758.ha.ovh.net (unknown [10.108.16.96])
        by mo561.mail-out.ovh.net (Postfix) with ESMTP id 23F4124CF1
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 16:47:19 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player758.ha.ovh.net (Postfix) with ESMTPSA id 392BD26109188;
        Fri,  7 Jan 2022 16:47:14 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-104R0052c2289e1-7dbf-41d5-badb-6593d8170b69,
                    378F7200CA80B4250C2E4B9C353773DD9C33FBEE) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From:   Stephen Kitt <steve@sk2.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH 4/9] matherr.3: Exclude the example from analysis
Date:   Fri,  7 Jan 2022 17:46:16 +0100
Message-Id: <20220107164621.275794-4-steve@sk2.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220107164621.275794-1-steve@sk2.org>
References: <20220107164621.275794-1-steve@sk2.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 7968838067560023686
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudegvddgieekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepjeelledvfeeiiedutdefveekgeeuheekkedvffegvdehudegkefgjeejkefgueegnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeehkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The example program is obsolete, as indicate in the text, and
shouldn't be analysed. Changing the introductory heading to "Obsolete
program source" excludes it from automated analysis and makes it
hopefully clearer to readers that it is obsolete.

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
 man3/matherr.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/matherr.3 b/man3/matherr.3
index 64bfa482a..e9d77d02c 100644
--- a/man3/matherr.3
+++ b/man3/matherr.3
@@ -376,7 +376,7 @@ matherr SING exception in log() function
 x=12345.000000
 .EE
 .in
-.SS Program source
+.SS Obsolete program source
 \&
 .EX
 #define _SVID_SOURCE
-- 
2.30.2

