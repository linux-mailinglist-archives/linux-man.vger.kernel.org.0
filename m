Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E9ADF37786A
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230053AbhEIUVM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230032AbhEIUVL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:11 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64AADC061574
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:07 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id s5-20020a7bc0c50000b0290147d0c21c51so7690809wmh.4
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pEQDqh3VHyj9lxPReb5QHHi3qY7owNxKTQOlEM6TuDc=;
        b=N6HpMS8JIcFFUaFwIOGJyy/fesABNe129WLGlf4ZovvRF1EavmE13A9sjmXB2BHGJI
         eqjufmTU0EGLrQOQBKrUOr6ucLrmveqgJI3Nq5l2Z/+u6yL+/zBk/APqPdZg7/O9PiRE
         nEv6OxRdTGKqXCWLBu7byz7xku4UP1wDl3ju5TYRqsQQUdiJ9s7FI/gKXmkca14v1OVz
         pL05VtB3mGxEVmqPE/jX5H2dIrhwcqPNuAaJiBAnJNoFkmikGDFE0Pia37+rIML5qA3F
         kRrivPKFwvJ6Y40Ss3ojETpN7dRZGiNlCUDlhK83nQnHlDeTwXAiu3ULUlA2sMdSLAvr
         b27g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pEQDqh3VHyj9lxPReb5QHHi3qY7owNxKTQOlEM6TuDc=;
        b=PQUCCJFI2huolfKB/SOl8ePf4+7Mv49zgJ6SFJC55h91KcPIdwrCu8wEiHzk7rDrw6
         sn9RCflgAHYSS2HIpkDqUcwzkycrvxizAYEnCNMZMXypEHjYPju1Bo3HXmupsRjGPERe
         /9wD0iAyObbOwkKVu+WO3xvTc01l8BlwU7Is6SwjKg2RnyILiVB7eoxDVTigDjWiikuj
         LAjXNAibfRB6j0LRRHhEz3A2vMzqX/CIKFqfXagTIFWO85NU+uf7vnneUQWLhA9My4ci
         IiNAxRYpmghtHX2UQMyX7Oi7Kz8CkvMLODabA2eq4eWfm27p9vvY1rfpWSLobOimS8yE
         RJqA==
X-Gm-Message-State: AOAM5326b+LnY9PWUeYzm4R4Frzqe7IYUGp1deVpYrBEFymwmHLFa5xN
        l0hwgfU041p3r49kQQ3KTb0Z++TYVfEUww==
X-Google-Smtp-Source: ABdhPJwI6isMQI0xpoYdg4l7ZjVZOjJ4Cqgq+dnGG/dmiHNl/lXMsqWdkgtI4sBP3QSut/9X/zm5+Q==
X-Received: by 2002:a7b:cf38:: with SMTP id m24mr22380130wmg.174.1620591606150;
        Sun, 09 May 2021 13:20:06 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:05 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Johannes Berg <johannes@sipsolutions.net>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 04/17] clone.2: tfix
Date:   Sun,  9 May 2021 22:19:37 +0200
Message-Id: <20210509201949.90495-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Johannes Berg <johannes@sipsolutions.net>

Despite my mention of this spawning a hilarious discussion
on IRC, this alignment restriction should be 128-bit, not
126-bit.

Signed-off-by: Johannes Berg <johannes@sipsolutions.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/clone.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/clone.2 b/man2/clone.2
index 818e584ce..838fbd669 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -1418,7 +1418,7 @@ was an invalid.
 .TP
 .BR EINVAL " (AArch64 only, Linux 4.6 and earlier)"
 .I stack
-was not aligned to a 126-bit boundary.
+was not aligned to a 128-bit boundary.
 .TP
 .B ENOMEM
 Cannot allocate sufficient memory to allocate a task structure for the
-- 
2.31.1

