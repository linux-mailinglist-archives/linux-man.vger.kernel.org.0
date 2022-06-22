Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84BAC55516C
	for <lists+linux-man@lfdr.de>; Wed, 22 Jun 2022 18:42:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230376AbiFVQmC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Jun 2022 12:42:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357542AbiFVQmB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Jun 2022 12:42:01 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C62337039
        for <linux-man@vger.kernel.org>; Wed, 22 Jun 2022 09:42:00 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id o8so24247195wro.3
        for <linux-man@vger.kernel.org>; Wed, 22 Jun 2022 09:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6yaS4lHJc3/9gt/sDuoAY5eqmKkR0uTEpGNXIlLiAyQ=;
        b=pxIeAvQqKZirrw6mGZwfsX0pjURN6426YBxHc/e186iSL2eEB7evqfh2kH+J7tXhjW
         WxTKuNbZwmYDezn4Gd+Y1V11HHTxcMLDQy+ywL7RaEaNMar8vtLUohxyU4fvmPgWq2/l
         /D86klK9L732YuEW+Fe1Pe8Ev8vQa3XwaGfTDX18j5d/3dk6IaX8z+vWd1yz8XzDqndj
         AYwpsdx4rsR5CFqaoSONAzy6ftG7Qjfi+6wuzMKiShGcN+xr25dXsPP+CufJF/c4RO4u
         jJq28JdovCZD0NhffLRj/CD4nmVHlMQ2D98F5k0PCgFFCkuxEcaYSM/GiY18Yc/xWKZF
         P5dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6yaS4lHJc3/9gt/sDuoAY5eqmKkR0uTEpGNXIlLiAyQ=;
        b=VMGvuWZ5WMcdDqCxBKLY3GnEVw0ju7KUl9FJwhB+k3QXHLHPJ8aM7ies3sly3kEux6
         LSFpg6ucCOt+QpkUO1cO7DJu+2BqSUCUtx7OhvewPb2tQfOkdwWB4epc4kjXaRNVB4V8
         Oi/RMSH1K+hyy1Mz39RiuDRguD+dnJure07f6+Ssumw6u4xsfb1tTMTui+MoJm+L/5vC
         kunyieA4tfEI1MSFKjGAbkvU71v9On1/jl7F8MPuaAbUe/3nYGMuKHD3Ehlzqge8EWKV
         7Bwepj4aY/FYeIWxFc5jgILuCmmWABYjsTX7a2CSg6EpuTZ4R0u/BJsccA4IuQjTBCXv
         OYSQ==
X-Gm-Message-State: AJIora+QHM/DSiiDTPMgP41tDdiGUME26Dp1G6UDB+7AQ41EJ0wvwMwQ
        /8jzfykSiogHD23NmC0zw4U=
X-Google-Smtp-Source: AGRyM1spwPoZyG/LZvSuQqWZ1CLHMxUCirwWTod29mzuYFPxkDqtvEkeh8aAUD04EnEemYA9ob1xkA==
X-Received: by 2002:adf:ead2:0:b0:21a:7603:7371 with SMTP id o18-20020adfead2000000b0021a76037371mr4087982wrn.560.1655916118939;
        Wed, 22 Jun 2022 09:41:58 -0700 (PDT)
Received: from localhost.localdomain ([77.137.66.49])
        by smtp.gmail.com with ESMTPSA id o12-20020a05600c4fcc00b0039751bb8c62sm26934236wmq.24.2022.06.22.09.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 09:41:58 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 0/2] fanotify man page updates for v5.17
Date:   Wed, 22 Jun 2022 19:41:51 +0300
Message-Id: <20220622164153.2188751-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

These two complementary APIs, FAN_REPORT_TARGET_FID (fanotify_init)
and FAN_RENAME (fanotify_mark) were merged to kernel v5.17.

v2 addresses the few comments you had on v1.

Thanks,
Amir

Changes since v1:
- Rebased on master
- Mention the fix commit of ENOTDIR change in commit message
- Break long line
- Consistent order of FAN_MOVE,FAN_RENAME in man pages

Amir Goldstein (2):
  fanotify.7, fanotify_init.2: Document FAN_REPORT_TARGET_FID
  fanotify.7, fanotify_init.2, fanotify_mark.2: Document FAN_RENAME

 man2/fanotify_init.2 | 55 ++++++++++++++++++++++++++++++++++++++++----
 man2/fanotify_mark.2 | 24 +++++++++++++++++++
 man7/fanotify.7      | 31 ++++++++++++++-----------
 3 files changed, 92 insertions(+), 18 deletions(-)

-- 
2.25.1

