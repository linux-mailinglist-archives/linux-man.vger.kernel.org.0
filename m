Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0FD9584FB0
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 13:44:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235744AbiG2LoE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 07:44:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236093AbiG2LoC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 07:44:02 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6AF587C2E
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:44:01 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id v3so4742662wrp.0
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F6dh/BSMqxQr2XP6znjJw64u/ln4HLhMD7+DKJPi9E8=;
        b=WsYJPKqQtzGcoHhW4DdMnU59SGf1FlgiSeFf+eJLXNqhCoaOgvRDryNMvDyksWp33k
         PFgbDJijIN8QaeyO7oitSMsPoSwT0R8v126WjTTwL8RQAHecTcF03IDKE18S/OYtH552
         /mm342LKCN95Ne5e1riYZzcMu12igyBKfRIJxM6FUeWswn4c4xMClNPpDQ70dYJSpI+l
         TNItkGQHuU/E3OMyLOdo4bTa8isw09y2zumPr6o0aQCX/VfOUlBAqC42H0r68B+kbxOw
         fciVFQUyctWw/aRgGi5uQjNJhl7NRpMJkfMkuU5EMlPvl9+mVUxF5ueqj2IX6tb+kD5P
         Y8rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F6dh/BSMqxQr2XP6znjJw64u/ln4HLhMD7+DKJPi9E8=;
        b=FGvCOZGA5askqsnP3xfW1OQPwn0F2c+OWSk5YzYXJizzRaU7FePotOvWzWbkUQH1r4
         h2hwnOsQm8EpUrNRv5baFm7WHLRxNb1xXxX8OFvKhd1V2TC1NSd7A6dyAcyFCeU5lz9q
         MXy9Txl/1rfVktsMr12/2PybG18IXLRzf+HoVkeMPonnMnFnfwtPvFwrOIEw0l9QeRKu
         4VNDfx9oBaQCv+T4CoVtQckRR4GfI76utdUSFHl0gHKuPrEpd9HfWi4+M7vWd/RUEGeU
         I4HovP1omKyEssrl1raVQeoGRPUrieCSla6g5Fgl+jAWj/63fZF3lrLJo5VB/iBtaFNq
         s8ZA==
X-Gm-Message-State: ACgBeo2pcux5TSNiE3P1WSCjrZXda28SaorEkJv9H+0ug3JihcDQKOeg
        tR0Rgx8AIHwVAilVeCqKKUmFpDNePUs=
X-Google-Smtp-Source: AA6agR7AlKrbqkokTPHaEzofZ6cCRMPJY1hEFIINBjtKKlhN30lrn6it8jsVTJOjauNIHKjDNaqdxg==
X-Received: by 2002:a5d:4344:0:b0:21e:cc0b:5e32 with SMTP id u4-20020a5d4344000000b0021ecc0b5e32mr2177216wrr.171.1659095040040;
        Fri, 29 Jul 2022 04:44:00 -0700 (PDT)
Received: from localhost (internet-185-112-167-45.cznet.cz. [185.112.167.45])
        by smtp.gmail.com with ESMTPSA id p2-20020a05600c1d8200b003a32251c3f9sm9859852wms.5.2022.07.29.04.43.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jul 2022 04:43:59 -0700 (PDT)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH 3/6] syslog.2: tfix
Date:   Fri, 29 Jul 2022 13:45:03 +0200
Message-Id: <20220729114506.1669153-3-stepnem@gmail.com>
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
 man2/syslog.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/syslog.2 b/man2/syslog.2
index 6846eec2729b..1e5ddb38917a 100644
--- a/man2/syslog.2
+++ b/man2/syslog.2
@@ -260,7 +260,7 @@ the hard-coded default value for this field was 4
 .RB ( KERN_WARNING );
 since Linux 2.6.39,
 .\" commit 5af5bcb8d37f99ba415a1adc6da71051b84f93a5
-the default value is a defined by the kernel configuration option
+the default value is defined by the kernel configuration option
 .BR CONFIG_DEFAULT_MESSAGE_LOGLEVEL ,
 which defaults to 4.
 .TP
-- 
2.37.1

