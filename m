Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8EFCD2781A6
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 09:33:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727438AbgIYHdE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 03:33:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727435AbgIYHdE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 03:33:04 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0F5EC0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:33:03 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id o5so2365717wrn.13
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=x7CGpTokpn42Snf1e7AsnFd7uJuVlqyQLYA1DAQvEHs=;
        b=FPtFa6reQfIJRNEk6k5NQB1J8x9pxnFU/tUR9UDk8Y532u0ThzP7kveQOgJeVURUNc
         yb8oIyVR99lAdbczqoMxDD/4dNbNRGvztYGcqGwer6G8E2+qV/94LJJu+/Vyrrnwt+FQ
         zaykvgEmabSzZNa8K3/2/r10txlGoqr5Dwy4q4OaX8R2WRBcR0FIQG0E/1Ivyr5cvmXa
         0ZuceN+fujzft/SXSvyQuTCCsIzqnhIH9CrqQNXBMQYeVgGIatVJVKo8TZCi7kIEkdr9
         WDfeoMFwHuz7i+MhBtc238BlwEudHFSxJr6xT4tHvHXPNI09wdW94Ec99soZnPoySCZs
         8O5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=x7CGpTokpn42Snf1e7AsnFd7uJuVlqyQLYA1DAQvEHs=;
        b=Jy+MfdXn+rejHVORE9h7lWxDISGvPrQ179Jl7hZH2b/D84KE1YTQKrYoDwN4yu6wxm
         3eHXfisVUffVZa4rv6EG0xW9JxgsUduLPN/yU/8bfciLdnQwDKWkEWW72E6rIA6nuEXs
         an50h0TOEis1Eaymd0EBrd+7eJ7SBn5GLUfFnfaLOJs3pIt78FDxO70XK4Qr4wqKs12T
         ov0OG6QiIntvRexKzCBl06Iz+zRO/YZeBFSQDcWcxqUmCR4KZm1J8a6y1WPeWpepp6SE
         l2PP+x73dxaqfVMVWZeX/A1SJ0IOfcG0yr3JlCKOxv9VNox6YViSwqqI/U2rBH4HaMsz
         mPBQ==
X-Gm-Message-State: AOAM533Mevbnf2aMLgOyaXcq7Vyz8UMDSFWbcZT0nML/ADxdk4Kyjr1B
        epftETs7025/0jIXn2O2Lp4=
X-Google-Smtp-Source: ABdhPJw+01Ot6UK4J1XP9uveGUE+WM0zeAxOfICbVm4BcgV4HxXtAN/tyC6uPLmRzgx57rahiioYvA==
X-Received: by 2002:a5d:660f:: with SMTP id n15mr3141380wru.103.1601019182526;
        Fri, 25 Sep 2020 00:33:02 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id n2sm1974314wma.29.2020.09.25.00.33.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 00:33:01 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 06/10] system_data_types.7: Add double_t
Date:   Fri, 25 Sep 2020 09:31:37 +0200
Message-Id: <20200925073140.173394-7-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 238b9593b..43e88942a 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -117,6 +117,42 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
 .IP
 See also:
 .BR div (3)
+.\"------------------------------------- double_t ---------------------/
+.TP
+.I double_t
+.IP
+Include:
+.IR <math.h> .
+.IP
+The implementation's most efficient floating type at least as wide as
+.IR double .
+Its type depends on the value of the macro
+.BR FLT_EVAL_METHOD :
+.RS
+.IP *
+0;
+.I double_t
+is
+.IR double .
+.IP *
+1;
+.I double_t
+is
+.IR double .
+.IP *
+2;
+.I double_t
+is
+.IR "long double" .
+.IP *
+Other implementation-defined values.
+.RE
+.IP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.IP
+See also the
+.I float_t
+type in this page.
 .\"------------------------------------- fenv_t -----------------------/
 .TP
 .I fenv_t
-- 
2.28.0

