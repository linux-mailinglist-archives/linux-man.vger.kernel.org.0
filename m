Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 114F36B137B
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 22:02:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229545AbjCHVCP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 16:02:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229892AbjCHVCN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 16:02:13 -0500
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EABEEBAECC
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 13:02:11 -0800 (PST)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout02.posteo.de (Postfix) with ESMTPS id 2C27D2406FF
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 22:02:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1678309330; bh=rpkMj/YNMw6hT67vPDIMUnrgdZMTckBtarY41uiSeuk=;
        h=From:To:Cc:Subject:Date:From;
        b=A12W2vPtjhVrw3iyMNaOwrQpw5JUMdVZn8XgHoWTE3vdnguOEiFo+/EvTgrjgjPaT
         jgyZ0ppuio2QcFLV8KNF3k3+KcXMhDSeghD57IB95VVh4BW3tkl0BicFoI+0UY7sAl
         nC3QU2t8mt/stEFhcPd5w8K5Z9GIEKwFVVGfz1OBk6iEW/zYdq3Hfbg9JVenjw1xrY
         yIj3xL1wo009F6FXNQUB+EktudnU6jW+Vbu67xKqWThKeentYZXGi0htW6B0Pojpcr
         lJ2FfQIl1ryqTjvOrl/Fz+Z4Xe9ZLme9UezqLY+Dsoahg9EB0d+qEZyRGjsackKyyE
         RLw/r6o18Imfg==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4PX4WP3S0wz6tmL;
        Wed,  8 Mar 2023 22:02:09 +0100 (CET)
From:   Tom Schwindl <schwindl@posteo.de>
To:     alx.manpages@gmail.com, alx@kernel.org
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] landlock.7: printf.h.3head: ffix
Date:   Wed,  8 Mar 2023 21:01:11 +0000
Message-Id: <20230308210111.2992-1-schwindl@posteo.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Tom Schwindl <schwindl@posteo.de>
---
 man3head/printf.h.3head | 6 +++---
 man7/landlock.7         | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/man3head/printf.h.3head b/man3head/printf.h.3head
index af743623ba8b..8f1aa6a37e09 100644
--- a/man3head/printf.h.3head
+++ b/man3head/printf.h.3head
@@ -288,9 +288,9 @@ static ssize_t pad_spaces(FILE *stream, size_t pad_len);
 int
 main(void)
 {
-    if (register_printf_specifier(\[aq]b\[aq], b_printf, b_arginf_sz) == -1)
+    if (register_printf_specifier(\[aq]b\[aq], b_printf, b_arginf_sz) == \-1)
         err(EXIT_FAILURE, "register_printf_specifier(\[aq]b\[aq], ...)");
-    if (register_printf_specifier(\[aq]B\[aq], b_printf, b_arginf_sz) == -1)
+    if (register_printf_specifier(\[aq]B\[aq], b_printf, b_arginf_sz) == \-1)
         err(EXIT_FAILURE, "register_printf_specifier(\[aq]B\[aq], ...)");
 
     printf("....----....----....----....----\en");
@@ -410,7 +410,7 @@ b_arginf_sz(const struct printf_info *info, size_t n, int argtypes[n],
             [[maybe_unused]] int size[n])
 {
     if (n < 1)
-        return -1;
+        return \-1;
 
     if (info\->is_long_double)
         argtypes[0] = PA_INT | PA_FLAG_LONG_LONG;
diff --git a/man7/landlock.7 b/man7/landlock.7
index b2bc9e10b0c0..bbe00d4c2793 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -245,7 +245,7 @@ attr.handled_access_fs =
         LANDLOCK_ACCESS_FS_MAKE_SYM;
 
 ruleset_fd = landlock_create_ruleset(&attr, sizeof(attr), 0);
-if (ruleset_fd == -1) {
+if (ruleset_fd == \-1) {
     perror("Failed to create a ruleset");
     exit(EXIT_FAILURE);
 }
@@ -276,7 +276,7 @@ path_beneath.allowed_access =
         LANDLOCK_ACCESS_FS_READ_DIR;
 
 path_beneath.parent_fd = open("/usr", O_PATH | O_CLOEXEC);
-if (path_beneath.parent_fd == -1) {
+if (path_beneath.parent_fd == \-1) {
     perror("Failed to open file");
     close(ruleset_fd);
     exit(EXIT_FAILURE);
-- 
2.39.2

