Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7BCA324129
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235705AbhBXPnQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:43:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237281AbhBXOtC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:49:02 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E53ABC0611BC
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:04 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id u125so2031180wmg.4
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FEnSZN7LB7S8mK3GQq98Y14J7FHabOaTmkwcEM0GX7g=;
        b=ETmmqewLeWV3TJ4qX8d9GRiS/7miW5FJpjGMKKVwCzd7TARuQ4eyHdcc+r0PRxpFf6
         rQMeTA2UuCMncBLa5Uia/c20wfXoTxnWaNUsHUbLiGMK5b29+6lG+KKDZGBxgKU2YGHZ
         CYImsc9HL0DEo0N1KXXM9gwfDuUZLhClJr9f3qQVzjVRZRV7k7HesY8ytpoP8goEQbzX
         GDEXtyEYfAXvqnEyFvPG7Td4Qtnh/z2y4GxP/rLO1AyXFHNlPrR5w7Jm16lwGQFjjDLX
         Z30vQ7ztcQbwUJyi0/KK0QQfkxz6ZnIY2l3fWmLNsmLN6j9o5IRcp3n8Z0S5NzsWma3L
         RoaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FEnSZN7LB7S8mK3GQq98Y14J7FHabOaTmkwcEM0GX7g=;
        b=oTafQnFwX6I04WRCS0ABHZLq0czeJ2Nfy1lMUcsPDI5muiYf7yjb6cJF7UrPInxMMZ
         7/KHSLOiGHlzdUhZsdvDKTgg+3sVRlf19oHRPc4MoD6ZD58hQZN76y/pWSvDAMwy2Gsx
         3oJld0WhTTL7ZWQ9ZqmwEI4Cn/3gmxoi7XWyqrbbgy/9xJyL+2b3rGU12LB8VhSQ4Z3g
         u1UxeJhatkWoCLW4h5oRvoTRlS1PjD8vDM2fiZYjUgWxoWbiMQqy4fYPlepM8Mfrek8e
         MJsU89GFjm1Ssk9Epm2yXCD4xwCGYp2KsCTK8Nzuv9oMdxOG0LBlhHIjFalZTPfPqWQu
         zb/A==
X-Gm-Message-State: AOAM531Yl2vVR4Pj0lM/0vvDj3Va72VLNTA1CLyq44MvrfW5ZY0EaqC1
        ii7FAYILbLU4vENYqJU8F/A=
X-Google-Smtp-Source: ABdhPJxegziXZKz+kAspeoAWMwYcY0Uul/g0VC8lyYbpf9RxhN7lWWC+IIbl+5zufwWv5ElVXrVprA==
X-Received: by 2002:a7b:c5cc:: with SMTP id n12mr4075123wmk.123.1614177843761;
        Wed, 24 Feb 2021 06:44:03 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.44.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:44:03 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 11/20] ecvt_r.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:43:02 +0100
Message-Id: <20210224144310.140649-12-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Glibc uses 'restrict' for these functions

=============================  ecvt_r
stdlib/stdlib.h:902:
int ecvt_r (double value, int ndigit, int *restrict decpt,
                   int *restrict sign, char *restrict buf,
                   size_t len) THROW nonnull ((3, 4, 5));
=============================  fcvt_r
stdlib/stdlib.h:905:
int fcvt_r (double value, int ndigit, int *restrict decpt,
                   int *restrict sign, char *restrict buf,
                   size_t len) THROW nonnull ((3, 4, 5));
=============================  qecvt_r
stdlib/stdlib.h:909:
int qecvt_r (long double value, int ndigit,
                    int *restrict decpt, int *restrict sign,
                    char *restrict buf, size_t len)
     THROW nonnull ((3, 4, 5));
=============================  qfcvt_r
stdlib/stdlib.h:913:
int qfcvt_r (long double value, int ndigit,
                    int *restrict decpt, int *restrict sign,
                    char *restrict buf, size_t len)
     THROW nonnull ((3, 4, 5));

Let's use it here too.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/ecvt_r.3 | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/man3/ecvt_r.3 b/man3/ecvt_r.3
index f56197782..05689c8fc 100644
--- a/man3/ecvt_r.3
+++ b/man3/ecvt_r.3
@@ -34,15 +34,17 @@ ecvt_r, fcvt_r, qecvt_r, qfcvt_r \- convert a floating-point number to a string
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "int ecvt_r(double " number ", int " ndigits ", int *" decpt ,
-.BI "           int *" sign ", char *" buf ", size_t " len );
-.BI "int fcvt_r(double " number ", int " ndigits ", int *" decpt ,
-.BI "           int *" sign ", char *" buf ", size_t " len );
+.BI "int ecvt_r(double " number ", int " ndigits ", int *restrict " decpt ,
+.BI "           int *restrict " sign ", char *restrict " buf ", size_t " len );
+.BI "int fcvt_r(double " number ", int " ndigits ", int *restrict " decpt ,
+.BI "           int *restrict " sign ", char *restrict " buf ", size_t " len );
 .PP
-.BI "int qecvt_r(long double " number ", int " ndigits ", int *" decpt ,
-.BI "           int *" sign ", char *" buf ", size_t " len );
-.BI "int qfcvt_r(long double " number ", int " ndigits ", int *" decpt ,
-.BI "           int *" sign ", char *" buf ", size_t " len );
+.BI "int qecvt_r(long double " number ", int " ndigits \
+", int *restrict " decpt ,
+.BI "           int *restrict " sign ", char *restrict " buf ", size_t " len );
+.BI "int qfcvt_r(long double " number ", int " ndigits \
+", int *restrict " decpt ,
+.BI "           int *restrict " sign ", char *restrict " buf ", size_t " len );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

