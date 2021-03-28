Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 256F534BF7F
	for <lists+linux-man@lfdr.de>; Sun, 28 Mar 2021 23:56:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231142AbhC1Vzt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 28 Mar 2021 17:55:49 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:59317 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229950AbhC1VzZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 28 Mar 2021 17:55:25 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id BD0E55C00B2;
        Sun, 28 Mar 2021 17:55:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Sun, 28 Mar 2021 17:55:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alyssa.is; h=
        from:to:cc:subject:date:message-id:mime-version
        :content-transfer-encoding; s=fm2; bh=14GwehsjTEN109VHeJPiRMcnZ4
        +mZ7mMNuKhbBtW0ko=; b=DQM3xjRJkz9QQPMYm0eB8r9DbEc6P8XsTJ+zOO5hNB
        vn+8dDZ5A6NSw7zZIBuYoTeqpDdNWu83+r3X8nne8RtPZ70phFVQMgCSlydJuCtn
        TwpSD82fA5ZdbzEGkWEySMGlnQUnFj9EYWKWNlEVRm/GyYv4I/pUIkKvifwAIpXg
        q520t6bAWNUxFZJrzsGUZTxshFg01aaj9H5as30gslevLc+cB/UNdXfT1EsmFWVW
        r8h1cwWYF2pw2k9S9vViUZC/9gjOkEtSNTt/RtEynOuYmTAS1yLLdGw0KjYhmxrs
        qn9H3Aqq4hDc93gqlc3yw/d23eTlIwGqzxFWXfa+WatQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=14GwehsjTEN109VHe
        JPiRMcnZ4+mZ7mMNuKhbBtW0ko=; b=fh7EG6c/1sMaAxR3rzJD8TCghVUGFXpjK
        HcI8Q5V31hgrcs/0ILCifBN8svcO3KdWbXeSZQbg8gW/pYQW0k+X2HgL8eQsvvqS
        Wl5c0VGeUrEARlxTWCGLurQfhU6MVOhWgwMCBgXwecpclBaAbaKAMlXUlgVexz++
        F0DMJ6tB71K2YjNiZjowf0fAVyEg+Av4jSsBuc8n4o9Lp79UbaMfh6Bq2Vs4n4+q
        WTHXqRZ8oC8UHb20sgf66Js5l/dCL2sDqK2pMIA8UlxQtN3wbTwsJSbokKvJHpI6
        O2uSZBbCrCVZQ6u+7VAHsnY43asyqYtZFH44TURdBmUct7an1O5WQ==
X-ME-Sender: <xms:TPtgYOHOT43LRqAwNDKKckHZnFruArAOeAqL5tGP8vv6qdkBTJ3fmg>
    <xme:TPtgYPVXO_yKTT95PF0YoegWzuhKyHQw70lcqa4YAsuEML4HB0zaG4TfKHB_PoYom
    GuiFhPnswqXuIxveA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudehjedgtdegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
    dttdenucfhrhhomheptehlhihsshgrucftohhsshcuoehhihesrghlhihsshgrrdhisheq
    necuggftrfgrthhtvghrnhephedvfffghfetieejgfetfedtgffhvdehueehvdejudfgge
    fgleejgfelfeevgfefnecukfhppeejledrvdefuddrvdegfedrvddtudenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehqhihlihhsshesvghvvg
    drqhihlhhishhsrdhnvght
X-ME-Proxy: <xmx:TPtgYILphjmDMkpgddWnFX3-iygMybFyAG2VFxGfKBKNh2DURKj3qA>
    <xmx:TPtgYIGk9_iw0cMAiv6mIDNpJblF_CzQpBoh9RHlNzjzP5upamF91A>
    <xmx:TPtgYEW1bEBTBCbhd0-963F0d1RHn7HjMnkxYWh0lj0f03QTrwsGtg>
    <xmx:TPtgYNf0gtuhhAa9PGpzo2Ec7BhiDHx-xbEjBmT-bZSrlrJIVdDxpA>
Received: from eve.qyliss.net (p4fe7f3c9.dip0.t-ipconnect.de [79.231.243.201])
        by mail.messagingengine.com (Postfix) with ESMTPA id 788E224005A;
        Sun, 28 Mar 2021 17:55:24 -0400 (EDT)
Received: by eve.qyliss.net (Postfix, from userid 1000)
        id 1B95A108B; Sun, 28 Mar 2021 21:55:23 +0000 (UTC)
From:   Alyssa Ross <hi@alyssa.is>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] scanf.3: clarify that %n supports type modifiers
Date:   Sun, 28 Mar 2021 21:55:09 +0000
Message-Id: <20210328215509.31666-1-hi@alyssa.is>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

My initial reading of this was that type modifiers were probably not
supported.  But they are, and this is actually documented further up,
in the type modifiers documentation.  But to make it clearer, let's
copy the language that printf(3) has in its %n section.

Signed-off-by: Alyssa Ross <hi@alyssa.is>
---
I plan to submit a similar clarification to the glibc documentation.

 man3/scanf.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/scanf.3 b/man3/scanf.3
index f353f1d4d..8c0a1fa84 100644
--- a/man3/scanf.3
+++ b/man3/scanf.3
@@ -513,18 +513,20 @@ circumflex, in) set or when the field width runs out.
 .TP
 .B n
 Nothing is expected; instead, the number of characters consumed thus far
 from the input is stored through the next pointer, which must be a pointer
 to
-.IR int .
+.IR int ,
+or variant whose size matches the (optionally)
+supplied integer length modifier.
 This is
 .I not
 a conversion and does
 .I not
 increase the count returned by the function.
 The assignment can be suppressed with the
 .B *
 assignment-suppression character, but the effect on the
 return value is undefined.
 Therefore
 .B %*n
 conversions should not be used.
-- 
2.30.0

