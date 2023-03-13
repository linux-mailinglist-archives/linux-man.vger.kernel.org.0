Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15EC96B6DB6
	for <lists+linux-man@lfdr.de>; Mon, 13 Mar 2023 04:01:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229835AbjCMDBB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Mar 2023 23:01:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229919AbjCMDAy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Mar 2023 23:00:54 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 544C926C23
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 20:00:48 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id ay8so1661627wmb.1
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 20:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678676447;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Dx88E2tFlaVDPObY4TnsddacZ0PVCCJISel2+zWhONQ=;
        b=j5/Vec/wLSIG2CpySB4m8aKj/xxoFuKmOWwdnAeZab/9bwYeh33N9q6VgP/vQ41Hsl
         0aJ4+iH4HKTUTFkgZByl2Ezyyy5ixW1/Ds5J2AcdnE0rELOpQN3EdB2eW+I4rWVPnl3l
         k4gGGBzI6KmYVm2j6KnHJ3vK6aQpO3jss0VFlhXF1/jaUNyG8XyKH+zGEJoB9HhMt8uL
         uqry/Al6OuTluv4qux4ngQrUZu4CqA050btQAVSqJvIwrteDj/U56PUyKnsu6h6Lhvy9
         qkSO2HRnpejsGtwvDsLiR2busnv7Oz+4ce0PbsXfVoKrNTsKLq9YCqv4dAXwLbZf1FWc
         9bEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678676447;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dx88E2tFlaVDPObY4TnsddacZ0PVCCJISel2+zWhONQ=;
        b=dqFVyaHG5fSE9bB1MrXVBsvuiqa9vGOJfX17gjxxS0833TkTo0CY6O+JxGXU2SKpob
         djeEuCPfwpAF/KcSuHm3iYBh/ZqbkDehmXbtC3c1NuhJt4gYkOfITOr4zYFhiWPIxkdG
         fmDXju7oGFmkJMwZGID8EPJz/jrtX8+5Isy7WE0SmZf6UloB2CYNxq19uAfFuobXhOmi
         uTKCBVUikDeQByMsba6gEUMrGi8SHKgZso+Cw4urcyFeZGeTBrVGAOloAtdvEUoR6NkS
         5W4Ltq1C8NgjMNRcu9UrxYM1ji5PvJ6QDK5YgVuAGVZWF9xfAG5Fnx4SJ0dlh9zmkKKt
         78sw==
X-Gm-Message-State: AO0yUKXfLC7NXypSkBgSsrzsjdG+4VUVQWf1IGLvKsd8xRPZHxuFfvfC
        rBVsInFqA8gRCBPOMxbrJPPoSMDQ1wU=
X-Google-Smtp-Source: AK7set8mK6WzuLBLS1VcVCEcCj0I4s57W4uasmWcC3RzaphnK6JQptyDgD4ipUJZ7C0WZCOkY+w8Xw==
X-Received: by 2002:a05:600c:5107:b0:3df:e1e9:201d with SMTP id o7-20020a05600c510700b003dfe1e9201dmr9006495wms.40.1678676446727;
        Sun, 12 Mar 2023 20:00:46 -0700 (PDT)
Received: from dj3ntoo (222.sub-72-110-0.myvzw.com. [72.110.0.222])
        by smtp.gmail.com with ESMTPSA id n14-20020a05600c4f8e00b003eb0d6f48f3sm8123424wmq.27.2023.03.12.20.00.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 20:00:46 -0700 (PDT)
Date:   Sun, 12 Mar 2023 22:00:41 -0500
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] standards.7: ffix
Message-ID: <ZA6R2ToENfuo+n2U@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
        linux-man@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fix indentation of the LFS entry.

Signed-off-by: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
---
 man7/standards.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/standards.7 b/man7/standards.7
index 54dd2eb30..82b8ac4ff 100644
--- a/man7/standards.7
+++ b/man7/standards.7
@@ -101,7 +101,7 @@ Available online at
 .B C11
 This revision of the C language standard was ratified by ISO in 2011
 .RI ( "ISO/IEC 9899:2011" ).
-.IP
+.TP
 .B LFS
 The Large File Summit specification, completed in 1996.
 This specification defined mechanisms that allowed 32-bit systems
-- 
2.39.2

