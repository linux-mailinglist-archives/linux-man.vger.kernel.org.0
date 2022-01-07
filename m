Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30859487AC1
	for <lists+linux-man@lfdr.de>; Fri,  7 Jan 2022 17:53:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240144AbiAGQxK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 11:53:10 -0500
Received: from 5.mo561.mail-out.ovh.net ([87.98.178.36]:58171 "EHLO
        5.mo561.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240137AbiAGQxK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 11:53:10 -0500
X-Greylist: delayed 332 seconds by postgrey-1.27 at vger.kernel.org; Fri, 07 Jan 2022 11:53:10 EST
Received: from player758.ha.ovh.net (unknown [10.108.20.107])
        by mo561.mail-out.ovh.net (Postfix) with ESMTP id 8C00324D7D
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 16:47:36 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player758.ha.ovh.net (Postfix) with ESMTPSA id 483B8261091DC;
        Fri,  7 Jan 2022 16:47:32 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-104R00503360dfc-8ff8-4bd6-b608-9c9398c3096c,
                    378F7200CA80B4250C2E4B9C353773DD9C33FBEE) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From:   Stephen Kitt <steve@sk2.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH 8/9] strtok.3: Enable example analysis, fix declaration
Date:   Fri,  7 Jan 2022 17:46:20 +0100
Message-Id: <20220107164621.275794-8-steve@sk2.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220107164621.275794-1-steve@sk2.org>
References: <20220107164621.275794-1-steve@sk2.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 7973623144282883718
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudegvddgieekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepjeelledvfeeiiedutdefveekgeeuheekkedvffegvdehudegkefgjeejkefgueegnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeehkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

    for (int j = 1, str1 = argv[1]; ...

declares two variables of type int, j and str1; the pre-existing
char * str1 isn't used. This causes compiler warnings. Declaring j
outside the loop fixes everything.

To enable automated source extraction, separate the text following the
code.

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
 man3/strtok.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/strtok.3 b/man3/strtok.3
index aec914094..19d5d9204 100644
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
@@ -280,6 +281,7 @@ main(int argc, char *argv[])
 }
 .EE
 .PP
+.SS Further examples
 Another example program using
 .BR strtok ()
 can be found in
-- 
2.30.2

