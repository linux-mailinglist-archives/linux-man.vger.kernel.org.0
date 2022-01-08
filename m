Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50DF848845D
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 17:03:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234460AbiAHQDN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 11:03:13 -0500
Received: from 14.mo583.mail-out.ovh.net ([188.165.51.82]:58803 "EHLO
        14.mo583.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbiAHQDN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 11:03:13 -0500
X-Greylist: delayed 1160 seconds by postgrey-1.27 at vger.kernel.org; Sat, 08 Jan 2022 11:03:12 EST
Received: from player157.ha.ovh.net (unknown [10.108.4.8])
        by mo583.mail-out.ovh.net (Postfix) with ESMTP id 1F11822522
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 15:43:51 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player157.ha.ovh.net (Postfix) with ESMTPSA id AEEF7261BA560;
        Sat,  8 Jan 2022 15:43:46 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-101G0043dd908c0-c605-4608-89a0-44bda8fa657c,
                    E73EBA98AEB195A144C17DE4F959AB65BE9739A6) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From:   Stephen Kitt <steve@sk2.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH 5/5] strtok.3: Fix j/str1 declaration
Date:   Sat,  8 Jan 2022 16:43:04 +0100
Message-Id: <20220108154304.1030478-5-steve@sk2.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220108154304.1030478-1-steve@sk2.org>
References: <20220108154304.1030478-1-steve@sk2.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 12769675270395299462
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudeghedgheegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepjeelledvfeeiiedutdefveekgeeuheekkedvffegvdehudegkefgjeejkefgueegnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrudehjedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

    for (int j = 1, str1 = argv[1]; ...

declares two variables of type int, j and str1; the pre-existing
char * str1 isn't used. This causes compiler warnings. Declaring j
outside the loop fixes everything.

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
 man3/strtok.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/strtok.3 b/man3/strtok.3
index aec914094..06e9688b6 100644
--- a/man3/strtok.3
+++ b/man3/strtok.3
@@ -255,6 +255,7 @@ main(int argc, char *argv[])
 {
     char *str1, *str2, *token, *subtoken;
     char *saveptr1, *saveptr2;
+    int j;
 
     if (argc != 4) {
         fprintf(stderr, "Usage: %s string delim subdelim\en",
@@ -262,7 +263,7 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }
 
-    for (int j = 1, str1 = argv[1]; ; j++, str1 = NULL) {
+    for (j = 1, str1 = argv[1]; ; j++, str1 = NULL) {
         token = strtok_r(str1, argv[2], &saveptr1);
         if (token == NULL)
             break;
-- 
2.30.2

