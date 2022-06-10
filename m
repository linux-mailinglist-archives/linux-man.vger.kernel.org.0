Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C646754649C
	for <lists+linux-man@lfdr.de>; Fri, 10 Jun 2022 12:52:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346799AbiFJKwf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Jun 2022 06:52:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349170AbiFJKwN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Jun 2022 06:52:13 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 232702FE609
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 03:48:45 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id h5so36025905wrb.0
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 03:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CcBexq7OzJiI7MnDPspRwJLxaU4yRCtZBoyC6i5xFUs=;
        b=SLCYGl7sEz3WZPwtTfN/jVJJCl3zHGvcw+pCaXRrUJZiP1ji62AOtX7uht7OBZU2Mm
         ub9ZsduDAZpmPc19Z9cjYGQDBqKxMhsGaAO92jJGuDNAS4XBgRk1jSkdGmHXff+cLxxu
         0y89kUGSDDKrLvghxNcsJAQeofytefvEwcWZsuu6PVNjaP5RWb0u1Mv8oXR1XC0nzYeq
         ltDRCSN3/LRFxAnCAXIjkA5bU29Fdxvi2L2+r4+zKxJIwaIa1Cs3JeLH+zxEC6Qgmr+b
         IPgADBfmfB73Cjs75IfoTNIDkWkyCinw2YaMKH8mM5we2s/ljo3a5S8ftDGvNz4zUMxZ
         CePw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CcBexq7OzJiI7MnDPspRwJLxaU4yRCtZBoyC6i5xFUs=;
        b=HNDHnUD3Vg/P8I20a1OXZ7bZE07q08UpKGDbX7kFrx5wMjb5tSJqkmNwieBGx5ZpZu
         P79Pl5f05OImxZReC30SlBZex8Q+ENMpPNCPzOf40kMCSwC7Mz9DBKiF41Qz/1qrUaJg
         m+a53v99cP5lRMD/R5E5f5TAgVM0U6LHgSJBhN7OurwqAPtSUwdhf/wfyYFrI9ub1td2
         rypDMT6zX1UeKZE2PeNxTZdfPMy22yt1JTueY0TxBxoaD29dweqjJk80AJPpstd+GO9g
         HU5QAmuhIFID5bsFL0rwml8EQcpPJZM/ySMoOLi9rOO3A2TUg7bNCu2wfmcHwOjYZrkP
         vCFw==
X-Gm-Message-State: AOAM530kvzPuae5DXR+J2+VzppTUbEP53658HVU9QsANqK96/kBBsXLA
        5HtOcZToYHvy7JjKYra/uZeeANCT12KBdQ==
X-Google-Smtp-Source: ABdhPJwfc++LFROPA41YSW63fo0aSCILeIBry5za+t2z+HOx3/3QKeM0e8YzI+DeFhmsN7IDIAbAGA==
X-Received: by 2002:a5d:648e:0:b0:217:d2cb:d6b2 with SMTP id o14-20020a5d648e000000b00217d2cbd6b2mr27709400wri.433.1654858123499;
        Fri, 10 Jun 2022 03:48:43 -0700 (PDT)
Received: from dell7760.alejandro-colomar.es ([62.77.182.181])
        by smtp.googlemail.com with ESMTPSA id e4-20020a5d65c4000000b0020d09f0b766sm26280976wrw.71.2022.06.10.03.48.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 03:48:43 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        Peter Xu <peterx@redhat.com>
Subject: [PATCH] man-pages.7: STYLE GUIDE: Mention UNIX for Beginners
Date:   Fri, 10 Jun 2022 12:51:41 +0200
Message-Id: <20220610105141.16649-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Peter Xu <peterx@redhat.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/man-pages.7 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 547ed660a..4da2dfe5c 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -578,6 +578,11 @@ project.
 For details not covered below, the Chicago Manual of Style
 is usually a good source;
 try also grepping for preexisting usage in the project source tree.
+.PP
+.UR https://www.ualberta.ca/\:computing-science/\:media-library/\:docs/\:unix-beginners.pdf
+UNIX for Beginners [2nd ed., Brian W. Kernighan]
+.UE
+also contains an interesting section on "Hints for Preparing Documents".
 .SS Use of gender-neutral language
 As far as possible, use gender-neutral language in the text of man
 pages.
-- 
2.30.2

