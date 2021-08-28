Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 442063FA59C
	for <lists+linux-man@lfdr.de>; Sat, 28 Aug 2021 14:15:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233949AbhH1MPo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Aug 2021 08:15:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233646AbhH1MPn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Aug 2021 08:15:43 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 594CFC061756
        for <linux-man@vger.kernel.org>; Sat, 28 Aug 2021 05:14:53 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id f9-20020a05600c1549b029025b0f5d8c6cso11120794wmg.4
        for <linux-man@vger.kernel.org>; Sat, 28 Aug 2021 05:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Nl1XKPP6R7azkmzsmveb20YMVw/3Fmf4r+qAqxfq1Zc=;
        b=ipGkyPHclX1bHKlO6O12lVp2orDc7jIPIl7f82axdeqssjZxr/vjtHzpa1QpKbF8Lu
         viNmwEzNs+Wk1G2X+AZtg/Z0J9bXqJC21zcUORpg45S1X7RVy6McXsrsYlMNBoWSRmu2
         zVM60VR+KbLaZHFeMzywKA4JVDaiM/9dNdE7uToeVKk22mFadZYXVO2xH/Ocp3s5Efym
         0cDb23iErlgX63HmosFX+M+dv3fnOj6HVz3MHh+GVSWotkc562ZAudo0Dh/YJcLNPLfS
         wi+4IzxPrAreT+Y/UpUmoM01/FxepeFli3C/lJCp3P6uRsge7puk2OZ2rL7p5cZeDYeM
         4ZYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Nl1XKPP6R7azkmzsmveb20YMVw/3Fmf4r+qAqxfq1Zc=;
        b=H1JfuS1p/mKUrnuwlj9YyJLLc4dYdcx9tOrV/XNJEgz2K/4h8nvPgxsgtyyiu1NvZr
         em92OguIi7EM0nQT5UVEFPW16dHkartCDLWAfJVcobL4/FaoCuDws52DFCgwFEAeher2
         M6EH1/qSgYWjGKTaH+yuUJrUTaPQ8r2tPc4iqEXt1KflMRCoJ6h1xhKPa+L7GU9eKGHR
         8WbV/zEOLk5W7fsrR+GHu9P9UF1IyVvihZNiLtv0TeJr0JIA8tyD+BbJkn/sm2AdhSpY
         iZpGyC898rAHRmLlrqw8FE9xEY78mxq06MCXoq5FrvdLheCi8CS92mlctRFvojJB91w3
         PIDA==
X-Gm-Message-State: AOAM533hkAE9JAu8W+W/sUSPIU3Qz7VdqEoJOamxA7lSRJsxeELf9hnk
        Oa+/1xGTZ4D1PhBy8P8kFNQ=
X-Google-Smtp-Source: ABdhPJxtC65kmqQAyssf/jpLzHZd63rbZTTvIcHWupIUVmyWlRkyvOl03roIeNII7LlE8jonvLqqBg==
X-Received: by 2002:a1c:a793:: with SMTP id q141mr23842655wme.157.1630152891962;
        Sat, 28 Aug 2021 05:14:51 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h15sm8119360wrb.22.2021.08.28.05.14.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Aug 2021 05:14:51 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        David Sletten <david.paul.sletten@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH 1/2] operator.7: Fix precedence of the 'cast operator'
Date:   Sat, 28 Aug 2021 14:11:06 +0200
Message-Id: <20210828121106.999689-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Unary operators are mentioned in C11::6.5.3, and casts are in
C11::6.5.4 (they are mentioned in order of precedence).

And from note 85 (in section 6.5) in that same C11 standard, major
subsections 6.5.X are sorted by precedence.

As an example (from Jakub), `sizeof(int)+1` is interpreted as
`(sizeof(int))+1`, and not `sizeof((int)+1)`.

I used C11 and not C18 (the latest) because at least in the draft
copy of C18 that I have, there are a few important typos in that
section, while the draft copy of C11 that I have is free of those
typos.  And C11 and C18 are almost identical, with no major
changes to the language.

Reported-by: David Sletten <david.paul.sletten@gmail.com>
Cc: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/operator.7 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man7/operator.7 b/man7/operator.7
index b0bac5f4e..22c107c7f 100644
--- a/man7/operator.7
+++ b/man7/operator.7
@@ -48,7 +48,8 @@ lb lb lb
 l l l.
 Operator	Associativity	Notes
 () [] \-> . ++ \-\-	left to right	[1]
-! \(ti ++ \-\- + \- (type) * & sizeof	right to left	[2]
+! \(ti ++ \-\- + \- * & sizeof	right to left	[2]
+(type)	right to left
 * / %	left to right
 + \-	left to right
 << >>	left to right
-- 
2.33.0

