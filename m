Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6806129DA6F
	for <lists+linux-man@lfdr.de>; Thu, 29 Oct 2020 00:23:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732963AbgJ1XXZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Oct 2020 19:23:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390210AbgJ1XWR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Oct 2020 19:22:17 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A22DC0613D1
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 16:22:17 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id c18so805966wme.2
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 16:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=46N4tgi3bgbpVcXgbJGAa+AxZfK8SkorbOp4JcY9lBE=;
        b=G4DYwfgRc2z/GfyKQdJnFY57JgHGKXdVy/rcbUO44r6fGqR5ARz2PCly6/Liu+Dxr7
         ee8hpKHhQ4L9Y9J96MX6q0JTwo34KbUNyI9/Tk+dax7FS2h7JYW7/quY+b9ft0AoXMvT
         P0HF7ekdnnHq6xY8D/7gYrzqVm8WE36XDQW2QwZuNpRwFRfkzQEZ8oLzRW5G7KUSAyZ0
         hx0HkCSIH680nKMqKAgdyF8kOJtwyhAWMC6IH5O9rZlel7o9CCZrG1P/L82c5XWxRnss
         2DsWUVrxjkaJpsbp9TacqmoR9gdtDQIvQYr/B2/AY7TRmNAS6vIyjOzftlr0w2k2LVYa
         mZlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=46N4tgi3bgbpVcXgbJGAa+AxZfK8SkorbOp4JcY9lBE=;
        b=Oo1KbVtmDGN8chjEnwlQJ/oOtBMgLcYstVJwQhlhXFF2rIGkAtDR1cZkBI2BVz7zF3
         OeZtzMjPVw1BmoIxqC/yTu+3PfmKQXFB6oG2HP7PemEh5exbNUFv9RoGpH8OUi0L6Ur7
         ZbEwkuyPowenUdoyNWmD+rYHfNMbg/zbJpYIOEGCTuxS93OsCC7LnH7dx87JahzoAwet
         a+Qfqe8+UrM1pHOXG6rTbkrUWKJig6lTW6vburvIl7JdkvEgSktWXXkXIPPvogo2pw10
         8/1UIF4HhY7gcDZHfCxOgVncMOmEBhk4c6rnhSRMQedk05OOdYex8OC1U8Yf+OU5A8qt
         b7xg==
X-Gm-Message-State: AOAM532OH4EJtkLsd1GiaK0QAFt6O65QaO2OwC+S3q02NeE9NMZ2BE+5
        Jf7fmTI4IW8ag+7z+e2rYH/VzVUnR4Q=
X-Google-Smtp-Source: ABdhPJwFHV+ENCS0cLlnbQkxnsLvyqgeDq4jSM2czzUhocrONdVaP+MeLH164i9IBCjdb3bo3qAv/Q==
X-Received: by 2002:a1c:b757:: with SMTP id h84mr6907036wmf.108.1603877599196;
        Wed, 28 Oct 2020 02:33:19 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id r18sm3631926wrj.50.2020.10.28.02.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 02:33:18 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 2/3] strtol.3: EXAMPLES: As the default base, use special value 0
Date:   Wed, 28 Oct 2020 10:33:07 +0100
Message-Id: <20201028093308.86310-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201028093308.86310-1-colomar.6.4.3@gmail.com>
References: <20201028093308.86310-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/strtol.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/strtol.3 b/man3/strtol.3
index 0feb12dbb..35252295e 100644
--- a/man3/strtol.3
+++ b/man3/strtol.3
@@ -266,7 +266,7 @@ main(int argc, char *argv[])
     }
 
     str = argv[1];
-    base = (argc > 2) ? atoi(argv[2]) : 10;
+    base = (argc > 2) ? atoi(argv[2]) : 0;
 
     errno = 0;    /* To distinguish success/failure after call */
     val = strtol(str, &endptr, base);
-- 
2.28.0

