Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E99DF65CA7C
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 00:45:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230321AbjACXpv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Jan 2023 18:45:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbjACXpu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Jan 2023 18:45:50 -0500
Received: from todd.t-8ch.de (todd.t-8ch.de [159.69.126.157])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 761F9278
        for <linux-man@vger.kernel.org>; Tue,  3 Jan 2023 15:45:48 -0800 (PST)
From:   =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
        s=mail; t=1672789546;
        bh=nKi2pD1phuQhF3ncCevMLIPh6NXdYxK2TnAbTpcwoXc=;
        h=From:To:Cc:Subject:Date:From;
        b=ihsQ+xF91GoiD12Z1qILmm94czxdzM5Qk2944IoNcd7ceEbEvMDD3dxY7wAnuhvI/
         TnNTHqiFQw2azPIeet/yj5n0fsaRRjT6hwXRBd9+9/sImr6VCkzG2tt4+hdE8deWSI
         4S4fyM4KuK/1J9Xs43RdwTi2Chw0rXw8EB+OAyx4=
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
Subject: [PATCH] timespec.3type: tfix: use correct name for nanosecond field
Date:   Tue,  3 Jan 2023 23:45:34 +0000
Message-Id: <20230103234534.48591-1-linux@weissschuh.net>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The field is correctly called "tv_nsec" as it is also used in other
places in the manpage.

Signed-off-by: Thomas Weißschuh <linux@weissschuh.net>
---
 man3type/timespec.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3type/timespec.3type b/man3type/timespec.3type
index fdddcc778d6c..7cd80ce8669b 100644
--- a/man3type/timespec.3type
+++ b/man3type/timespec.3type
@@ -16,7 +16,7 @@ Standard C library
 .PP
 .B struct timespec {
 .BR "    time_t  tv_sec;" "   /* Seconds */"
-.BR "    long    tv_usec;" "  /* Nanoseconds [" 0 ", " 999999999 "] */"
+.BR "    long    tv_nsec;" "  /* Nanoseconds [" 0 ", " 999999999 "] */"
 .B };
 .EE
 .SH DESCRIPTION

base-commit: 7474e450de3dc6c2b96fadd3271b1643b4f094a6
-- 
2.39.0

