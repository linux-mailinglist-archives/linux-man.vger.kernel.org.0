Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1514F6D22CE
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 16:43:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232094AbjCaOnf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 10:43:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232027AbjCaOne (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 10:43:34 -0400
X-Greylist: delayed 514 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 31 Mar 2023 07:43:32 PDT
Received: from cventin.lip.ens-lyon.fr (cventin.lip.ens-lyon.fr [140.77.13.17])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09F77B452
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 07:43:32 -0700 (PDT)
Received: from vlefevre by cventin.lip.ens-lyon.fr with local (Exim 4.96)
        (envelope-from <vlefevre@cventin.lip.ens-lyon.fr>)
        id 1piFq7-00FJSE-2W;
        Fri, 31 Mar 2023 16:34:51 +0200
From:   Vincent Lefevre <vincent@vinc17.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Cc:     Vincent Lefevre <vincent@vinc17.net>
Subject: [PATCH] printf.3: Fix wording for the 0 flag with given precision
Date:   Fri, 31 Mar 2023 16:33:32 +0200
Message-Id: <20230331143332.3649621-1-vincent@vinc17.net>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.3 required=5.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
        SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

When a precision is given, the 0 flag is ignored only for integer
conversions, not for all numeric conversions.

Signed-off-by: Vincent Lefevre <vincent@vinc17.net>
---
 man3/printf.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/printf.3 b/man3/printf.3
index 790ebf4d8..b90a71293 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -324,7 +324,7 @@ and
 flags both appear, the
 .B \&0
 flag is ignored.
-If a precision is given with a numeric conversion
+If a precision is given with an integer conversion
 .RB ( d ,
 .BR i ,
 .BR o ,
-- 
2.40.0

