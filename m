Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E10F537A45A
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 12:11:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231267AbhEKKNE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 06:13:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231177AbhEKKNE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 06:13:04 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFBB6C06175F
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 03:11:56 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id o26-20020a1c4d1a0000b0290146e1feccdaso924396wmh.0
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 03:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=m2rYDGcdfpcA96GIjRuc0Lwi6sSrWTRvmgPwq6Ga2Po=;
        b=SaapT3M8fOIb37Z8E0Ot1NaR9dc3LWy3NIWu1HMCxOn3K5Vxn8kTatlkC/jQOCbWUN
         plwmtUL8SRjshgUVYrGcqvJ97k6YEFz6eauaUNEYzWheY5JGxwoBT1aAL6GJq0fSW114
         3C20x58yo3OIwV1ztbP01xeVkmwmZLlXhmezpTgzsueiMYwrl6NynD102/LdVhXU71oM
         q/DESaRrtGDnX18gqCq4sPc0GHbpq1MKV8memTf2HR2Swmq7MeXxKEu8Z9Fi3nUFrr1a
         ovGz2cQdoHgE5FSU6qMxWbClO4SZgkOZMds/SVzQmfbz3p/navkkRgmoMofUhlma2Fyy
         F41Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=m2rYDGcdfpcA96GIjRuc0Lwi6sSrWTRvmgPwq6Ga2Po=;
        b=NKYg7ufm0kKy4+y7mcar1bbYXX5Xl978KMyXwRnP16kzlbn0hTzG3dD0BAnfEk8v2w
         HbE5Zraei7dSZmkgBW/SYXePG2jJ3yTVgGYydfsf7A5gts3lsGXACAtuXeTvOsf8impC
         gJp8HfBAALZFiRj5UBXkmxyNZw3bRzvCXBzf5hZ8CreWMATsY7GmT6GJ4F50eKyWtcMh
         ag+tf1B4taFeOmykzElsYPHwOwiCvNHR7PWJC2ApZMJximtLoWrKLODT/PiX8PfAeDXu
         CGKmqWn30rM1rJpPCpps1iiYfqezNO/UmCu+zrVbxscMpLdzhDptsLNQaoSZjeO7W43t
         pk2Q==
X-Gm-Message-State: AOAM530aOIqKjr6BOTxN3L6dVbdtLnc3JhmJmyu3ZZOwu7BHLdPtyW0/
        7Y9vh9/nj1rZKgVqklXElZo=
X-Google-Smtp-Source: ABdhPJx9vDQCISAmyZtV/EhNrxelFESKuR9bn+Dg8wO0KrKcNmOaMBZtKLhBB+pQbrcnyIZG8+nRxA==
X-Received: by 2002:a1c:f717:: with SMTP id v23mr4414996wmh.32.1620727915440;
        Tue, 11 May 2021 03:11:55 -0700 (PDT)
Received: from msi.alejandro-colomar.es ([46.222.232.120])
        by smtp.googlemail.com with ESMTPSA id g25sm3171338wmk.43.2021.05.11.03.11.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 03:11:55 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Akihiro Motoki <amotoki@gmail.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 5/5] expm1.3: tfix
Date:   Tue, 11 May 2021 12:11:47 +0200
Message-Id: <20210511101147.24399-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d
In-Reply-To: <20210511101147.24399-1-alx.manpages@gmail.com>
References: <20210511101147.24399-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Akihiro Motoki <amotoki@gmail.com>

Signed-off-by: Akihiro Motoki <amotoki@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/expm1.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/expm1.3 b/man3/expm1.3
index 54b0315d3..2d3bef375 100644
--- a/man3/expm1.3
+++ b/man3/expm1.3
@@ -154,7 +154,7 @@ on certain architectures (e.g., x86, but not x86_64)
 raised a bogus underflow floating-point exception
 for some large negative
 .I x
-values (where the function result approaches \-1),
+values (where the function result approaches \-1).
 .PP
 Before approximately glibc version 2.11,
 .\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6814
-- 
2.31.1.498.g6c1eba8ee3d

