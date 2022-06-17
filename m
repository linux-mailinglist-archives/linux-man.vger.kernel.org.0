Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 516B054F76E
	for <lists+linux-man@lfdr.de>; Fri, 17 Jun 2022 14:23:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236185AbiFQMXf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jun 2022 08:23:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382256AbiFQMXe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jun 2022 08:23:34 -0400
Received: from h3.fbrelay.privateemail.com (h3.fbrelay.privateemail.com [131.153.2.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23384377FC
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 05:23:34 -0700 (PDT)
Received: from MTA-12-3.privateemail.com (mta-12-1.privateemail.com [198.54.122.106])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by h3.fbrelay.privateemail.com (Postfix) with ESMTPS id 2F6E2180126C
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 08:23:33 -0400 (EDT)
Received: from mta-12.privateemail.com (localhost [127.0.0.1])
        by mta-12.privateemail.com (Postfix) with ESMTP id 1C83518000A3;
        Fri, 17 Jun 2022 08:23:32 -0400 (EDT)
Received: from warhead.local (unknown [10.20.151.173])
        by mta-12.privateemail.com (Postfix) with ESMTPA id B36C718000A0;
        Fri, 17 Jun 2022 08:23:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mebeim.net; s=default;
        t=1655468612; bh=fiEyDEv222sn9MMnpwxa5nRC9Rbn7/MTLxWpg0JR2GU=;
        h=From:To:Cc:Subject:Date:From;
        b=0JDp82BfJqVq4LSW40n7o6QzzVznsY1Zw6jBBPhe+Yy3cfsP5vk8QE3jKfh/3/gTL
         rohBh2yThmnmwQdhdUs7JgB/w0B80qGuMn20f++TOm0PHoec89Eg5NywWy+00y3Sze
         dncwL+PR9Pb6PdpCfpdZjUqOEHLYqG8fZxItVm2tYK/HX8EWrNDRWKv9WFbhrhOUIg
         fTj7bYqK9UNjPsVc9DMzCcMn3xt2q13z/dJ3QwYn8Q7xt4ydtrzAWElx2s1iIJTOCG
         JficLO/Ba3QZfP1kcsB7IN7RsSvrJoQcQE1yUvC+omf913+jAlCpcXh2ONwul7M2n3
         PY8wRONJCgY9A==
From:   Marco Bonelli <marco@mebeim.net>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Marco Bonelli <marco@mebeim.net>
Subject: [PATCH] proc.5: Document KPF_PGTABLE for /proc/kpageflags
Date:   Fri, 17 Jun 2022 14:22:44 +0200
Message-Id: <20220617122244.3402528-1-marco@mebeim.net>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

KPG_PGTABLE (bit 26) was introduced in Linux v4.18 (commit
1d40a5ea01d53251c23c7be541d3f4a656cfc537).

Signed-off-by: Marco Bonelli <marco@mebeim.net>
---
 man5/proc.5 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man5/proc.5 b/man5/proc.5
index 7ceb6d5..1115101 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -3358,6 +3358,8 @@ The bits are as follows:
 .\" KPF_ZERO_PAGE: commit 56873f43abdcd574b25105867a990f067747b2f4
     25 - KPF_IDLE           (since Linux 4.3)
 .\" KPF_IDLE: commit f074a8f49eb87cde95ac9d040ad5e7ea4f029738
+    26 - KPF_PGTABLE        (since Linux 4.18)
+.\" KPF_PGTABLE: commit 1d40a5ea01d53251c23c7be541d3f4a656cfc537
 .IP
 For further details on the meanings of these bits,
 see the kernel source file
-- 
2.30.2

