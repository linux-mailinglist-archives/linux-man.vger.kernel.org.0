Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3CE4656E6C
	for <lists+linux-man@lfdr.de>; Tue, 27 Dec 2022 20:50:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229692AbiL0Tub (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Dec 2022 14:50:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbiL0Tua (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Dec 2022 14:50:30 -0500
X-Greylist: delayed 397 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 27 Dec 2022 11:50:27 PST
Received: from mail.ljabl.com (mail.ljabl.com [IPv6:2a01:4f8:173:2dd8::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E11A31A5
        for <linux-man@vger.kernel.org>; Tue, 27 Dec 2022 11:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
        t=1672170228;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=DtDaNbz73wj2cSKK4pTFytnimdVVsxgzhbPAKusTaB4=;
        b=PzMDHvl9icN844r5ljnqcoFzxX8LNqX/k+y/1UcLBIPbmVTzRIzFZzZFQSFLaYqMRvlUK3
        MqtSWkCln21q/F2xkeXhpswCfoBIZHf7QPsjID8kpb2wlTZt2IxWOAXUtvUYSP7SdFkVnB
        7w2NA2pz1sTm/9ZXBjxnY3UR2MwjKeg=
Received: by ljabl.com (OpenSMTPD) with ESMTPSA id f425998c (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Tue, 27 Dec 2022 19:43:46 +0000 (UTC)
Received: from localhost (beryllium [local])
        by beryllium (OpenSMTPD) with ESMTPA id 0fd6be13;
        Tue, 27 Dec 2022 20:43:43 +0100 (CET)
Date:   Tue, 27 Dec 2022 19:43:41 +0000
From:   Lennart Jablonka <humm@ljabl.com>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org
Subject: [PATCH man-pages] charsets.7: tfix
Message-ID: <Y6tK7Tlgsetp3Geo@beryllium>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Lennart Jablonka <humm@ljabl.com>
---
 man7/charsets.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/charsets.7 b/man7/charsets.7
index 3e46ab9cd..cedf58ed5 100644
--- a/man7/charsets.7
+++ b/man7/charsets.7
@@ -46,7 +46,7 @@ in their low (7-bit) half, invisible control characters in positions
 128 to 159, and 96 fixed-width graphics in positions 160\(en255.
 .PP
 Of these, the most important is ISO 8859-1
-("Latin Alphabet No .1" / Latin-1).
+("Latin Alphabet No. 1" / Latin-1).
 It was widely adopted and supported by different systems,
 and is gradually being replaced with Unicode.
 The ISO 8859-1 characters are also the first 256 characters of Unicode.
-- 
2.39.0


-- 
Lennart
