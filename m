Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B7406B1C85
	for <lists+linux-man@lfdr.de>; Thu,  9 Mar 2023 08:40:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229546AbjCIHkH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 02:40:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230061AbjCIHkB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 02:40:01 -0500
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81B1C85A5E
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 23:39:59 -0800 (PST)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout01.posteo.de (Postfix) with ESMTPS id 0186B240196
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 08:39:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1678347598; bh=7IDXjTyj9IxUa7UcCN/OrNR3uIGpkyVAUMNJ11Y+YY0=;
        h=From:To:Cc:Subject:Date:From;
        b=dJeuLI842T9MJ6JBVYezPZdV+qOLbmuMXfjrOdXyROCvASPMKxo03DRLpUbxtNsr8
         mXA6OgqTXV/KtxGFR6syRl9F8ueujeWChOaWTxq9AGM06jlY3DKUhKPLVmVl8j6yHe
         fiS/ZZBBX7pPajMEAZfSIsi7wj8aXBgurhJAztAk3l9Gv2FKTXD7bwrPWtJPfqAmu2
         1tjH9/KQ3+Ps2b51J1OuKk/r6jC6sYCQG6iKqi/CuPWrJuOLtbn1eZSFehY+rStldg
         NBktlOX4mQEN4LK7aF0laN5xBbODDRqACesYh0HM7jqSKHaki5QjQ7lClLF5MKHfvF
         vpvuOIO9xdkAw==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4PXLgK2jQWz6tmF;
        Thu,  9 Mar 2023 08:39:57 +0100 (CET)
From:   Tom Schwindl <schwindl@posteo.de>
To:     alx@kernel.org, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] CONTRIBUTING: tfix
Date:   Thu,  9 Mar 2023 07:39:00 +0000
Message-Id: <20230309073900.11503-1-schwindl@posteo.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Tom Schwindl <schwindl@posteo.de>
---
Hi all,

as I'm not a native speaker, I wonder if the "be" is correct in this context.
I haven't changed it for now because it's likely that it's just me who thinks
that this sounds awkward.

Kind Regards
---
 CONTRIBUTING | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/CONTRIBUTING b/CONTRIBUTING
index 3bb671eca417..45bc86a28a00 100644
--- a/CONTRIBUTING
+++ b/CONTRIBUTING
@@ -14,7 +14,7 @@ Description
            Cc: <linux-man@vger.kernel.org>
 
        Please CC any relevant developers and mailing lists that may know about
-       or be interestend in the discussion.  If your email discusses a feature
+       or be interested in the discussion.  If your email discusses a feature
        or change, and you know which developers added the feature or made the
        change that your email discusses, please CC them on the email; with
        luck they may review and comment on it.  If you don't know who the
-- 
2.39.2

