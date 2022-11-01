Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDEF0614690
	for <lists+linux-man@lfdr.de>; Tue,  1 Nov 2022 10:25:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230058AbiKAJY7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Nov 2022 05:24:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230038AbiKAJY7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Nov 2022 05:24:59 -0400
X-Greylist: delayed 1637 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 01 Nov 2022 02:24:55 PDT
Received: from mx01.ayax.eu (mx01.ayax.eu [188.137.98.110])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEBE21260A
        for <linux-man@vger.kernel.org>; Tue,  1 Nov 2022 02:24:55 -0700 (PDT)
Received: from [192.168.192.146] (port=48476 helo=nx64de-df6d00)
        by mx01.ayax.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <gszymaszek@short.pl>)
        id 1opn5P-0007hv-Oi; Tue, 01 Nov 2022 09:57:31 +0100
Date:   Tue, 1 Nov 2022 09:57:30 +0100
From:   Grzegorz Szymaszek <gszymaszek@short.pl>
To:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Grzegorz Szymaszek <gszymaszek@short.pl>, linux-man@vger.kernel.org
Subject: [PATCH RESEND] keyrings.7: tfix hexadecimal number prefix
Message-ID: <Y2DfeqJB/gyUUcRQ@nx64de-df6d00>
References: <Ys7DGh/CJ14Kbpie@nx64de-df6d00>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In the DESCRIPTION, where the Permissions column of /proc/keys is
explained, the 0x02 value was written as Ox02. In case one cannot spot
the difference: the first character was letter o (U+004F), while it
should be digit zero (U+0030).

It seems the source tree does not contain any other "Ox" instances
except at the beginning of "Oxford".

Signed-off-by: Grzegorz Szymaszek <gszymaszek@short.pl>
---
 man7/keyrings.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/keyrings.7 b/man7/keyrings.7
index 358905970..bcc9665ce 100644
--- a/man7/keyrings.7
+++ b/man7/keyrings.7
@@ -637,7 +637,7 @@ Within each byte, the permission bits are as follows:
 0x01
 .I view
 .TP
-Ox02
+0x02
 .I read
 .TP
 0x04
-- 
2.35.1
