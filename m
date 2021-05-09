Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C39B3778DB
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229898AbhEIVp1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230034AbhEIVpS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:18 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 084ACC061761
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:14 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso10025804wmh.4
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wHHTNdAVNsCz8Qefx5zQHCXyZDPaqSda42HheDrjHzk=;
        b=uDY+jfRceX1cyxL62dKiI6J2UcYsg0IJNyQa4p5LlZmJkoz1pok+jy+LmYczy1nUSB
         /zVWBaRmiygUE4Ax41OnGvsiAhCcHu2JBjjBN7/pSaH5WopTLGa0BdZvJiKjLDrAKvNa
         Y6bWALDc8OmawfCwxxwEaC2NNUw1+GkODY4ZcagpBng6G0MonLK06467ZA8ku2yx9iid
         6VE21CECLP9Hgq7k+FfnWJNECZ78Yg7ubIBgO10W8/XbqF+h9y8+Q1TgSkqcO+0iI7CV
         OKHJZdPf3gdPWwakIz/NLw9xe2/7VVM9VtkPRXd9H5kHxGCQibspqbZe224VpSljy2Qi
         Jk6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wHHTNdAVNsCz8Qefx5zQHCXyZDPaqSda42HheDrjHzk=;
        b=KjLT380XmaINaI/R+Kc+5wVWR0YRmzV2+ETF0ni9EJ5dfL+a1vz/CtL0Gzs4zFZB22
         WswhcDUMaSg3IoeTwpAN00YPnWDApRljUTebsv6L0DhrVHE/ec7/w6hulzuuz3WDhQAz
         b3vO2ttbU+gpSrfrwPH4k+Avnvw+Br5l8PMMXe5mc+UqIKglYNh9EKoFXo0FW8Cs5UFi
         cBrzCZC7JY1FWx0/RzBTAq6kUqg0+guh39Gl+VSoKcFIWDseVP0Ka08C0FiUQTJcWriQ
         WijmjDIlwLqXweweshipnk4Y2KhOjv/F46XQa0A18xY4EoRzMqW02OIr8721JSJpM8ag
         xUIA==
X-Gm-Message-State: AOAM5301AESzhpWkTqLvsHtvosJJKlO8P3Cd7XTa7hCbY8uve8V43P96
        +KiJF+g8cgXc0J4Yq0USDYA=
X-Google-Smtp-Source: ABdhPJzz52Zq4O+pyMMaSAvXCQI4TnM4++5PUcWOYC0dfqEgQxZ2ksNrvEKhCJut/brEOxLLP7y/6g==
X-Received: by 2002:a7b:cc83:: with SMTP id p3mr22381847wma.170.1620596652877;
        Sun, 09 May 2021 14:44:12 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:12 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] tzset.3: ffix
Date:   Sun,  9 May 2021 23:39:18 +0200
Message-Id: <20210509213930.94120-24-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/tzset.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/tzset.3 b/man3/tzset.3
index e4660be8b..c80da53f8 100644
--- a/man3/tzset.3
+++ b/man3/tzset.3
@@ -37,7 +37,7 @@ tzset, tzname, timezone, daylight \- initialize time conversion information
 .nf
 .B #include <time.h>
 .PP
-.B void tzset (void);
+.B void tzset(void);
 .PP
 .BI "extern char *" tzname [2];
 .BI "extern long " timezone ;
-- 
2.31.1

