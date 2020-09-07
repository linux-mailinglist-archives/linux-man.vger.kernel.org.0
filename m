Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A687E25F7DD
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 12:22:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728761AbgIGKWJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 06:22:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728977AbgIGKVw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 06:21:52 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED9D0C061755
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 03:21:50 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id c18so15193255wrm.9
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 03:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=75/+7F8V+rRNcHQOGUsC1uK/Rk+S5bXu47iBgpxJuu8=;
        b=TEb8n3ybvbbApQuIjd0AQb+qsGxVpdVP7h5lcC6oIdN4n6Hf1oYE+RYuKDJtJcXROX
         h+8vND8XXRkRm6ozBIYonMV4JRtdigcDIJaM+Q3pyXKVpvSCgLdbc0IGPdHZXYFhWM3t
         JhjDAVt9aYiKxt2rZba8OM9d3bFVeNLYSFrqbRGqyXFYvXOf+K8PUI0Q+4IdN1dYCU84
         usg0QL4cnlxuk9qbICUuisceEyERNOEhQDEJRT2BQ7bQvRmLnPFlKiwt2lAqtkAGwW+A
         ZvCggf95ix60TbAGksfTFEidr4YoPmxadc08KDdtq+PDbq6+jy3XjLZzYBQV9giH38/h
         hfZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=75/+7F8V+rRNcHQOGUsC1uK/Rk+S5bXu47iBgpxJuu8=;
        b=G5HVx/GgoL5tgpDHEZoxizDiKpe8qBVgIFJnSP+tIDkwrgW7CbvxOLUdhdXr1JUD5k
         Opx7Ao80CON6tm8Vee5JDSXaaK1//c9inPmP2TiVHDF5++3XX4ze1rhu6YzVuQIqSAa1
         6ChYdc43k/JXBBDSKrf34B3SBmiiYFxAYxtsAhIC8z/Ad5Hj0nkfuUfaEoxztLLy8kwK
         gk+8tOXZEupU4OZis+kFO8E8biUMpoOO6QjM1P/kxj0inLNc3O2MF/Kw8Pu3SFPhFTaV
         zDkRs1nzbhhC4Fhu7eM93kSmO2C5z7LBcKcKb7n9fk9xcZTvtziN/5Lq/l6y85pqd87j
         uFQQ==
X-Gm-Message-State: AOAM5336avOOQTRkKqvmYuzJhytrQ8MTwdUfryTBzZH3m5fc4a4XdFlp
        ZVFzWz0KGlTTigXle6grw5u1NmVvyP9CmA==
X-Google-Smtp-Source: ABdhPJxAHJvSoB56BNgGt1NKJJ9EfHbXwU0lrqNVekSQjTqgYAuTUAE5Yg4CzPXar4zJ6704xQVlUw==
X-Received: by 2002:adf:fa02:: with SMTP id m2mr20709542wrr.273.1599474109538;
        Mon, 07 Sep 2020 03:21:49 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id q192sm29530873wme.13.2020.09.07.03.21.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 03:21:49 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 2/2] fopencookie.3: Fix bugs in example
Date:   Mon,  7 Sep 2020 12:21:17 +0200
Message-Id: <20200907102116.16924-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200907102116.16924-1-colomar.6.4.3@gmail.com>
References: <20200907102116.16924-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

fread(3), unlike read(2) which returns a ssize_t, returns a size_t.
It doesn't distinguish between error and enf-of-file.
Instead, either ferror(3) or feof(3) need to be checked if
fread() returned 0.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/fopencookie.3 | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/man3/fopencookie.3 b/man3/fopencookie.3
index 5394ce4a5..055ec64d7 100644
--- a/man3/fopencookie.3
+++ b/man3/fopencookie.3
@@ -392,7 +392,7 @@ main(int argc, char *argv[])
     };
     FILE *stream;
     struct memfile_cookie mycookie;
-    ssize_t nread;
+    size_t nread;
     char buf[1000];
 
     /* Set up the cookie before calling fopencookie() */
@@ -429,11 +429,11 @@ main(int argc, char *argv[])
             exit(EXIT_FAILURE);
         }
         nread = fread(buf, 1, 2, stream);
-        if (nread == \-1) {
-            perror("fread");
-            exit(EXIT_FAILURE);
-        }
         if (nread == 0) {
+            if (ferror(stream) != 0) {
+                fprintf(stderr, "fread failed\en");
+                exit(EXIT_FAILURE);
+            }
             printf("Reached end of file\en");
             break;
         }
-- 
2.28.0

