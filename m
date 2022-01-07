Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C1C1487B4F
	for <lists+linux-man@lfdr.de>; Fri,  7 Jan 2022 18:23:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348528AbiAGRXM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 12:23:12 -0500
Received: from 14.mo581.mail-out.ovh.net ([178.33.251.19]:46637 "EHLO
        14.mo581.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348550AbiAGRXK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 12:23:10 -0500
Received: from player758.ha.ovh.net (unknown [10.108.4.215])
        by mo581.mail-out.ovh.net (Postfix) with ESMTP id 3B1FD24DBD
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 16:47:14 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player758.ha.ovh.net (Postfix) with ESMTPSA id AE8242610916B;
        Fri,  7 Jan 2022 16:47:09 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-104R005a01ab0bf-4fdc-4cf9-8c3e-256c4059d633,
                    378F7200CA80B4250C2E4B9C353773DD9C33FBEE) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From:   Stephen Kitt <steve@sk2.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH 3/9] inet.3: Switch to _DEFAULT_SOURCE in the example
Date:   Fri,  7 Jan 2022 17:46:15 +0100
Message-Id: <20220107164621.275794-3-steve@sk2.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220107164621.275794-1-steve@sk2.org>
References: <20220107164621.275794-1-steve@sk2.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 7967430694935627398
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudegvddgieekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepjeelledvfeeiiedutdefveekgeeuheekkedvffegvdehudegkefgjeejkefgueegnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeehkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

_BSD_SOURCE has been obsolete for long enough that it seems reasonable
to update the example program to use _DEFAULT_SOURCE instead.

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
 man3/inet.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/inet.3 b/man3/inet.3
index 657fe45e0..47d3ba160 100644
--- a/man3/inet.3
+++ b/man3/inet.3
@@ -305,7 +305,7 @@ Here are some example runs:
 .SS Program source
 \&
 .EX
-#define _BSD_SOURCE
+#define _DEFAULT_SOURCE
 #include <arpa/inet.h>
 #include <stdio.h>
 #include <stdlib.h>
-- 
2.30.2

