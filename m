Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD60F26766E
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 01:15:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725880AbgIKXPH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 19:15:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725856AbgIKXOk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 19:14:40 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BBDEC061573
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:39 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id a9so6178936wmm.2
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ijTSOE9WEypcMW/tM7WxWnRZgma56Dle3dkZX4MjhT4=;
        b=aMRVnUrjtBfepkA+IO6vIe7I4cOAOWWVRQbNqRHntxA7witkif+6+ZyOunp/lr3rQU
         5xlqlxtIvM1W5gRoj20qx6vPmzoO00JJBnjMc7QI3SSPttuGCWHc3jH/5Jxd6+C/VRQi
         LTL/lP2d7IQKCOZePPxvFPqvWHqcUqDBgUvkY60uy8LAAoJIYGqn2BnIFnbq+ZhPSs6u
         WRD4KEtSbpt840dn4kJzzjpBURAIHbnKKxpA6hEaybeQ5uZEDvXlhRioYjfxgsMIiHEo
         0o5uVG8zNFHBkBmp8Iq9gvb4s88N0AAXx9RRZMIyvq0NBn2fHXLzvCIq4HUFQJFFyu/z
         mzLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ijTSOE9WEypcMW/tM7WxWnRZgma56Dle3dkZX4MjhT4=;
        b=gtoYqlLitmQ8fzzEoqUutOnCt1JhplWmg8HnCLVZQr5EN4NbJCeR9Fi0rOjSEjsBG3
         vpItzlLBi7+KaE9s0Qt3dUSw/pqjwa7M5KnbSh8EuKzfpjI0g1f2UlIf6hrHOpIHAawX
         dKKpTwPH3CZPgVVC5mwWJ9m38J+DDaYqzqg8+V6webXvglu8bNJ0bb1HHhRc7XWDzjL/
         32cNIGXcqmcNT8haKruKH6wzFWryRX0rIO/y8OMGHagCMXplAnL/ByLgISjQl9UyW0ph
         2P1oiyy/umsvXHfAwHkqi+0tuEDTpyY2LFUTHTzVGLotNCGWI890jFri+0yplYSfqaI0
         jDCw==
X-Gm-Message-State: AOAM530atpJ2XIj4UIS0knYef3yALocPvP6NU6dxTsuKYNcPlzE9RRdd
        r5neeZw5U+Vb8jHlxAjnOXs=
X-Google-Smtp-Source: ABdhPJza9ZXsofBi3HK7Gm05jjYFp8JAYBda1uJiJ/ruperXf6nIkGNLStXXpjJVVaiMxVCigZ2PMg==
X-Received: by 2002:a1c:2e17:: with SMTP id u23mr4632171wmu.73.1599866077572;
        Fri, 11 Sep 2020 16:14:37 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id b76sm7300806wme.45.2020.09.11.16.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 16:14:37 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 05/12] getpwent_r.3: Cast 'uid_t' to 'intmax_t' for printf()
Date:   Sat, 12 Sep 2020 01:14:05 +0200
Message-Id: <20200911231411.28406-6-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/getpwent_r.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/getpwent_r.3 b/man3/getpwent_r.3
index b6c1c281f..ef4c01c21 100644
--- a/man3/getpwent_r.3
+++ b/man3/getpwent_r.3
@@ -179,6 +179,7 @@ in the stream with all other threads.
 #define _GNU_SOURCE
 #include <pwd.h>
 #include <stdio.h>
+#include <stdint.h>
 #define BUFLEN 4096
 
 int
@@ -194,8 +195,8 @@ main(void)
         i = getpwent_r(&pw, buf, sizeof(buf), &pwp);
         if (i)
             break;
-        printf("%s (%d)\etHOME %s\etSHELL %s\en", pwp\->pw_name,
-               pwp\->pw_uid, pwp\->pw_dir, pwp\->pw_shell);
+        printf("%s (%jd)\etHOME %s\etSHELL %s\en", pwp\->pw_name,
+               (intmax_t) pwp\->pw_uid, pwp\->pw_dir, pwp\->pw_shell);
     }
     endpwent();
     exit(EXIT_SUCCESS);
-- 
2.28.0

