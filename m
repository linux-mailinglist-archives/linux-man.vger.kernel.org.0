Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A427343046
	for <lists+linux-man@lfdr.de>; Sun, 21 Mar 2021 00:14:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229875AbhCTXNm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Mar 2021 19:13:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229863AbhCTXNN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Mar 2021 19:13:13 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A62B4C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 16:13:11 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id r10-20020a05600c35cab029010c946c95easo7131832wmq.4
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 16:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qHzDdr3iteiq5nHPSK++tVVWEL5J0DJ3t/58kw3szOA=;
        b=uvKtenGCCs83/ofhky+3JZapUo2l2cSHv6Rd8RSW9mG51nTJUgnXIIVIKVlhvL77EM
         5EktpRlBFQrVxAIK6Uy0EH2zvzsULf2sdGQQ639PJqAhb+b7hYgozGeq2ZjsLMUH6NLe
         Piw+UZ5UP3MSvUQJ6FuFtoLUcXCJDvWygCpz9IkGhouMeiNeAAXdIYalRncNY26b/wh+
         Jm+434WANJdjmev1Rc9aNiDYP6fFOWU+wiwpI5T90ViMgdzzjQ5se171buZCK77fni1F
         ctx9fYAoGRWAeQIm5N3ZpDSnHxAHIibQTcL730e9cfSL1dSs417KXGFIsBEB/QCgnNfI
         9RPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qHzDdr3iteiq5nHPSK++tVVWEL5J0DJ3t/58kw3szOA=;
        b=Rnfc6WXC12IexQIeBmYibQzqilPYl0alL+CJnWxpU5y8Ro7UpxOBaIFraMiufVNcIp
         +gSprVnTqTY1P4DnAz+9xymPoccXn2N5sXS2hzi1nDqU2wzxd/Zqas1dNae4sr1b0DMW
         XL0HaZ9jsGUrho6d0lyz9Z87N3I3aRzWeWC9G7UH5jKd5+qR9ZIXIpPNBZGZTOkWzjvJ
         vCZC935DAP77cJF6nHdH5gZ4N7nhW2MZK2kVh96hTkITYo2p2TtWg+JDjdvlCVZXqU5g
         snx4tkUnG1I7yb6LYEK0hBcu7AZSdnccOCnRWhYN9E9z1JndI1ZTootHxGV7E7+VaIR4
         5fNw==
X-Gm-Message-State: AOAM532jT/tiEWXOnMYB7wtll2HxL8GDp6k2qGgCgylE7ZfHtmtDhFQ4
        ODR+fvQ3VbZHig0dnmcsAFRciLgO3Vs=
X-Google-Smtp-Source: ABdhPJxYXnHb3/e0cC4CTj3c4TQrxdo7mEMNXhAd2H9Faefnxn3wK7TCP39fxd805y5fn1QnwuPgKg==
X-Received: by 2002:a05:600c:21d2:: with SMTP id x18mr9456256wmj.175.1616281990529;
        Sat, 20 Mar 2021 16:13:10 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id 1sm22277989wmj.0.2021.03.20.16.13.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Mar 2021 16:13:10 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 3/3] .gitignore: Add file
Date:   Sun, 21 Mar 2021 00:07:01 +0100
Message-Id: <20210320230659.182237-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210320230659.182237-1-alx.manpages@gmail.com>
References: <20210320230659.182237-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ignore:
    .html: directory for building html pages.
    .patches: directory for storing patches before sending
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 .gitignore | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 .gitignore

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 000000000..593d39213
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1,2 @@
+.html
+.patches
-- 
2.31.0

