Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DB346B0C90
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 16:24:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230431AbjCHPYW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 10:24:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231213AbjCHPYV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 10:24:21 -0500
X-Greylist: delayed 92 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 08 Mar 2023 07:24:18 PST
Received: from alerce.blitiri.com.ar (alerce.blitiri.com.ar [IPv6:2001:bc8:228b:9000::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 796A3149B5
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 07:24:18 -0800 (PST)
Received: from localhost.localdomain
        by sdfg.com.ar (chasquid) with ESMTPSA
        tls TLS_AES_128_GCM_SHA256
        (over submission, TLS-1.3, envelope from "rodrigo@sdfg.com.ar")
        ; Wed, 08 Mar 2023 15:22:48 +0000
From:   Rodrigo Campos <rodrigo@sdfg.com.ar>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
        Rodrigo Campos <rodrigo@sdfg.com.ar>
Subject: [PATCH 1/2] CONTRIBUTING: Fix typo, there is one active maintainer
Date:   Wed,  8 Mar 2023 16:22:18 +0100
Message-Id: <20230308152219.595611-2-rodrigo@sdfg.com.ar>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308152219.595611-1-rodrigo@sdfg.com.ar>
References: <20230308152219.595611-1-rodrigo@sdfg.com.ar>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On commit "CONTRIBUTING, README, lsm: Remove mtk as maintainer"
(06e72cb1) we changed to mail only one maintainer, but the doc still
says "both maintainers".

When submitting a patch, I was confused by that fact and thought Michael
address was missing. But after checking, it seems we just need to send
it to Alejandro, so clarify the text to match that.

Signed-off-by: Rodrigo Campos <rodrigo@sdfg.com.ar>
---
 CONTRIBUTING | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git CONTRIBUTING CONTRIBUTING
index 3b4408108..3bb671eca 100644
--- CONTRIBUTING
+++ CONTRIBUTING
@@ -8,7 +8,7 @@ Description
    Mailing list
        The main discussions regarding development of the project, patches,
        bugs, news, doubts, etc. happen on the mailing list.  To send an email
-       to the project, send it to both maintainers and CC the mailing list:
+       to the project, send it to Alejandro and CC the mailing list:
 
            To: Alejandro Colomar <alx@kernel.org>
            Cc: <linux-man@vger.kernel.org>
-- 
2.39.2

