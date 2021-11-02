Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0096B44354C
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234988AbhKBSRz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234975AbhKBSRy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:54 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8933AC061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:19 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id j128-20020a1c2386000000b003301a98dd62so2664768wmj.5
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wUo3Z6fdUK3GH299HO2EbtoQtaJ6xPkTjTXdW6Te2yE=;
        b=T1elV/PDBFGxG+/16o0uC2+i3uhM2XBN0EeE2dI8VyvdhVLjnQtn+Q2mGRMpxjsDY+
         cnqQjruHYXZPiFGBPXKISSw+fSTYFg5hQvcbyb+XcCNiIFBhL9o79gdyyzHweIPwI5Wi
         CRZQw3waEt3gYj0/CMRFaoJEGjQEJGwSvrn1RiK1+VITZas+pGTlF8VtzhoXMVgfF5Ez
         66BTsAQHkdgKEb4sqAZlqSWXaxkMrz1EeSY8jKdEPW1Jv3oH8fXo4symwD1xiYxknVyo
         PDdoRJ8Du1PzjwfTTd+dPYHsCD1HC/Defohkqr+7Qji3i3FarKWbTUYMdcj66kuVG/uU
         5GJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wUo3Z6fdUK3GH299HO2EbtoQtaJ6xPkTjTXdW6Te2yE=;
        b=Hf8qXpo8K6quY8PaQjYkY+nIXx9w77F4QlFvP74iwOkponzibHZhakog58zGZphGpt
         eb+0l4SmreqvkGmco3DjJj9WPlnTLYbzLNlKEpvIY8x199LUqhNXPURw6zbBYdgJ613C
         DWTIv33+1lQdCh94U+CKGmY/K2qyZ5TKRVKWKtbGr8gCOuEawY8WXwJmKoptkpOO6C49
         b7vfFXb7fauYGivf08TIiST/e25m22+efmk47uXs8TTZKRHiqJSzIWFHf7XEkANup/br
         AT2GJ+95JcWGzK5jnN9+/77QG0Bpa3pSzuEfWnrk8JZcmsI58IrSTXrP+CsJ6zUA81C7
         iO9g==
X-Gm-Message-State: AOAM533Vapze7rEJDZ4RQZix09T3nWrPxz1dhq4ylagY8IDy0tXwA331
        sE1aqQIdHm/V1DKpEC+QXqP61IzW77w=
X-Google-Smtp-Source: ABdhPJwfUKH1CzXW1qKq86LH3qQ4T+NezlLoMO8VJNz3rqHKDLDkCOwLLasBTN84YFEkOnSGWZCJbQ==
X-Received: by 2002:a1c:7515:: with SMTP id o21mr9498643wmc.99.1635876918152;
        Tue, 02 Nov 2021 11:15:18 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:17 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 16/37] div_t.3, system_data_types.7: Move text to a separate page
Date:   Tue,  2 Nov 2021 19:14:33 +0100
Message-Id: <20211102181454.280919-17-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/div_t.3             | 20 +++++++++++++++++++-
 man7/system_data_types.7 | 23 -----------------------
 2 files changed, 19 insertions(+), 24 deletions(-)

diff --git a/man3/div_t.3 b/man3/div_t.3
index db50c0f09..2b83a002d 100644
--- a/man3/div_t.3
+++ b/man3/div_t.3
@@ -1 +1,19 @@
-.so man7/system_data_types.7
+.TH DIV_T 3 2021-11-02 Linux "Linux Programmer's Manual"
+.SH NAME
+div_t \- quotient and remainder of an integer division
+.SH SYNOPSIS
+.nf
+.B #include <stdlib.h>
+.PP
+.B typedef struct {
+.BR "    int quot;" " /* Quotient */"
+.BR "    int rem;" "  /* Remainder */"
+.B } div_t;
+.SH DESCRIPTION
+It is the type of the value returned by the
+.BR div (3)
+function.
+.SH CONFORMING TO
+C99 and later; POSIX.1-2001 and later.
+.SH SEE ALSO
+.BR div (3)
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index fe071fb1e..764027bbd 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -58,29 +58,6 @@ system_data_types \- overview of system data types
 .\"------------------------------------- clockid_t --------------------/
 .\"------------------------------------- dev_t ------------------------/
 .\"------------------------------------- div_t ------------------------/
-.TP
-.I div_t
-.RS
-.IR Include :
-.IR <stdlib.h> .
-.PP
-.EX
-typedef struct {
-    int quot; /* Quotient */
-    int rem;  /* Remainder */
-} div_t;
-.EE
-.PP
-It is the type of the value returned by the
-.BR div (3)
-function.
-.PP
-.IR "Conforming to" :
-C99 and later; POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR div (3)
-.RE
 .\"------------------------------------- double_t ---------------------/
 .TP
 .I double_t
-- 
2.33.1

