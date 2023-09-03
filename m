Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56DE6790D3E
	for <lists+linux-man@lfdr.de>; Sun,  3 Sep 2023 19:28:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244890AbjICR2Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 3 Sep 2023 13:28:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231607AbjICR2X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 3 Sep 2023 13:28:23 -0400
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86F4ADD
        for <linux-man@vger.kernel.org>; Sun,  3 Sep 2023 10:28:16 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout01.posteo.de (Postfix) with ESMTPS id D1DA6240027
        for <linux-man@vger.kernel.org>; Sun,  3 Sep 2023 19:28:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1693762093; bh=JnfWqz2Agxb8yUVXF7uEa+Sa2d82zhG9Amil7o/GBLE=;
        h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:
         Content-Transfer-Encoding:From;
        b=kHd1N1rVuyslgKdh5vf9ErOLrswlAmRzTXkI36D9uhxHkyUKYujrsF1tYzfw3tU7E
         Yx2Yp6pT3I+0Ks/Tfhs1Ifl3Mk1jvqdZsmol5FOXdFhSqEKl1zZ/rHkDDKZNommH11
         eSbI5wtEcy3tVFHLVa8Kx29NEnKAEXAdpaH6CXHRmWKsD8Hhp5DcTe2sxAkbVXUzx+
         W6Le8/7JCEfqMrzxIf21YoflCPyuocFkLtZcDMebwtrSD+eTfgr1c+3sn5FQyAcIog
         F43PnlrhhcxuQ9p7qbeP2H8UaGvyCmTmLa6FgdaZ74GxqNTHI4ZOuF+TrpXfxR8zQ+
         ODkityttWZCTw==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4RdzHx1wflz9rxW;
        Sun,  3 Sep 2023 19:28:13 +0200 (CEST)
From:   Tom Schwindl <schwindl@posteo.de>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] ptrdiff_t.3type: fix limits of ptrdiff_t
Date:   Sun,  3 Sep 2023 17:26:45 +0000
Message-ID: <20230903172645.14163-1-schwindl@posteo.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man3type/ptrdiff_t.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3type/ptrdiff_t.3type b/man3type/ptrdiff_t.3type
index 093e630bf711..11bd5c4dc01b 100644
--- a/man3type/ptrdiff_t.3type
+++ b/man3type/ptrdiff_t.3type
@@ -21,7 +21,7 @@ Used for a count of elements, or an array index.
 It is the result of subtracting two pointers.
 It is a signed integer type
 capable of storing values in the range
-.RB [ PTRDIFF_MAX ,
+.RB [ PTRDIFF_MIN ,
 .BR PTRDIFF_MAX ].
 .PP
 The length modifier for
-- 
2.41.0

