Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB92125E89E
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 17:17:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726360AbgIEPRT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 11:17:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726582AbgIEPQe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 11:16:34 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B62BCC06124F
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 08:15:23 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id e11so9385628wme.0
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 08:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lDM558DKiKLq3AnZ0i8eDjmIpOruOaH9xEpeza3L5kY=;
        b=CBq6fbo7t7/gUCTPiEltprAxjRuSeiW2bD11U5YRFsOpmLfW5QznYK4js/Qipl08B8
         KDP+4xClhvBSNXpOO2KrPN4n+XCNhIcT1jidv1XuedB8u6rAVnW3A0DRC5a8yjzzZADo
         D4yyEf/gk4langhE4AfpU8GPntz+fhUmRkaPdDoqAoVn30Qv3dbcJr22/s5wXzdRg8Pz
         OXrixwYDHrevd+8PGqC6beG3iZ/wyarTCmH4jgRddY0u8N7mz/Bq3Lhg8eSy9dkclfU3
         Vf3uTcuzaUR62MN/NksmemQwcYyl9NY6xMkOm0x0S/9ppF4BEtiiOrqhWZRlZjaxF3ZR
         zwXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lDM558DKiKLq3AnZ0i8eDjmIpOruOaH9xEpeza3L5kY=;
        b=XWUZAHwWkuXnN6bY+ArXrnkoEjcWS+J/cF+9hQIfS2dWLwlMUcgxlZy2FuyJ5AMKc4
         DhN0eYDkKUlhfignsQt+Yru25lYSVV2leRAgkXIuk9v02UBAlNolCCCpxjjwldaHCEU5
         s3kcUFTYQ4ZMbTjNzdA/1seG5CUkZncWU9+afMlm2LXltJzTLCVa0HihRQ5Xopug1mcQ
         JSSv1uUVcuq7S8aM/UcA9Xo/1Fkjsr35xe60S6GqqfuYIDN8aAK17mRiwjVkn66jKioe
         Wrp/o2vXtB578ykb2atxKaeLH5gT/day7b3S8ezQPsVJ6sdEbWq+uxWpMK8UcITzo45n
         JqxQ==
X-Gm-Message-State: AOAM533Kv6JQh5yc2MmQU7vMhGD2ZlHGXzmv8ETIlh0CkydORilbK1Cd
        u9TOYZZLcNteqsjrmslc8nA=
X-Google-Smtp-Source: ABdhPJwYRaZx9fOSeWiUcDW9uKnTskocR2kCp14xT3p8o+1/2y4HUo/Em30P6YTzmXMTtLwPIa6dfA==
X-Received: by 2002:a1c:7502:: with SMTP id o2mr12245490wmc.29.1599318922155;
        Sat, 05 Sep 2020 08:15:22 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id t4sm17905363wre.30.2020.09.05.08.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 08:15:21 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 6/7] bsearch.3: Fix intermediate type and remove unneeded casts
Date:   Sat,  5 Sep 2020 17:15:00 +0200
Message-Id: <20200905151501.609036-7-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
References: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Casting `const void *` to `struct mi *` should result in a warning if
done implicitly.  The explicit cast was probably silencing that warning.
`const` can and should be kept.
Now, casting `const void *` to `const struct mi *` is done implicitly.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/bsearch.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/bsearch.3 b/man3/bsearch.3
index 6859bdba2..a07bfd568 100644
--- a/man3/bsearch.3
+++ b/man3/bsearch.3
@@ -114,8 +114,8 @@ struct mi {
 static int
 compmi(const void *m1, const void *m2)
 {
-    struct mi *mi1 = (struct mi *) m1;
-    struct mi *mi2 = (struct mi *) m2;
+    const struct mi *mi1 = m1;
+    const struct mi *mi2 = m2;
     return strcmp(mi1\->name, mi2\->name);
 }
 
-- 
2.28.0

