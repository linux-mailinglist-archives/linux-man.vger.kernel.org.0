Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CF073A4D8F
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:28:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbhFLIav (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:30:51 -0400
Received: from mail-wr1-f48.google.com ([209.85.221.48]:40812 "EHLO
        mail-wr1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230511AbhFLIav (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:30:51 -0400
Received: by mail-wr1-f48.google.com with SMTP id y7so8447886wrh.7
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GATLhpzFT8ZqV//v1YWhHN+4OOY2XtxUQ/4vuCgBka0=;
        b=JyU2YoiKGquNAYG1T2vhZN4p0t6prvs15z8Thu0561OYs19j3OMGbaizPGzK3j768J
         t1cTWagx2LjthVhBAkMIZR7peXfXuOs/bQx/sU5mj61Nsn+2REbqj7H9ewH7DaY0Jinu
         kIHiMB/Vbjbd4IJQJgRn5ac1h2xTXEPtgSQTFReLKvw/Fskv6fhfleu38cX3MDNozRMV
         KiQNGysDfQtT6pl70MHgiSsRijBaPJJLz6XX0O+0KWkQeGGjSwo3IqJG5jBDfVfDJhVV
         KcMG+Mj+KYCPE/dFVjLGseB+Jkhtq40CLgSh6/ke5moUWE3LUWVzE0HOL26DixkRBZ9q
         0tTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GATLhpzFT8ZqV//v1YWhHN+4OOY2XtxUQ/4vuCgBka0=;
        b=HK90O1gaGh+xGbyQOsADyt/A109iMnfoSPxp0y51P13Z0JOWTGHcy9jAbJSYlSjQD9
         uHpYYTk16c5gHFvtLGL9Kby2Uf+sGsteTiBNugzi3rGWAFDwdikiDBYydcNCgcDKzYFe
         m7JT4UGq34dbl+DLYKEPP34HxUBwusYQYkg/O/Cc3Op4pMTVH5h15Fqawejq+PFx/lSi
         gnQcq4CaEjXIYVBnlIEsRCBo8xB8tJnxH/LqP8vpvupPtDSWN9QyNkC74VO6W/KZXiju
         XINgwlEzmG84/GviwErWx1CE8Rt+xC9+Y8Y9K13iY0i1JbRw60p+S6vHMQCXc3N+UaPa
         hUSw==
X-Gm-Message-State: AOAM5315z8waMZtTRs60tWm9yvvHABvU+rB3nd+YomGQOSLCjydN1d8S
        OOEKGxg4RhvgmF8qRDx4MZI=
X-Google-Smtp-Source: ABdhPJw8k3Yy7Y9trTAx4vnFRjDisV6+kIbMcgoGLdfEh+zEH3e08qneG0ORhbwYk1YA7RqdtYtXPA==
X-Received: by 2002:adf:e112:: with SMTP id t18mr5040973wrz.46.1623486471418;
        Sat, 12 Jun 2021 01:27:51 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id g17sm9864035wrp.61.2021.06.12.01.27.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:27:51 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>
Subject: [PATCH 3/3] strcmp.3: tfix
Date:   Sat, 12 Jun 2021 10:27:41 +0200
Message-Id: <20210612082741.12211-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612082741.12211-1-alx.manpages@gmail.com>
References: <20210612082741.12211-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

With a simple backslash, '\0' ended up as ' ' in the man output.

Reported-by: Štěpán Němec <stepnem@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/strcmp.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/strcmp.3 b/man3/strcmp.3
index c1992c184..3c5a5a6ad 100644
--- a/man3/strcmp.3
+++ b/man3/strcmp.3
@@ -143,7 +143,7 @@ First, some examples using
 .EX
 $ \fB./string_comp ABC ABC\fP
 <str1> and <str2> are equal
-$ \fB./string_comp ABC AB\fP      # \(aqC\(aq is ASCII 67; \(aqC\(aq \- \(aq\0\(aq = 67
+$ \fB./string_comp ABC AB\fP      # \(aqC\(aq is ASCII 67; \(aqC\(aq \- \(aq\e0\(aq = 67
 <str1> is greater than <str2> (67)
 $ \fB./string_comp ABA ABZ\fP     # \(aqA\(aq is ASCII 65; \(aqZ\(aq is ASCII 90
 <str1> is less than <str2> (\-25)
-- 
2.32.0

