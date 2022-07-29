Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0526584FAD
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 13:44:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236096AbiG2LoD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 07:44:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236078AbiG2LoA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 07:44:00 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E59F87C2D
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:43:59 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id b6so2409896wmq.5
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tgfPSnxKZGdveuo/yKcpkdVRRT0K8RsJywdr/FBY0OY=;
        b=S98xy5/afPZO23QBv/KDgabNo7Xcu4pzMSsdtvBSFBhu32MrJGbWN7ng1rffD7dem8
         jhlNrqfwyp5tCXmMFxiO3rHSdPw5m8lK3S1+FyZk22ax2b6cIMF9beu0ZgeEd+qRuQFb
         z7pjjYpDmBe4TLy1e2fQcuELKVsErd+eodWOGaQ8rnjJ5uQjO+IbQHjxZeqEeSsO7TCx
         EN2XVNBtxxkVMHDaB8XVgSRVUnmQe/RbctHhJVGDztWedZRMEFVCfOBjRQjHAzdhnwRH
         T1zE9VDJBAUwkz4iLvlRMuzqh6HeBg2NKmUvUmI/BfEUqo9+VP+w4saz6gkpZD3dIE69
         SP+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tgfPSnxKZGdveuo/yKcpkdVRRT0K8RsJywdr/FBY0OY=;
        b=sHwIcobjN8vepfHvH9+K5yN4i30nE/G0pERj1tvbK2jPdpaf/aAfv2QH5J6de62jcb
         2iNwB4t3+chVNLBLVmd2HdYa3GCherpo71LS2f9X5TYraTf7MlEkKKk1a6U3sqXFk7n6
         LobmSticKptLBD4aiLY/5mfKLqUlXMP4jP1lKdQKz2VxwhVTZ9Lv4kPIaMQhQPoCHtDO
         H1hOZKyKVCKtystydHAXwuY4hza+WR36ltLO4vH/cTzeaiw/Vvz6qvlng0OMfQw0LjdT
         TMw3KzM/NOtCoPI48v6k1F7Tv+N8mCyX+5OPjku9DpklBC79z48V16GC66/gTA8zHIeu
         A/NA==
X-Gm-Message-State: AJIora937xk2ZAieQ8vXPURdk9D2+IY3HmApfsYnLAf4D0nuOI/oqexF
        tOGZjwvTJAzJwJ6LtERrY4/xJHElWMA=
X-Google-Smtp-Source: AGRyM1vN4oQpDd9M1zAOsOsHw7ponhQb8qx6DewAVOcSWhA+vO3W+RRaxHIN3UCK675JwWsA640Z/g==
X-Received: by 2002:a05:600c:3593:b0:3a3:3a49:41a3 with SMTP id p19-20020a05600c359300b003a33a4941a3mr2604833wmq.166.1659095037931;
        Fri, 29 Jul 2022 04:43:57 -0700 (PDT)
Received: from localhost (internet-185-112-167-45.cznet.cz. [185.112.167.45])
        by smtp.gmail.com with ESMTPSA id ay28-20020a05600c1e1c00b003a3200bc788sm8752242wmb.33.2022.07.29.04.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jul 2022 04:43:57 -0700 (PDT)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH 1/6] getrlimit.2: tfix
Date:   Fri, 29 Jul 2022 13:45:01 +0200
Message-Id: <20220729114506.1669153-1-stepnem@gmail.com>
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
 man2/getrlimit.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/getrlimit.2 b/man2/getrlimit.2
index 6cda4d48a982..bd330289a8fc 100644
--- a/man2/getrlimit.2
+++ b/man2/getrlimit.2
@@ -452,14 +452,14 @@ and
 .PP
 If the
 .I new_limit
-argument is a not NULL, then the
+argument is not NULL, then the
 .I rlimit
 structure to which it points is used to set new values for
 the soft and hard limits for
 .IR resource .
 If the
 .I old_limit
-argument is a not NULL, then a successful call to
+argument is not NULL, then a successful call to
 .BR prlimit ()
 places the previous soft and hard limits for
 .I resource

base-commit: 5fa2ecb53656c9fdcbd5a21972906e3da33cb504
-- 
2.37.1

