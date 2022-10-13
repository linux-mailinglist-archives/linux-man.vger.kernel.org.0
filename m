Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8D745FE39D
	for <lists+linux-man@lfdr.de>; Thu, 13 Oct 2022 22:59:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229912AbiJMU7E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Oct 2022 16:59:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229744AbiJMU7D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Oct 2022 16:59:03 -0400
Received: from smtp.gentoo.org (mail.gentoo.org [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0DD9183E28
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 13:59:02 -0700 (PDT)
From:   Sam James <sam@gentoo.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Sam James <sam@gentoo.org>
Subject: [PATCH v3 2/2] feature_test_macros.7: document _TIME_BITS (time64)
Date:   Thu, 13 Oct 2022 21:58:52 +0100
Message-Id: <20221013205852.1551042-2-sam@gentoo.org>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221013205852.1551042-1-sam@gentoo.org>
References: <20221013205852.1551042-1-sam@gentoo.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Some notes:
* glibc is the only libc I'm aware of implementing _TIME_BITS for time64
compatibility. It was introduced in glibc-2.34;

* musl libc made a hard switch in 1.2.0, see https://musl.libc.org/time64.html;

* Using _TIME_BITS=64 with glibc requires _FILE_OFFSET_BITS=64 (which is used
for Large File Support)! Extraordinary claims require (some) evidence, so see
https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/unix/sysv/linux/features-time64.h;h=84d56ee3ff2ecfa0d2499385623f30606f84a1bf.

Reference: https://wiki.gentoo.org/wiki/Project:Toolchain/time64_migration
Reference: https://sourceware.org/pipermail/libc-alpha/2022-January/134985.html
Signed-off-by: Sam James <sam@gentoo.org>
---
 man7/feature_test_macros.7 | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
index cdd962f7f..bcd6e6ae9 100644
--- a/man7/feature_test_macros.7
+++ b/man7/feature_test_macros.7
@@ -412,6 +412,17 @@ large files with only a recompilation being required.)
 64-bit systems naturally permit file sizes greater than 2 Gigabytes,
 and on those systems this macro has no effect.
 .TP
+.B _TIME_BITS
+Defining this macro with the value 64
+changes the width of
+.BR time_t (3type)
+to 64-bit which allows handling of timestamps beyond
+2038.
+It is closely related to
+.B _FILE_OFFSET_BITS
+and depending on implementation, may require it set.
+This macro is available as of glibc 2.34.
+.TP
 .BR _BSD_SOURCE " (deprecated since glibc 2.20)"
 Defining this macro with any value causes header files to expose
 BSD-derived definitions.
@@ -854,6 +865,10 @@ main(int argc, char *argv[])
     printf("_FILE_OFFSET_BITS defined: %d\en", _FILE_OFFSET_BITS);
 #endif
 
+#ifdef _TIME_BITS
+    printf("_TIME_BITS defined: %d\en", _TIME_BITS);
+#endif
+
 #ifdef _BSD_SOURCE
     printf("_BSD_SOURCE defined\en");
 #endif
-- 
2.38.0

