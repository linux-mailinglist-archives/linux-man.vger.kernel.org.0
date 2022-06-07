Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD304541D0A
	for <lists+linux-man@lfdr.de>; Wed,  8 Jun 2022 00:07:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379499AbiFGWHl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Jun 2022 18:07:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383814AbiFGWGd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Jun 2022 18:06:33 -0400
X-Greylist: delayed 721 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 07 Jun 2022 12:17:45 PDT
Received: from h1.fbrelay.privateemail.com (h1.fbrelay.privateemail.com [131.153.2.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D3A0CFE03
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 12:17:44 -0700 (PDT)
Received: from MTA-11-3.privateemail.com (mta-11-1.privateemail.com [198.54.118.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by h1.fbrelay.privateemail.com (Postfix) with ESMTPS id 3015A1803763
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 15:05:43 -0400 (EDT)
Received: from mta-11.privateemail.com (localhost [127.0.0.1])
        by mta-11.privateemail.com (Postfix) with ESMTP id C4A2D18000AC;
        Tue,  7 Jun 2022 15:05:40 -0400 (EDT)
Received: from warhead.local (unknown [10.20.151.191])
        by mta-11.privateemail.com (Postfix) with ESMTPA id 913A118000A3;
        Tue,  7 Jun 2022 15:05:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mebeim.net; s=default;
        t=1654628740; bh=wpEEAvUo27xgEaZgl7yEQSMrYgWkp4fJBwSioHurTMA=;
        h=From:To:Cc:Subject:Date:From;
        b=xT9gDANMnez4lzrlGfME1d0s2sAzEwwrQGql4z1tCb4zTd66axSbMpQdKlxtvNXe2
         F7mBNCjH40wUw5OFz7shkfdCUxsPn+I8m6SZYbT2qK549v+9h6xEbAmzhyPy9Q3ADM
         IwaK/xa4P3FkzA2yD4a3P/MEqwFhD05vYcQhkLxjqRVEsTt408cYBLePfjwNmLIrF2
         /28mWnri6QPiTFO/srH07eQWj99dd8T2f6wSz7m7IUpyhrPbHcfrec71N1ujqw+0A1
         p0Pbtcb77fpC4jLpezGiEAJefsEogRr/ggQrJ7nF2DsuJ7/fqT0w94+nPZBHIWJckF
         T4Pae9qRbA1Ng==
From:   Marco Bonelli <marco@mebeim.net>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Marco Bonelli <marco@mebeim.net>
Subject: [PATCH] proc.5: Document bit 57 for /proc/[pid]/pagemap
Date:   Tue,  7 Jun 2022 21:04:38 +0200
Message-Id: <20220607190437.219724-1-marco@mebeim.net>
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

Bit 57 was introduced in Linux v5.14 to reflect the userfaultfd
write-protect bit (commit fb8e37f35a2fe1f983ac21850e856e2c7498d469).

Signed-off-by: Marco Bonelli <marco@mebeim.net>
---
 man5/proc.5 | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/man5/proc.5 b/man5/proc.5
index c668462..c4b4858 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -1761,10 +1761,14 @@ If set, the page is in swap space
 61 (since Linux 3.5)
 The page is a file-mapped page or a shared anonymous page.
 .TP
-60\(en57 (since Linux 3.11)
+60\(en58 (since Linux 3.11)
 Zero
 .\" Not quite true; see commit 541c237c0923f567c9c4cabb8a81635baadc713f
 .TP
+57 (since Linux 5.14)
+If set, the page is write-protected through
+.BR userfaultfd (2).
+.TP
 56 (since Linux 4.2)
 .\" commit 77bb499bb60f4b79cca7d139c8041662860fcf87
 .\" commit 83b4b0bb635eee2b8e075062e4e008d1bc110ed7
-- 
2.30.2

