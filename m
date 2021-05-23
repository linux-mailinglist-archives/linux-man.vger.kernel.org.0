Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E31F38DB10
	for <lists+linux-man@lfdr.de>; Sun, 23 May 2021 13:30:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231715AbhEWLbh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 May 2021 07:31:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231687AbhEWLbg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 May 2021 07:31:36 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BCDDC061574
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 04:30:09 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id u5-20020a7bc0450000b02901480e40338bso8577852wmc.1
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 04:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KpIcfufL+RuDe1uKw741WGVm1AMdDJeKp3fCVqjjUkc=;
        b=AsYy8tlWWqpt5wzKsgzj3xTy96ku6VIxV4Spw2Y0fo33iXnk0fKhaqZiLso4itHw26
         T45+mfIYNhGJm+02qV56iU8JxSIoFH1ztmSzf2ou5FsdIVzwa8gyU81wVnlzySQPgB08
         3g7+a+eWZr276IgKS0ngZbLKFo1ZaowzFYQpsYDZBwA4VF/lGt4VpW/5dzcACkMFMoWT
         tn/G3ETL4NO+UZIbIKkV2pa1ZvPQAPeZO7Ulm5OkkbE07a3cGvpwrL3hPMUWgbSNRpwV
         py7/nLMtfC9h8JGCAb8bvBeRD0ajfqQJEuHW6Q4e98hIY8g39VUWSiV76rcTdlxRWDSq
         D/Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KpIcfufL+RuDe1uKw741WGVm1AMdDJeKp3fCVqjjUkc=;
        b=ZPsKizLOPkE/ctQb+uogaB0mLbkhoVOeLphFftOwW/ifFp5yWKjFyhvBN6lEOtSScZ
         bePWvuYj1cKsX1D3QCfpGemXFyNDQrzrwpA8hKic5NS/soObMZMAMmmEufkiF5hAtfsG
         vZVsW4JrLs/IgcDxbwMirG5jIXu4DwgI0kthsXDwYWlxW+W6P89NglwvjGpG0w16NVCr
         aQhiAa2m1foN8CRqXJ2P3SqgtQgQ1AY/q+FOwJ7VrW5HYQKs21cvLlYhk9FQ1NJk3j0L
         0wvppADg/jGoFKqDzgxD4hoLxqXZ0jKJZTj/JsRkTNs/Rrl8Mut+X+lnCxDP28LLUbXi
         KI6g==
X-Gm-Message-State: AOAM531UnH6AqaQ+aawPTlADAWNecW4a6HFO1ZyG6jr8koOyHmNXNmjN
        pf+b4vDxkiOb6TuQTnFaii3ielxcE7Y=
X-Google-Smtp-Source: ABdhPJx8r8jd6F74YTZZZsMoMV4HjKxSGZIcMHEPaK+vKrlwlEIj0DqVQClWt9KgOfVZP39V6EUsdA==
X-Received: by 2002:a1c:4601:: with SMTP id t1mr15756627wma.27.1621768949114;
        Sun, 23 May 2021 04:22:29 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id x10sm8273921wrt.65.2021.05.23.04.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 May 2021 04:22:28 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 4/8] cc_t.3: New link to system_data_types(7)
Date:   Sun, 23 May 2021 13:22:09 +0200
Message-Id: <20210523112213.170202-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210523112213.170202-1-alx.manpages@gmail.com>
References: <20210523112213.170202-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/cc_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/cc_t.3

diff --git a/man3/cc_t.3 b/man3/cc_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/cc_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.31.1

