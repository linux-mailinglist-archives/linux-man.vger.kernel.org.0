Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78499649573
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 18:48:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229918AbiLKRsy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 12:48:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229656AbiLKRsx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 12:48:53 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFC68DF80
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 09:48:51 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id c65-20020a1c3544000000b003cfffd00fc0so3325433wma.1
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 09:48:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pgRWVTLVAjT//9Nj2QRnbWCjfORs2qS7qrLy4C1A0/M=;
        b=Lkfc1WIHzpQ5/MSXhKxJzq1sOXZhnuglR6qcH7p9ECgJ0z8HWrEhxPWtSvv5YgbiQi
         v/tVnsmCmuJiGehxzzkkLuTgNNLYbuPvRFkxPfVkJQUL799CGAuapo8gVtZjh+XkZtkh
         2YvTygO4QOwPAAOXKeTldf9ADzm/68oSoymhKxUkbrt6RCfJMqwDG10scFbCkv11Jj+V
         8R4eDvwK/n/ADtBqpOtunodd8E3PAevWq8bWQGmEyzu1WlhHSM3WwmuBFKAwpgTMNl/3
         EdSxV86cw8R0A5dwLKQBiLM9BgMIqCCcorosUYowwj3B8Kso17fuWjUDWgKSbvTjHTUv
         HPxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pgRWVTLVAjT//9Nj2QRnbWCjfORs2qS7qrLy4C1A0/M=;
        b=eHSexihBm5U9CmdplYVBVRnuLYYPVHR6EWsJrgRglC04fn3keCGGg8zoRgR9mVAUVP
         vVeK0V3wevkfDta2rWGi4EDoEEEtIcofAi5QkrRYMWvaGANbltzac2RrWH76ad64keq6
         aLb1ifSzwofrj1X6HO4bNOTirzQFkHeVSAjZR9T2nKAqVQt3NMWvWQRHrNNK2bu7c1aE
         4YpJSul32brUR51bCxXF0bOs4HBjdPGg6VQIoeCT48XMlM/JRVxaB0ws0B2yUgKw2XT4
         FWm6s2Wt4GwJwU/BuxZsduWSQD68I9MHyvUwsjoic8rlG2IHiYCiq2zoRC1tmYKfRFbq
         qF3A==
X-Gm-Message-State: ANoB5pnA/KkB9283Rcgw/JGTkZQ/w5xsdRm3+E7bpU7yCG2NR6f1ymI3
        2DvOVWR75F8qvX8o89O/MKr5wm/XkQA=
X-Google-Smtp-Source: AA0mqf4M6pGFfApwgXVocpsd0KO3cvv6yV/t6ZPZkdzS1WSCKYfCOCeJ6d4vn4R8ugPhb1SNG9WmuQ==
X-Received: by 2002:a05:600c:1f07:b0:3cf:b3be:e570 with SMTP id bd7-20020a05600c1f0700b003cfb3bee570mr10105757wmb.17.1670780930406;
        Sun, 11 Dec 2022 09:48:50 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id f13-20020a05600c4e8d00b003c70191f267sm6896819wmq.39.2022.12.11.09.48.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Dec 2022 09:48:50 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Luca Versari <veluca93@gmail.com>
Subject: [PATCH] core.5: Clarify that RLIMIT_CORE is ignored when piping.
Date:   Sun, 11 Dec 2022 18:48:11 +0100
Message-Id: <20221211174809.10177-1-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
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

Reported-by: Luca Versari <veluca93@gmail.com>
Closes: <https://bugzilla.kernel.org/show_bug.cgi?id=216648>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man5/core.5 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man5/core.5 b/man5/core.5
index be9753250..a354c5a4f 100644
--- a/man5/core.5
+++ b/man5/core.5
@@ -67,6 +67,9 @@ .SH DESCRIPTION
 .RI ( limit
 in
 .BR csh (1)).
+However,
+.B RLIMIT_CORE
+will be ignored if the system is configured to pipe core dumps to a program.
 .IP \(bu
 The binary being executed by the process does not have read
 permission enabled.
-- 
2.38.1

