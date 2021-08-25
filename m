Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B51353F7977
	for <lists+linux-man@lfdr.de>; Wed, 25 Aug 2021 17:52:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241378AbhHYPxj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Aug 2021 11:53:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237144AbhHYPxj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Aug 2021 11:53:39 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89226C061757
        for <linux-man@vger.kernel.org>; Wed, 25 Aug 2021 08:52:53 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id j14-20020a1c230e000000b002e748b9a48bso3920445wmj.0
        for <linux-man@vger.kernel.org>; Wed, 25 Aug 2021 08:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Mvtj7OYsWQxdLaNk+Qt6QpYrR9BYtciPMzRa7NhCGqg=;
        b=owIsRidO6z2MUc606Eh5SgPPrJV9sHTI8I8k9brQmbrDmyr+RARU6RRhKTsyM0yT/f
         ia7r9eoH/f1rDj5AdyGTRSUTszN/t5YpdalvvKWjgqcND7HZUNTQDa17YyShYkzLexlh
         kJ5NHPvv7qLFH1vfR/rMp6N2/0td3wCJ7w+bPgc4bSgvelbK0t7Se16qQy/MBeBwvuTX
         Tsjl6Ai1MFQ7JArk7FPVqEIm3+qLVKSTthhe+8tFyMQn6Zgk8Ak8hJuZNceEBhuUlBGI
         191l9X3RTKlVj112TJOqMq/xwsaGoUVh1yJOKAQKJ2IMJIV8qPIbFraHSGhyMIMaDHqs
         x7Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Mvtj7OYsWQxdLaNk+Qt6QpYrR9BYtciPMzRa7NhCGqg=;
        b=bRoV5ZDC4dUdOTQrBO5FHxZhH6rMPBz4iNnE87KZpe50gpsbZGJt3cG/XGX4lJmBGW
         oaKUoDxFdGYhcNRrYIZJfNvJhDAXTBFYxDDmm+I3eu6O3t7T9iJgbw0KGE44ZXTJN1ce
         j83IK2PapWRTNN+UfLJkTwjXtjQzhoJpOZfQ9NO2LGW6aZPv7KwEmIYEOUMiv6+sptIK
         Pwl4OwrN52UEEhGobNZ4buPkKJqJKTt6RMEaSfNU3BrrRbhsqPhSL/9XPdlENoV/kfYy
         AWSEPE9cctxGFh1jmTv0YLQVtcJqhIn20/x5WG8AR628K6aNsv+zvFR06GywtD2YWd8q
         0u0w==
X-Gm-Message-State: AOAM530hCcu2SXyxAQaYDAwROOCKZw45D1eFNYEsa484I48bQ8Y1J4IQ
        iaFV4jjfhqpwVH5+36pUGRg=
X-Google-Smtp-Source: ABdhPJxu3eA8/wO3VW7MbIfzSacaXAvy7CTLPWAihiQ5ZCH+ZOtPQJbSqjT7djz/+g5CzfrPGTDQEw==
X-Received: by 2002:a05:600c:1d27:: with SMTP id l39mr8165110wms.146.1629906772148;
        Wed, 25 Aug 2021 08:52:52 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o17sm5474152wmp.13.2021.08.25.08.52.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 08:52:51 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Cristian Morales Vega <christian.morales.vega@gmail.com>
Subject: [PATCH] getaddrinfo.3: wfix
Date:   Wed, 25 Aug 2021 17:51:56 +0200
Message-Id: <20210825155155.753997-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The previous wording wan't very explicit, leaving room for
believing that errno may be 0 after returning EAI_SYSTEM.

Use a wording similar to other pages, for added consistency.

Reported-by: Cristian Morales Vega <christian.morales.vega@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getaddrinfo.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/getaddrinfo.3 b/man3/getaddrinfo.3
index 35071b733..1e13e3ef2 100644
--- a/man3/getaddrinfo.3
+++ b/man3/getaddrinfo.3
@@ -583,9 +583,9 @@ and
 respectively).
 .TP
 .B EAI_SYSTEM
-Other system error, check
+Other system error;
 .I errno
-for details.
+is set to indicate the error.
 .PP
 The
 .BR gai_strerror ()
-- 
2.33.0

