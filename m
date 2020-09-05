Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DADCA25E853
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 16:21:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727875AbgIEOVZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 10:21:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726302AbgIEOVX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 10:21:23 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A837C061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 07:21:20 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id e17so9296663wme.0
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 07:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=O3Qu9+/BDofZNK/k7x16z0LXECZb9iN8P0syOjbtFCw=;
        b=S1M1ZaPS/4D03AxrSIXZnMdQR7ipHQlOqk5h2oWJmDty4U3t0+BoSQGyVOrxp5XqtL
         4vNcRIgZANv1v2snpYvcNRzSukPctSMZ/+6jZqojssXDBcrUo91a3W2290wcwaly0Wcz
         DaBeHP06Nf2vZEEN9tZGfRB+jC3bOnmMeFtnSy8XNaI2praQFABQ1Zpa8zj9R/qDjWcc
         20RT9+PfSYISNSn31BpOVouJOl+l3klt7d6OSC+lODuuYzuAZhNjuvYccNhG6Y+xA315
         lqygzG6m83FJDcBgnHQjQ7uK4OSgKgD3NsCryFiAemAmFVMVxQIu8rkn4TnwhrEbEXX2
         CpPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=O3Qu9+/BDofZNK/k7x16z0LXECZb9iN8P0syOjbtFCw=;
        b=L9IfXfrVd/92tolo2QhKJd4rItlr8XSO7jnBjxBrfHiYdKWAX/xmvFqXMrxR32CJtr
         mZBOa65A24ZdGb8gOU9B/IzVgyZ1w4M1zxOxrVoxoUViVHKhvESJdmnDM+HN+ZOXsxcg
         gYyWLPKdrtVy5Y55YM1nXoUwBGBeZijizkhnzpCiwn8+IUFghyiiA+H9XmJbj5rOwYVh
         wR2tB6o7U/X5DCZpjA8RrZ45fatDvNuErCqgY9OVlwbzl3rJpkNB/9KnanF3wcvtNGzO
         azsuVL9Gz1+XXHFNQqM53V2jNzNFZM0iGtovfDPqhYHlP8nlVtBOLFY4jlbURYVfoqqN
         tZtA==
X-Gm-Message-State: AOAM533HHeSVsqTWXR1gawuUj6PgpYzUWWcBjaI1j3Uzsu1qnEZ2+YyV
        wftVtfpytwxE7ODXAH/+DQg=
X-Google-Smtp-Source: ABdhPJwpirTrT0Xy9oLZhUzvo+1e9QWROKobjXSq3HuOTeqXz+NAf5DB9hFBzweln2p88/KOMIX7NA==
X-Received: by 2002:a7b:c92b:: with SMTP id h11mr6705106wml.6.1599315679367;
        Sat, 05 Sep 2020 07:21:19 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id n4sm853170wmd.26.2020.09.05.07.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 07:21:18 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 35/35] qsort.3: Use sizeof consistently
Date:   Sat,  5 Sep 2020 16:20:38 +0200
Message-Id: <20200905142037.522910-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/qsort.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/qsort.3 b/man3/qsort.3
index b49c2a9d3..e1af43cf0 100644
--- a/man3/qsort.3
+++ b/man3/qsort.3
@@ -150,7 +150,7 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }
 
-    qsort(&argv[1], argc \- 1, sizeof(char *), cmpstringp);
+    qsort(&argv[1], argc \- 1, sizeof(argv[0]), cmpstringp);
 
     for (j = 1; j < argc; j++)
         puts(argv[j]);
-- 
2.28.0

