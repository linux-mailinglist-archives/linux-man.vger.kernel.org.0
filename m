Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F9D026D973
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 12:47:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726658AbgIQKqe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 06:46:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726718AbgIQKop (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 06:44:45 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C99DC06178C
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 03:44:22 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id a17so1522792wrn.6
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 03:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lpbfVzuJqkr6eHe07Sp70ThQBUgQIp06XjhzjhZ+ZPs=;
        b=mGaTyula2yU+3S+CsEUI6PUji6TB18gBmBt32GXmzfivw9jYSuMpRyQv8QSfvAnRzg
         Rr/Fb6A/cSmUEfPT1pU8McSyvW1syxCQZLgJW1zJ1GlBdjIEVaHQb7vijvpETfGP+2bW
         Y4fBLC6CYhw8UElpLt9/z/t3p2dqeOrJvYJIOlzdZ/CbJpT5W+zqXKzak8jFt5ca06vP
         da5pMvI1nihcqslLzzmJxL15S0HRlxuEqPVUa7p6fVd893rKePupbYIPidSxvj6OZPWl
         5z/5I5wG+X0MN8yYVe0rM5FcI1nOH5445ra0YbXaH4qKJR/UfJc+y05Xo2fnqySFOfNC
         JmPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lpbfVzuJqkr6eHe07Sp70ThQBUgQIp06XjhzjhZ+ZPs=;
        b=l/ydwOJ30QOzhQ2cy4xceN2RARIi/8mr8am8NowejHujWhOg993Vyb6bow/Kk2jq7I
         UJhYbX6oWh4WGzRvz5fddvFxeujADNJcn99Mfx/wcanVjSdxKNgkejZSMNkXd0B6DFZV
         vkt+BXfQw/OQRZA4/pPotgCw6A/QElxqO4YrfRdc/rxjFE1K0424gw8BxbDzGKwxu52h
         sOgcboSgDLUmTAFOX3bXA6vDVas7gpGc0aVglhNte83V1h8FBR671KOfARIvpIhY9TZ+
         KG4IQDwoN45bpUY/6i/93WcRRxB/mvqNtnXCOMWqKccDodxF19l5O8Y5l3K72ib5/39o
         VW4w==
X-Gm-Message-State: AOAM5319ggICp7T+qraLqPKd3swCjVyJeuRIY4/5PY1lvxO04UTVGllm
        UJa6fS05HkCLoh3hDd7GM8k=
X-Google-Smtp-Source: ABdhPJwASsQS5C40BJZ+NmTEJZWaGNmR0AY2jYxmA4k7k77ZEW9ERZG3NSl+xVXG/l9WFp8V8pcxjQ==
X-Received: by 2002:adf:fa02:: with SMTP id m2mr31185688wrr.273.1600339461651;
        Thu, 17 Sep 2020 03:44:21 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l16sm42807186wrb.70.2020.09.17.03.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 03:44:20 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, tg@mirbsd.org, fweimer@redhat.com,
        jwilk@jwilk.net, libbsd@lists.freedesktop.org,
        Andries.Brouwer@cwi.nl, Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v7 5/8] time_t.3: Add link page
Date:   Thu, 17 Sep 2020 12:43:03 +0200
Message-Id: <20200917104305.12270-6-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/time_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/time_t.3

diff --git a/man3/time_t.3 b/man3/time_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/time_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

