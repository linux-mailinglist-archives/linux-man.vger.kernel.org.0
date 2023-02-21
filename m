Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9024869E91E
	for <lists+linux-man@lfdr.de>; Tue, 21 Feb 2023 21:50:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229622AbjBUUui (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Feb 2023 15:50:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229606AbjBUUui (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Feb 2023 15:50:38 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2FAA2E811
        for <linux-man@vger.kernel.org>; Tue, 21 Feb 2023 12:50:36 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id l25so5389200wrb.3
        for <linux-man@vger.kernel.org>; Tue, 21 Feb 2023 12:50:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4g/1DbOV4MVdR9Yee+9jROLQEJNnd2QovN2aA90JFlU=;
        b=ppdJf9/oHfBtHH+Wz4iGFZEnQHyaS1py4A8AbrphjqieK6Y1gMQ/JddE9rSsiCY+QM
         TEpL/S9TJuUKDc52Wk6z8hdy0EZwIOYHtGUtfngvOKfKf/cewnxm50+LJi5rwfnv19FI
         qOPJPVqaU2uEOxi5AAoMXnJfkovwVksv6RJjQh7NTshfX4l2WjEPvqFr7rf4hCIIzV9r
         hYLmk/meWq9Ibb5HyuyXck0Ko4DGI7tuJWAZTsX5gblYzlxYm0UZx61HUJ3JE0fYwZHt
         XWCbBJe6bDhIX60lfeXX3QHRPmEXQeshabUeys6/hy8KsGrupR+tqt5rLXPW5pjrv32r
         ptxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4g/1DbOV4MVdR9Yee+9jROLQEJNnd2QovN2aA90JFlU=;
        b=S0YSoVdvv+jmteNHDZ4ZoAQa33ix/QM8HpT/3TvuxxGYNFyCY/u73IePt1SLg+twDQ
         q3l5kvnGI/ovMVZx7x+H49zNoOjlK9nUxngeoh/JNRieV3DRoWuaI7K5vTMTdxHG4nkN
         VOtRBCQoTD2GQ4T4vOjJwkbWG0zhudR5tcIp6USrvlXIvjIqiHKlyADoPnDGVbNf73yR
         +Zzx983a58qB9bY7WM81bZj8V1/TUBFnKo3thq768yw6x8GXDSHve/Nehd5mPR6S7uxH
         pGKWAjP6CVbJcI2teAfMZfZ5H1yIuWg/vQhK5dY/REjQEn98ahc8muyPDtYjY5xk6hBO
         103w==
X-Gm-Message-State: AO0yUKU5wmXKxQrGGjxgjV+ZAIPUezuSRKNywLsy4uYpO/4qW6lKoQsA
        RsuWOjuOGk+yXzQNI83ZFiU=
X-Google-Smtp-Source: AK7set9EE5RoxrwHfAjo9w5oWwodtXPfJ3xREuIVg6eYo3cukNgm9+Oux9E+7JEO32MmIVCPV1aDlA==
X-Received: by 2002:a5d:6052:0:b0:2bd:f5bd:5482 with SMTP id j18-20020a5d6052000000b002bdf5bd5482mr6229081wrt.28.1677012635296;
        Tue, 21 Feb 2023 12:50:35 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id z5-20020a5d6405000000b002c5534db60bsm4891742wru.71.2023.02.21.12.50.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 12:50:34 -0800 (PST)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 1/3] landlock.7: Move the warning about missing features into the CAVEATS section
Date:   Tue, 21 Feb 2023 21:50:21 +0100
Message-Id: <20230221205023.2739-1-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Putting the warning there makes it more prominent.
CAVEATS is a standard section that exists in many man pages
and is also described in man-pages(7).
---
 man7/landlock.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index 0818b4bf9..099f68067 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -201,7 +201,7 @@ command line parameter and further to the value of
 We can check that Landlock is enabled by looking for
 .I landlock: Up and running.
 in kernel logs.
-.PP
+.SH CAVEATS
 It is currently not possible to restrict some file-related actions
 accessible through these system call families:
 .BR chdir (2),

base-commit: 887b913eb2687f34bc056597c0501a4325bebf28
-- 
2.39.2

