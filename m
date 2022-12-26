Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EC6B656533
	for <lists+linux-man@lfdr.de>; Mon, 26 Dec 2022 22:50:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232225AbiLZVuS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Dec 2022 16:50:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbiLZVuS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Dec 2022 16:50:18 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5943310D3
        for <linux-man@vger.kernel.org>; Mon, 26 Dec 2022 13:50:17 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id y16so10963547wrm.2
        for <linux-man@vger.kernel.org>; Mon, 26 Dec 2022 13:50:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=khRzsRE0ZczSQII+2ahNAKbRZMpOG93Xs1qghupaXTw=;
        b=Lnl6bHevNbr8l7BIQF/Rrx99D+Nz69NsUOzjQkElBE2iLeLZXWaI/DVyWs/dRcuyPA
         i7ljy6FGgP42J72Nr6jHj12o4C1COKjCzCu4ELEhDpXVNH40VBQH54VADAvD36F4EtUJ
         dvbQdSHeiqCwgbrrRMNd4KUvsz1G/bztuilZxj8fndBJpK2w12JQ0joRhLEPRCXCN7oF
         PnU7KXdMO6kOey5Th6v1fIl3+YQdEtB8AvbG17KbNtS2SDVuuB3IoNdOm8WPWajyMLJM
         cMjILrNqe0pv8XMTWTGZfYYxEChus8P43KVxPrH3Uy9rspy7Jh+nSyiBC0H8Vb1Mm6UQ
         SnaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=khRzsRE0ZczSQII+2ahNAKbRZMpOG93Xs1qghupaXTw=;
        b=J1a+B9DDlr2Ds6V558pPnOFu56iUngb+hIzPtPrqP02LTZJJsi6qb1RPZ9V7pOEssI
         Xvk9KOo522VLaXDeu+9SP8fRipoQFLbNuJO/Brt1n5Ig7Yp8LxovupiNzifo0tK8OMps
         GXTo30ZlgzbM6566+ApwuRvBV5n6AGMd9v1JWPNq1fJUEwJuI0Tqk3cAkNEZlp2lS8GH
         dfK8WEqHz0KwRDwJEFMknboH79JkClIgf0X0VvqJiU0kB7TBhFbIaU9fASo4xkhTtucm
         Z5tX+P0Y8NGY4ee4OL3YOnEyi9fYg8uYwwuHu7bEH4Tu3PM/4Q3+fd5alhpHV6CcutoS
         kHwA==
X-Gm-Message-State: AFqh2kp5dNpd871dpCCxjsxrkqOcZ9vGyrmJZ9ncR1kaUlDz7+T9eBRu
        0Ju6MickjDA37fnPBXV5yqzLkRjHFetnDcWA
X-Google-Smtp-Source: AMrXdXvGOtre3Jd8ClqpcaODmeN2RSSoNED9MmyxhmOgXmj2NIFL2Y7llBTTmR8oXl/a4jOtAej8HA==
X-Received: by 2002:a5d:470f:0:b0:242:56f:7d80 with SMTP id y15-20020a5d470f000000b00242056f7d80mr15349946wrq.57.1672091415930;
        Mon, 26 Dec 2022 13:50:15 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id i23-20020adfaad7000000b002421ce6a275sm11333291wrc.114.2022.12.26.13.50.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Dec 2022 13:50:15 -0800 (PST)
Message-ID: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
Date:   Mon, 26 Dec 2022 21:50:14 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-GB
To:     linux-man <linux-man@vger.kernel.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Subject: [PATCH] Add example to rand.3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro
Please find below a patch.

2022-12-26  Jonathan Grant <jg@jguk.org>
	* man3/rand.3: Add example to rand.3 seed with time(NULL)


From 2d4501354ea6c465173fe6c089dfbcc80393a644 Mon Sep 17 00:00:00 2001
From: Jonathan Grant <jg@jguk.org>
Date: Mon, 26 Dec 2022 21:48:17 +0000
Subject: [PATCH] add rand.3 example

Signed-off-by: Jonathan Grant <jg@jguk.org>
---
 man3/rand.3 | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/man3/rand.3 b/man3/rand.3
index 572471749..c1542fb56 100644
--- a/man3/rand.3
+++ b/man3/rand.3
@@ -164,6 +164,20 @@ when good randomness is needed.
 .BR random (3)
 instead.)
 .SH EXAMPLES
+
+A possibly useful seed value would be by calling
+.BR rand ()
+with the result of
+
+.BR time ()
+as that varies with every call
+
+.EX
+srand((unsigned int)time(NULL));
+.EE
+.in
+.PP
+
 POSIX.1-2001 gives the following example of an implementation of
 .BR rand ()
 and
-- 
2.37.2
