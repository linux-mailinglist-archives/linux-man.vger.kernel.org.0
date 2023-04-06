Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB0196D9025
	for <lists+linux-man@lfdr.de>; Thu,  6 Apr 2023 09:07:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235314AbjDFHHr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 Apr 2023 03:07:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235254AbjDFHHp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 Apr 2023 03:07:45 -0400
X-Greylist: delayed 538 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 06 Apr 2023 00:07:04 PDT
Received: from oak.drv.nu (oak.drv.nu [IPv6:2605:2700:0:5::4713:9c1b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A291D9EDA
        for <linux-man@vger.kernel.org>; Thu,  6 Apr 2023 00:07:04 -0700 (PDT)
Received: from hickory.drv.nu (unknown [IPv6:2601:647:4800:5ccb::10e6])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-256) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: daniel@drv.nu)
        by oak.drv.nu (Postfix) with ESMTPSA id DF4F91030EC;
        Wed,  5 Apr 2023 23:58:05 -0700 (PDT)
From:   Daniel Verkamp <daniel@drv.nu>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Daniel Verkamp <daniel@drv.nu>
Subject: [PATCH] stat.3type: tfix
Date:   Wed,  5 Apr 2023 23:58:03 -0700
Message-Id: <20230406065803.3646818-1-daniel@drv.nu>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.0 required=5.0 tests=SPF_HELO_PASS,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Daniel Verkamp <daniel@drv.nu>
---
 man3type/stat.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3type/stat.3type b/man3type/stat.3type
index c511b4337..dd3c0aca5 100644
--- a/man3type/stat.3type
+++ b/man3type/stat.3type
@@ -35,7 +35,7 @@ Standard C library
 .BR "    struct timespec  st_ctim;" "  /* Time of last status change */"
 
 .BR "#define st_atime  st_atim.tv_sec" "  /* Backward compatibility */"
-.B "#define st_mtine  st_mtim.tv_sec"
+.B "#define st_mtime  st_mtim.tv_sec"
 .B "#define st_ctime  st_ctim.tv_sec"
 .B };
 .EE
-- 
2.40.0

