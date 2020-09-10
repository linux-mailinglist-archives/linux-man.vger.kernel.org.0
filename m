Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 076E6265285
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:19:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726935AbgIJVTi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:19:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725935AbgIJVOh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:14:37 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0844C061796;
        Thu, 10 Sep 2020 14:14:17 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id w2so1973520wmi.1;
        Thu, 10 Sep 2020 14:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2Zyy9i7u9pP0d3zFPaoDB6rzkQG+Aljjr+FC6Rnxpos=;
        b=srLSW/vAvmZ2XkG0kA1bsK1bSBdtXA7MrhX9Ar1rjOk8AOEKKebi9a3GJ88hJLJlkg
         dir94kYAHvad6xVPnPRJeTUO9unFMbgJen2gBbg0GWJLqabiHPIzlTw3BLnA43oLiG+N
         hZFUUOSp9t4vuJHKOLnHIuEpj4k58pALNlVEOIbgg5Q5f+hJMj0zj1+PHwV/471vOYP7
         K2s7cy7M1g4c7zzCKJXtkOHcd7KS9ZfXJZSFWqky5IdH+UEsryhMuy6L4J1ofTaK67f7
         wo+I8wuDEB8XeOXc8HdY0AztI0njAVUjcQ9Lu6svuHFqM9XGkgWe4PeGRkGNXCZs8d7X
         rC8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2Zyy9i7u9pP0d3zFPaoDB6rzkQG+Aljjr+FC6Rnxpos=;
        b=IDnne8TNaX0NM3t091eeAINJJqur5sX0JJt3gSdVemn39Lyw5AcFLbO345h9NljJEw
         NXisPMyrfiO0vnttsK/wllYweXBOBbXnHTbgPlixPZHu3Bz886p722op/ApZRHd0vb1U
         EdYHrmTqpngDnjAlm2LLaeaCh8hM93a5bHzaNeJfipLxKfl0abs9rqTtZQE92dpnw0pR
         tLFxxwihXSHhmb8eenSSuRbQiTAn3SLpLnmwaUp+G+wOzwEmLicjma9RvAsezkZ6fVeN
         T3wfiLLN1rJN/hJ5aj4Q//PornL1ajCPwcZU98hl54W4vQKv1lxVVxiCrNDqZ/E4Z2TJ
         mcBQ==
X-Gm-Message-State: AOAM533Xm3LF2J+AVKgD5ztSlSlhKUrGwYwjRDg3orUTVtbX1ySjVQzS
        lBSQqGghrITf6VErP4ocZDn+QiLCQvTCSg==
X-Google-Smtp-Source: ABdhPJxXtkBi496qrak4fdMkhYCzXl9kroV8XoB1Yj0UM3h1E1JtW5jOEJvjGKRNJJKwLqSO5595jQ==
X-Received: by 2002:a1c:20d3:: with SMTP id g202mr1978379wmg.54.1599772456542;
        Thu, 10 Sep 2020 14:14:16 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:16 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 06/24] timer_create.2: Cast to 'unsigned long' rathen than 'long' when printing with "%lx"
Date:   Thu, 10 Sep 2020 23:13:27 +0200
Message-Id: <20200910211344.3562-7-colomar.6.4.3@gmail.com>
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
 man2/timer_create.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/timer_create.2 b/man2/timer_create.2
index e9a8b8503..9c9907739 100644
--- a/man2/timer_create.2
+++ b/man2/timer_create.2
@@ -390,7 +390,7 @@ print_siginfo(siginfo_t *si)
     tidp = si\->si_value.sival_ptr;
 
     printf("    sival_ptr = %p; ", si\->si_value.sival_ptr);
-    printf("    *sival_ptr = 0x%lx\en", (long) *tidp);
+    printf("    *sival_ptr = 0x%lx\en", (unsigned long) *tidp);
 
     or = timer_getoverrun(*tidp);
     if (or == \-1)
@@ -454,7 +454,7 @@ main(int argc, char *argv[])
     if (timer_create(CLOCKID, &sev, &timerid) == \-1)
         errExit("timer_create");
 
-    printf("timer ID is 0x%lx\en", (long) timerid);
+    printf("timer ID is 0x%lx\en", (unsigned long) timerid);
 
     /* Start the timer */
 
-- 
2.28.0

