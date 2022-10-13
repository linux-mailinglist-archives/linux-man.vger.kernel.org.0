Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CD1A5FE15B
	for <lists+linux-man@lfdr.de>; Thu, 13 Oct 2022 20:36:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232042AbiJMSf7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Oct 2022 14:35:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232067AbiJMSf1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Oct 2022 14:35:27 -0400
Received: from smtp.gentoo.org (dev.gentoo.org [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F22C190E49
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 11:31:51 -0700 (PDT)
From:   Sam James <sam@gentoo.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Sam James <sam@gentoo.org>
Subject: [PATCH v2 2/2] feature_test_macros.7: document _TIME_BITS
Date:   Thu, 13 Oct 2022 19:30:18 +0100
Message-Id: <20221013183018.472463-2-sam@gentoo.org>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221013183018.472463-1-sam@gentoo.org>
References: <20221013183018.472463-1-sam@gentoo.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reference: https://wiki.gentoo.org/wiki/Project:Toolchain/time64_migration
Reference: https://sourceware.org/pipermail/libc-alpha/2022-January/134985.html
Signed-off-by: Sam James <sam@gentoo.org>
---
 man7/feature_test_macros.7 | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
index cdd962f7f..d33041001 100644
--- a/man7/feature_test_macros.7
+++ b/man7/feature_test_macros.7
@@ -412,6 +412,15 @@ large files with only a recompilation being required.)
 64-bit systems naturally permit file sizes greater than 2 Gigabytes,
 and on those systems this macro has no effect.
 .TP
+.B _TIME_BITS
+Defining this macro with the value 64
+changes the width of
+.BR time_t (3type)
+to 64-bit which allows handling of timestamps beyond
+2038. It is closely related to
+.B _FILE_OFFSET_BITS
+and depending on implementation, may require it set.
+.TP
 .BR _BSD_SOURCE " (deprecated since glibc 2.20)"
 Defining this macro with any value causes header files to expose
 BSD-derived definitions.
@@ -854,6 +863,10 @@ main(int argc, char *argv[])
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

