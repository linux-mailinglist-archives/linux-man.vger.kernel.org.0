Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 949D3584FAF
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 13:44:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235654AbiG2LoE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 07:44:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236087AbiG2LoB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 07:44:01 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9817987C28
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:44:00 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id z16so5611054wrh.12
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7lRWTL9WShT4eQ4sfpoBDsQlEMlORrlJqUCwUoZXiO8=;
        b=CTBlHspR4dQENw6A4SV1/I+GX5OXWc2y2QXPWpv5sQjS6HsXdx3uro9zaVTVTfyuG/
         kJYRDufOSk1KEy7EahnjHA0bS0Kh+4Rrcw4YcTRqU+IeUwmD0BlM/W0F/WhHKCslatdP
         oiQQvngNIUJAIujU1yvk1/fGFeE5H9njutgr+t+3ZV94FyIaFQGRGtKfdGsBW4YwqAwD
         zZvNft/HDyu/CZt+aZZkqlyHYFldJoDR6MxJrep9zi/16ULdzXfvaZmRuiiEv4SZxBlg
         DUk5SXL38TDNAqLpFd4o1Ji2d1dJveCg7Vx9aCn0yrbmOQYGkSo6mAX4HOrKwRIZiZx6
         zDew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7lRWTL9WShT4eQ4sfpoBDsQlEMlORrlJqUCwUoZXiO8=;
        b=SYQ4M94VPrGewXBhXm0E6nTjz3Q28WEAKcaTWwvDTGeZ2MepFm+yGEFYDVQGNA3h6e
         WrPTpd0t8dZZ3gBGE6fRPKN2O9j6yAMPN2p30ybLskWIv7zXID/v49rFWJ2/1WaUrDYz
         je1m8XJhNWvvSPNneQRkJzPPxY0ZzbqlOGPbHThxsNR9Y6PlXrxWlfJD9ygbLFuYcbHI
         beXH3Dfx+UCNCJSdCI/FFquupheOcbG1l+Ms9APnQAFtj33Go0/wROYYrRs3YisRZLyV
         SC3P/4StfA5iMNCpCR7LfIcR1QBTYlw+lr7S9epgS9vnimOI0k51zYFrGLAqP4oNcTSC
         dmgg==
X-Gm-Message-State: ACgBeo0TfuZXQaUOCBW58ITEVzGMo8w3CMlN4+88WHemGfDAnx6ZzK+a
        I7FzhAB4mfzxZptl2zPwmv2TJqW/9kA=
X-Google-Smtp-Source: AA6agR5E0uEPJMHAqE7li94PkKZFOESrQREMvvzrlA4DR+xmxIfxWkLCfI657ThkX6nrFrQC5Fc2FA==
X-Received: by 2002:adf:fe81:0:b0:21b:88ea:6981 with SMTP id l1-20020adffe81000000b0021b88ea6981mr2257640wrr.616.1659095038928;
        Fri, 29 Jul 2022 04:43:58 -0700 (PDT)
Received: from localhost (internet-185-112-167-45.cznet.cz. [185.112.167.45])
        by smtp.gmail.com with ESMTPSA id l2-20020a05600c4f0200b003a310fe1d75sm9746841wmq.38.2022.07.29.04.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jul 2022 04:43:58 -0700 (PDT)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH 2/6] mremap.2: wfix
Date:   Fri, 29 Jul 2022 13:45:02 +0200
Message-Id: <20220729114506.1669153-2-stepnem@gmail.com>
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
 man2/mremap.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/mremap.2 b/man2/mremap.2
index fa48037de5d6..e2a252be190c 100644
--- a/man2/mremap.2
+++ b/man2/mremap.2
@@ -311,7 +311,7 @@ Such an implementation can be cheaper (and simpler)
 than conventional garbage collection techniques that involve
 marking pages with protection
 .B PROT_NONE
-in conjunction with the of a
+in conjunction with the use of a
 .B SIGSEGV
 handler to catch accesses to those pages.
 .SH BUGS
-- 
2.37.1

