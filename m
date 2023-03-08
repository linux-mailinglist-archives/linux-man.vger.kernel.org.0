Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A37E6B0225
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 09:57:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229687AbjCHI52 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 03:57:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229629AbjCHI51 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 03:57:27 -0500
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84369867E7
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 00:57:24 -0800 (PST)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout01.posteo.de (Postfix) with ESMTPS id E6FF12405EC
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 09:57:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1678265842; bh=jlvdKYlf0FM9iKtm9xYeuw6zW3pQd1F+W25OunP3nTA=;
        h=From:To:Cc:Subject:Date:From;
        b=TYN3ftEnf1+2dDiuHoJroNfpv3dyF2Gmz47bZIPrL8N7ZhcKD9pAKF8IbXwu2p232
         oUkWEzVT2AIcRvObOFpCel92zM0I5AnPJl6amc9Knilh4Aw46aVhNBO0OJCIP6zjH1
         ERNtCRVjZQx0esu+Ge13mPDUmP8YpsxrgLzDH9PgYTTO2Jm5a6xt1ymdYlyOZIDsDA
         0UggFE6Xjz4Aox7aBQjifdhWnThqKwt4NCoiMcA3pFz1fLyvwvINtu67/OgP/VGszo
         341oWP4hkv0lY9byoD21ZV1oyAURwRwSeEFZvm7APGF62PDENVRO8PzvE8jomdSWKR
         dn0pmT1ZiKXaQ==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4PWmR63c3lz9rxH;
        Wed,  8 Mar 2023 09:57:22 +0100 (CET)
From:   Tom Schwindl <schwindl@posteo.de>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] landlock.7: ffix
Date:   Wed,  8 Mar 2023 08:56:23 +0000
Message-Id: <20230308085623.2942-1-schwindl@posteo.de>
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
 man7/landlock.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

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

