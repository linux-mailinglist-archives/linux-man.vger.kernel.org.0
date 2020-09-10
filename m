Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4284265251
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:14:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728003AbgIJVOl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:14:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727984AbgIJVON (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:14:13 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6955DC061756;
        Thu, 10 Sep 2020 14:14:13 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id y15so2107321wmi.0;
        Thu, 10 Sep 2020 14:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=thuCvD7JVmiqOG6SnvxdvkNs97K1JDRdqbQf7d9JtZA=;
        b=nIclf5oUWKbyne6MzLCUwgEULmNDF3o3FsOT+iaopqfosYoy8xPTsh3Lo5vg3UuUGs
         sBrqJArWevBfbtJerj9I/g3MdSpvFH1DDaBxm75qLdJfeWpyE/hINCJ1EoG4wDwRB0sw
         5YqRWdPISHq2WJ5oPFeirWyNisKLmcKxmh0rNHTApDy/wTISdV3KwgCqWA8Qik4PU7pR
         Mjda2i3s0HIpzT8sjmMwC9QzDD/jQC2Hc6KTEs3GeyxABqzZfepuE4INBkF8uh3YEF6P
         bTcvoMsWIKogPKWBRxHvujwG5JN5NmWzeBCekxwxi59h7WH5s4xfzYRuvc2xSC4itmOF
         dJtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=thuCvD7JVmiqOG6SnvxdvkNs97K1JDRdqbQf7d9JtZA=;
        b=VsxT9Y9eJZTozYVB6HVD89/ufiTIY20HSP8z706Gwn8C7av8jo7mWqGR4rsx9zqBMF
         tFXVnUulWYOy5KarbVjwVXkA+R323GzGxwzywaQeln3uowv/5MHFVB8rzOB1PHh/7/jR
         bhBozSbaYpfYBoJoIOba8LIDbYsZsqWYFAZEmdukoUQkVJHQ4pyoHuqUudYbzuSxlYHy
         DvKZLf047ZkWFR8M9gJc76I1WktC6fthChv7alioJCMzXp5I4H2iXsWKU42YTnY5urb8
         6jUwyJVBHAXuEDfyjBEwuG0yQlNyur4xsMlx+pz4XIaBQ9SL/nXtaaWvB9CKJ2YMY8eQ
         tz5g==
X-Gm-Message-State: AOAM5316uwse6kUL+9CDq+JhwiQGGU78sDf9+Xpj+5IiSlS5dNKBOMPw
        fl1Jax/MP3oREtCGtVVYNA8=
X-Google-Smtp-Source: ABdhPJzrgPpS+nc0/SMzdjJlbmQjQFovYJLGZFhoudF5W8eeDEHUcEooW1agVezS3o44EgmW9xf0tQ==
X-Received: by 2002:a1c:98c4:: with SMTP id a187mr1918690wme.178.1599772451224;
        Thu, 10 Sep 2020 14:14:11 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:10 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 01/24] inet_net_pton.3: Use 'PRIx32' rather than "%x" when printing 'uint32_t' values
Date:   Thu, 10 Sep 2020 23:13:22 +0200
Message-Id: <20200910211344.3562-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/inet_net_pton.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/inet_net_pton.3 b/man3/inet_net_pton.3
index 00f94b9d4..d74a33d74 100644
--- a/man3/inet_net_pton.3
+++ b/man3/inet_net_pton.3
@@ -332,6 +332,7 @@ Raw address:              c1a80180
 /* Link with "\-lresolv" */
 
 #include <arpa/inet.h>
+#include <inttypes.h>
 #include <stdio.h>
 #include <stdlib.h>
 
@@ -381,7 +382,7 @@ main(int argc, char *argv[])
        may not have been touched by inet_net_ntop(), and so will still
        have any initial value that was specified in argv[2]. */
 
-    printf("Raw address:              %x\en", htonl(addr.s_addr));
+    printf("Raw address:              %"PRIx32"\en", htonl(addr.s_addr));
 
     exit(EXIT_SUCCESS);
 }
-- 
2.28.0

