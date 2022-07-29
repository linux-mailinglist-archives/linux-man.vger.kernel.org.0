Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB5F2584FB3
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 13:44:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236093AbiG2LoH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 07:44:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235897AbiG2LoF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 07:44:05 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E70B687C33
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:44:03 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id v3so4742774wrp.0
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Cmo7nCEmvY64bry/+MkUGwvJ/ok9iO6mb29ssgTrJkk=;
        b=RahhmRZ+qaN6pBN8oqgpPy/K2b6hJnbuGpQLzTABonssq87SpfX54uHmYgECTr9Q8k
         CZq6ez55/+wkDIWWA75FgeOoqbrXLVY2DqCSjtmhACZovm3xNuLOQz80cYwzNWJttjrr
         BoUMOAam7jXvGx5PoElVUr+mECTB5zG9TP62ZMpN5jTcqP5L07zDMzRPzmcyPykG4afn
         yRBEfSHNOCdQw4fh5w/ZSX+XOhF7HiYcIWKRSdv6vdTs47Rd+Pz41uvsemL0xy3dohH9
         3ei05KxRfGtqBAxMCfSM1ly0UCvQUOv169u23VZcMhxRL9eGWKdchgw5buj9OoBPZ8Cq
         XYzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Cmo7nCEmvY64bry/+MkUGwvJ/ok9iO6mb29ssgTrJkk=;
        b=ijl8rUlPiNFhprCAUqSIG8LVOW0N84nkFWf7KzxwBoquAD1lM8MhrSX29Ggjyo1Rv5
         LTBSqd70LiSa2Ft4PLipEh6xbg1h30SBQhSD7yNL1NpqYiyKPfYAVBwv6IQ1HuVn/Rj8
         9ho89NszmB+fgNSb1O1ZIuMKdJ+TF73vOaAAwlVl47gXV8DCis2Ob/RT/4I+rbVOn3Yo
         5aWLfBvHNICYrv95MGmgWixfoIQf5th0XUgKjUcr4Kxenba+u00zQIoukijwYu3+69In
         ud9o2YDW18vBcs8+oQPkxfbxR9Y50Fr1kfMk16jHvfwUyvzZvfCE7sBu0IgatYMB0Z8/
         vcpw==
X-Gm-Message-State: ACgBeo0u8vRxIdnj3XDuwGbzUxFWWLCkZ7BLFpVa2EvHXoVLtsVEMG/N
        Qdsi9095XqFnu4lnlabuGtjZ+UtVTEQ=
X-Google-Smtp-Source: AA6agR4G7e9SrGKPgiQbXIgh4t/WBcKIUDe9T6FGMixcw9Bqjx44jxwC7Ji5u3X3ZIFWACXlItPlBA==
X-Received: by 2002:a05:6000:156b:b0:21d:9daf:3cdb with SMTP id 11-20020a056000156b00b0021d9daf3cdbmr2177410wrz.492.1659095042293;
        Fri, 29 Jul 2022 04:44:02 -0700 (PDT)
Received: from localhost (internet-185-112-167-45.cznet.cz. [185.112.167.45])
        by smtp.gmail.com with ESMTPSA id t18-20020a05600c199200b003a3278d5cafsm9362395wmq.28.2022.07.29.04.44.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jul 2022 04:44:02 -0700 (PDT)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH 5/6] sigaction.2: tfix
Date:   Fri, 29 Jul 2022 13:45:05 +0200
Message-Id: <20220729114506.1669153-5-stepnem@gmail.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Štěpán Němec <stepnem@gmail.com>
---
 man2/sigaction.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/sigaction.2 b/man2/sigaction.2
index 8ba3c9f4cdde..a68b0a6317f2 100644
--- a/man2/sigaction.2
+++ b/man2/sigaction.2
@@ -112,7 +112,7 @@ Some further details of the purpose of this field can be found in
 .I sa_handler
 specifies the action to be associated with
 .I signum
-and is be one of the following:
+and can be one of the following:
 .IP * 2
 .B SIG_DFL
 for the default action.
-- 
2.37.1

