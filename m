Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49E734E3D5A
	for <lists+linux-man@lfdr.de>; Tue, 22 Mar 2022 12:18:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230414AbiCVLTl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Mar 2022 07:19:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232248AbiCVLTl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Mar 2022 07:19:41 -0400
X-Greylist: delayed 44359 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 22 Mar 2022 04:18:11 PDT
Received: from 6.mo583.mail-out.ovh.net (6.mo583.mail-out.ovh.net [178.32.119.138])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9476265E
        for <linux-man@vger.kernel.org>; Tue, 22 Mar 2022 04:18:10 -0700 (PDT)
Received: from player687.ha.ovh.net (unknown [10.108.20.147])
        by mo583.mail-out.ovh.net (Postfix) with ESMTP id E6F0723583
        for <linux-man@vger.kernel.org>; Mon, 21 Mar 2022 22:19:59 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player687.ha.ovh.net (Postfix) with ESMTPSA id 7DF4B28983EFA;
        Mon, 21 Mar 2022 22:19:56 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-102R0041ffaae2b-d940-4380-a7c0-c0b0a001cd07,
                    CCCDC7AEB5B7C884DF136FD1C89BCC615DD660A7) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From:   Stephen Kitt <steve@sk2.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH] trig: fix variable use in formulas
Date:   Mon, 21 Mar 2022 23:19:35 +0100
Message-Id: <20220321221935.177256-1-steve@sk2.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 18018620635763803782
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvvddrudegfedgudeiudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefuthgvphhhvghnucfmihhtthcuoehsthgvvhgvsehskhdvrdhorhhgqeenucggtffrrghtthgvrhhnpeetgedugfelkeeikeetgeegteevfeeufeetuefgudeiiedthfehtdeffeekvdeffeenucfkpheptddrtddrtddrtddpkedvrdeihedrvdehrddvtddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehplhgrhigvrheikeejrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshhtvghvvgesshhkvddrohhrghdpnhgspghrtghpthhtohepuddprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The cacosh, catan, and catanh man pages include examples using a
non-existant f2 variable. Replacing the f2 references with f fixes the
examples.

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
 man3/cacosh.3 | 2 +-
 man3/catan.3  | 2 +-
 man3/catanh.3 | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/man3/cacosh.3 b/man3/cacosh.3
index 079a59c5c..2ab7c56b1 100644
--- a/man3/cacosh.3
+++ b/man3/cacosh.3
@@ -81,7 +81,7 @@ main(int argc, char *argv[])
     printf("cacosh() = %6.3f %6.3f*i\en", creal(c), cimag(c));
 
     f = 2 * clog(csqrt((z + 1)/2) + csqrt((z \- 1)/2));
-    printf("formula  = %6.3f %6.3f*i\en", creal(f2), cimag(f2));
+    printf("formula  = %6.3f %6.3f*i\en", creal(f), cimag(f));
 
     exit(EXIT_SUCCESS);
 }
diff --git a/man3/catan.3 b/man3/catan.3
index f410dd303..d28f84b20 100644
--- a/man3/catan.3
+++ b/man3/catan.3
@@ -79,7 +79,7 @@ main(int argc, char *argv[])
     printf("catan() = %6.3f %6.3f*i\en", creal(c), cimag(c));
 
     f = (clog(1 + i * z) \- clog(1 \- i * z)) / (2 * i);
-    printf("formula = %6.3f %6.3f*i\en", creal(f2), cimag(f2));
+    printf("formula = %6.3f %6.3f*i\en", creal(f), cimag(f));
 
     exit(EXIT_SUCCESS);
 }
diff --git a/man3/catanh.3 b/man3/catanh.3
index 47d4f17f1..8ef81d998 100644
--- a/man3/catanh.3
+++ b/man3/catanh.3
@@ -80,7 +80,7 @@ main(int argc, char *argv[])
     printf("catanh() = %6.3f %6.3f*i\en", creal(c), cimag(c));
 
     f = 0.5 * (clog(1 + z) \- clog(1 \- z));
-    printf("formula  = %6.3f %6.3f*i\en", creal(f2), cimag(f2));
+    printf("formula  = %6.3f %6.3f*i\en", creal(f), cimag(f));
 
     exit(EXIT_SUCCESS);
 }

base-commit: b7c97d642a4ea5629412a9542d1bef351dc2571d
-- 
2.30.2

